use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub data: libc::c_int,
    pub next: *mut Node,
}
#[no_mangle]
pub static mut head: *mut Node = 0 as *const Node as *mut Node;
#[no_mangle]
pub unsafe extern "C" fn insertatbeg(mut x: libc::c_int) {
    let mut temp: *mut Node = 0 as *mut Node;
    temp = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    (*temp).data = x;
    (*temp).next = head;
    head = temp;
}
#[no_mangle]
pub unsafe extern "C" fn insertatend(mut x: libc::c_int) {
    let mut temp: *mut Node = 0 as *mut Node;
    let mut p: *mut Node = 0 as *mut Node;
    temp = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    p = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    (*temp).data = x;
    (*temp).next = 0 as *mut Node;
    p = head;
    while !((*p).next).is_null() {
        p = (*p).next;
    }
    (*p).next = temp;
}
#[no_mangle]
pub unsafe extern "C" fn printlist(mut temp: *mut Node) {
    if temp.is_null() {
        return;
    }
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*temp).data);
    printlist((*temp).next);
}
#[no_mangle]
pub unsafe extern "C" fn inseratn(mut x: libc::c_int, mut n: libc::c_int) {
    let mut i: libc::c_int = 0;
    let mut temp: *mut Node = 0 as *mut Node;
    let mut p: *mut Node = 0 as *mut Node;
    let mut temp1: *mut Node = 0 as *mut Node;
    if n == 1 as libc::c_int {
        insertatbeg(x);
        return;
    }
    temp = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    p = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    temp1 = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    (*temp1).data = x;
    p = head;
    temp = head;
    i = 0 as libc::c_int;
    while i < n {
        temp = (*temp).next;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < n - 2 as libc::c_int {
        p = (*p).next;
        i += 1;
        i;
    }
    (*p).next = temp1;
    (*temp1).next = temp;
}
#[no_mangle]
pub unsafe extern "C" fn deleteatn(mut n: libc::c_int) {
    let mut temp: *mut Node = 0 as *mut Node;
    let mut p: *mut Node = 0 as *mut Node;
    let mut i: libc::c_int = 0;
    temp = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    p = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    p = head;
    temp = head;
    if n == 1 as libc::c_int {
        head = (*temp).next;
        return;
    }
    i = 0 as libc::c_int;
    while i < n {
        temp = (*temp).next;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < n - 2 as libc::c_int {
        p = (*p).next;
        i += 1;
        i;
    }
    (*p).next = temp;
}
#[no_mangle]
pub unsafe extern "C" fn reverse(mut temp: *mut Node) {
    if ((*temp).next).is_null() {
        head = temp;
        return;
    }
    reverse((*temp).next);
    let mut q: *mut Node = 0 as *mut Node;
    q = (*temp).next;
    (*q).next = temp;
    (*temp).next = 0 as *mut Node;
}
#[no_mangle]
pub unsafe extern "C" fn printrev(mut temp: *mut Node) {
    if temp.is_null() {
        return;
    }
    printrev((*temp).next);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*temp).data);
}
unsafe fn main_0() -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut n: libc::c_int = 0;
    let mut x: libc::c_int = 0;
    let mut c: libc::c_int = 0;
    head = 0 as *mut Node;
    printf(b"How many numbers?: \0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut n as *mut libc::c_int);
    printf(b"Enter %d numbers: \0" as *const u8 as *const libc::c_char, n);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut x as *mut libc::c_int);
    insertatbeg(x);
    i = 0 as libc::c_int;
    while i < n - 1 as libc::c_int {
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut x as *mut libc::c_int);
        insertatend(x);
        i += 1;
        i;
    }
    printf(b"LIST : \0" as *const u8 as *const libc::c_char);
    printlist(head);
    printf(
        b"\nWhat would you like to perform among these \n\0" as *const u8
            as *const libc::c_char,
    );
    printf(b"1.Add and element at nth position\n\0" as *const u8 as *const libc::c_char);
    printf(
        b"2.Delete an element from nth position\n\0" as *const u8 as *const libc::c_char,
    );
    printf(b"3.Reverse the list\n\0" as *const u8 as *const libc::c_char);
    printf(
        b"4.Print Reverse list(original list will remain same)\n\0" as *const u8
            as *const libc::c_char,
    );
    printf(b"Your choice: \0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut c as *mut libc::c_int);
    match c {
        1 => {
            printf(
                b"Enter number and its position: \0" as *const u8 as *const libc::c_char,
            );
            scanf(
                b"%d %d\0" as *const u8 as *const libc::c_char,
                &mut x as *mut libc::c_int,
                &mut n as *mut libc::c_int,
            );
            inseratn(x, n);
            printf(b"LIST : \0" as *const u8 as *const libc::c_char);
            printlist(head);
        }
        2 => {
            printf(
                b"Enter postion to be deleted: \0" as *const u8 as *const libc::c_char,
            );
            scanf(
                b"%d\0" as *const u8 as *const libc::c_char,
                &mut n as *mut libc::c_int,
            );
            deleteatn(n);
            printf(b"LIST : \0" as *const u8 as *const libc::c_char);
            printlist(head);
        }
        3 => {
            reverse(head);
            printf(b"LIST : \0" as *const u8 as *const libc::c_char);
            printlist(head);
        }
        4 => {
            printf(b"LIST: \0" as *const u8 as *const libc::c_char);
            printrev(head);
        }
        _ => {}
    }
    return 0;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
