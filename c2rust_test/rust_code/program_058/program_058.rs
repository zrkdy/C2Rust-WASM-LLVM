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
    pub S1: *mut Stack,
    pub S2: *mut Stack,
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
pub unsafe extern "C" fn isEmpty(mut S: *mut Stack) -> libc::c_int {
    return ((*S).top == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn size(mut S: *mut Stack) -> libc::c_int {
    return (*S).top + 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isFull(mut S: *mut Stack) -> libc::c_int {
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
    if isFull(S) != 0 {
        doubleStack(S);
    }
    (*S).top += 1;
    *((*S).array).offset((*S).top as isize) = data;
}
#[no_mangle]
pub unsafe extern "C" fn pop(mut S: *mut Stack) -> libc::c_int {
    if isEmpty(S) != 0 {
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
    if isEmpty(S) != 0 {
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
pub unsafe extern "C" fn queueSize(mut Q: *mut Queue) -> libc::c_int {
    return size((*Q).S1);
}
#[no_mangle]
pub unsafe extern "C" fn createQueue(mut capacity: libc::c_int) -> *mut Queue {
    let mut S1: *mut Stack = createStack(capacity);
    let mut S2: *mut Stack = createStack(capacity);
    let mut Q: *mut Queue = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong)
        as *mut Queue;
    if Q.is_null() {
        return 0 as *mut Queue;
    }
    (*Q).S1 = S1;
    (*Q).S2 = S2;
    return Q;
}
#[no_mangle]
pub unsafe extern "C" fn enQueue(mut Q: *mut Queue, mut data: libc::c_int) {
    push((*Q).S1, data);
}
#[no_mangle]
pub unsafe extern "C" fn deQueue(mut Q: *mut Queue) -> libc::c_int {
    if isEmpty((*Q).S2) == 0 {
        return pop((*Q).S2)
    } else {
        while isEmpty((*Q).S1) == 0 {
            push((*Q).S2, pop((*Q).S1));
        }
        return pop((*Q).S2);
    };
}
#[no_mangle]
pub unsafe extern "C" fn deleteQueue(mut Q: *mut Queue) {
    if !Q.is_null() {
        if !((*Q).S1).is_null() {
            free((*Q).S1 as *mut libc::c_void);
        }
        if !((*Q).S2).is_null() {
            free((*Q).S2 as *mut libc::c_void);
        }
        free(Q as *mut libc::c_void);
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut Q: *mut Queue = 0 as *mut Queue;
    Q = createQueue(6 as libc::c_int);
    enQueue(Q, 1 as libc::c_int);
    enQueue(Q, 3 as libc::c_int);
    enQueue(Q, 7 as libc::c_int);
    enQueue(Q, 5 as libc::c_int);
    enQueue(Q, 10 as libc::c_int);
    enQueue(Q, 19 as libc::c_int);
    printf(
        b"\nSize of queue : %d\n\0" as *const u8 as *const libc::c_char,
        queueSize(Q),
    );
    printf(
        b"\nDequeued element : %d\n\0" as *const u8 as *const libc::c_char,
        deQueue(Q),
    );
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, deQueue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, deQueue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, deQueue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, deQueue(Q));
    printf(b"Dequeued element : %d\n\0" as *const u8 as *const libc::c_char, deQueue(Q));
    deleteQueue(Q);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
