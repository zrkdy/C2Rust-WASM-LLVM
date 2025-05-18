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
pub unsafe extern "C" fn CreateNode(mut value: libc::c_int) -> *mut Node {
    let mut node: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*node).prev = 0 as *mut Node;
    (*node).data = value;
    (*node).next = 0 as *mut Node;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn CreateLinkList(
    mut values: *mut libc::c_int,
    mut length: libc::c_int,
) {
    Head = CreateNode(*values.offset(0 as libc::c_int as isize));
    let mut current: *mut Node = 0 as *mut Node;
    let mut last: *mut Node = Head;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i < length {
        current = CreateNode(*values.offset(i as isize));
        (*last).next = current;
        (*current).prev = last;
        last = current;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn calculateLength(mut Head_0: *mut Node) -> libc::c_int {
    let mut length: libc::c_int = 0 as libc::c_int;
    while !Head_0.is_null() {
        length += 1;
        length;
        Head_0 = (*Head_0).next;
    }
    return length;
}
#[no_mangle]
pub unsafe extern "C" fn InsertHead(mut node: *mut Node, mut value: libc::c_int) {
    node = CreateNode(value);
    (*node).next = Head;
    (*Head).prev = node;
    Head = node;
}
#[no_mangle]
pub unsafe extern "C" fn InsertNode(
    mut Head_0: *mut Node,
    mut index: libc::c_int,
    mut value: libc::c_int,
) {
    let mut node: *mut Node = CreateNode(value);
    if index < 0 as libc::c_int || index > calculateLength(Head_0) {
        return;
    }
    if index == 0 as libc::c_int {
        if Head_0.is_null() {
            Head_0 = node;
        } else {
            InsertHead(Head_0, value);
        }
    } else {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index - 1 as libc::c_int {
            Head_0 = (*Head_0).next;
            i += 1;
            i;
        }
        (*node).prev = Head_0;
        (*node).next = (*Head_0).next;
        if !((*Head_0).next).is_null() {
            (*(*Head_0).next).prev = node;
        }
        (*Head_0).next = node;
        Head_0 = node;
    };
}
#[no_mangle]
pub unsafe extern "C" fn removeHead(mut current: *mut Node) -> libc::c_int {
    Head = (*Head).next;
    if !Head.is_null() {
        (*Head).prev = 0 as *mut Node;
    }
    let mut value: libc::c_int = (*current).data;
    free(current as *mut libc::c_void);
    return value;
}
#[no_mangle]
pub unsafe extern "C" fn removeValue(
    mut Head_0: *mut Node,
    mut index: libc::c_int,
) -> libc::c_int {
    let mut value: libc::c_int = -(1 as libc::c_int);
    if index < 0 as libc::c_int || index > calculateLength(Head_0) {
        return -(1 as libc::c_int);
    }
    if index == 0 as libc::c_int {
        value = removeHead(Head_0);
    } else {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index {
            Head_0 = (*Head_0).next;
            i += 1;
            i;
        }
        value = (*Head_0).data;
        (*(*Head_0).prev).next = (*Head_0).next;
        if !((*Head_0).next).is_null() {
            (*(*Head_0).next).prev = (*Head_0).prev;
        }
        free(Head_0 as *mut libc::c_void);
    }
    return value;
}
#[no_mangle]
pub unsafe extern "C" fn ReverseList(mut head: *mut Node) {
    let mut store: *mut Node = 0 as *mut Node;
    while !head.is_null() {
        store = (*head).next;
        (*head).next = (*head).prev;
        (*head).prev = store;
        head = (*head).prev;
        if !head.is_null() && ((*head).next).is_null() {
            Head = head;
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn PrintList(mut Head_0: *mut Node) {
    while !Head_0.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*Head_0).data);
        Head_0 = (*Head_0).next;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn PrintReverseList(mut Head_0: *mut Node) {
    while !((*Head_0).next).is_null() {
        Head_0 = (*Head_0).next;
    }
    while !Head_0.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*Head_0).data);
        Head_0 = (*Head_0).prev;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
unsafe fn main_0() -> libc::c_int {
    let mut values: [libc::c_int; 5] = [
        1 as libc::c_int,
        2 as libc::c_int,
        3 as libc::c_int,
        4 as libc::c_int,
        5 as libc::c_int,
    ];
    CreateLinkList(values.as_mut_ptr(), 5 as libc::c_int);
    printf(b"Created linkedList:\n\0" as *const u8 as *const libc::c_char);
    PrintList(Head);
    printf(b"length:%d\n\0" as *const u8 as *const libc::c_char, calculateLength(Head));
    InsertNode(Head, 5 as libc::c_int, 6 as libc::c_int);
    printf(b"New linkedList:\n\0" as *const u8 as *const libc::c_char);
    PrintList(Head);
    printf(
        b"After deletion of value %d containing node:\n\0" as *const u8
            as *const libc::c_char,
        removeValue(Head, 0 as libc::c_int),
    );
    PrintList(Head);
    printf(b"Reverse display of the linkedList\n\0" as *const u8 as *const libc::c_char);
    ReverseList(Head);
    PrintList(Head);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
