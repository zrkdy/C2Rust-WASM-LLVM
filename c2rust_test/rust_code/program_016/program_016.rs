use ::libc;
extern "C" {
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn qsort(
        __base: *mut libc::c_void,
        __nmemb: size_t,
        __size: size_t,
        __compar: __compar_fn_t,
    );
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
}
pub type size_t = libc::c_ulong;
pub type __compar_fn_t = Option::<
    unsafe extern "C" fn(*const libc::c_void, *const libc::c_void) -> libc::c_int,
>;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub key: libc::c_int,
    pub next: PtrNode,
}
pub type PtrNode = *mut Node;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct HeadNode {
    pub head: PtrNode,
    pub tail: PtrNode,
}
pub type Bucket = [HeadNode; 10];
#[no_mangle]
pub unsafe extern "C" fn Swap(mut a: *mut libc::c_int, mut b: *mut libc::c_int) {
    let mut c: libc::c_int = 0;
    c = *a;
    *a = *b;
    *b = c;
}
#[no_mangle]
pub unsafe extern "C" fn Bubble_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut P: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut flag: libc::c_int = 0;
    P = N - 1 as libc::c_int;
    while P > 0 as libc::c_int {
        flag = 0 as libc::c_int;
        i = 0 as libc::c_int;
        while i < P {
            if *A.offset(i as isize) > *A.offset((i + 1 as libc::c_int) as isize) {
                Swap(
                    &mut *A.offset(i as isize),
                    &mut *A.offset((i + 1 as libc::c_int) as isize),
                );
                flag = 1 as libc::c_int;
            }
            i += 1;
            i;
        }
        if flag == 0 as libc::c_int {
            break;
        }
        P -= 1;
        P;
    }
}
#[no_mangle]
pub unsafe extern "C" fn Insertion_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut Tmp: libc::c_int = 0;
    let mut P: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    P = 1 as libc::c_int;
    while P < N {
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
pub unsafe extern "C" fn Shell_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut D: libc::c_int = 0;
    let mut P: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut Tmp: libc::c_int = 0;
    D = N / 2 as libc::c_int;
    while D > 0 as libc::c_int {
        P = D;
        while P < N {
            Tmp = *A.offset(P as isize);
            i = P;
            while i >= D && *A.offset((i - D) as isize) > Tmp {
                *A.offset(i as isize) = *A.offset((i - D) as isize);
                i -= D;
            }
            *A.offset(i as isize) = Tmp;
            P += 1;
            P;
        }
        D /= 2 as libc::c_int;
    }
}
#[no_mangle]
pub unsafe extern "C" fn PercDown(
    mut A: *mut libc::c_int,
    mut p: libc::c_int,
    mut N: libc::c_int,
) {
    let mut parent: libc::c_int = 0;
    let mut child: libc::c_int = 0;
    let mut X: libc::c_int = 0;
    X = *A.offset(p as isize);
    parent = p;
    while parent * 2 as libc::c_int + 1 as libc::c_int <= N - 1 as libc::c_int {
        child = parent * 2 as libc::c_int + 1 as libc::c_int;
        if child != N - 1 as libc::c_int
            && *A.offset(child as isize) < *A.offset((child + 1 as libc::c_int) as isize)
        {
            child += 1;
            child;
        }
        if X >= *A.offset(child as isize) {
            break;
        }
        *A.offset(parent as isize) = *A.offset(child as isize);
        parent = child;
    }
    *A.offset(parent as isize) = X;
}
#[no_mangle]
pub unsafe extern "C" fn Heap_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut i: libc::c_int = 0;
    i = N / 2 as libc::c_int;
    while i >= 0 as libc::c_int {
        PercDown(A, i, N);
        i -= 1;
        i;
    }
    i = N - 1 as libc::c_int;
    while i > 0 as libc::c_int {
        Swap(&mut *A.offset(0 as libc::c_int as isize), &mut *A.offset(i as isize));
        PercDown(A, 0 as libc::c_int, i);
        i -= 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn Merge(
    mut A: *mut libc::c_int,
    mut TmpA: *mut libc::c_int,
    mut L: libc::c_int,
    mut R: libc::c_int,
    mut RightEnd: libc::c_int,
) {
    let mut LeftEnd: libc::c_int = 0;
    let mut Num: libc::c_int = 0;
    let mut Tmp: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    LeftEnd = R - 1 as libc::c_int;
    Tmp = L;
    Num = RightEnd - L + 1 as libc::c_int;
    while L <= LeftEnd && R <= RightEnd {
        if *A.offset(L as isize) <= *A.offset(R as isize) {
            let fresh0 = L;
            L = L + 1;
            let fresh1 = Tmp;
            Tmp = Tmp + 1;
            *TmpA.offset(fresh1 as isize) = *A.offset(fresh0 as isize);
        } else {
            let fresh2 = R;
            R = R + 1;
            let fresh3 = Tmp;
            Tmp = Tmp + 1;
            *TmpA.offset(fresh3 as isize) = *A.offset(fresh2 as isize);
        }
    }
    while L <= LeftEnd {
        let fresh4 = L;
        L = L + 1;
        let fresh5 = Tmp;
        Tmp = Tmp + 1;
        *TmpA.offset(fresh5 as isize) = *A.offset(fresh4 as isize);
    }
    while R <= RightEnd {
        let fresh6 = R;
        R = R + 1;
        let fresh7 = Tmp;
        Tmp = Tmp + 1;
        *TmpA.offset(fresh7 as isize) = *A.offset(fresh6 as isize);
    }
    i = 0 as libc::c_int;
    while i < Num {
        *A.offset(RightEnd as isize) = *TmpA.offset(RightEnd as isize);
        RightEnd -= 1;
        RightEnd;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn MSort(
    mut A: *mut libc::c_int,
    mut TmpA: *mut libc::c_int,
    mut L: libc::c_int,
    mut RightEnd: libc::c_int,
) {
    let mut Center: libc::c_int = 0;
    if L < RightEnd {
        Center = (L + RightEnd) / 2 as libc::c_int;
        MSort(A, TmpA, L, Center);
        MSort(A, TmpA, Center + 1 as libc::c_int, RightEnd);
        Merge(A, TmpA, L, Center + 1 as libc::c_int, RightEnd);
    }
}
#[no_mangle]
pub unsafe extern "C" fn Merge_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut TmpA: *mut libc::c_int = 0 as *mut libc::c_int;
    TmpA = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    if !TmpA.is_null() {
        MSort(A, TmpA, 0 as libc::c_int, N - 1 as libc::c_int);
        free(TmpA as *mut libc::c_void);
    } else {
        printf(
            b"\xE7\xA9\xBA\xE9\x97\xB4\xE4\xB8\x8D\xE8\xB6\xB3\n\0" as *const u8
                as *const libc::c_char,
        );
    };
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
pub unsafe extern "C" fn Merge_sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
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
            Merge_Pass(TmpA, A, N, length);
            length *= 2 as libc::c_int;
        }
        free(TmpA as *mut libc::c_void);
    } else {
        printf(
            b"\xE7\xA9\xBA\xE9\x97\xB4\xE4\xB8\x8D\xE8\xB6\xB3\n\0" as *const u8
                as *const libc::c_char,
        );
    };
}
#[no_mangle]
pub unsafe extern "C" fn Median3(
    mut A: *mut libc::c_int,
    mut Left: libc::c_int,
    mut Right: libc::c_int,
) -> libc::c_int {
    let mut Center: libc::c_int = (Left + Right) / 2 as libc::c_int;
    if *A.offset(Left as isize) > *A.offset(Center as isize) {
        Swap(&mut *A.offset(Left as isize), &mut *A.offset(Right as isize));
    }
    if *A.offset(Left as isize) > *A.offset(Right as isize) {
        Swap(&mut *A.offset(Left as isize), &mut *A.offset(Right as isize));
    }
    if *A.offset(Center as isize) > *A.offset(Right as isize) {
        Swap(&mut *A.offset(Center as isize), &mut *A.offset(Right as isize));
    }
    Swap(
        &mut *A.offset(Center as isize),
        &mut *A.offset((Right - 1 as libc::c_int) as isize),
    );
    return *A.offset((Right - 1 as libc::c_int) as isize);
}
#[no_mangle]
pub unsafe extern "C" fn Qsort(
    mut A: *mut libc::c_int,
    mut Left: libc::c_int,
    mut Right: libc::c_int,
) {
    let mut Pivot: libc::c_int = 0;
    let mut Cutoff: libc::c_int = 0;
    let mut Low: libc::c_int = 0;
    let mut High: libc::c_int = 0;
    Cutoff = 4 as libc::c_int;
    if Cutoff <= Right - Left {
        Pivot = Median3(A, Left, Right);
        Low = Left;
        High = Right - 1 as libc::c_int;
        loop {
            loop {
                Low += 1;
                if !(*A.offset(Low as isize) < Pivot) {
                    break;
                }
            }
            loop {
                High -= 1;
                if !(*A.offset(High as isize) > Pivot) {
                    break;
                }
            }
            if !(Low < High) {
                break;
            }
            Swap(&mut *A.offset(Low as isize), &mut *A.offset(High as isize));
        }
        Swap(
            &mut *A.offset(Low as isize),
            &mut *A.offset((Right - 1 as libc::c_int) as isize),
        );
        Qsort(A, Left, Low - 1 as libc::c_int);
        Qsort(A, Low + 1 as libc::c_int, Right);
    } else {
        Insertion_Sort(A.offset(Left as isize), Right - Left + 1 as libc::c_int);
    };
}
#[no_mangle]
pub unsafe extern "C" fn Quick_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    Qsort(A, 0 as libc::c_int, N - 1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn compare(
    mut a: *const libc::c_void,
    mut b: *const libc::c_void,
) -> libc::c_int {
    return *(a as *mut libc::c_int) - *(b as *mut libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn GetDigit(
    mut X: libc::c_int,
    mut D: libc::c_int,
) -> libc::c_int {
    let mut d: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    i = 1 as libc::c_int;
    while i <= D {
        d = X % 10 as libc::c_int;
        X /= 10 as libc::c_int;
        i += 1;
        i;
    }
    return d;
}
#[no_mangle]
pub unsafe extern "C" fn LSDRadix_Sort(mut A: *mut libc::c_int, mut N: libc::c_int) {
    let mut D: libc::c_int = 0;
    let mut Di: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut B: Bucket = [HeadNode {
        head: 0 as *mut Node,
        tail: 0 as *mut Node,
    }; 10];
    let mut tmp: PtrNode = 0 as *mut Node;
    let mut p: PtrNode = 0 as *mut Node;
    let mut List: PtrNode = 0 as PtrNode;
    i = 0 as libc::c_int;
    while i < 10 as libc::c_int {
        B[i as usize].tail = 0 as PtrNode;
        B[i as usize].head = B[i as usize].tail;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < N {
        tmp = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as PtrNode;
        (*tmp).key = *A.offset(i as isize);
        (*tmp).next = List;
        List = tmp;
        i += 1;
        i;
    }
    D = 1 as libc::c_int;
    while D <= 3 as libc::c_int {
        p = List;
        while !p.is_null() {
            Di = GetDigit((*p).key, D);
            tmp = p;
            p = (*p).next;
            (*tmp).next = 0 as PtrNode;
            if (B[Di as usize].head).is_null() {
                B[Di as usize].tail = tmp;
                B[Di as usize].head = B[Di as usize].tail;
            } else {
                (*B[Di as usize].tail).next = tmp;
                B[Di as usize].tail = tmp;
            }
        }
        List = 0 as PtrNode;
        Di = 10 as libc::c_int - 1 as libc::c_int;
        while Di >= 0 as libc::c_int {
            if !(B[Di as usize].head).is_null() {
                (*B[Di as usize].tail).next = List;
                List = B[Di as usize].head;
                B[Di as usize].tail = 0 as PtrNode;
                B[Di as usize].head = B[Di as usize].tail;
            }
            Di -= 1;
            Di;
        }
        D += 1;
        D;
    }
    i = 0 as libc::c_int;
    while i < N {
        tmp = List;
        List = (*List).next;
        *A.offset(i as isize) = (*tmp).key;
        free(tmp as *mut libc::c_void);
        i += 1;
        i;
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut flag: libc::c_int = 0 as libc::c_int;
    let mut A: [libc::c_int; 3] = [
        33 as libc::c_int,
        4 as libc::c_int,
        122 as libc::c_int,
    ];
    N = 3 as libc::c_int;
    qsort(
        A.as_mut_ptr() as *mut libc::c_void,
        N as size_t,
        ::core::mem::size_of::<libc::c_int>() as libc::c_ulong,
        Some(
            compare
                as unsafe extern "C" fn(
                    *const libc::c_void,
                    *const libc::c_void,
                ) -> libc::c_int,
        ),
    );
    i = 0 as libc::c_int;
    while i < N {
        if flag == 0 as libc::c_int {
            flag = 1 as libc::c_int;
        } else {
            printf(b" \0" as *const u8 as *const libc::c_char);
        }
        printf(b"%d\0" as *const u8 as *const libc::c_char, A[i as usize]);
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
