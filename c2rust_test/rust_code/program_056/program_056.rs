use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ListNode {
    pub data: libc::c_int,
    pub next: *mut ListNode,
}
#[no_mangle]
pub static mut head1: *mut ListNode = 0 as *const ListNode as *mut ListNode;
#[no_mangle]
pub static mut head2: *mut ListNode = 0 as *const ListNode as *mut ListNode;
#[no_mangle]
pub unsafe extern "C" fn initialize() {
    head1 = 0 as *mut ListNode;
    head2 = 0 as *mut ListNode;
}
#[no_mangle]
pub unsafe extern "C" fn insert(mut head: *mut *mut ListNode, mut data: libc::c_int) {
    let mut newNode: *mut ListNode = malloc(
        ::core::mem::size_of::<ListNode>() as libc::c_ulong,
    ) as *mut ListNode;
    (*newNode).data = data;
    (*newNode).next = *head;
    *head = newNode;
}
#[no_mangle]
pub unsafe extern "C" fn getLength(mut head: *mut ListNode) -> libc::c_int {
    if head.is_null() {
        printf(
            b"Error : Invalid ListNode pointer !!!\n\0" as *const u8
                as *const libc::c_char,
        );
        return 0 as libc::c_int;
    }
    let mut length: libc::c_int = 0 as libc::c_int;
    while !head.is_null() {
        head = (*head).next;
        length += 1;
        length;
    }
    return length;
}
#[no_mangle]
pub unsafe extern "C" fn printLinkedList(mut head: *mut ListNode) {
    while !head.is_null() {
        printf(b"%d\0" as *const u8 as *const libc::c_char, (*head).data);
        head = (*head).next;
        if !head.is_null() {
            printf(b"-->\0" as *const u8 as *const libc::c_char);
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn reverseLinkedList(mut head: *mut ListNode) -> *mut ListNode {
    let mut previous: *mut ListNode = 0 as *mut ListNode;
    let mut current: *mut ListNode = 0 as *mut ListNode;
    let mut next: *mut ListNode = 0 as *mut ListNode;
    previous = 0 as *mut ListNode;
    current = head;
    while !current.is_null() {
        next = (*current).next;
        (*current).next = previous;
        previous = current;
        current = next;
    }
    return previous;
}
#[no_mangle]
pub unsafe extern "C" fn intersectingNodeBruteForce(
    mut head1_0: *mut ListNode,
    mut head2_0: *mut ListNode,
) -> *mut ListNode {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    while !head1_0.is_null() {
        temp = head2_0;
        printf(
            b"\n List1 data is %d\0" as *const u8 as *const libc::c_char,
            (*head1_0).data,
        );
        while !temp.is_null() {
            if (*temp).data == (*head1_0).data {
                printf(
                    b"\n List2 data is %d\0" as *const u8 as *const libc::c_char,
                    (*temp).data,
                );
                return head1_0;
            }
            temp = (*temp).next;
        }
        head1_0 = (*head1_0).next;
    }
    return 0 as *mut ListNode;
}
unsafe fn main_0() -> libc::c_int {
    let mut intersectingNode: *mut ListNode = 0 as *mut ListNode;
    initialize();
    insert(&mut head1, 3 as libc::c_int);
    insert(&mut head1, 8 as libc::c_int);
    insert(&mut head1, 12 as libc::c_int);
    insert(&mut head1, 0 as libc::c_int);
    insert(&mut head1, 35 as libc::c_int);
    insert(&mut head1, 6 as libc::c_int);
    insert(&mut head1, 10 as libc::c_int);
    insert(&mut head1, 350 as libc::c_int);
    insert(&mut head1, 16 as libc::c_int);
    insert(&mut head1, 19 as libc::c_int);
    head1 = reverseLinkedList(head1);
    printf(b"\nLinked List\n\0" as *const u8 as *const libc::c_char);
    printLinkedList(head1);
    insert(&mut head2, 13 as libc::c_int);
    insert(&mut head2, 18 as libc::c_int);
    insert(&mut head2, 112 as libc::c_int);
    insert(&mut head2, 10 as libc::c_int);
    insert(&mut head2, 135 as libc::c_int);
    insert(&mut head2, 16 as libc::c_int);
    insert(&mut head2, 10 as libc::c_int);
    insert(&mut head2, 350 as libc::c_int);
    insert(&mut head2, 16 as libc::c_int);
    insert(&mut head2, 19 as libc::c_int);
    head2 = reverseLinkedList(head2);
    printf(b"\nLinked List\n\0" as *const u8 as *const libc::c_char);
    printLinkedList(head2);
    intersectingNode = intersectingNodeBruteForce(head1, head2);
    if !intersectingNode.is_null() {
        printf(
            b"\n Intersecting node is %d\0" as *const u8 as *const libc::c_char,
            (*intersectingNode).data,
        );
    } else {
        printf(b"\n NULL \n\0" as *const u8 as *const libc::c_char);
    }
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
