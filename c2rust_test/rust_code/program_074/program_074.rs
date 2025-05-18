use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn puts(__s: *const libc::c_char) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct linked_list {
    pub number: libc::c_int,
    pub next: *mut linked_list,
    pub previous: *mut linked_list,
}
pub type node = linked_list;
#[no_mangle]
pub static mut head: *mut node = 0 as *const node as *mut node;
#[no_mangle]
pub static mut tail: *mut node = 0 as *const node as *mut node;
unsafe fn main_0() -> libc::c_int {
    let mut a: libc::c_int = 5 as libc::c_int;
    let mut b: libc::c_int = 15 as libc::c_int;
    let mut c: libc::c_int = 43 as libc::c_int;
    let mut d: libc::c_int = 23 as libc::c_int;
    let mut e: libc::c_int = 12 as libc::c_int;
    let mut f: libc::c_int = 66 as libc::c_int;
    let mut g: libc::c_int = 99 as libc::c_int;
    let mut h: libc::c_int = 65 as libc::c_int;
    let mut i: libc::c_int = 20 as libc::c_int;
    let mut j: libc::c_int = 8 as libc::c_int;
    let mut pos: libc::c_int = 2 as libc::c_int;
    let mut insertMidValue: libc::c_int = 500 as libc::c_int;
    let mut deletePos: libc::c_int = 4 as libc::c_int;
    printf(
        b"Insert nodes at tail: %d, %d, %d\n\0" as *const u8 as *const libc::c_char,
        a,
        b,
        c,
    );
    insert_at_tail(a);
    insert_at_tail(b);
    insert_at_tail(c);
    printLinkedListForward();
    printf(
        b"Insert node: %d at middle. Position: %d\n\0" as *const u8
            as *const libc::c_char,
        insertMidValue,
        pos,
    );
    insert_at_middle(insertMidValue, pos);
    printLinkedListForward();
    printf(
        b"Delete item of position number %d\0" as *const u8 as *const libc::c_char,
        deletePos,
    );
    deleteNode(deletePos);
    printLinkedListForward();
    printf(b"Insert nodes at front: %d\n\0" as *const u8 as *const libc::c_char, d);
    insert_at_head(d);
    printLinkedListForward();
    printf(b"Insert nodes at tail: %d\n\0" as *const u8 as *const libc::c_char, e);
    insert_at_tail(e);
    printLinkedListForward();
    printf(b"Insert nodes at front: %d\n\0" as *const u8 as *const libc::c_char, f);
    insert_at_head(f);
    printLinkedListForward();
    printf(b"Delete first node of list\n\0" as *const u8 as *const libc::c_char);
    deleteNode(1 as libc::c_int);
    printLinkedListForward();
    printf(
        b"Insert nodes at tail: %d, %d, %d, %d\n\0" as *const u8 as *const libc::c_char,
        g,
        h,
        i,
        j,
    );
    insert_at_tail(g);
    insert_at_tail(h);
    insert_at_tail(i);
    insert_at_tail(j);
    printLinkedListForward();
    printLinkedListBackward();
    let mut value: libc::c_int = h;
    if isValueAvailable(value) as libc::c_int == 1 as libc::c_int {
        printf(
            b"%d found in the list.\n\n\0" as *const u8 as *const libc::c_char,
            value,
        );
    } else {
        printf(
            b"%d not found in the list.\n\n\0" as *const u8 as *const libc::c_char,
            value,
        );
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn getNewNode(mut val: libc::c_int) -> *mut node {
    let mut temp_node: *mut node = 0 as *mut node;
    temp_node = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
    (*temp_node).number = val;
    (*temp_node).next = 0 as *mut linked_list;
    (*temp_node).previous = 0 as *mut linked_list;
    return temp_node;
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_head(mut value: libc::c_int) {
    let mut newNode: *mut node = getNewNode(value);
    if head.is_null() {
        head = newNode;
        tail = newNode;
        return;
    }
    (*newNode).next = head;
    (*head).previous = newNode;
    head = newNode;
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_tail(mut value: libc::c_int) {
    let mut newNode: *mut node = getNewNode(value);
    if head.is_null() {
        head = newNode;
        tail = newNode;
        return;
    }
    (*tail).next = newNode;
    (*newNode).previous = tail;
    tail = newNode;
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_middle(
    mut value: libc::c_int,
    mut position: libc::c_int,
) {
    let mut newNode: *mut node = getNewNode(value);
    if head.is_null() {
        head = newNode;
        tail = newNode;
        return;
    }
    let mut temp: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
        as *mut node;
    temp = head;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i < position - 1 as libc::c_int && !((*temp).next).is_null() {
        temp = (*temp).next;
        i += 1;
        i;
    }
    (*newNode).next = (*temp).next;
    (*newNode).previous = temp;
    if !((*temp).next).is_null() {
        (*(*temp).next).previous = newNode;
    }
    (*temp).next = newNode;
}
#[no_mangle]
pub unsafe extern "C" fn deleteNode(mut position: libc::c_int) {
    if head.is_null() {
        return;
    }
    if position == 1 as libc::c_int {
        head = (*head).next;
        if ((*head).next).is_null() {
            tail = 0 as *mut node;
        } else {
            (*(*head).next).previous = 0 as *mut linked_list;
        }
        return;
    }
    let mut temp: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
        as *mut node;
    let mut tempAnother: *mut node = malloc(
        ::core::mem::size_of::<node>() as libc::c_ulong,
    ) as *mut node;
    let mut i: libc::c_int = 1 as libc::c_int;
    temp = head;
    while i < position && !((*temp).next).is_null() {
        temp = (*temp).next;
        i += 1;
        i;
    }
    if i == position {
        tempAnother = (*temp).previous;
        (*tempAnother).next = (*temp).next;
        if ((*temp).next).is_null() {
            tail = tempAnother;
        } else {
            (*(*temp).next).previous = tempAnother;
        }
        free(temp as *mut libc::c_void);
    } else {
        printf(
            b"Desired position does not exist! Position: %d\n\0" as *const u8
                as *const libc::c_char,
            i,
        );
    };
}
#[no_mangle]
pub unsafe extern "C" fn printLinkedListForward() {
    printf(
        b"\nYour updated linked list in FORWARD ORDER:\n\0" as *const u8
            as *const libc::c_char,
    );
    let mut myList: *mut node = 0 as *mut node;
    myList = head;
    while !(head.is_null() || tail.is_null()) {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*myList).number);
        if myList == tail {
            break;
        }
        myList = (*myList).next;
    }
    puts(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn printLinkedListBackward() {
    printf(
        b"\nYour full linked list in REVERSE ORDER:\n\0" as *const u8
            as *const libc::c_char,
    );
    let mut myList: *mut node = 0 as *mut node;
    myList = tail;
    while !(head.is_null() || tail.is_null()) {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*myList).number);
        if ((*myList).previous).is_null() {
            break;
        }
        myList = (*myList).previous;
    }
    puts(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn isValueAvailable(mut value: libc::c_int) -> bool {
    let mut p: *mut node = head;
    while !p.is_null() {
        if (*p).number == value {
            return 1 as libc::c_int != 0
        } else {
            p = (*p).next;
        }
    }
    return 0 as libc::c_int != 0;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
