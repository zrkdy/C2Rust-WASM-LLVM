use ::libc;
extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn realloc(_: *mut libc::c_void, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct data {
    pub range: *mut libc::c_int,
    pub length: libc::c_int,
}
pub type range = data;
pub type Range = *mut range;
unsafe fn main_0() -> libc::c_int {
    let mut n: libc::c_int = 0 as libc::c_int;
    printf(b"\t\tPrim factoriziation\n\n\0" as *const u8 as *const libc::c_char);
    printf(b"positive integer (> 1) ? \0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut n as *mut libc::c_int);
    let mut r: Range = int_fact(n);
    printf(b"\nThe factoriziation are: \0" as *const u8 as *const libc::c_char);
    print_arr(r);
    destroy(r);
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn int_fact(mut n: libc::c_int) -> Range {
    if n > 1 as libc::c_int {} else {
        __assert_fail(
            b"n > 1\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            62 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 20],
                &[libc::c_char; 20],
            >(b"Range int_fact(int)\0"))
                .as_ptr(),
        );
    };
    let mut len: libc::c_int = 10 as libc::c_int;
    let mut count: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    let mut range: *mut libc::c_int = malloc(
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul(len as libc::c_ulong),
    ) as *mut libc::c_int;
    if !range.is_null() {} else {
        __assert_fail(
            b"range\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            68 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 20],
                &[libc::c_char; 20],
            >(b"Range int_fact(int)\0"))
                .as_ptr(),
        );
    };
    let mut pstr: Range = malloc(
        ::core::mem::size_of::<*mut libc::c_int>() as libc::c_ulong,
    ) as Range;
    if !pstr.is_null() {} else {
        __assert_fail(
            b"pstr\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            70 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 20],
                &[libc::c_char; 20],
            >(b"Range int_fact(int)\0"))
                .as_ptr(),
        );
    };
    while n % 2 as libc::c_int == 0 as libc::c_int {
        n /= 2 as libc::c_int;
        if i < len {
            *range.offset(i as isize) = 2 as libc::c_int;
            i += 1;
            i;
        } else {
            range = increase(range, len);
            len += 5 as libc::c_int;
            *range.offset(i as isize) = 2 as libc::c_int;
            i += 1;
            i;
        }
        count += 1;
        count;
    }
    let mut j: libc::c_int = 3 as libc::c_int;
    while j * j <= n {
        while n % j == 0 as libc::c_int {
            n /= j;
            if i < len {
                *range.offset(i as isize) = j;
                i += 1;
                i;
            } else {
                range = increase(range, len);
                len += 5 as libc::c_int;
                *range.offset(i as isize) = j;
                i += 1;
                i;
            }
            count += 1;
            count;
        }
        j += 2 as libc::c_int;
    }
    if n > 1 as libc::c_int {
        if i < len {
            *range.offset(i as isize) = n;
            i += 1;
            i;
        } else {
            range = increase(range, len);
            len += 5 as libc::c_int;
            *range.offset(i as isize) = n;
            i += 1;
            i;
        }
        count += 1;
        count;
    }
    (*pstr).range = range;
    (*pstr).length = count;
    return pstr;
}
#[no_mangle]
pub unsafe extern "C" fn print_arr(mut pStr: Range) {
    if !pStr.is_null() {} else {
        __assert_fail(
            b"pStr\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            138 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 22],
                &[libc::c_char; 22],
            >(b"void print_arr(Range)\0"))
                .as_ptr(),
        );
    };
    let mut i: libc::c_int = 0 as libc::c_int;
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    while i < (*pStr).length {
        if i == 0 as libc::c_int {
            printf(
                b"%d\0" as *const u8 as *const libc::c_char,
                *((*pStr).range).offset(0 as libc::c_int as isize),
            );
        } else {
            printf(
                b"-%d\0" as *const u8 as *const libc::c_char,
                *((*pStr).range).offset(i as isize),
            );
        }
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn increase(
    mut arr: *mut libc::c_int,
    mut len: libc::c_int,
) -> *mut libc::c_int {
    if !arr.is_null() {} else {
        __assert_fail(
            b"arr\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            153 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 26],
                &[libc::c_char; 26],
            >(b"int *increase(int *, int)\0"))
                .as_ptr(),
        );
    };
    let mut tmp: *mut libc::c_int = realloc(
        arr as *mut libc::c_void,
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul((len + 5 as libc::c_int) as libc::c_ulong),
    ) as *mut libc::c_int;
    if !tmp.is_null() {} else {
        __assert_fail(
            b"tmp\0" as *const u8 as *const libc::c_char,
            b"program_008.c\0" as *const u8 as *const libc::c_char,
            155 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 26],
                &[libc::c_char; 26],
            >(b"int *increase(int *, int)\0"))
                .as_ptr(),
        );
    };
    return tmp;
}
#[no_mangle]
pub unsafe extern "C" fn destroy(mut r: Range) {
    free((*r).range as *mut libc::c_void);
    free(r as *mut libc::c_void);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
