use ::libc;
extern "C" {
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn Insertion_Sort(
    mut A: *mut libc::c_int,
    mut N: libc::c_int,
    mut Round: libc::c_int,
) {
    let mut Tmp: libc::c_int = 0;
    let mut P: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    P = 0 as libc::c_int;
    while P < Round {
        Tmp = *A.offset(P as isize);
        i = P;
        while i > 0 as libc::c_int {
            if !(*A.offset((i - 1 as libc::c_int) as isize) > Tmp) {
                break;
            }
            *A.offset(i as isize) = *A.offset((i - 1 as libc::c_int) as isize);
            i -= 1;
            i;
        }
        *A.offset(i as isize) = Tmp;
        P += 1;
        P;
    }
}
#[no_mangle]
pub unsafe extern "C" fn Merge(
    mut A: *mut libc::c_int,
    mut TempA: *mut libc::c_int,
    mut L: libc::c_int,
    mut R: libc::c_int,
    mut RightEnd: libc::c_int,
) {
    let mut LeftEnd: libc::c_int = R - 1 as libc::c_int;
    let mut Tmp: libc::c_int = L;
    let mut Num: libc::c_int = RightEnd - L + 1 as libc::c_int;
    while L <= LeftEnd && R <= RightEnd {
        if *A.offset(L as isize) <= *A.offset(R as isize) {
            let fresh0 = L;
            L = L + 1;
            let fresh1 = Tmp;
            Tmp = Tmp + 1;
            *TempA.offset(fresh1 as isize) = *A.offset(fresh0 as isize);
        } else {
            let fresh2 = R;
            R = R + 1;
            let fresh3 = Tmp;
            Tmp = Tmp + 1;
            *TempA.offset(fresh3 as isize) = *A.offset(fresh2 as isize);
        }
    }
    while L <= LeftEnd {
        let fresh4 = L;
        L = L + 1;
        let fresh5 = Tmp;
        Tmp = Tmp + 1;
        *TempA.offset(fresh5 as isize) = *A.offset(fresh4 as isize);
    }
    while R <= RightEnd {
        let fresh6 = R;
        R = R + 1;
        let fresh7 = Tmp;
        Tmp = Tmp + 1;
        *TempA.offset(fresh7 as isize) = *A.offset(fresh6 as isize);
    }
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < Num {
        *A.offset(RightEnd as isize) = *TempA.offset(RightEnd as isize);
        RightEnd -= 1;
        RightEnd;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn Merge_Pass(
    mut A: *mut libc::c_int,
    mut TmpA: *mut libc::c_int,
    mut N: libc::c_int,
    mut length: libc::c_int,
) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i <= N - 2 as libc::c_int * length {
        Merge(A, TmpA, i, i + length, i + 2 as libc::c_int * length - 1 as libc::c_int);
        i += 2 as libc::c_int * length;
    }
    if i + length < N {
        Merge(A, TmpA, i, i + length, N - 1 as libc::c_int);
    } else {
        j = i;
        while j < N {
            *TmpA.offset(j as isize) = *A.offset(j as isize);
            j += 1;
            j;
        }
    };
}
#[no_mangle]
pub unsafe extern "C" fn Identical(
    mut A: *mut libc::c_int,
    mut B: *mut libc::c_int,
    mut N: libc::c_int,
) -> bool {
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < N {
        if *A.offset(i as isize) != *B.offset(i as isize) {
            return 0 as libc::c_int != 0;
        }
        i += 1;
        i;
    }
    return 1 as libc::c_int != 0;
}
#[no_mangle]
pub unsafe extern "C" fn Merge_sort(
    mut A: *mut libc::c_int,
    mut B: *mut libc::c_int,
    mut N: libc::c_int,
) -> libc::c_int {
    let mut length: libc::c_int = 1 as libc::c_int;
    let mut TmpA: *mut libc::c_int = 0 as *mut libc::c_int;
    TmpA = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if !TmpA.is_null() {
        while length < N {
            Merge_Pass(A, TmpA, N, length);
            length *= 2 as libc::c_int;
            if Identical(A, B, N) {
                Merge_Pass(A, TmpA, N, length);
                free(TmpA as *mut libc::c_void);
                return 1 as libc::c_int;
            }
        }
        free(TmpA as *mut libc::c_void);
        return 1 as libc::c_int;
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn IsInsertion(
    mut A: *mut libc::c_int,
    mut B: *mut libc::c_int,
    mut N: libc::c_int,
) -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < N {
        if *B.offset(i as isize) > *B.offset((i + 1 as libc::c_int) as isize) {
            break;
        }
        i += 1;
        i;
    }
    j = i + 1 as libc::c_int;
    while j < N {
        if *A.offset(j as isize) != *B.offset(j as isize) {
            break;
        }
        j += 1;
        j;
    }
    if j != N { return 0 as libc::c_int } else { return i + 1 as libc::c_int };
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut T: libc::c_int = 0;
    let mut flag: libc::c_int = 0 as libc::c_int;
    let mut A: *mut libc::c_int = 0 as *mut libc::c_int;
    let mut B: *mut libc::c_int = 0 as *mut libc::c_int;
    scanf(b"%d\n\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    A = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    B = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    i = 0 as libc::c_int;
    while i < N {
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut *A.offset(i as isize) as *mut libc::c_int,
        );
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < N {
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut *B.offset(i as isize) as *mut libc::c_int,
        );
        i += 1;
        i;
    }
    i = IsInsertion(A, B, N);
    if i != 0 {
        printf(b"Insertion Sort\n\0" as *const u8 as *const libc::c_char);
        Insertion_Sort(A, N, i + 1 as libc::c_int);
    } else {
        printf(b"Merge Sort\n\0" as *const u8 as *const libc::c_char);
        Merge_sort(A, B, N);
    }
    i = 0 as libc::c_int;
    while i < N {
        if flag == 0 as libc::c_int {
            flag = 1 as libc::c_int;
        } else {
            printf(b" \0" as *const u8 as *const libc::c_char);
        }
        printf(b"%d\0" as *const u8 as *const libc::c_char, *A.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
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
                args.as_mut_ptr() as *mut *const libc::c_char,
            ) as i32,
        )
    }
}
