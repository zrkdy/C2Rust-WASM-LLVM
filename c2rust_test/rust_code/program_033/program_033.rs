use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub id: libc::c_int,
    pub vertex: libc::c_int,
    pub next: *mut Node,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TNode {
    pub cost: libc::c_int,
    pub id: libc::c_int,
    pub prev: *mut TNode,
}
#[no_mangle]
pub static mut stack: [*mut TNode; 100] = [0 as *const TNode as *mut TNode; 100];
#[no_mangle]
pub static mut sp: libc::c_int = -(1 as libc::c_int);
#[no_mangle]
pub unsafe extern "C" fn push(mut item: *mut TNode) {
    sp += 1;
    stack[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop() -> *mut TNode {
    let fresh0 = sp;
    sp = sp - 1;
    return stack[fresh0 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn top() -> *mut TNode {
    return stack[sp as usize];
}
#[no_mangle]
pub unsafe extern "C" fn empty() -> libc::c_int {
    return (sp == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn insertsort(mut data: *mut *mut TNode, mut size: libc::c_int) {
    let mut pivot: *mut TNode = 0 as *mut TNode;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 1 as libc::c_int;
    while i < size {
        pivot = *data.offset(i as isize);
        j = i - 1 as libc::c_int;
        while j >= 0 as libc::c_int && (**data.offset(j as isize)).cost < (*pivot).cost {
            let ref mut fresh1 = *data.offset((j + 1 as libc::c_int) as isize);
            *fresh1 = *data.offset(j as isize);
            j -= 1;
            j;
        }
        let ref mut fresh2 = *data.offset((j + 1 as libc::c_int) as isize);
        *fresh2 = pivot;
        i += 1;
        i;
    }
}
#[no_mangle]
pub static mut min: libc::c_int = 2147483647 as libc::c_int;
#[no_mangle]
pub unsafe extern "C" fn displayoutcome(mut node: *mut TNode) {
    min = (*node).cost;
    while !node.is_null() {
        printf(b"%d<==\0" as *const u8 as *const libc::c_char, (*node).id);
        node = (*node).prev;
    }
    printf(b"cost=%d\n\0" as *const u8 as *const libc::c_char, min);
}
#[no_mangle]
pub unsafe extern "C" fn branchbound(mut map: *mut *mut Node) {
    let mut currentnode: *mut TNode = malloc(
        ::core::mem::size_of::<TNode>() as libc::c_ulong,
    ) as *mut TNode;
    (*currentnode).id = 0 as libc::c_int;
    (*currentnode).cost = 0 as libc::c_int;
    (*currentnode).prev = 0 as *mut TNode;
    push(currentnode);
    let mut neibor: *mut Node = 0 as *mut Node;
    let mut nextnode: *mut TNode = 0 as *mut TNode;
    let mut neibors: [*mut TNode; 13] = [0 as *mut TNode; 13];
    let mut neiborsize: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    while empty() == 0 {
        currentnode = top();
        if (*currentnode).id == 12 as libc::c_int && (*currentnode).cost < min {
            displayoutcome(currentnode);
        }
        pop();
        if (*currentnode).cost > min {
            continue;
        }
        neibor = *map.offset((*currentnode).id as isize);
        neiborsize = 0 as libc::c_int;
        while !neibor.is_null() {
            nextnode = malloc(::core::mem::size_of::<TNode>() as libc::c_ulong)
                as *mut TNode;
            (*nextnode).id = (*neibor).id;
            (*nextnode).prev = currentnode;
            (*nextnode).cost = (*currentnode).cost + (*neibor).vertex;
            let fresh3 = neiborsize;
            neiborsize = neiborsize + 1;
            neibors[fresh3 as usize] = nextnode;
            neibor = (*neibor).next;
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
#[no_mangle]
pub unsafe extern "C" fn insertedge(
    mut map: *mut *mut Node,
    mut node1: libc::c_int,
    mut node2: libc::c_int,
    mut vertex: libc::c_int,
) {
    let mut cur: *mut Node = *map.offset(node1 as isize);
    let mut new: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*new).id = node2;
    (*new).vertex = vertex;
    (*new).next = cur;
    let ref mut fresh4 = *map.offset(node1 as isize);
    *fresh4 = new;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut map: [*mut Node; 13] = [0 as *mut Node; 13];
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 1 as libc::c_int, 2 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 2 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 3 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 4 as libc::c_int, 6 as libc::c_int);
    insertedge(map.as_mut_ptr(), 1 as libc::c_int, 5 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 1 as libc::c_int, 5 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 2 as libc::c_int, 5 as libc::c_int, 9 as libc::c_int);
    insertedge(map.as_mut_ptr(), 2 as libc::c_int, 7 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 3 as libc::c_int, 5 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 3 as libc::c_int, 7 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 4 as libc::c_int, 6 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 4 as libc::c_int, 7 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 5 as libc::c_int, 8 as libc::c_int, 6 as libc::c_int);
    insertedge(map.as_mut_ptr(), 5 as libc::c_int, 10 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 8 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 9 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 11 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 9 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 10 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 11 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 8 as libc::c_int, 12 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 9 as libc::c_int, 12 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 10 as libc::c_int, 12 as libc::c_int, 2 as libc::c_int);
    insertedge(map.as_mut_ptr(), 11 as libc::c_int, 12 as libc::c_int, 5 as libc::c_int);
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
