use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
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
pub static mut last: *mut node = 0 as *const node as *mut node;
unsafe fn main_0() -> libc::c_int {
    let mut key: libc::c_int = 0;
    let mut value: libc::c_int = 0;
    printf(b"Create Linked List\n\0" as *const u8 as *const libc::c_char);
    create_linked_list();
    print_linked_list();
    printf(b"\nInsert new item at last\n\0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut value as *mut libc::c_int);
    insert_at_last(value);
    print_linked_list();
    printf(b"\nInsert new item at first\n\0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut value as *mut libc::c_int);
    insert_at_first(value);
    print_linked_list();
    printf(
        b"\nEnter a KEY (existing item of List), after that you want to insert a value\n\0"
            as *const u8 as *const libc::c_char,
    );
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut key as *mut libc::c_int);
    printf(
        b"\nInsert new item after %d KEY\n\0" as *const u8 as *const libc::c_char,
        key,
    );
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut value as *mut libc::c_int);
    insert_after(key, value);
    print_linked_list();
    printf(
        b"\nEnter an item to search it from List\n\0" as *const u8 as *const libc::c_char,
    );
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut value as *mut libc::c_int);
    search_item(value);
    printf(
        b"\nEnter a value, which you want to delete from list\n\0" as *const u8
            as *const libc::c_char,
    );
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut value as *mut libc::c_int);
    delete_item(value);
    print_linked_list();
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn create_linked_list() {
    let mut val: libc::c_int = 0;
    loop {
        printf(
            b"Input a number. (Enter -1 to exit)\n\0" as *const u8 as *const libc::c_char,
        );
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut val as *mut libc::c_int);
        if val == -(1 as libc::c_int) {
            break;
        }
        insert_at_last(val);
    };
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_last(mut value: libc::c_int) {
    let mut temp_node: *mut node = 0 as *mut node;
    temp_node = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
    (*temp_node).number = value;
    (*temp_node).next = 0 as *mut linked_list;
    if head.is_null() {
        head = temp_node;
        last = temp_node;
    } else {
        (*last).next = temp_node;
        last = temp_node;
    };
}
#[no_mangle]
pub unsafe extern "C" fn insert_at_first(mut value: libc::c_int) {
    let mut temp_node: *mut node = malloc(
        ::core::mem::size_of::<node>() as libc::c_ulong,
    ) as *mut node;
    (*temp_node).number = value;
    (*temp_node).next = head;
    head = temp_node;
}
#[no_mangle]
pub unsafe extern "C" fn insert_after(mut key: libc::c_int, mut value: libc::c_int) {
    let mut myNode: *mut node = head;
    let mut flag: libc::c_int = 0 as libc::c_int;
    while !myNode.is_null() {
        if (*myNode).number == key {
            let mut newNode: *mut node = malloc(
                ::core::mem::size_of::<node>() as libc::c_ulong,
            ) as *mut node;
            (*newNode).number = value;
            (*newNode).next = (*myNode).next;
            (*myNode).next = newNode;
            printf(
                b"%d is inserted after %d\n\0" as *const u8 as *const libc::c_char,
                value,
                key,
            );
            flag = 1 as libc::c_int;
            break;
        } else {
            myNode = (*myNode).next;
        }
    }
    if flag == 0 as libc::c_int {
        printf(b"Key not found!\n\0" as *const u8 as *const libc::c_char);
    }
}
#[no_mangle]
pub unsafe extern "C" fn delete_item(mut value: libc::c_int) {
    let mut myNode: *mut node = head;
    let mut previous: *mut node = 0 as *mut node;
    let mut flag: libc::c_int = 0 as libc::c_int;
    while !myNode.is_null() {
        if (*myNode).number == value {
            if previous.is_null() {
                head = (*myNode).next;
            } else {
                (*previous).next = (*myNode).next;
            }
            printf(
                b"%d is deleted from list\n\0" as *const u8 as *const libc::c_char,
                value,
            );
            flag = 1 as libc::c_int;
            free(myNode as *mut libc::c_void);
            break;
        } else {
            previous = myNode;
            myNode = (*myNode).next;
        }
    }
    if flag == 0 as libc::c_int {
        printf(b"Key not found!\n\0" as *const u8 as *const libc::c_char);
    }
}
#[no_mangle]
pub unsafe extern "C" fn search_item(mut value: libc::c_int) {
    let mut searchNode: *mut node = head;
    let mut flag: libc::c_int = 0 as libc::c_int;
    while !searchNode.is_null() {
        if (*searchNode).number == value {
            printf(
                b"%d is present in this list. Memory address is %d\n\0" as *const u8
                    as *const libc::c_char,
                value,
                searchNode,
            );
            flag = 1 as libc::c_int;
            break;
        } else {
            searchNode = (*searchNode).next;
        }
    }
    if flag == 0 as libc::c_int {
        printf(b"Item not found\n\0" as *const u8 as *const libc::c_char);
    }
}
#[no_mangle]
pub unsafe extern "C" fn print_linked_list() {
    printf(b"\nYour full linked list is\n\0" as *const u8 as *const libc::c_char);
    let mut myList: *mut node = 0 as *mut node;
    myList = head;
    while !myList.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*myList).number);
        myList = (*myList).next;
    }
    puts(b"\0" as *const u8 as *const libc::c_char);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
