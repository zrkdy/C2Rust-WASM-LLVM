use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ListNode {
    pub data: libc::c_int,
    pub next: *mut ListNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Queue {
    pub front: *mut ListNode,
    pub rear: *mut ListNode,
}
#[no_mangle]
pub unsafe extern "C" fn CreateQueue() -> *mut Queue {
    let mut Q: *mut Queue = 0 as *mut Queue;
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    Q = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong) as *mut Queue;
    if Q.is_null() {
        return 0 as *mut Queue;
    }
    temp = malloc(::core::mem::size_of::<ListNode>() as libc::c_ulong) as *mut ListNode;
    (*Q).rear = 0 as *mut ListNode;
    (*Q).front = (*Q).rear;
    return Q;
}
#[no_mangle]
pub unsafe extern "C" fn size(mut Q: *mut Queue) -> libc::c_int {
    let mut temp: *mut ListNode = (*Q).front;
    let mut count: libc::c_int = 0 as libc::c_int;
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        return 0 as libc::c_int;
    }
    while temp != (*Q).rear {
        count += 1;
        count;
        temp = (*temp).next;
    }
    if temp == (*Q).rear {
        count += 1;
        count;
    }
    return count;
}
#[no_mangle]
pub unsafe extern "C" fn frontElement(mut Q: *mut Queue) -> libc::c_int {
    return (*(*Q).front).data;
}
#[no_mangle]
pub unsafe extern "C" fn rearElement(mut Q: *mut Queue) -> libc::c_int {
    return (*(*Q).rear).data;
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty(mut Q: *mut Queue) {
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        printf(b"Empty Queue\n\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"Queue is not Empty\n\0" as *const u8 as *const libc::c_char);
    };
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut Q: *mut Queue, mut num: libc::c_int) {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    temp = malloc(::core::mem::size_of::<ListNode>() as libc::c_ulong) as *mut ListNode;
    (*temp).data = num;
    (*temp).next = 0 as *mut ListNode;
    if ((*Q).rear).is_null() {
        (*Q).rear = temp;
        (*Q).front = (*Q).rear;
    } else {
        (*(*Q).rear).next = temp;
        (*Q).rear = temp;
    };
}
#[no_mangle]
pub unsafe extern "C" fn dequeue(mut Q: *mut Queue) {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    if ((*Q).front).is_null() {
        printf(b"\nQueue is Empty \n\0" as *const u8 as *const libc::c_char);
        return;
    } else {
        temp = (*Q).front;
        (*Q).front = (*(*Q).front).next;
        if ((*Q).front).is_null() {
            (*Q).rear = 0 as *mut ListNode;
        }
        printf(
            b"Removed Element : %d\n\0" as *const u8 as *const libc::c_char,
            (*temp).data,
        );
        free(temp as *mut libc::c_void);
    };
}
#[no_mangle]
pub unsafe extern "C" fn printQueue(mut Q: *mut Queue) {
    let mut temp: *mut ListNode = (*Q).front;
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        printf(b"Queue is Empty\n\0" as *const u8 as *const libc::c_char);
        return;
    }
    while !temp.is_null() {
        printf(b"%d\0" as *const u8 as *const libc::c_char, (*temp).data);
        temp = (*temp).next;
        if !temp.is_null() {
            printf(b"-->\0" as *const u8 as *const libc::c_char);
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn deleteQueue(mut Q: *mut Queue) {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    while !((*Q).front).is_null() {
        temp = (*Q).front;
        printf(
            b"Element being deleted: %d\n\0" as *const u8 as *const libc::c_char,
            (*temp).data,
        );
        (*Q).front = (*(*Q).front).next;
        free(temp as *mut libc::c_void);
    }
    free(Q as *mut libc::c_void);
}
unsafe fn main_0() -> libc::c_int {
    let mut Q: *mut Queue = 0 as *mut Queue;
    Q = CreateQueue();
    enqueue(Q, 1 as libc::c_int);
    enqueue(Q, 3 as libc::c_int);
    enqueue(Q, 7 as libc::c_int);
    enqueue(Q, 5 as libc::c_int);
    enqueue(Q, 10 as libc::c_int);
    printQueue(Q);
    printf(b"\nSize of Queue : %d\n\0" as *const u8 as *const libc::c_char, size(Q));
    printf(
        b"Front Element : %d\n\0" as *const u8 as *const libc::c_char,
        frontElement(Q),
    );
    printf(b"Rear Element : %d\n\0" as *const u8 as *const libc::c_char, rearElement(Q));
    dequeue(Q);
    dequeue(Q);
    dequeue(Q);
    dequeue(Q);
    dequeue(Q);
    dequeue(Q);
    enqueue(Q, 15 as libc::c_int);
    enqueue(Q, 100 as libc::c_int);
    printQueue(Q);
    printf(b"\nSize of Queue : %d\n\0" as *const u8 as *const libc::c_char, size(Q));
    printf(
        b"Front Element : %d\n\0" as *const u8 as *const libc::c_char,
        frontElement(Q),
    );
    printf(b"Rear Element : %d\n\0" as *const u8 as *const libc::c_char, rearElement(Q));
    deleteQueue(Q);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
