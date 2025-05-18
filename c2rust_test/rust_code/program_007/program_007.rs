use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn strcmp(_: *const libc::c_char, _: *const libc::c_char) -> libc::c_int;
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
}
pub type __uint16_t = libc::c_ushort;
pub type uint16_t = __uint16_t;
#[no_mangle]
pub unsafe extern "C" fn minimum(mut arr: *mut uint16_t, mut N: uint16_t) -> uint16_t {
    let mut index: uint16_t = 0 as libc::c_int as uint16_t;
    let mut min: uint16_t = 999 as libc::c_int as uint16_t;
    let mut i: uint16_t = 0 as libc::c_int as uint16_t;
    while (i as libc::c_int) < N as libc::c_int {
        if (*arr.offset(i as isize) as libc::c_int) < min as libc::c_int {
            min = *arr.offset(i as isize);
            index = i;
        }
        i = i.wrapping_add(1);
        i;
    }
    return index;
}
#[no_mangle]
pub unsafe extern "C" fn prim(
    mut G: *mut [uint16_t; 20],
    mut MST: *mut [uint16_t; 20],
    mut V: uint16_t,
) {
    let mut u: uint16_t = 0;
    let mut v: uint16_t = 0;
    let mut E_t: [uint16_t; 20] = [0; 20];
    let mut path: [uint16_t; 20] = [0; 20];
    let mut V_t: [uint16_t; 20] = [0; 20];
    let mut no_of_edges: uint16_t = 0;
    E_t[0 as libc::c_int as usize] = 0 as libc::c_int as uint16_t;
    V_t[0 as libc::c_int as usize] = 1 as libc::c_int as uint16_t;
    let mut i: uint16_t = 1 as libc::c_int as uint16_t;
    while (i as libc::c_int) < V as libc::c_int {
        E_t[i as usize] = (*G.offset(i as isize))[0 as libc::c_int as usize];
        path[i as usize] = 0 as libc::c_int as uint16_t;
        V_t[i as usize] = 0 as libc::c_int as uint16_t;
        i = i.wrapping_add(1);
        i;
    }
    no_of_edges = (V as libc::c_int - 1 as libc::c_int) as uint16_t;
    while no_of_edges as libc::c_int > 0 as libc::c_int {
        u = minimum(E_t.as_mut_ptr(), V);
        while V_t[u as usize] as libc::c_int == 1 as libc::c_int {
            E_t[u as usize] = 999 as libc::c_int as uint16_t;
            u = minimum(E_t.as_mut_ptr(), V);
        }
        v = path[u as usize];
        (*MST.offset(v as isize))[u as usize] = E_t[u as usize];
        (*MST.offset(u as isize))[v as usize] = E_t[u as usize];
        no_of_edges = no_of_edges.wrapping_sub(1);
        no_of_edges;
        V_t[u as usize] = 1 as libc::c_int as uint16_t;
        let mut i_0: uint16_t = 1 as libc::c_int as uint16_t;
        while (i_0 as libc::c_int) < V as libc::c_int {
            if V_t[i_0 as usize] as libc::c_int == 0 as libc::c_int
                && ((*G.offset(u as isize))[i_0 as usize] as libc::c_int)
                    < E_t[i_0 as usize] as libc::c_int
            {
                E_t[i_0 as usize] = (*G.offset(u as isize))[i_0 as usize];
                path[i_0 as usize] = v;
            }
            i_0 = i_0.wrapping_add(1);
            i_0;
        }
    }
}
unsafe extern "C" fn test(
    mut G: *mut [uint16_t; 20],
    mut MST: *mut [uint16_t; 20],
    mut V: uint16_t,
) {
    let mut test_0: [[uint16_t; 4]; 4] = [
        [
            0 as libc::c_int as uint16_t,
            1 as libc::c_int as uint16_t,
            2 as libc::c_int as uint16_t,
            3 as libc::c_int as uint16_t,
        ],
        [
            1 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            4 as libc::c_int as uint16_t,
            6 as libc::c_int as uint16_t,
        ],
        [
            2 as libc::c_int as uint16_t,
            4 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            5 as libc::c_int as uint16_t,
        ],
        [
            3 as libc::c_int as uint16_t,
            6 as libc::c_int as uint16_t,
            5 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
        ],
    ];
    let mut solution: [[uint16_t; 4]; 4] = [
        [
            0 as libc::c_int as uint16_t,
            1 as libc::c_int as uint16_t,
            2 as libc::c_int as uint16_t,
            3 as libc::c_int as uint16_t,
        ],
        [
            1 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
        ],
        [
            2 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
        ],
        [
            3 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
            0 as libc::c_int as uint16_t,
        ],
    ];
    V = 4 as libc::c_int as uint16_t;
    let mut i: uint16_t = 0 as libc::c_int as uint16_t;
    while (i as libc::c_int) < V as libc::c_int {
        let mut j: uint16_t = 0 as libc::c_int as uint16_t;
        while (j as libc::c_int) < V as libc::c_int {
            (*G.offset(i as isize))[j as usize] = test_0[i as usize][j as usize];
            j = j.wrapping_add(1);
            j;
        }
        i = i.wrapping_add(1);
        i;
    }
    prim(G, MST, V);
    let mut i_0: uint16_t = 0 as libc::c_int as uint16_t;
    while (i_0 as libc::c_int) < V as libc::c_int {
        let mut j_0: uint16_t = 0 as libc::c_int as uint16_t;
        while (j_0 as libc::c_int) < V as libc::c_int {
            if (*MST.offset(i_0 as isize))[j_0 as usize] as libc::c_int
                == solution[i_0 as usize][j_0 as usize] as libc::c_int
            {} else {
                __assert_fail(
                    b"MST[i][j] == solution[i][j]\0" as *const u8 as *const libc::c_char,
                    b"program_007.c\0" as *const u8 as *const libc::c_char,
                    135 as libc::c_int as libc::c_uint,
                    (*::core::mem::transmute::<
                        &[u8; 56],
                        &[libc::c_char; 56],
                    >(b"void test(uint16_t (*)[20], uint16_t (*)[20], uint16_t)\0"))
                        .as_ptr(),
                );
            };
            j_0 = j_0.wrapping_add(1);
            j_0;
        }
        i_0 = i_0.wrapping_add(1);
        i_0;
    }
}
#[no_mangle]
pub unsafe extern "C" fn user_graph(
    mut G: *mut [uint16_t; 20],
    mut MST: *mut [uint16_t; 20],
    mut V: uint16_t,
) {
    printf(b"Enter the number of vertices: \0" as *const u8 as *const libc::c_char);
    scanf(b" %hd\0" as *const u8 as *const libc::c_char, &mut V as *mut uint16_t);
    if V as libc::c_int <= 20 as libc::c_int {} else {
        __assert_fail(
            b"V <= MAX\0" as *const u8 as *const libc::c_char,
            b"program_007.c\0" as *const u8 as *const libc::c_char,
            150 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 62],
                &[libc::c_char; 62],
            >(b"void user_graph(uint16_t (*)[20], uint16_t (*)[20], uint16_t)\0"))
                .as_ptr(),
        );
    };
    printf(b"Enter the adj matrix\n\0" as *const u8 as *const libc::c_char);
    let mut i: uint16_t = 0;
    let mut j: uint16_t = 0;
    i = 0 as libc::c_int as uint16_t;
    while (i as libc::c_int) < V as libc::c_int {
        j = 0 as libc::c_int as uint16_t;
        while (j as libc::c_int) < V as libc::c_int {
            printf(
                b"G[%d][%d]: \0" as *const u8 as *const libc::c_char,
                i as libc::c_int,
                j as libc::c_int,
            );
            scanf(
                b" %hd\0" as *const u8 as *const libc::c_char,
                &mut *(*G.offset(i as isize)).as_mut_ptr().offset(j as isize)
                    as *mut uint16_t,
            );
            if (*G.offset(i as isize))[j as usize] as libc::c_int == 0 as libc::c_int {
                (*G.offset(i as isize))[j as usize] = 999 as libc::c_int as uint16_t;
            }
            j = j.wrapping_add(1);
            j;
        }
        i = i.wrapping_add(1);
        i;
    }
    prim(G, MST, V);
    printf(b"minimum spanning tree:\n\0" as *const u8 as *const libc::c_char);
    i = 0 as libc::c_int as uint16_t;
    while (i as libc::c_int) < V as libc::c_int {
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        j = 0 as libc::c_int as uint16_t;
        while (j as libc::c_int) < V as libc::c_int {
            printf(
                b"%d\t\0" as *const u8 as *const libc::c_char,
                (*MST.offset(i as isize))[j as usize] as libc::c_int,
            );
            j = j.wrapping_add(1);
            j;
        }
        i = i.wrapping_add(1);
        i;
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut G: [[uint16_t; 20]; 20] = [[0; 20]; 20];
    let mut MST: [[uint16_t; 20]; 20] = [[0; 20]; 20];
    let mut V: uint16_t = 0;
    if argc == 2 as libc::c_int
        && strcmp(
            *argv.offset(1 as libc::c_int as isize),
            b"-test\0" as *const u8 as *const libc::c_char,
        ) == 0 as libc::c_int
    {
        test(G.as_mut_ptr(), MST.as_mut_ptr(), V);
    } else {
        user_graph(G.as_mut_ptr(), MST.as_mut_ptr(), V);
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
