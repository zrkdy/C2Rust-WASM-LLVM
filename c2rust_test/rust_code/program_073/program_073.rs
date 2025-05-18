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
    let mut deletePos: libc::c_int = 5 as libc::c_int;
    printf(b"Insert at head: %d\n\0" as *const u8 as *const libc::c_char, a);
    insert_at_head(a);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(
        b"Insert at tail: %d, %d, %d\n\0" as *const u8 as *const libc::c_char,
        b,
        c,
        d,
    );
    insert_at_tail(b);
    insert_at_tail(c);
    insert_at_tail(d);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(b"Delete HEAD\n\0" as *const u8 as *const libc::c_char);
    delete_head();
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(b"Insert at head: %d\n\0" as *const u8 as *const libc::c_char, e);
    insert_at_head(e);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(
        b"Insert at POSITION: %d, VALUE: %d\n\0" as *const u8 as *const libc::c_char,
        pos,
        insertMidValue,
    );
    insert_at_middle(insertMidValue, pos);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(b"Delete TAIL\n\0" as *const u8 as *const libc::c_char);
    delete_tail();
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(
        b"Insert at tail: %d, %d, %d\n\0" as *const u8 as *const libc::c_char,
        f,
        g,
        h,
    );
    insert_at_tail(f);
    insert_at_tail(g);
    insert_at_tail(h);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    printf(
        b"Delete from POSITION: %d\n\0" as *const u8 as *const libc::c_char,
        deletePos,
    );
    delete_middle(deletePos);
    printf(b"Updated Full list:\n\0" as *const u8 as *const libc::c_char);
    print_list();
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_head(mut number: libc::c_int) {
    let mut newNode: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
        as *mut node;
    (*newNode).number = number;
    (*newNode).next = newNode;
    if head.is_null() {
        head = newNode;
        tail = newNode;
    } else {
        (*newNode).next = head;
        (*tail).next = newNode;
        head = newNode;
    };
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_tail(mut number: libc::c_int) {
    let mut newNode: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
        as *mut node;
    (*newNode).number = number;
    (*newNode).next = newNode;
    if head.is_null() {
        head = newNode;
        tail = newNode;
    } else {
        (*tail).next = newNode;
        (*newNode).next = head;
        tail = newNode;
    };
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_middle(
    mut number: libc::c_int,
    mut position: libc::c_int,
) {
    if position == 1 as libc::c_int {
        insert_at_head(number);
        return;
    } else if position > 1 as libc::c_int && !head.is_null() {
        let mut current: *mut node = head;
        let mut temp: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
            as *mut node;
        let mut count: libc::c_int = 0 as libc::c_int;
        loop {
            count += 1;
            count;
            temp = current;
            current = (*current).next;
            if !((*current).next != head && count < position - 1 as libc::c_int) {
                break;
            }
        }
        if count == position - 1 as libc::c_int {
            if temp == tail {
                insert_at_tail(number);
            } else {
                let mut newNode: *mut node = malloc(
                    ::core::mem::size_of::<node>() as libc::c_ulong,
                ) as *mut node;
                (*newNode).number = number;
                (*temp).next = newNode;
                (*newNode).next = current;
            }
            return;
        }
    }
    printf(b"Position does not exist!\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn delete_head() {
    if head.is_null() {
        return;
    }
    let mut temp: *mut node = head;
    (*tail).next = (*head).next;
    head = (*head).next;
    free(temp as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn delete_tail() {
    if head.is_null() {
        return;
    }
    let mut temp: *mut node = head;
    let mut current: *mut node = head;
    while (*current).next != head {
        temp = current;
        current = (*current).next;
    }
    (*temp).next = head;
    tail = temp;
    free(current as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn delete_middle(mut position: libc::c_int) {
    if head.is_null() {
        return;
    }
    if position == 1 as libc::c_int {
        delete_head();
        return;
    }
    let mut current: *mut node = head;
    let mut temp: *mut node = 0 as *mut node;
    let mut count: libc::c_int = 0 as libc::c_int;
    loop {
        count += 1;
        count;
        temp = current;
        current = (*current).next;
        if !((*current).next != head && count < position - 1 as libc::c_int) {
            break;
        }
    }
    if count == position - 1 as libc::c_int {
        if current == tail {
            delete_tail();
            return;
        }
        (*temp).next = (*current).next;
        free(current as *mut libc::c_void);
        return;
    }
    printf(
        b"Position (%d) does not exist!\n\0" as *const u8 as *const libc::c_char,
        position,
    );
}
#[no_mangle]
pub unsafe extern "C" fn print_list() {
    if head.is_null() {
        return;
    }
    let mut current: *mut node = head;
    loop {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*current).number);
        current = (*current).next;
        if !(current != head) {
            break;
        }
    }
    printf(
        b"\nList Length: %d\n\0" as *const u8 as *const libc::c_char,
        getListLength(),
    );
    puts(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn getListLength() -> libc::c_int {
    if head.is_null() {
        return 0 as libc::c_int;
    }
    let mut count: libc::c_int = 0 as libc::c_int;
    let mut current: *mut node = head;
    loop {
        count += 1;
        count;
        current = (*current).next;
        if !(current != head) {
            break;
        }
    }
    return count;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
