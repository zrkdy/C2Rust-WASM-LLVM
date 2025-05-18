use ::libc;
extern "C" {
    fn qsort(
        __base: *mut libc::c_void,
        __nmemb: size_t,
        __size: size_t,
        __compar: __compar_fn_t,
    );
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
}
pub type size_t = libc::c_ulong;
pub type __compar_fn_t = Option::<
    unsafe extern "C" fn(*const libc::c_void, *const libc::c_void) -> libc::c_int,
>;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct NScore {
    pub ID: libc::c_int,
    pub s: [libc::c_int; 6],
    pub total_score: libc::c_int,
    pub perfect: libc::c_int,
    pub rank: libc::c_int,
    pub enable: bool,
}
#[no_mangle]
pub static mut Student: [NScore; 10005] = [NScore {
    ID: 0,
    s: [0; 6],
    total_score: 0,
    perfect: 0,
    rank: 0,
    enable: false,
}; 10005];
#[no_mangle]
pub unsafe extern "C" fn compare3keys(
    mut a: *const libc::c_void,
    mut b: *const libc::c_void,
) -> libc::c_int {
    let mut k: libc::c_int = 0;
    if (*(a as *const NScore)).total_score < (*(b as *const NScore)).total_score {
        k = 1 as libc::c_int;
    } else if (*(a as *const NScore)).total_score > (*(b as *const NScore)).total_score {
        k = -(1 as libc::c_int);
    } else if (*(a as *const NScore)).perfect < (*(b as *const NScore)).perfect {
        k = 1 as libc::c_int;
    } else if (*(a as *const NScore)).perfect > (*(b as *const NScore)).perfect {
        k = -(1 as libc::c_int);
    } else if (*(a as *const NScore)).ID < (*(b as *const NScore)).ID {
        k = -(1 as libc::c_int);
    } else if (*(a as *const NScore)).ID > (*(b as *const NScore)).ID {
        k = 1 as libc::c_int;
    } else {
        k = 0 as libc::c_int;
    }
    return k;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut K: libc::c_int = 0;
    let mut M: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut cnt: libc::c_int = 0;
    let mut user_id: libc::c_int = 0;
    let mut problem_id: libc::c_int = 0;
    let mut partial_score: libc::c_int = 0;
    let mut p: [libc::c_int; 6] = [0; 6];
    scanf(
        b"%d %d %d\0" as *const u8 as *const libc::c_char,
        &mut N as *mut libc::c_int,
        &mut K as *mut libc::c_int,
        &mut M as *mut libc::c_int,
    );
    i = 1 as libc::c_int;
    while i <= K {
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut *p.as_mut_ptr().offset(i as isize) as *mut libc::c_int,
        );
        i += 1;
        i;
    }
    i = 1 as libc::c_int;
    while i <= N {
        Student[i as usize].ID = i;
        Student[i as usize].enable = 0 as libc::c_int != 0;
        j = 1 as libc::c_int;
        while j <= K {
            Student[i as usize].s[j as usize] = -(2 as libc::c_int);
            j += 1;
            j;
        }
        Student[i as usize].rank = 0 as libc::c_int;
        Student[i as usize].perfect = Student[i as usize].rank;
        Student[i as usize].total_score = Student[i as usize].perfect;
        i += 1;
        i;
    }
    Student[0 as libc::c_int as usize].total_score = -(1 as libc::c_int);
    i = 0 as libc::c_int;
    while i < M {
        scanf(
            b"%d %d %d\0" as *const u8 as *const libc::c_char,
            &mut user_id as *mut libc::c_int,
            &mut problem_id as *mut libc::c_int,
            &mut partial_score as *mut libc::c_int,
        );
        if partial_score > -(1 as libc::c_int) {
            Student[user_id as usize].enable = 1 as libc::c_int != 0;
        }
        if partial_score > Student[user_id as usize].s[problem_id as usize] {
            Student[user_id as usize].s[problem_id as usize] = partial_score;
        }
        i += 1;
        i;
    }
    i = 1 as libc::c_int;
    while i <= N {
        j = 1 as libc::c_int;
        while j <= K {
            if Student[i as usize].s[j as usize] > 0 as libc::c_int {
                Student[i as usize].total_score += Student[i as usize].s[j as usize];
                if Student[i as usize].s[j as usize] == p[j as usize] {
                    Student[i as usize].perfect += 1;
                    Student[i as usize].perfect;
                }
            }
            j += 1;
            j;
        }
        i += 1;
        i;
    }
    qsort(
        Student.as_mut_ptr() as *mut libc::c_void,
        (N + 1 as libc::c_int) as size_t,
        ::core::mem::size_of::<NScore>() as libc::c_ulong,
        Some(
            compare3keys
                as unsafe extern "C" fn(
                    *const libc::c_void,
                    *const libc::c_void,
                ) -> libc::c_int,
        ),
    );
    cnt = 0 as libc::c_int;
    i = 0 as libc::c_int;
    while i < N {
        if Student[i as usize].total_score
            != Student[(i + 1 as libc::c_int) as usize].total_score
        {
            Student[i as usize].rank = i - cnt + 1 as libc::c_int;
            cnt = 0 as libc::c_int;
        } else {
            Student[i as usize].rank = i - cnt + 1 as libc::c_int;
            cnt += 1;
            cnt;
        }
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < N {
        if Student[i as usize].enable {
            printf(
                b"%d %05d %d\0" as *const u8 as *const libc::c_char,
                Student[i as usize].rank,
                Student[i as usize].ID,
                Student[i as usize].total_score,
            );
            j = 1 as libc::c_int;
            while j <= K {
                if Student[i as usize].s[j as usize] == -(2 as libc::c_int) {
                    printf(b" -\0" as *const u8 as *const libc::c_char);
                } else if Student[i as usize].s[j as usize] == -(1 as libc::c_int) {
                    printf(b" 0\0" as *const u8 as *const libc::c_char);
                } else {
                    printf(
                        b" %d\0" as *const u8 as *const libc::c_char,
                        Student[i as usize].s[j as usize],
                    );
                }
                j += 1;
                j;
            }
            printf(b"\n\0" as *const u8 as *const libc::c_char);
        }
        i += 1;
        i;
    }
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
