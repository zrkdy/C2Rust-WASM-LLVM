use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn calloc(_: libc::c_ulong, _: libc::c_ulong) -> *mut libc::c_void;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ETree {
    pub ch: libc::c_char,
    pub left: *mut ETree,
    pub right: *mut ETree,
}
pub type etlink = *mut ETree;
#[no_mangle]
pub static mut stack: [libc::c_char; 100] = [0; 100];
#[no_mangle]
pub static mut sp: libc::c_int = -(1 as libc::c_int);
#[no_mangle]
pub unsafe extern "C" fn push_ch(mut item: libc::c_char) {
    sp += 1;
    stack[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop_ch() -> libc::c_char {
    let fresh0 = sp;
    sp = sp - 1;
    return stack[fresh0 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn top_ch() -> libc::c_char {
    return stack[sp as usize];
}
#[no_mangle]
pub unsafe extern "C" fn empty() -> libc::c_int {
    return (sp == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub static mut stack_node: [etlink; 30] = [0 as *const ETree as *mut ETree; 30];
#[no_mangle]
pub unsafe extern "C" fn push_node(mut item: etlink) {
    sp += 1;
    stack_node[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop_node() -> etlink {
    let fresh1 = sp;
    sp = sp - 1;
    return stack_node[fresh1 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn display_infix(mut root: etlink) {
    if !root.is_null() {
        printf(b"(\0" as *const u8 as *const libc::c_char);
        display_infix((*root).left);
        printf(b"%c\0" as *const u8 as *const libc::c_char, (*root).ch as libc::c_int);
        display_infix((*root).right);
        printf(b")\0" as *const u8 as *const libc::c_char);
    }
}
#[no_mangle]
pub unsafe extern "C" fn display_suffix(mut root: etlink) {
    if !root.is_null() {
        display_suffix((*root).left);
        display_suffix((*root).right);
        printf(b"%c\0" as *const u8 as *const libc::c_char, (*root).ch as libc::c_int);
    }
}
#[no_mangle]
pub unsafe extern "C" fn create_expresstree(
    mut suffix: *mut libc::c_char,
    mut sufsize: libc::c_int,
) -> etlink {
    let mut i: libc::c_int = 0;
    let mut ch: libc::c_char = 0;
    let mut cur: etlink = 0 as etlink;
    i = 0 as libc::c_int;
    while i < sufsize {
        ch = *suffix.offset(i as isize);
        cur = malloc(::core::mem::size_of::<ETree>() as libc::c_ulong) as etlink;
        (*cur).ch = ch;
        (*cur).right = 0 as *mut ETree;
        (*cur).left = (*cur).right;
        if ch as libc::c_int == '+' as i32 || ch as libc::c_int == '-' as i32
            || ch as libc::c_int == '*' as i32 || ch as libc::c_int == '/' as i32
        {
            (*cur).right = pop_node();
            (*cur).left = pop_node();
        }
        push_node(cur);
        i += 1;
        i;
    }
    if empty() == 0 {
        cur = pop_node();
    }
    return cur;
}
#[no_mangle]
pub unsafe extern "C" fn infix2suffix(
    mut infix: *mut libc::c_char,
    mut size: libc::c_int,
    mut suffix: *mut libc::c_char,
    mut sufsize: *mut libc::c_int,
) {
    let mut i: libc::c_int = 0;
    let mut cp: libc::c_int = 0 as libc::c_int;
    let mut ch: libc::c_char = 0;
    i = 0 as libc::c_int;
    while i < size {
        ch = *infix.offset(i as isize);
        if ch as libc::c_int == '+' as i32 || ch as libc::c_int == '-' as i32
            || ch as libc::c_int == '*' as i32 || ch as libc::c_int == '/' as i32
        {
            if empty() != 0 {
                push_ch(ch);
            } else if ch as libc::c_int == '+' as i32 || ch as libc::c_int == '-' as i32
            {
                while empty() == 0 {
                    if top_ch() as libc::c_int == '(' as i32 {
                        break;
                    }
                    let fresh2 = cp;
                    cp = cp + 1;
                    *suffix.offset(fresh2 as isize) = pop_ch();
                }
                push_ch(ch);
            } else {
                while empty() == 0 {
                    if top_ch() as libc::c_int == '(' as i32
                        || top_ch() as libc::c_int == '+' as i32
                        || top_ch() as libc::c_int == '-' as i32
                    {
                        break;
                    }
                    let fresh3 = cp;
                    cp = cp + 1;
                    *suffix.offset(fresh3 as isize) = pop_ch();
                }
                push_ch(ch);
            }
        } else if ch as libc::c_int == '(' as i32 || ch as libc::c_int == ')' as i32 {
            if ch as libc::c_int == '(' as i32 {
                push_ch(ch);
            } else {
                while empty() == 0 {
                    ch = pop_ch();
                    if ch as libc::c_int == '(' as i32 {
                        break;
                    }
                    let fresh4 = cp;
                    cp = cp + 1;
                    *suffix.offset(fresh4 as isize) = ch;
                }
            }
        } else {
            let fresh5 = cp;
            cp = cp + 1;
            *suffix.offset(fresh5 as isize) = ch;
        }
        i += 1;
        i;
    }
    while empty() == 0 {
        let fresh6 = cp;
        cp = cp + 1;
        *suffix.offset(fresh6 as isize) = pop_ch();
    }
    *sufsize = cp;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut infix: *mut libc::c_char = b"a+b*c+(d*e+f)*g\0" as *const u8
        as *const libc::c_char as *mut libc::c_char;
    let mut size: libc::c_int = strlen(infix) as libc::c_int;
    let mut suffix: *mut libc::c_char = calloc(
        size as libc::c_ulong,
        ::core::mem::size_of::<libc::c_char>() as libc::c_ulong,
    ) as *mut libc::c_char;
    let mut sufsize: libc::c_int = 0;
    infix2suffix(infix, size, suffix, &mut sufsize);
    printf(b"%s\n\0" as *const u8 as *const libc::c_char, suffix);
    let mut expresstree: etlink = create_expresstree(suffix, sufsize);
    display_infix(expresstree);
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    display_suffix(expresstree);
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
pub fn main() {
    let mut args: Vec::<*mut libc::c_char> = Vec::new();
    for arg in ::std::env::args() {
        args.push(
            (::std::ffi::CString::new(arg))
                .expect("Failed to convert argument into CString.")
                .into_raw(),
        );
    }
    args.push(::core::ptr::null_mut());
    unsafe {
        ::std::process::exit(
            main_0(
                (args.len() - 1) as libc::c_int,
                args.as_mut_ptr() as *mut *const libc::c_char,
            ) as i32,
        )
    }
}
