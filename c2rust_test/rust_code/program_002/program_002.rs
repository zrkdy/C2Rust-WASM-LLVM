use ::libc;
extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn div(__numer: libc::c_int, __denom: libc::c_int) -> div_t;
    fn strcpy(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strcmp(_: *const libc::c_char, _: *const libc::c_char) -> libc::c_int;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct div_t {
    pub quot: libc::c_int,
    pub rem: libc::c_int,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct affine_key_t {
    pub a: libc::c_int,
    pub b: libc::c_int,
}
#[no_mangle]
pub unsafe extern "C" fn modular_multiplicative_inverse(
    mut a: libc::c_uint,
    mut m: libc::c_uint,
) -> libc::c_int {
    let mut x: [libc::c_int; 2] = [1 as libc::c_int, 0 as libc::c_int];
    let mut div_result: div_t = div_t { quot: 0, rem: 0 };
    if m == 0 as libc::c_int as libc::c_uint {
        return 0 as libc::c_int;
    }
    a = a.wrapping_rem(m);
    if a == 0 as libc::c_int as libc::c_uint {
        return 0 as libc::c_int;
    }
    div_result.rem = a as libc::c_int;
    while div_result.rem > 0 as libc::c_int {
        div_result = div(m as libc::c_int, a as libc::c_int);
        m = a;
        a = div_result.rem as libc::c_uint;
        let mut next: libc::c_int = x[1 as libc::c_int as usize]
            - x[0 as libc::c_int as usize] * div_result.quot;
        x[1 as libc::c_int as usize] = x[0 as libc::c_int as usize];
        x[0 as libc::c_int as usize] = next;
    }
    return x[1 as libc::c_int as usize];
}
#[no_mangle]
pub unsafe extern "C" fn inverse_key(mut key: affine_key_t) -> affine_key_t {
    let mut inverse: affine_key_t = affine_key_t { a: 0, b: 0 };
    inverse
        .a = modular_multiplicative_inverse(
        key.a as libc::c_uint,
        95 as libc::c_int as libc::c_uint,
    );
    inverse.a += 95 as libc::c_int;
    inverse.a %= 95 as libc::c_int;
    inverse.b = -(key.b % 95 as libc::c_int) + 95 as libc::c_int;
    return inverse;
}
#[no_mangle]
pub unsafe extern "C" fn affine_encrypt(
    mut s: *mut libc::c_char,
    mut key: affine_key_t,
) {
    let mut i: libc::c_int = 0 as libc::c_int;
    while *s.offset(i as isize) as libc::c_int != '\0' as i32 {
        let mut c: libc::c_int = *s.offset(i as isize) as libc::c_int
            - 32 as libc::c_int;
        c *= key.a;
        c += key.b;
        c %= 95 as libc::c_int;
        *s.offset(i as isize) = (c + 32 as libc::c_int) as libc::c_char;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn affine_decrypt(
    mut s: *mut libc::c_char,
    mut key: affine_key_t,
) {
    let mut inverse: affine_key_t = inverse_key(key);
    let mut i: libc::c_int = 0 as libc::c_int;
    while *s.offset(i as isize) as libc::c_int != '\0' as i32 {
        let mut c: libc::c_int = *s.offset(i as isize) as libc::c_int
            - 32 as libc::c_int;
        c += inverse.b;
        c *= inverse.a;
        c %= 95 as libc::c_int;
        *s.offset(i as isize) = (c + 32 as libc::c_int) as libc::c_char;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn test_string(
    mut s: *const libc::c_char,
    mut ciphertext: *const libc::c_char,
    mut a: libc::c_int,
    mut b: libc::c_int,
) {
    let mut copy: *mut libc::c_char = malloc(
        (strlen(s))
            .wrapping_add(1 as libc::c_int as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_char>() as libc::c_ulong),
    ) as *mut libc::c_char;
    strcpy(copy, s);
    let mut key: affine_key_t = {
        let mut init = affine_key_t { a: a, b: b };
        init
    };
    affine_encrypt(copy, key);
    if strcmp(copy, ciphertext) == 0 as libc::c_int {} else {
        __assert_fail(
            b"strcmp(copy, ciphertext) == 0\0" as *const u8 as *const libc::c_char,
            b"program_002.c\0" as *const u8 as *const libc::c_char,
            165 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 55],
                &[libc::c_char; 55],
            >(b"void test_string(const char *, const char *, int, int)\0"))
                .as_ptr(),
        );
    };
    affine_decrypt(copy, key);
    if strcmp(copy, s) == 0 as libc::c_int {} else {
        __assert_fail(
            b"strcmp(copy, s) == 0\0" as *const u8 as *const libc::c_char,
            b"program_002.c\0" as *const u8 as *const libc::c_char,
            169 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 55],
                &[libc::c_char; 55],
            >(b"void test_string(const char *, const char *, int, int)\0"))
                .as_ptr(),
        );
    };
    free(copy as *mut libc::c_void);
}
unsafe extern "C" fn tests() {
    test_string(
        b"Hello!\0" as *const u8 as *const libc::c_char,
        b"&3ddy2\0" as *const u8 as *const libc::c_char,
        7 as libc::c_int,
        11 as libc::c_int,
    );
    test_string(
        b"TheAlgorithms/C\0" as *const u8 as *const libc::c_char,
        b"DNC}=jHS2zN!7;E\0" as *const u8 as *const libc::c_char,
        67 as libc::c_int,
        67 as libc::c_int,
    );
    test_string(
        b"0123456789\0" as *const u8 as *const libc::c_char,
        b"840,($ {ws\0" as *const u8 as *const libc::c_char,
        91 as libc::c_int,
        88 as libc::c_int,
    );
    test_string(
        b"7W@;cdeRT9uL\0" as *const u8 as *const libc::c_char,
        b"JDfa*we?z&bL\0" as *const u8 as *const libc::c_char,
        77 as libc::c_int,
        76 as libc::c_int,
    );
    test_string(
        b"~Qr%^-+++$leM\0" as *const u8 as *const libc::c_char,
        b"r'qC0$sss;Ahf\0" as *const u8 as *const libc::c_char,
        8 as libc::c_int,
        90 as libc::c_int,
    );
    test_string(
        b"The quick brown fox jumps over the lazy dog\0" as *const u8
            as *const libc::c_char,
        b"K7: .*6<4 =-0(1 90' 5*2/, 0):- +7: 3>%& ;08\0" as *const u8
            as *const libc::c_char,
        94 as libc::c_int,
        0 as libc::c_int,
    );
    test_string(
        b"One-1, Two-2, Three-3, Four-4, Five-5, Six-6, Seven-7, Eight-8, Nine-9, Ten-10\0"
            as *const u8 as *const libc::c_char,
        b"H&60>\\2*uY0q\\2*p4660E\\2XYn40x\\2XDB60L\\2VDI0 \\2V6B6&0S\\2%D=p;0'\\2tD&60Z\\2*6&0>j\0"
            as *const u8 as *const libc::c_char,
        51 as libc::c_int,
        18 as libc::c_int,
    );
    printf(
        b"All tests have successfully passed!\n\0" as *const u8 as *const libc::c_char,
    );
}
unsafe fn main_0() -> libc::c_int {
    tests();
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
