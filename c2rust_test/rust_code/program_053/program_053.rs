use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub data: libc::c_int,
    pub next: *mut Node,
}
#[no_mangle]
pub static mut Head: *mut Node = 0 as *const Node as *mut Node;
#[no_mangle]
pub unsafe extern "C" fn createCircularNode(mut value: libc::c_int) -> *mut Node {
    let mut node: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*node).data = value;
    (*node).next = node;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn createLinkList(
    mut values: *mut libc::c_int,
    mut length: libc::c_int,
) {
    let mut last: *mut Node = 0 as *mut Node;
    let mut current: *mut Node = 0 as *mut Node;
    Head = createCircularNode(*values.offset(0 as libc::c_int as isize));
    last = Head;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i < length {
        current = createCircularNode(*values.offset(i as isize));
        (*last).next = current;
        (*current).next = Head;
        last = current;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn calculateLength(mut head: *mut Node) -> libc::c_int {
    let mut length: libc::c_int = 0 as libc::c_int;
    loop {
        length += 1;
        length;
        head = (*head).next;
        if !(head != Head) {
            break;
        }
    }
    return length;
}
#[no_mangle]
pub unsafe extern "C" fn PrintList(mut head: *mut Node) {
    head = Head;
    loop {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*head).data);
        head = (*head).next;
        if !(head != Head) {
            break;
        }
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn insertValue(
    mut head: *mut Node,
    mut index: libc::c_int,
    mut value: libc::c_int,
) {
    let mut node: *mut Node = createCircularNode(value);
    if index < 0 as libc::c_int || index > calculateLength(Head) {
        return;
    }
    if index == 0 as libc::c_int {
        if head.is_null() {
            head = node;
        } else {
            while (*head).next != Head {
                head = (*head).next;
            }
            (*node).next = Head;
            (*head).next = node;
            Head = node;
        }
    } else {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index - 1 as libc::c_int {
            head = (*head).next;
            i += 1;
            i;
        }
        (*node).next = (*head).next;
        (*head).next = node;
    };
}
#[no_mangle]
pub unsafe extern "C" fn removeNode(
    mut current: *mut Node,
    mut prev_node: *mut Node,
    mut index: libc::c_int,
) -> libc::c_int {
    let mut value: libc::c_int = -(1 as libc::c_int);
    if index > calculateLength(Head) || index < 0 as libc::c_int {
        return -(1 as libc::c_int);
    }
    if index == 0 as libc::c_int {
        while (*current).next != Head {
            current = (*current).next;
        }
        (*current).next = (*Head).next;
        value = (*Head).data;
        free(Head as *mut libc::c_void);
        Head = (*current).next;
    } else {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < index {
            prev_node = current;
            current = (*current).next;
            i += 1;
            i;
        }
        (*prev_node).next = (*current).next;
        value = (*current).data;
        free(current as *mut libc::c_void);
    }
    return value;
}
unsafe fn main_0() -> libc::c_int {
    let mut values: [libc::c_int; 5] = [
        1 as libc::c_int,
        2 as libc::c_int,
        3 as libc::c_int,
        4 as libc::c_int,
        5 as libc::c_int,
    ];
    createLinkList(values.as_mut_ptr(), 5 as libc::c_int);
    printf(b"original linkList:\n\0" as *const u8 as *const libc::c_char);
    PrintList(Head);
    insertValue(Head, 0 as libc::c_int, 6 as libc::c_int);
    printf(b"The new linkList:\n\0" as *const u8 as *const libc::c_char);
    PrintList(Head);
    printf(
        b"deleted value:%d\n\0" as *const u8 as *const libc::c_char,
        removeNode(Head, 0 as *mut Node, 0 as libc::c_int),
    );
    printf(b"LinkedList Restored\n\0" as *const u8 as *const libc::c_char);
    PrintList(Head);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
