use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn realloc(_: *mut libc::c_void, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Stack {
    pub top: libc::c_int,
    pub capacity: libc::c_int,
    pub array: *mut libc::c_int,
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
pub unsafe extern "C" fn createStack(mut capacity: libc::c_int) -> *mut Stack {
    let mut S: *mut Stack = malloc(::core::mem::size_of::<Stack>() as libc::c_ulong)
        as *mut Stack;
    if S.is_null() {
        return 0 as *mut Stack;
    }
    (*S).capacity = capacity;
    (*S).top = -(1 as libc::c_int);
    (*S)
        .array = malloc(
        ((*S).capacity as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if ((*S).array).is_null() {
        return 0 as *mut Stack;
    }
    return S;
}
#[no_mangle]
pub unsafe extern "C" fn isEmptyStack(mut S: *mut Stack) -> libc::c_int {
    return ((*S).top == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn stackSize(mut S: *mut Stack) -> libc::c_int {
    return (*S).top + 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isFullStack(mut S: *mut Stack) -> libc::c_int {
    return ((*S).top == (*S).capacity - 1 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn doubleStack(mut S: *mut Stack) {
    (*S).capacity *= 2 as libc::c_int;
    (*S)
        .array = realloc(
        (*S).array as *mut libc::c_void,
        ((*S).capacity as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn push(mut S: *mut Stack, mut data: libc::c_int) {
    if isEmptyStack(S) != 0 {
        doubleStack(S);
    }
    (*S).top += 1;
    *((*S).array).offset((*S).top as isize) = data;
}
#[no_mangle]
pub unsafe extern "C" fn pop(mut S: *mut Stack) -> libc::c_int {
    if isEmptyStack(S) != 0 {
        printf(b"Stack is Empty\n\0" as *const u8 as *const libc::c_char);
        return -(2147483647 as libc::c_int) - 1 as libc::c_int;
    } else {
        let fresh0 = (*S).top;
        (*S).top = (*S).top - 1;
        return *((*S).array).offset(fresh0 as isize);
    };
}
#[no_mangle]
pub unsafe extern "C" fn peek(mut S: *mut Stack) -> libc::c_int {
    if isEmptyStack(S) != 0 {
        printf(b"Stack is Empty\0" as *const u8 as *const libc::c_char);
        return -(2147483647 as libc::c_int) - 1 as libc::c_int;
    } else {
        return *((*S).array).offset((*S).top as isize)
    };
}
#[no_mangle]
pub unsafe extern "C" fn deleteStack(mut S: *mut Stack) {
    if !S.is_null() {
        if !((*S).array).is_null() {
            free((*S).array as *mut libc::c_void);
        }
        free(S as *mut libc::c_void);
    }
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
pub unsafe extern "C" fn queueSize(mut Q: *mut Queue) -> libc::c_int {
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
pub unsafe extern "C" fn isEmptyQueue(mut Q: *mut Queue) -> libc::c_int {
    return ((*Q).size == 0 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isFullQueue(mut Q: *mut Queue) -> libc::c_int {
    return ((*Q).size == (*Q).capacity) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn resizeQueue(mut Q: *mut Queue) {
    let mut size: libc::c_int = (*Q).capacity;
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
            *((*Q).array).offset((i + size) as isize) = *((*Q).array).offset(i as isize);
            i += 1;
            i;
        }
        (*Q).rear = (*Q).rear + size;
    }
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut Q: *mut Queue, mut data: libc::c_int) {
    if isFullQueue(Q) != 0 {
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
    if isEmptyQueue(Q) != 0 {
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
#[no_mangle]
pub unsafe extern "C" fn reverseQueue(mut Q: *mut Queue) {
    let mut S: *mut Stack = createStack(5 as libc::c_int);
    while isEmptyQueue(Q) == 0 {
        push(S, dequeue(Q));
    }
    while isEmptyStack(S) == 0 {
        enqueue(Q, pop(S));
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
    printf(
        b"\nSize of queue : %d\n\0" as *const u8 as *const libc::c_char,
        queueSize(Q),
    );
    printf(
        b"Front element : %d\n\0" as *const u8 as *const libc::c_char,
        frontElement(Q),
    );
    printf(b"Rear element : %d\n\0" as *const u8 as *const libc::c_char, rearElement(Q));
    reverseQueue(Q);
    printf(
        b"\nSize of queue : %d\n\0" as *const u8 as *const libc::c_char,
        queueSize(Q),
    );
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
    deleteQueue(Q);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
