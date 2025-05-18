use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct stack {
    pub data: libc::c_int,
    pub next: *mut stack,
}
#[no_mangle]
pub static mut top: *mut stack = 0 as *const stack as *mut stack;
#[no_mangle]
pub unsafe extern "C" fn push(mut value: libc::c_int) {
    let mut node: *mut stack = malloc(::core::mem::size_of::<stack>() as libc::c_ulong)
        as *mut stack;
    if node.is_null() {
        printf(b"Stack is full\0" as *const u8 as *const libc::c_char);
    } else {
        (*node).data = value;
        (*node).next = top;
        top = node;
    };
}
#[no_mangle]
pub unsafe extern "C" fn pop() -> libc::c_int {
    let mut deleted: libc::c_int = -(1 as libc::c_int);
    if top.is_null() {
        printf(b"stack is empty\n\0" as *const u8 as *const libc::c_char);
    } else {
        let mut node: *mut stack = top;
        deleted = (*node).data;
        top = (*top).next;
        free(node as *mut libc::c_void);
    }
    return deleted;
}
#[no_mangle]
pub unsafe extern "C" fn isFull() -> libc::c_int {
    let mut node: *mut stack = malloc(::core::mem::size_of::<stack>() as libc::c_ulong)
        as *mut stack;
    if node.is_null() {
        return 1 as libc::c_int;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty() -> libc::c_int {
    if top.is_null() {
        return 1 as libc::c_int;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn stackTop() -> libc::c_int {
    if !top.is_null() {
        return (*top).data;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn checkmatch(mut expression: *mut libc::c_char) -> libc::c_int {
    let mut i: libc::c_int = 0 as libc::c_int;
    while *expression.offset(i as isize) as libc::c_int != '\0' as i32 {
        if *expression.offset(i as isize) as libc::c_int == '(' as i32
            || *expression.offset(i as isize) as libc::c_int == '[' as i32
            || *expression.offset(i as isize) as libc::c_int == '{' as i32
        {
            push(*expression.offset(i as isize) as libc::c_int);
        } else if *expression.offset(i as isize) as libc::c_int == ')' as i32
            || *expression.offset(i as isize) as libc::c_int == '}' as i32
            || *expression.offset(i as isize) as libc::c_int == ']' as i32
        {
            if isEmpty() != 0 {
                return 0 as libc::c_int
            } else if *expression.offset(i as isize) as libc::c_int - stackTop()
                == 1 as libc::c_int
                || *expression.offset(i as isize) as libc::c_int - stackTop()
                    == 2 as libc::c_int
            {
                pop();
            } else {
                return 0 as libc::c_int
            }
        }
        i += 1;
        i;
    }
    if isEmpty() != 0 { return 1 as libc::c_int } else { return 0 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn inStack(mut exp: libc::c_char) -> libc::c_int {
    if exp as libc::c_int == '+' as i32 || exp as libc::c_int == '-' as i32 {
        return 2 as libc::c_int
    } else if exp as libc::c_int == '*' as i32 || exp as libc::c_int == '/' as i32 {
        return 4 as libc::c_int
    } else if exp as libc::c_int == '^' as i32 {
        return 5 as libc::c_int
    } else if exp as libc::c_int == '(' as i32 {
        return 0 as libc::c_int
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn outStack(mut exp: libc::c_char) -> libc::c_int {
    if exp as libc::c_int == '+' as i32 || exp as libc::c_int == '-' as i32 {
        return 1 as libc::c_int
    } else if exp as libc::c_int == '*' as i32 || exp as libc::c_int == '/' as i32 {
        return 3 as libc::c_int
    } else if exp as libc::c_int == '^' as i32 {
        return 6 as libc::c_int
    } else if exp as libc::c_int == '(' as i32 {
        return 7 as libc::c_int
    } else if exp as libc::c_int == ')' as i32 {
        return 0 as libc::c_int
    }
    panic!("Reached end of non-void function without returning");
}
#[no_mangle]
pub unsafe extern "C" fn isOperand(mut exp: libc::c_char) -> libc::c_int {
    if exp as libc::c_int == '+' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == '-' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == '*' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == '/' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == ')' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == '(' as i32 {
        return 0 as libc::c_int
    } else if exp as libc::c_int == '^' as i32 {
        return 0 as libc::c_int
    } else {
        return 1 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn precedence(mut exp: libc::c_char) -> libc::c_int {
    if exp as libc::c_int == '+' as i32 || exp as libc::c_int == '-' as i32 {
        return 1 as libc::c_int
    } else if exp as libc::c_int == '*' as i32 || exp as libc::c_int == '/' as i32 {
        return 2 as libc::c_int
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn makePostfix(mut infix: *mut libc::c_char) -> *mut libc::c_char {
    let mut postfix: *mut libc::c_char = malloc(
        (strlen(infix))
            .wrapping_mul(::core::mem::size_of::<libc::c_char>() as libc::c_ulong),
    ) as *mut libc::c_char;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    j = 0 as libc::c_int;
    i = j;
    while *infix.offset(i as isize) as libc::c_int != '\0' as i32 {
        if isOperand(*infix.offset(i as isize)) != 0 {
            let fresh0 = i;
            i = i + 1;
            let fresh1 = j;
            j = j + 1;
            *postfix.offset(fresh1 as isize) = *infix.offset(fresh0 as isize);
        } else if inStack(stackTop() as libc::c_char)
            < outStack(*infix.offset(i as isize))
        {
            let fresh2 = i;
            i = i + 1;
            push(*infix.offset(fresh2 as isize) as libc::c_int);
        } else if inStack(stackTop() as libc::c_char)
            > outStack(*infix.offset(i as isize))
        {
            let fresh3 = j;
            j = j + 1;
            *postfix.offset(fresh3 as isize) = pop() as libc::c_char;
        } else {
            pop();
            i += 1;
            i;
        }
    }
    while isEmpty() == 0 {
        if *infix.offset(i as isize) as libc::c_int != '(' as i32 {
            let fresh4 = j;
            j = j + 1;
            *postfix.offset(fresh4 as isize) = pop() as libc::c_char;
        } else {
            pop();
        }
    }
    *postfix.offset(j as isize) = '\0' as i32 as libc::c_char;
    return postfix;
}
#[no_mangle]
pub unsafe extern "C" fn evaluate(mut postfix: *mut libc::c_char) -> libc::c_int {
    let mut first: libc::c_int = 0;
    let mut second: libc::c_int = 0;
    let mut result: libc::c_int = 0;
    let mut i: libc::c_int = 0 as libc::c_int;
    while *postfix.offset(i as isize) as libc::c_int != '\0' as i32 {
        if isOperand(*postfix.offset(i as isize)) != 0 {
            push(*postfix.offset(i as isize) as libc::c_int - '0' as i32);
        } else {
            first = pop();
            second = pop();
            match *postfix.offset(i as isize) as libc::c_int {
                43 => {
                    result = second + first;
                }
                45 => {
                    result = second - first;
                }
                47 => {
                    result = second / first;
                }
                42 => {
                    result = second * first;
                }
                _ => {}
            }
            push(result);
        }
        i += 1;
        i;
    }
    return stackTop();
}
unsafe fn main_0() -> libc::c_int {
    let mut infix: *mut libc::c_char = b"3*5+6/2-4\0" as *const u8 as *const libc::c_char
        as *mut libc::c_char;
    if checkmatch(infix) != 0 {
        printf(b"Balanced\n\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"unbalanced\n\0" as *const u8 as *const libc::c_char);
    }
    let mut postfix: *mut libc::c_char = makePostfix(infix);
    printf(b"%s\n\0" as *const u8 as *const libc::c_char, postfix);
    printf(b"%d\n\0" as *const u8 as *const libc::c_char, evaluate(postfix));
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
