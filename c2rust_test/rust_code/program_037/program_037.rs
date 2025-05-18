use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn exit(_: libc::c_int) -> !;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub vertex: libc::c_int,
    pub depth: libc::c_int,
    pub left: *mut Node,
    pub right: *mut Node,
}
#[no_mangle]
pub unsafe extern "C" fn insertnode(mut treep: *mut *mut Node, mut vertex: libc::c_int) {
    let mut new: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    if new.is_null() {
        exit(1 as libc::c_int);
    }
    (*new).vertex = vertex;
    (*new).depth = 0 as libc::c_int;
    (*new).right = 0 as *mut Node;
    (*new).left = (*new).right;
    if (*treep).is_null() {
        *treep = new;
        return;
    }
    let mut tree: *mut Node = *treep;
    let mut parent: *mut Node = 0 as *mut Node;
    while !tree.is_null() {
        parent = tree;
        tree = if (*tree).vertex >= vertex { (*tree).left } else { (*tree).right };
    }
    if (*parent).vertex >= vertex {
        (*parent).left = new;
    } else {
        (*parent).right = new;
    };
}
#[no_mangle]
pub unsafe extern "C" fn prefix(mut tree: *mut Node) {
    if !tree.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*tree).vertex);
        prefix((*tree).left);
        prefix((*tree).right);
    }
}
#[no_mangle]
pub static mut stack: [*mut Node; 100] = [0 as *const Node as *mut Node; 100];
#[no_mangle]
pub static mut sp: libc::c_int = -(1 as libc::c_int);
#[no_mangle]
pub unsafe extern "C" fn push(mut item: *mut Node) {
    sp += 1;
    stack[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop() -> *mut Node {
    let fresh0 = sp;
    sp = sp - 1;
    return stack[fresh0 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn empty() -> libc::c_int {
    return (sp == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn getdepth(mut tree: *mut Node) -> libc::c_int {
    let mut cur: *mut Node = tree;
    let mut curdepth: libc::c_int = 0 as libc::c_int;
    let mut depth: libc::c_int = 0 as libc::c_int;
    while !cur.is_null() || empty() == 0 {
        while !cur.is_null() {
            let fresh1 = curdepth;
            curdepth = curdepth + 1;
            (*cur).depth = fresh1;
            push(cur);
            if (*cur).depth > depth {
                depth = (*cur).depth;
            }
            cur = (*cur).left;
        }
        if cur.is_null() {
            cur = pop();
            curdepth = (*cur).depth + 1 as libc::c_int;
            cur = (*cur).right;
        }
    }
    return depth;
}
#[no_mangle]
pub static mut queue: [*mut Node; 100] = [0 as *const Node as *mut Node; 100];
#[no_mangle]
pub static mut head: libc::c_int = 0;
#[no_mangle]
pub static mut rear: libc::c_int = 0;
#[no_mangle]
pub unsafe extern "C" fn qempty() -> libc::c_int {
    return (head == rear) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn qfull() -> libc::c_int {
    return ((rear + 1 as libc::c_int) % 100 as libc::c_int == head) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut item: *mut Node) {
    if qfull() != 0 {
        printf(b"Error:almost full.\n\0" as *const u8 as *const libc::c_char);
        return;
    }
    queue[rear as usize] = item;
    rear = (rear + 1 as libc::c_int) % 100 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn dequeue() -> *mut Node {
    if qempty() != 0 {
        return 0 as *mut Node;
    }
    let mut ret: *mut Node = queue[head as usize];
    head = (head + 1 as libc::c_int) % 100 as libc::c_int;
    return ret;
}
#[no_mangle]
pub unsafe extern "C" fn getdepth_cuo(mut tree: *mut Node) -> libc::c_int {
    let mut depth: libc::c_int = 0 as libc::c_int;
    if tree.is_null() {
        return depth;
    }
    (*tree).depth = 0 as libc::c_int;
    enqueue(tree);
    let mut cur: *mut Node = 0 as *mut Node;
    while qempty() == 0 {
        cur = dequeue();
        if (*cur).depth > depth {
            depth = (*cur).depth;
        }
        if !((*cur).left).is_null() {
            (*(*cur).left).depth = (*cur).depth + 1 as libc::c_int;
            enqueue((*cur).left);
        }
        if !((*cur).right).is_null() {
            (*(*cur).right).depth = (*cur).depth + 1 as libc::c_int;
            enqueue((*cur).right);
        }
    }
    return depth;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut data: [libc::c_int; 12] = [
        7 as libc::c_int,
        10 as libc::c_int,
        2 as libc::c_int,
        8 as libc::c_int,
        4 as libc::c_int,
        8 as libc::c_int,
        6 as libc::c_int,
        1 as libc::c_int,
        9 as libc::c_int,
        11 as libc::c_int,
        3 as libc::c_int,
        5 as libc::c_int,
    ];
    let mut size: libc::c_int = (::core::mem::size_of::<[libc::c_int; 12]>()
        as libc::c_ulong)
        .wrapping_div(::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
        as libc::c_int;
    let mut tree: *mut Node = 0 as *mut Node;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < size {
        insertnode(&mut tree, data[i as usize]);
        i += 1;
        i;
    }
    let mut depth: libc::c_int = getdepth(tree);
    printf(
        b"using prefix(dfs),height=depth=%d\n\0" as *const u8 as *const libc::c_char,
        depth,
    );
    depth = getdepth_cuo(tree);
    printf(b"using bfs,height=depth=%d\n\0" as *const u8 as *const libc::c_char, depth);
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
