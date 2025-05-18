use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn realloc(_: *mut libc::c_void, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Queue {
    pub front: libc::c_int,
    pub rear: libc::c_int,
    pub capacity: libc::c_int,
    pub size: libc::c_int,
    pub array: *mut libc::c_int,
}
#[no_mangle]
pub unsafe extern "C" fn createQueue(mut capacity: libc::c_int) -> *mut Queue {
    let mut Q: *mut Queue = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong)
        as *mut Queue;
    if Q.is_null() {
        return 0 as *mut Queue;
    }
    (*Q).capacity = capacity;
    (*Q).rear = -(1 as libc::c_int);
    (*Q).front = (*Q).rear;
    (*Q).size = 0 as libc::c_int;
    (*Q)
        .array = malloc(
        ((*Q).capacity as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if ((*Q).array).is_null() {
        return 0 as *mut Queue;
    }
    return Q;
}
#[no_mangle]
pub unsafe extern "C" fn size(mut Q: *mut Queue) -> libc::c_int {
    return (*Q).size;
}
#[no_mangle]
pub unsafe extern "C" fn frontElement(mut Q: *mut Queue) -> libc::c_int {
    return *((*Q).array).offset((*Q).front as isize);
}
#[no_mangle]
pub unsafe extern "C" fn rearElement(mut Q: *mut Queue) -> libc::c_int {
    return *((*Q).array).offset((*Q).rear as isize);
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty(mut Q: *mut Queue) -> libc::c_int {
    return ((*Q).size == 0 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isFull(mut Q: *mut Queue) -> libc::c_int {
    return ((*Q).size == (*Q).capacity) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn resizeQueue(mut Q: *mut Queue) {
    let mut size_0: libc::c_int = (*Q).capacity;
    (*Q).capacity = (*Q).capacity * 2 as libc::c_int;
    (*Q)
        .array = realloc(
        (*Q).array as *mut libc::c_void,
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul((*Q).capacity as libc::c_ulong),
    ) as *mut libc::c_int;
    if ((*Q).array).is_null() {
        printf(b"Memory Error\0" as *const u8 as *const libc::c_char);
        return;
    }
    if (*Q).front > (*Q).rear {
        let mut i: libc::c_int = 0 as libc::c_int;
        while i < (*Q).front {
            *((*Q).array)
                .offset((i + size_0) as isize) = *((*Q).array).offset(i as isize);
            i += 1;
            i;
        }
        (*Q).rear = (*Q).rear + size_0;
    }
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut Q: *mut Queue, mut data: libc::c_int) {
    if isFull(Q) != 0 {
        resizeQueue(Q);
    }
    (*Q).rear = ((*Q).rear + 1 as libc::c_int) % (*Q).capacity;
    *((*Q).array).offset((*Q).rear as isize) = data;
    if (*Q).front == -(1 as libc::c_int) {
        (*Q).front = (*Q).rear;
    }
    (*Q).size += 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn dequeue(mut Q: *mut Queue) -> libc::c_int {
    let mut data: libc::c_int = -(2147483647 as libc::c_int) - 1 as libc::c_int;
    if isEmpty(Q) != 0 {
        printf(b"Queue is empty\n\0" as *const u8 as *const libc::c_char);
        return data;
    }
    data = *((*Q).array).offset((*Q).front as isize);
    if (*Q).front == (*Q).rear {
        (*Q).rear = -(1 as libc::c_int);
        (*Q).front = (*Q).rear;
        (*Q).size = 0 as libc::c_int;
    } else {
        (*Q).front = ((*Q).front + 1 as libc::c_int) % (*Q).capacity;
        (*Q).size -= 1 as libc::c_int;
    }
    return data;
}
#[no_mangle]
pub unsafe extern "C" fn deleteQueue(mut Q: *mut Queue) {
    if !Q.is_null() {
        if !((*Q).array).is_null() {
            free((*Q).array as *mut libc::c_void);
        }
        free(Q as *mut libc::c_void);
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut Q: *mut Queue = 0 as *mut Queue;
    Q = createQueue(3 as libc::c_int);
    enqueue(Q, 1 as libc::c_int);
    enqueue(Q, 3 as libc::c_int);
    enqueue(Q, 7 as libc::c_int);
    enqueue(Q, 5 as libc::c_int);
    enqueue(Q, 10 as libc::c_int);
    enqueue(Q, 19 as libc::c_int);
    printf(b"\nSize of queue : %d\n\0" as *const u8 as *const libc::c_char, size(Q));
    printf(
        b"Front element : %d\n\0" as *const u8 as *const libc::c_char,
        frontElement(Q),
    );
    printf(b"Rear element : %d\n\0" as *const u8 as *const libc::c_char, rearElement(Q));
    printf(
        b"\nDequeued element : %d\n\0" as *const u8 as *const libc::c_char,
        dequeue(Q),
    );
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, dequeue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, dequeue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, dequeue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, dequeue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, dequeue(Q));
    enqueue(Q, 15 as libc::c_int);
    enqueue(Q, 100 as libc::c_int);
    printf(b"\nSize of queue : %d\n\0" as *const u8 as *const libc::c_char, size(Q));
    printf(
        b"Front element : %d\n\0" as *const u8 as *const libc::c_char,
        frontElement(Q),
    );
    printf(b"Rear element : %d\n\0" as *const u8 as *const libc::c_char, rearElement(Q));
    deleteQueue(Q);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
