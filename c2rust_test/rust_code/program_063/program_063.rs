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
pub struct AdvancedStack {
    pub elementStack: *mut Stack,
    pub minStack: *mut Stack,
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
pub unsafe extern "C" fn isEmptyA(mut S: *mut AdvancedStack) -> libc::c_int {
    return ((*(*S).elementStack).top == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn sizeA(mut S: *mut AdvancedStack) -> libc::c_int {
    return (*(*S).elementStack).top + 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isFullA(mut S: *mut AdvancedStack) -> libc::c_int {
    return ((*(*S).elementStack).top == (*(*S).elementStack).capacity - 1 as libc::c_int)
        as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn pushA(mut S: *mut AdvancedStack, mut data: libc::c_int) {
    push((*S).elementStack, data);
    if isEmpty((*S).minStack) != 0 || peek((*S).minStack) >= data {
        push((*S).minStack, data);
    }
}
#[no_mangle]
pub unsafe extern "C" fn popA(mut S: *mut AdvancedStack) -> libc::c_int {
    let mut temp: libc::c_int = 0;
    if isEmpty((*S).elementStack) != 0 {
        return -(2147483647 as libc::c_int) - 1 as libc::c_int;
    }
    temp = peek((*S).elementStack);
    if peek((*S).minStack) == pop((*S).elementStack) {
        pop((*S).minStack);
    }
    return temp;
}
#[no_mangle]
pub unsafe extern "C" fn peekA(mut S: *mut AdvancedStack) -> libc::c_int {
    return peek((*S).elementStack);
}
#[no_mangle]
pub unsafe extern "C" fn getMinimum(mut S: *mut AdvancedStack) -> libc::c_int {
    return peek((*S).minStack);
}
#[no_mangle]
pub unsafe extern "C" fn createAdvancedStack(
    mut capacity: libc::c_int,
) -> *mut AdvancedStack {
    let mut S: *mut AdvancedStack = malloc(
        ::core::mem::size_of::<AdvancedStack>() as libc::c_ulong,
    ) as *mut AdvancedStack;
    if S.is_null() {
        return 0 as *mut AdvancedStack;
    }
    (*S).elementStack = createStack(capacity);
    (*S).minStack = createStack(capacity);
    return S;
}
#[no_mangle]
pub unsafe extern "C" fn deleteStackA(mut S: *mut AdvancedStack) {
    if !S.is_null() {
        deleteStackA((*S).elementStack as *mut AdvancedStack);
        deleteStackA((*S).minStack as *mut AdvancedStack);
        free(S as *mut libc::c_void);
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut i: libc::c_int = 0 as libc::c_int;
    let mut capacity: libc::c_int = 5 as libc::c_int;
    let mut stk: *mut AdvancedStack = createAdvancedStack(capacity);
    i = 0 as libc::c_int;
    while i <= 2 as libc::c_int * capacity {
        pushA(stk, i);
        i += 1;
        i;
    }
    printf(b"Top element is %d\n\0" as *const u8 as *const libc::c_char, peekA(stk));
    printf(b"Stack size is %d\n\0" as *const u8 as *const libc::c_char, sizeA(stk));
    i = 0 as libc::c_int;
    while i <= capacity {
        printf(
            b"Popped element is %d\n\0" as *const u8 as *const libc::c_char,
            popA(stk),
        );
        i += 1;
        i;
    }
    if isEmptyA(stk) != 0 {
        printf(b"Stack is empty\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"Stack is not empty\0" as *const u8 as *const libc::c_char);
    }
    deleteStackA(stk);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
