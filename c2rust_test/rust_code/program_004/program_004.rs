use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn perror(__s: *const libc::c_char);
    fn calloc(_: libc::c_ulong, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn exit(_: libc::c_int) -> !;
    fn strcmp(_: *const libc::c_char, _: *const libc::c_char) -> libc::c_int;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
}
pub type C2RustUnnamed = libc::c_uint;
pub const DIAG: C2RustUnnamed = 2;
pub const UP: C2RustUnnamed = 1;
pub const LEFT: C2RustUnnamed = 0;
#[no_mangle]
pub unsafe extern "C" fn lcslen(
    mut s1: *const libc::c_char,
    mut s2: *const libc::c_char,
    mut l1: libc::c_int,
    mut l2: libc::c_int,
    mut L: *mut *mut libc::c_int,
    mut B: *mut *mut libc::c_int,
) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 1 as libc::c_int;
    while i <= l1 {
        j = 1 as libc::c_int;
        while j <= l2 {
            if *s1.offset((i - 1 as libc::c_int) as isize) as libc::c_int
                == *s2.offset((j - 1 as libc::c_int) as isize) as libc::c_int
            {
                *(*L.offset(i as isize))
                    .offset(
                        j as isize,
                    ) = 1 as libc::c_int
                    + *(*L.offset((i - 1 as libc::c_int) as isize))
                        .offset((j - 1 as libc::c_int) as isize);
                *(*B.offset(i as isize)).offset(j as isize) = DIAG as libc::c_int;
            } else if *(*L.offset((i - 1 as libc::c_int) as isize)).offset(j as isize)
                < *(*L.offset(i as isize)).offset((j - 1 as libc::c_int) as isize)
            {
                *(*L.offset(i as isize))
                    .offset(
                        j as isize,
                    ) = *(*L.offset(i as isize)).offset((j - 1 as libc::c_int) as isize);
                *(*B.offset(i as isize)).offset(j as isize) = LEFT as libc::c_int;
            } else {
                *(*L.offset(i as isize))
                    .offset(
                        j as isize,
                    ) = *(*L.offset((i - 1 as libc::c_int) as isize)).offset(j as isize);
                *(*B.offset(i as isize)).offset(j as isize) = UP as libc::c_int;
            }
            j += 1;
            j;
        }
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn lcsbuild(
    mut s1: *const libc::c_char,
    mut l1: libc::c_int,
    mut l2: libc::c_int,
    mut L: *mut *mut libc::c_int,
    mut B: *mut *mut libc::c_int,
) -> *mut libc::c_char {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut lcsl: libc::c_int = 0;
    let mut lcs: *mut libc::c_char = 0 as *mut libc::c_char;
    lcsl = *(*L.offset(l1 as isize)).offset(l2 as isize);
    lcs = calloc(
        (lcsl + 1 as libc::c_int) as libc::c_ulong,
        ::core::mem::size_of::<libc::c_char>() as libc::c_ulong,
    ) as *mut libc::c_char;
    if lcs.is_null() {
        perror(b"calloc: \0" as *const u8 as *const libc::c_char);
        return 0 as *mut libc::c_char;
    }
    i = l1;
    j = l2;
    while i > 0 as libc::c_int && j > 0 as libc::c_int {
        if *(*B.offset(i as isize)).offset(j as isize) == DIAG as libc::c_int {
            lcsl -= 1;
            *lcs.offset(lcsl as isize) = *s1.offset((i - 1 as libc::c_int) as isize);
            i = i - 1 as libc::c_int;
            j = j - 1 as libc::c_int;
        } else if *(*B.offset(i as isize)).offset(j as isize) == LEFT as libc::c_int {
            j = j - 1 as libc::c_int;
        } else {
            i = i - 1 as libc::c_int;
        }
    }
    return lcs;
}
unsafe extern "C" fn test() {
    let mut L: *mut *mut libc::c_int = 0 as *mut *mut libc::c_int;
    let mut B: *mut *mut libc::c_int = 0 as *mut *mut libc::c_int;
    let mut j: libc::c_int = 0;
    let mut l1: libc::c_int = 0;
    let mut l2: libc::c_int = 0;
    let mut s1: *mut libc::c_char = b"ACGGTGTCGTGCTATGCTGATGCTGACTTATATGCTA\0"
        as *const u8 as *const libc::c_char as *mut libc::c_char;
    let mut s2: *mut libc::c_char = b"CGTTCGGCTATCGTACGTTCTATTCTATGATTTCTAA\0"
        as *const u8 as *const libc::c_char as *mut libc::c_char;
    let mut lcs: *mut libc::c_char = 0 as *mut libc::c_char;
    l1 = strlen(s1) as libc::c_int;
    l2 = strlen(s2) as libc::c_int;
    L = calloc(
        (l1 + 1 as libc::c_int) as libc::c_ulong,
        ::core::mem::size_of::<*mut libc::c_int>() as libc::c_ulong,
    ) as *mut *mut libc::c_int;
    B = calloc(
        (l1 + 1 as libc::c_int) as libc::c_ulong,
        ::core::mem::size_of::<*mut libc::c_int>() as libc::c_ulong,
    ) as *mut *mut libc::c_int;
    if L.is_null() {
        perror(b"calloc: \0" as *const u8 as *const libc::c_char);
        exit(1 as libc::c_int);
    }
    if B.is_null() {
        perror(b"calloc: \0" as *const u8 as *const libc::c_char);
        exit(1 as libc::c_int);
    }
    j = 0 as libc::c_int;
    while j <= l1 {
        let ref mut fresh0 = *L.offset(j as isize);
        *fresh0 = calloc(
            (l2 + 1 as libc::c_int) as libc::c_ulong,
            ::core::mem::size_of::<libc::c_int>() as libc::c_ulong,
        ) as *mut libc::c_int;
        if (*L.offset(j as isize)).is_null() {
            perror(b"calloc: \0" as *const u8 as *const libc::c_char);
            exit(1 as libc::c_int);
        }
        let ref mut fresh1 = *B.offset(j as isize);
        *fresh1 = calloc(
            (l2 + 1 as libc::c_int) as libc::c_ulong,
            ::core::mem::size_of::<libc::c_int>() as libc::c_ulong,
        ) as *mut libc::c_int;
        if (*L.offset(j as isize)).is_null() {
            perror(b"calloc: \0" as *const u8 as *const libc::c_char);
            exit(1 as libc::c_int);
        }
        j += 1;
        j;
    }
    lcslen(s1, s2, l1, l2, L, B);
    lcs = lcsbuild(s1, l1, l2, L, B);
    if *(*L.offset(l1 as isize)).offset(l2 as isize) == 27 as libc::c_int {} else {
        __assert_fail(
            b"L[l1][l2] == 27\0" as *const u8 as *const libc::c_char,
            b"program_004.c\0" as *const u8 as *const libc::c_char,
            138 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<&[u8; 12], &[libc::c_char; 12]>(b"void test()\0"))
                .as_ptr(),
        );
    };
    if strcmp(lcs, b"CGTTCGGCTATGCTTCTACTTATTCTA\0" as *const u8 as *const libc::c_char)
        == 0 as libc::c_int
    {} else {
        __assert_fail(
            b"strcmp(lcs, \"CGTTCGGCTATGCTTCTACTTATTCTA\") == 0\0" as *const u8
                as *const libc::c_char,
            b"program_004.c\0" as *const u8 as *const libc::c_char,
            139 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<&[u8; 12], &[libc::c_char; 12]>(b"void test()\0"))
                .as_ptr(),
        );
    };
    printf(b"S1: %s\tS2: %s\n\0" as *const u8 as *const libc::c_char, s1, s2);
    printf(
        b"LCS len:%3d\n\0" as *const u8 as *const libc::c_char,
        *(*L.offset(l1 as isize)).offset(l2 as isize),
    );
    printf(b"LCS: %s\n\0" as *const u8 as *const libc::c_char, lcs);
    free(lcs as *mut libc::c_void);
    j = 0 as libc::c_int;
    while j <= l1 {
        free(*L.offset(j as isize) as *mut libc::c_void);
        free(*B.offset(j as isize) as *mut libc::c_void);
        j += 1;
        j;
    }
    free(L as *mut libc::c_void);
    free(B as *mut libc::c_void);
    printf(
        b"All tests have successfully passed!\n\0" as *const u8 as *const libc::c_char,
    );
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *mut libc::c_char,
) -> libc::c_int {
    test();
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
