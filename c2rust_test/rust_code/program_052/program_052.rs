use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub prev: *mut Node,
    pub data: libc::c_int,
    pub next: *mut Node,
}
#[no_mangle]
pub static mut Head: *mut Node = 0 as *const Node as *mut Node;
#[no_mangle]
pub unsafe extern "C" fn createNode(mut value: libc::c_int) -> *mut Node {
    let mut node: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*node).prev = node;
    (*node).data = value;
    (*node).next = node;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn createLinkList(
    mut values: *mut libc::c_int,
    mut length: libc::c_int,
) {
    Head = createNode(*values.offset(0 as libc::c_int as isize));
    let mut current: *mut Node = 0 as *mut Node;
    let mut last: *mut Node = Head;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i < length {
        current = createNode(*values.offset(i as isize));
        (*last).next = current;
        (*current).prev = last;
        (*current).next = Head;
        (*Head).prev = current;
        last = current;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn findLength(mut node: *mut Node) -> libc::c_int {
    let mut length: libc::c_int = 0 as libc::c_int;
    loop {
        length += 1;
        length;
        node = (*node).next;
        if !(node != Head) {
            break;
        }
    }
    return length;
}
#[no_mangle]
pub unsafe extern "C" fn insertHead(mut current: *mut Node, mut value: libc::c_int) {
    current = createNode(value);
    (*current).next = Head;
    (*(*Head).prev).next = current;
    (*current).prev = (*Head).prev;
    (*Head).prev = current;
    Head = current;
}
#[no_mangle]
pub unsafe extern "C" fn insertNode(
    mut Head_0: *mut Node,
    mut index: libc::c_int,
    mut value: libc::c_int,
) {
    if index < 0 as libc::c_int || index > findLength(Head_0) {
        return;
    }
    if index == 0 as libc::c_int {
        if Head_0.is_null() {
            Head_0 = createNode(value);
        } else {
            insertHead(Head_0, value);
        }
    } else {
        let mut node: *mut Node = createNode(value);
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index - 1 as libc::c_int {
            Head_0 = (*Head_0).next;
            i += 1;
            i;
        }
        (*node).next = (*Head_0).next;
        (*(*Head_0).next).prev = node;
        (*Head_0).next = node;
        (*node).prev = Head_0;
    };
}
#[no_mangle]
pub unsafe extern "C" fn removeNode(
    mut node: *mut Node,
    mut index: libc::c_int,
) -> libc::c_int {
    let mut removed: libc::c_int = -(1 as libc::c_int);
    if index > findLength(Head) || index < 0 as libc::c_int {
        return -(1 as libc::c_int);
    }
    if index == 0 as libc::c_int {
        (*(*node).prev).next = (*Head).next;
        Head = (*Head).next;
        (*Head).prev = (*node).prev;
        removed = (*node).data;
        free(node as *mut libc::c_void);
    } else {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index {
            node = (*node).next;
            i += 1;
            i;
        }
        (*(*node).prev).next = (*node).next;
        (*(*node).next).prev = (*node).prev;
        removed = (*node).data;
        free(node as *mut libc::c_void);
    }
    return removed;
}
#[no_mangle]
pub unsafe extern "C" fn printList(mut node: *mut Node) {
    loop {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*node).data);
        node = (*node).next;
        if !(node != Head) {
            break;
        }
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
unsafe fn main_0() -> libc::c_int {
    let mut values: [libc::c_int; 5] = [
        10 as libc::c_int,
        20 as libc::c_int,
        30 as libc::c_int,
        40 as libc::c_int,
        50 as libc::c_int,
    ];
    createLinkList(values.as_mut_ptr(), 5 as libc::c_int);
    printf(b"created link list\n\0" as *const u8 as *const libc::c_char);
    printList(Head);
    insertNode(Head, 0 as libc::c_int, 60 as libc::c_int);
    printf(b"LinkList after insertion\n\0" as *const u8 as *const libc::c_char);
    printList(Head);
    printf(
        b"link list after deletion of node having value %d\n\0" as *const u8
            as *const libc::c_char,
        removeNode(Head, 0 as libc::c_int),
    );
    printList(Head);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
