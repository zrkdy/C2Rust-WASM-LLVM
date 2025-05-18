use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub id: libc::c_int,
    pub cost: libc::c_int,
    pub height: libc::c_int,
    pub prev: *mut Node,
}
#[no_mangle]
pub static mut stack: [*mut Node; 100] = [0 as *const Node as *mut Node; 100];
#[no_mangle]
pub static mut sp: libc::c_int = -(1 as libc::c_int);
#[no_mangle]
pub unsafe extern "C" fn empty() -> libc::c_int {
    return (sp == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn push(mut item: *mut Node) {
    sp += 1;
    stack[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop() -> *mut Node {
    sp -= 1;
    return stack[sp as usize];
}
#[no_mangle]
pub unsafe extern "C" fn top() -> *mut Node {
    return stack[sp as usize];
}
#[no_mangle]
pub unsafe extern "C" fn insertsort(mut nodes: *mut *mut Node, mut size: libc::c_int) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut pivot: *mut Node = 0 as *mut Node;
    i = 1 as libc::c_int;
    while i < size {
        pivot = *nodes.offset(i as isize);
        j = i - 1 as libc::c_int;
        while j >= 0 as libc::c_int && (**nodes.offset(j as isize)).cost < (*pivot).cost
        {
            let ref mut fresh0 = *nodes.offset((j + 1 as libc::c_int) as isize);
            *fresh0 = *nodes.offset(j as isize);
            j -= 1;
            j;
        }
        let ref mut fresh1 = *nodes.offset((j + 1 as libc::c_int) as isize);
        *fresh1 = pivot;
        i += 1;
        i;
    }
}
#[no_mangle]
pub static mut min: libc::c_int = 2147483647 as libc::c_int;
#[no_mangle]
pub unsafe extern "C" fn sum(mut node: *mut Node) -> libc::c_int {
    let mut summary: libc::c_int = 0 as libc::c_int;
    while !node.is_null() {
        summary += (*node).cost;
        node = (*node).prev;
    }
    return summary;
}
#[no_mangle]
pub unsafe extern "C" fn inme(mut node: *mut Node, mut who: libc::c_int) -> libc::c_int {
    let mut ok: libc::c_int = 0 as libc::c_int;
    while !node.is_null() && ok == 0 {
        if (*node).id == who {
            ok = 1 as libc::c_int;
        }
        node = (*node).prev;
    }
    return ok;
}
#[no_mangle]
pub unsafe extern "C" fn display_outcome(mut node: *mut Node, mut newmin: libc::c_int) {
    min = newmin;
    printf(b"%d\0" as *const u8 as *const libc::c_char, 0 as libc::c_int);
    while !node.is_null() {
        printf(b"<===%d \0" as *const u8 as *const libc::c_char, (*node).id);
        node = (*node).prev;
    }
    printf(b".And cost=%d\n\0" as *const u8 as *const libc::c_char, min);
}
#[no_mangle]
pub unsafe extern "C" fn branchbound(mut map: *mut [libc::c_int; 5]) {
    let mut currentnode: *mut Node = malloc(
        ::core::mem::size_of::<Node>() as libc::c_ulong,
    ) as *mut Node;
    (*currentnode).id = 0 as libc::c_int;
    (*currentnode).height = 0 as libc::c_int;
    (*currentnode).prev = 0 as *mut Node;
    (*currentnode).cost = 0 as libc::c_int;
    push(currentnode);
    let mut node: *mut Node = 0 as *mut Node;
    let mut neibors: [*mut Node; 5] = [0 as *mut Node; 5];
    let mut neiborsize: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    while empty() == 0 {
        currentnode = top();
        if (*currentnode).height == 5 as libc::c_int - 1 as libc::c_int
            && (*currentnode).cost
                + (*map.offset((*currentnode).id as isize))[0 as libc::c_int as usize]
                < min
        {
            display_outcome(
                currentnode,
                (*currentnode).cost
                    + (*map
                        .offset((*currentnode).id as isize))[0 as libc::c_int as usize],
            );
        }
        pop();
        if (*currentnode).cost > min {
            printf(b"drop one.\n\0" as *const u8 as *const libc::c_char);
        } else {
            neiborsize = 0 as libc::c_int;
            i = 0 as libc::c_int;
            while i < 5 as libc::c_int {
                if i != (*currentnode).id && inme(currentnode, i) == 0 {
                    node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                        as *mut Node;
                    (*node).id = i;
                    (*node).height = (*currentnode).height + 1 as libc::c_int;
                    (*node).prev = currentnode;
                    (*node)
                        .cost = (*currentnode).cost
                        + (*map.offset((*currentnode).id as isize))[i as usize];
                    let fresh2 = neiborsize;
                    neiborsize = neiborsize + 1;
                    neibors[fresh2 as usize] = node;
                }
                i += 1;
                i;
            }
            insertsort(neibors.as_mut_ptr(), neiborsize);
            i = 0 as libc::c_int;
            while i < neiborsize {
                push(neibors[i as usize]);
                i += 1;
                i;
            }
        }
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut map: [[libc::c_int; 5]; 5] = [
        [
            2147483647 as libc::c_int,
            5 as libc::c_int,
            61 as libc::c_int,
            34 as libc::c_int,
            12 as libc::c_int,
        ],
        [
            57 as libc::c_int,
            2147483647 as libc::c_int,
            43 as libc::c_int,
            20 as libc::c_int,
            7 as libc::c_int,
        ],
        [
            39 as libc::c_int,
            42 as libc::c_int,
            2147483647 as libc::c_int,
            8 as libc::c_int,
            21 as libc::c_int,
        ],
        [
            6 as libc::c_int,
            50 as libc::c_int,
            42 as libc::c_int,
            2147483647 as libc::c_int,
            8 as libc::c_int,
        ],
        [
            41 as libc::c_int,
            26 as libc::c_int,
            10 as libc::c_int,
            35 as libc::c_int,
            2147483647 as libc::c_int,
        ],
    ];
    branchbound(map.as_mut_ptr());
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
