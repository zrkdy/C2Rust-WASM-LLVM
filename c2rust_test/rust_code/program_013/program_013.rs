use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn exit(_: libc::c_int) -> !;
}
#[no_mangle]
pub unsafe extern "C" fn swap(mut a: *mut libc::c_int, mut b: *mut libc::c_int) {
    let mut t: libc::c_int = 0;
    t = *a;
    *a = *b;
    *b = t;
}
#[no_mangle]
pub unsafe extern "C" fn merge(
    mut a: *mut libc::c_int,
    mut l: libc::c_int,
    mut r: libc::c_int,
    mut n: libc::c_int,
) {
    let mut b: *mut libc::c_int = malloc(
        (n as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if b.is_null() {
        printf(b"Can't Malloc! Please try again.\0" as *const u8 as *const libc::c_char);
        exit(1 as libc::c_int);
    }
    let mut c: libc::c_int = l;
    let mut p1: libc::c_int = 0;
    let mut p2: libc::c_int = 0;
    p1 = l;
    p2 = (l + r) / 2 as libc::c_int + 1 as libc::c_int;
    while p1 < (l + r) / 2 as libc::c_int + 1 as libc::c_int && p2 < r + 1 as libc::c_int
    {
        if *a.offset(p1 as isize) <= *a.offset(p2 as isize) {
            let fresh0 = c;
            c = c + 1;
            *b.offset(fresh0 as isize) = *a.offset(p1 as isize);
            p1 += 1;
            p1;
        } else {
            let fresh1 = c;
            c = c + 1;
            *b.offset(fresh1 as isize) = *a.offset(p2 as isize);
            p2 += 1;
            p2;
        }
    }
    if p2 == r + 1 as libc::c_int {
        while p1 < (l + r) / 2 as libc::c_int + 1 as libc::c_int {
            let fresh2 = c;
            c = c + 1;
            *b.offset(fresh2 as isize) = *a.offset(p1 as isize);
            p1 += 1;
            p1;
        }
    } else {
        while p2 < r + 1 as libc::c_int {
            let fresh3 = c;
            c = c + 1;
            *b.offset(fresh3 as isize) = *a.offset(p2 as isize);
            p2 += 1;
            p2;
        }
    }
    c = l;
    while c < r + 1 as libc::c_int {
        *a.offset(c as isize) = *b.offset(c as isize);
        c += 1;
        c;
    }
    free(b as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn merge_sort(
    mut a: *mut libc::c_int,
    mut n: libc::c_int,
    mut l: libc::c_int,
    mut r: libc::c_int,
) {
    if r - l == 1 as libc::c_int {
        if *a.offset(l as isize) > *a.offset(r as isize) {
            swap(&mut *a.offset(l as isize), &mut *a.offset(r as isize));
        }
    } else if l != r {
        merge_sort(a, n, l, (l + r) / 2 as libc::c_int);
        merge_sort(a, n, (l + r) / 2 as libc::c_int + 1 as libc::c_int, r);
        merge(a, l, r, n);
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut a: *mut libc::c_int = 0 as *mut libc::c_int;
    let mut n: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    printf(b"Enter Array size: \0" as *const u8 as *const libc::c_char);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut n as *mut libc::c_int);
    if n <= 0 as libc::c_int {
        printf(
            b"Array size must be Greater than 0!\n\0" as *const u8 as *const libc::c_char,
        );
        return 1 as libc::c_int;
    }
    a = malloc(
        (n as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if a.is_null() {
        printf(b"Can't Malloc! Please try again.\0" as *const u8 as *const libc::c_char);
        return 1 as libc::c_int;
    }
    i = 0 as libc::c_int;
    while i < n {
        printf(b"Enter number[%d]: \0" as *const u8 as *const libc::c_char, i);
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut *a.offset(i as isize) as *mut libc::c_int,
        );
        i += 1;
        i;
    }
    merge_sort(a, n, 0 as libc::c_int, n - 1 as libc::c_int);
    printf(b"Sorted Array: \0" as *const u8 as *const libc::c_char);
    i = 0 as libc::c_int;
    while i < n {
        printf(b"%d \0" as *const u8 as *const libc::c_char, *a.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    free(a as *mut libc::c_void);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
