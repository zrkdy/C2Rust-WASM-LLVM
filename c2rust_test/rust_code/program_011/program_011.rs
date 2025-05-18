use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn putchar(__c: libc::c_int) -> libc::c_int;
    fn perror(__s: *const libc::c_char);
    fn atoi(__nptr: *const libc::c_char) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn div(__numer: libc::c_int, __denom: libc::c_int) -> div_t;
    fn clock() -> clock_t;
}
pub type __clock_t = libc::c_long;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct div_t {
    pub quot: libc::c_int,
    pub rem: libc::c_int,
}
pub type clock_t = __clock_t;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _big_int {
    pub value: libc::c_char,
    pub next_digit: *mut _big_int,
    pub prev_digit: *mut _big_int,
}
pub type big_int = _big_int;
#[no_mangle]
pub unsafe extern "C" fn add_digit(
    mut digit: *mut big_int,
    mut value: libc::c_char,
) -> *mut big_int {
    if digit.is_null() {
        digit = malloc(::core::mem::size_of::<big_int>() as libc::c_ulong)
            as *mut big_int;
        if digit.is_null() {
            perror(b"Unable to allocate memory!\0" as *const u8 as *const libc::c_char);
            return 0 as *mut big_int;
        }
        (*digit).value = value;
        (*digit).next_digit = 0 as *mut _big_int;
        (*digit).prev_digit = 0 as *mut _big_int;
        return digit;
    }
    if !((*digit).next_digit).is_null() {
        (*(*digit).next_digit).value = value;
        return (*digit).next_digit;
    }
    (*digit)
        .next_digit = malloc(::core::mem::size_of::<big_int>() as libc::c_ulong)
        as *mut big_int;
    if ((*digit).next_digit).is_null() {
        perror(b"Unable to allocate memory!\0" as *const u8 as *const libc::c_char);
        return 0 as *mut big_int;
    }
    (*(*digit).next_digit).value = value;
    (*(*digit).next_digit).next_digit = 0 as *mut _big_int;
    (*(*digit).next_digit).prev_digit = digit;
    return (*digit).next_digit;
}
#[no_mangle]
pub unsafe extern "C" fn remove_digits(
    mut digit: *mut big_int,
    mut N: libc::c_int,
) -> libc::c_char {
    if digit.is_null() {
        return 0 as libc::c_int as libc::c_char;
    }
    if ((*digit).next_digit).is_null() {
        free(digit as *mut libc::c_void);
        digit = 0 as *mut big_int;
        return 0 as libc::c_int as libc::c_char;
    }
    if N > 0 as libc::c_int {
        return remove_digits((*digit).next_digit, N - 1 as libc::c_int);
    }
    return remove_digits((*digit).next_digit, 0 as libc::c_int);
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *mut libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_uint = 5 as libc::c_int as libc::c_uint;
    let mut ptr: *mut big_int = add_digit(
        0 as *mut big_int,
        1 as libc::c_int as libc::c_char,
    );
    let mut ptr0: *const big_int = ptr;
    let mut sum_digits: libc::c_ulong = 0 as libc::c_int as libc::c_ulong;
    let mut num_digits: libc::c_ulong = 0 as libc::c_int as libc::c_ulong;
    if argc == 2 as libc::c_int {
        N = atoi(*argv.offset(1 as libc::c_int as isize)) as libc::c_uint;
    }
    let mut start_time: clock_t = clock();
    let mut i: libc::c_uint = 1 as libc::c_int as libc::c_uint;
    while i <= N {
        let mut carry: libc::c_int = 0 as libc::c_int;
        ptr = ptr0 as *mut big_int;
        while !ptr.is_null() {
            let mut tmp: libc::c_uint = ((*ptr).value as libc::c_uint)
                .wrapping_mul(i)
                .wrapping_add(carry as libc::c_uint);
            if tmp >= 10 as libc::c_int as libc::c_uint {
                let mut tmp2: div_t = div(tmp as libc::c_int, 10 as libc::c_int);
                carry = tmp2.quot;
                tmp = tmp2.rem as libc::c_uint;
            } else {
                carry = 0 as libc::c_int;
            }
            if carry > 0 as libc::c_int && ((*ptr).next_digit).is_null() {
                add_digit(ptr, 0 as libc::c_int as libc::c_char);
            }
            (*ptr).value = tmp as libc::c_char;
            if i == N {
                sum_digits = sum_digits.wrapping_add(tmp as libc::c_ulong);
            }
            if ((*ptr).next_digit).is_null() {
                break;
            }
            ptr = (*ptr).next_digit;
        }
        i = i.wrapping_add(1);
        i;
    }
    let mut end_time: clock_t = clock();
    loop {
        putchar((*ptr).value as libc::c_int + 0x30 as libc::c_int);
        ptr = (*ptr).prev_digit;
        num_digits = num_digits.wrapping_add(1);
        num_digits;
        if ptr.is_null() {
            break;
        }
    }
    printf(
        b"\nTime taken: %.4g millisecond\n\0" as *const u8 as *const libc::c_char,
        1e3f64 * (end_time - start_time) as libc::c_double
            / 1000000 as libc::c_int as __clock_t as libc::c_double,
    );
    printf(
        b"Digit Sum = %lu\tNumber of digits = %lu\tStorage space = %.3gkb\t \n\0"
            as *const u8 as *const libc::c_char,
        sum_digits,
        num_digits,
        num_digits.wrapping_mul(::core::mem::size_of::<big_int>() as libc::c_ulong)
            as libc::c_double / 1024.0f64,
    );
    remove_digits(ptr0 as *mut big_int, -(1 as libc::c_int));
    return 0 as libc::c_int;
}
pub fn main() {
    let mut args: Vec::<*mut libc::c_char> = Vec::new();
    for arg in ::std::env::args() {
        args.push(
            (::std::ffi::CString::new(arg))
                .expect("Failed to convert argument into CString.")
                .into_raw(),
        );
    }
    args.push(::core::ptr::null_mut());
    unsafe {
        ::std::process::exit(
            main_0(
                (args.len() - 1) as libc::c_int,
                args.as_mut_ptr() as *mut *mut libc::c_char,
            ) as i32,
        )
    }
}
