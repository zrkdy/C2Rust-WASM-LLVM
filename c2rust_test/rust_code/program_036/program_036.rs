use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Tnode {
    pub value: libc::c_int,
    pub next: [*mut Tnode; 26],
}
pub type tlink = *mut Tnode;
#[no_mangle]
pub unsafe extern "C" fn init_pointer_array(mut node: tlink) {
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 26 as libc::c_int {
        (*node).next[i as usize] = 0 as *mut Tnode;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn create_tree() -> tlink {
    let mut root: tlink = malloc(::core::mem::size_of::<Tnode>() as libc::c_ulong)
        as tlink;
    if root.is_null() {
        return 0 as tlink;
    }
    (*root).value = -(1 as libc::c_int);
    init_pointer_array(root);
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn insert_node(
    mut root: tlink,
    mut name: *mut libc::c_char,
    mut value: libc::c_int,
) {
    let mut now: tlink = root;
    let mut new: tlink = 0 as *mut Tnode;
    let mut sp: libc::c_int = 0 as libc::c_int;
    let mut size: libc::c_int = strlen(name) as libc::c_int;
    while sp < size {
        if ((*now)
            .next[(*name.offset(sp as isize) as libc::c_int - 'a' as i32) as usize])
            .is_null()
        {
            new = malloc(::core::mem::size_of::<Tnode>() as libc::c_ulong) as tlink;
            if new.is_null() {
                return;
            }
            (*new).value = -(1 as libc::c_int);
            init_pointer_array(new);
            (*now)
                .next[(*name.offset(sp as isize) as libc::c_int - 'a' as i32)
                as usize] = new;
        }
        now = (*now)
            .next[(*name.offset(sp as isize) as libc::c_int - 'a' as i32) as usize];
        sp += 1;
        sp;
    }
    (*now).value = value;
}
#[no_mangle]
pub unsafe extern "C" fn insert_node_r(
    mut root: tlink,
    mut name: *mut libc::c_char,
    mut step: libc::c_int,
    mut size: libc::c_int,
    mut value: libc::c_int,
) {
    if step == size {
        return;
    }
    let mut ch: libc::c_char = *name.offset(step as isize);
    let mut cur: tlink = (*root).next[(ch as libc::c_int - 'a' as i32) as usize];
    if cur.is_null() {
        let mut new: tlink = malloc(::core::mem::size_of::<Tnode>() as libc::c_ulong)
            as tlink;
        if new.is_null() {
            return;
        }
        (*root).next[(ch as libc::c_int - 'a' as i32) as usize] = new;
        init_pointer_array(new);
        (*new).value = -(1 as libc::c_int);
    }
    if step == size - 1 as libc::c_int {
        (*(*root).next[(ch as libc::c_int - 'a' as i32) as usize]).value = value;
    }
    insert_node_r(
        (*root).next[(ch as libc::c_int - 'a' as i32) as usize],
        name,
        step + 1 as libc::c_int,
        size,
        value,
    );
}
#[no_mangle]
pub unsafe extern "C" fn search_tree(
    mut root: tlink,
    mut name: *mut libc::c_char,
) -> libc::c_int {
    let mut size: libc::c_int = strlen(name) as libc::c_int;
    let mut ch: libc::c_char = 0;
    let mut retval: libc::c_int = -(1 as libc::c_int);
    let mut now: tlink = root;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < size {
        ch = *name.offset(i as isize);
        now = (*now).next[(ch as libc::c_int - 'a' as i32) as usize];
        if now.is_null() {
            return -(1 as libc::c_int);
        }
        i += 1;
        i;
    }
    retval = (*now).value;
    return retval;
}
#[no_mangle]
pub unsafe extern "C" fn search_tree_r(
    mut root: tlink,
    mut name: *mut libc::c_char,
    mut step: libc::c_int,
    mut size: libc::c_int,
) -> libc::c_int {
    if step > size - 1 as libc::c_int {
        return -(1 as libc::c_int);
    }
    let mut ch: libc::c_char = *name.offset(step as isize);
    let mut cur: tlink = (*root).next[(ch as libc::c_int - 'a' as i32) as usize];
    if cur.is_null() {
        return -(1 as libc::c_int);
    }
    if step == size - 1 as libc::c_int {
        return (*cur).value;
    }
    return search_tree_r(
        (*root).next[(ch as libc::c_int - 'a' as i32) as usize],
        name,
        step + 1 as libc::c_int,
        size,
    );
}
#[no_mangle]
pub unsafe extern "C" fn destory_tree(mut root: tlink) {
    let mut i: libc::c_int = 0;
    if root.is_null() {
        return;
    }
    i = 0 as libc::c_int;
    while i < 26 as libc::c_int {
        destory_tree((*root).next[i as usize]);
        i += 1;
        i;
    }
    free(root as *mut libc::c_void);
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut string: [*mut libc::c_char; 23] = [
        b"leechanx\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"lichenxuan\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"leechany\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"leechlian\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"cong\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"congx\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"congxiaol\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"leechanxuan\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"liche\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"zhangyumao\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"zhangyuzhou\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"zhanghongli\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"zhangweizhe\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"zhai\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"alibaba\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"tencent\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"baidu\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"wangyi\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"souhu\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"macos\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"windows\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"unix\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        b"linux\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
    ];
    let mut value: [libc::c_int; 23] = [
        1 as libc::c_int,
        2 as libc::c_int,
        3 as libc::c_int,
        4 as libc::c_int,
        5 as libc::c_int,
        6 as libc::c_int,
        7 as libc::c_int,
        8 as libc::c_int,
        9 as libc::c_int,
        10 as libc::c_int,
        11 as libc::c_int,
        12 as libc::c_int,
        13 as libc::c_int,
        14 as libc::c_int,
        15 as libc::c_int,
        16 as libc::c_int,
        17 as libc::c_int,
        18 as libc::c_int,
        19 as libc::c_int,
        20 as libc::c_int,
        21 as libc::c_int,
        22 as libc::c_int,
        23 as libc::c_int,
    ];
    let mut trietree: tlink = create_tree();
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < 23 as libc::c_int {
        insert_node(trietree, string[i as usize], value[i as usize]);
        i += 1;
        i;
    }
    let mut i_0: libc::c_int = 0 as libc::c_int;
    while i_0 < 23 as libc::c_int {
        let mut nr: libc::c_int = search_tree(trietree, string[i_0 as usize]);
        let mut r: libc::c_int = search_tree_r(
            trietree,
            string[i_0 as usize],
            0 as libc::c_int,
            strlen(string[i_0 as usize]) as libc::c_int,
        );
        printf(b"%d=%d\n\0" as *const u8 as *const libc::c_char, nr, r);
        i_0 += 1;
        i_0;
    }
    printf(
        b"%d=%d\n\0" as *const u8 as *const libc::c_char,
        search_tree(
            trietree,
            b"zhanghonglis\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        ),
        search_tree_r(
            trietree,
            b"zhanghonglis\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
            0 as libc::c_int,
            strlen(b"zhanghonglis\0" as *const u8 as *const libc::c_char) as libc::c_int,
        ),
    );
    printf(
        b"%d=%d\n\0" as *const u8 as *const libc::c_char,
        search_tree(
            trietree,
            b"zhanghongl\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
        ),
        search_tree_r(
            trietree,
            b"zhanghongl\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
            0 as libc::c_int,
            strlen(b"zhanghongl\0" as *const u8 as *const libc::c_char) as libc::c_int,
        ),
    );
    destory_tree(trietree);
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
