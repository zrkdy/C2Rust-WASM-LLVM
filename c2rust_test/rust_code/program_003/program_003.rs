use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn strchr(_: *const libc::c_char, _: libc::c_int) -> *mut libc::c_char;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
pub type __uint64_t = libc::c_ulong;
pub type uint64_t = __uint64_t;
#[no_mangle]
pub unsafe extern "C" fn isbad_alphabet(mut alphabet: *const libc::c_char) -> bool {
    let mut len: uint64_t = strlen(alphabet);
    if len < 2 as libc::c_int as libc::c_ulong {
        return 1 as libc::c_int != 0;
    }
    let mut i: libc::c_int = 0 as libc::c_int;
    while (i as libc::c_ulong) < len {
        if !(strchr(
            alphabet.offset(i as isize).offset(1 as libc::c_int as isize),
            *alphabet.offset(i as isize) as libc::c_int,
        ))
            .is_null()
        {
            return 1 as libc::c_int != 0;
        }
        i += 1;
        i;
    }
    return 0 as libc::c_int != 0;
}
#[no_mangle]
pub unsafe extern "C" fn converted_len(
    mut nb: uint64_t,
    mut base: libc::c_short,
) -> uint64_t {
    if nb > (base as libc::c_int - 1 as libc::c_int) as libc::c_ulong {
        return (converted_len(nb.wrapping_div(base as libc::c_ulong), base))
            .wrapping_add(1 as libc::c_int as libc::c_ulong);
    }
    return 1 as libc::c_int as uint64_t;
}
#[no_mangle]
pub unsafe extern "C" fn convertion(
    mut nb: uint64_t,
    mut alphabet: *const libc::c_char,
    mut base: libc::c_short,
    mut converted: *mut libc::c_char,
) {
    *converted = *alphabet.offset(nb.wrapping_rem(base as libc::c_ulong) as isize);
    if nb > (base as libc::c_int - 1 as libc::c_int) as libc::c_ulong {
        converted = converted.offset(-1);
        convertion(nb.wrapping_div(base as libc::c_ulong), alphabet, base, converted);
    }
}
#[no_mangle]
pub unsafe extern "C" fn decimal_to_anybase(
    mut nb: uint64_t,
    mut alphabet: *const libc::c_char,
) -> *mut libc::c_char {
    let mut converted: *mut libc::c_char = 0 as *mut libc::c_char;
    if isbad_alphabet(alphabet) {
        return 0 as *mut libc::c_char;
    }
    let mut base: uint64_t = strlen(alphabet);
    let mut final_len: uint64_t = converted_len(nb, base as libc::c_short);
    converted = malloc(
        (::core::mem::size_of::<libc::c_char>() as libc::c_ulong)
            .wrapping_mul(final_len.wrapping_add(1 as libc::c_int as libc::c_ulong)),
    ) as *mut libc::c_char;
    *converted.offset(final_len as isize) = 0 as libc::c_int as libc::c_char;
    convertion(
        nb,
        alphabet,
        base as libc::c_short,
        converted.offset(final_len as isize).offset(-(1 as libc::c_int as isize)),
    );
    return converted;
}
unsafe extern "C" fn test() {
    let mut ret: *mut libc::c_char = 0 as *mut libc::c_char;
    let mut reference: *mut libc::c_char = 0 as *mut libc::c_char;
    reference = b"0\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    ret = decimal_to_anybase(
        0 as libc::c_int as uint64_t,
        b"0123456789\0" as *const u8 as *const libc::c_char,
    );
    let mut i: libc::c_int = 0 as libc::c_int;
    while (i as libc::c_ulong) < strlen(reference) && (i as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i as isize) as libc::c_int
            == *reference.offset(i as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                103 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i += 1;
        i;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    reference = b"18446744073709551615\0" as *const u8 as *const libc::c_char
        as *mut libc::c_char;
    ret = decimal_to_anybase(
        18446744073709551615 as libc::c_ulonglong as uint64_t,
        b"0123456789\0" as *const u8 as *const libc::c_char,
    );
    let mut i_0: libc::c_int = 0 as libc::c_int;
    while (i_0 as libc::c_ulong) < strlen(reference)
        && (i_0 as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i_0 as isize) as libc::c_int
            == *reference.offset(i_0 as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                113 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i_0 += 1;
        i_0;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    reference = b"18446744073709551615\0" as *const u8 as *const libc::c_char
        as *mut libc::c_char;
    ret = decimal_to_anybase(
        -(1 as libc::c_int) as uint64_t,
        b"0123456789\0" as *const u8 as *const libc::c_char,
    );
    let mut i_1: libc::c_int = 0 as libc::c_int;
    while (i_1 as libc::c_ulong) < strlen(reference)
        && (i_1 as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i_1 as isize) as libc::c_int
            == *reference.offset(i_1 as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                123 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i_1 += 1;
        i_1;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    reference = b"101010\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    ret = decimal_to_anybase(
        42 as libc::c_int as uint64_t,
        b"01\0" as *const u8 as *const libc::c_char,
    );
    let mut i_2: libc::c_int = 0 as libc::c_int;
    while (i_2 as libc::c_ulong) < strlen(reference)
        && (i_2 as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i_2 as isize) as libc::c_int
            == *reference.offset(i_2 as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                133 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i_2 += 1;
        i_2;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    reference = b"52\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    ret = decimal_to_anybase(
        42 as libc::c_int as uint64_t,
        b"01234567\0" as *const u8 as *const libc::c_char,
    );
    let mut i_3: libc::c_int = 0 as libc::c_int;
    while (i_3 as libc::c_ulong) < strlen(reference)
        && (i_3 as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i_3 as isize) as libc::c_int
            == *reference.offset(i_3 as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                143 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i_3 += 1;
        i_3;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    reference = b"2A\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    ret = decimal_to_anybase(
        42 as libc::c_int as uint64_t,
        b"0123456789ABCDEF\0" as *const u8 as *const libc::c_char,
    );
    let mut i_4: libc::c_int = 0 as libc::c_int;
    while (i_4 as libc::c_ulong) < strlen(reference)
        && (i_4 as libc::c_ulong) < strlen(ret)
    {
        if *ret.offset(i_4 as isize) as libc::c_int
            == *reference.offset(i_4 as isize) as libc::c_int
        {} else {
            __assert_fail(
                b"ret[i] == reference[i]\0" as *const u8 as *const libc::c_char,
                b"program_003.c\0" as *const u8 as *const libc::c_char,
                153 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 12],
                    &[libc::c_char; 12],
                >(b"void test()\0"))
                    .as_ptr(),
            );
        };
        i_4 += 1;
        i_4;
    }
    if !ret.is_null() {
        free(ret as *mut libc::c_void);
    }
    printf(
        b"[+] All tests have successfully passed!\n\0" as *const u8
            as *const libc::c_char,
    );
}
unsafe fn main_0() -> libc::c_int {
    test();
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
