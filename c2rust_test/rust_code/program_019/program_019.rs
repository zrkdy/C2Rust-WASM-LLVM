use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn abs(_: libc::c_int) -> libc::c_int;
    fn pow(_: libc::c_double, _: libc::c_double) -> libc::c_double;
    fn sqrt(_: libc::c_double) -> libc::c_double;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct QNode {
    pub Data: *mut libc::c_int,
    pub rear: libc::c_int,
    pub front: libc::c_int,
}
pub type Queue = *mut QNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct SNode {
    pub Data: *mut libc::c_int,
    pub Top: libc::c_int,
}
pub type Stack = *mut SNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct crocodile {
    pub hori: libc::c_int,
    pub vert: libc::c_int,
    pub shore: bool,
    pub jump: bool,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Dist {
    pub dist: [libc::c_int; 101],
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Path {
    pub path: [libc::c_int; 101],
}
#[no_mangle]
pub unsafe extern "C" fn CreateQueue() -> Queue {
    let mut Q: Queue = malloc(::core::mem::size_of::<QNode>() as libc::c_ulong) as Queue;
    (*Q)
        .Data = malloc(
        (101 as libc::c_int as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    (*Q).rear = 0 as libc::c_int;
    (*Q).front = (*Q).rear;
    return Q;
}
#[no_mangle]
pub unsafe extern "C" fn IsEmpty(mut Q: Queue) -> bool {
    return (*Q).front == (*Q).rear;
}
#[no_mangle]
pub unsafe extern "C" fn IsFull(mut Q: Queue) -> bool {
    return ((*Q).rear + 1 as libc::c_int) % 101 as libc::c_int == (*Q).front;
}
#[no_mangle]
pub unsafe extern "C" fn AddQ(mut PtrQ: Queue, mut item: libc::c_int) {
    if ((*PtrQ).rear + 1 as libc::c_int) % 101 as libc::c_int == (*PtrQ).front {
        printf(
            b"\xE9\x98\x9F\xE5\x88\x97\xE6\xBB\xA1\0" as *const u8 as *const libc::c_char,
        );
        return;
    }
    (*PtrQ).rear = ((*PtrQ).rear + 1 as libc::c_int) % 101 as libc::c_int;
    *((*PtrQ).Data).offset((*PtrQ).rear as isize) = item;
}
#[no_mangle]
pub unsafe extern "C" fn DeleteQ(mut PtrQ: Queue) -> libc::c_int {
    if (*PtrQ).front == (*PtrQ).rear {
        printf(
            b"\xE9\x98\x9F\xE5\x88\x97\xE7\xA9\xBA\0" as *const u8 as *const libc::c_char,
        );
        return 999 as libc::c_int;
    } else {
        (*PtrQ).front = ((*PtrQ).front + 1 as libc::c_int) % 101 as libc::c_int;
        return *((*PtrQ).Data).offset((*PtrQ).front as isize);
    };
}
#[no_mangle]
pub unsafe extern "C" fn CreateStack() -> Stack {
    let mut S: Stack = malloc(::core::mem::size_of::<SNode>() as libc::c_ulong) as Stack;
    (*S)
        .Data = malloc(
        (101 as libc::c_int as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    (*S).Top = -(1 as libc::c_int);
    return S;
}
#[no_mangle]
pub unsafe extern "C" fn Push(mut PtrS: Stack, mut item: libc::c_int) {
    if (*PtrS).Top == 101 as libc::c_int - 1 as libc::c_int {
        printf(
            b"\xE5\xA0\x86\xE6\xA0\x88\xE6\xBB\xA1\0" as *const u8 as *const libc::c_char,
        );
        return;
    } else {
        (*PtrS).Top += 1;
        *((*PtrS).Data).offset((*PtrS).Top as isize) = item;
        return;
    };
}
#[no_mangle]
pub unsafe extern "C" fn IsStackEmpty(mut PtrS: Stack) -> bool {
    if (*PtrS).Top == -(1 as libc::c_int) {
        return 1 as libc::c_int != 0
    } else {
        return 0 as libc::c_int != 0
    };
}
#[no_mangle]
pub unsafe extern "C" fn Pop(mut PtrS: Stack) -> libc::c_int {
    if IsStackEmpty(PtrS) {
        printf(
            b"\xE5\xA0\x86\xE6\xA0\x88\xE7\xA9\xBA\0" as *const u8 as *const libc::c_char,
        );
        return 999 as libc::c_int;
    } else {
        let fresh0 = (*PtrS).Top;
        (*PtrS).Top = (*PtrS).Top - 1;
        return *((*PtrS).Data).offset(fresh0 as isize);
    };
}
#[no_mangle]
pub static mut c: [crocodile; 101] = [crocodile {
    hori: 0,
    vert: 0,
    shore: false,
    jump: false,
}; 101];
#[no_mangle]
pub static mut Dist: [Dist; 101] = [Dist { dist: [0; 101] }; 101];
#[no_mangle]
pub static mut Path: [Path; 101] = [Path { path: [0; 101] }; 101];
#[no_mangle]
pub unsafe extern "C" fn Distance(
    mut x1: libc::c_int,
    mut y1: libc::c_int,
    mut x2: libc::c_int,
    mut y2: libc::c_int,
) -> libc::c_int {
    let mut distance: libc::c_int = sqrt(
        pow((y2 - y1) as libc::c_double, 2 as libc::c_int as libc::c_double)
            + pow((x2 - x1) as libc::c_double, 2 as libc::c_int as libc::c_double),
    ) as libc::c_int;
    return distance;
}
#[no_mangle]
pub unsafe extern "C" fn NearShore(
    mut x: libc::c_int,
    mut y: libc::c_int,
    mut D: libc::c_int,
) -> bool {
    if 50 as libc::c_int - abs(x) <= D || 50 as libc::c_int - abs(y) <= D {
        return 1 as libc::c_int != 0
    } else {
        return 0 as libc::c_int != 0
    };
}
#[no_mangle]
pub unsafe extern "C" fn FirstJump(
    mut x: libc::c_int,
    mut y: libc::c_int,
    mut D: libc::c_int,
) -> bool {
    let mut distance: libc::c_int = sqrt(
        pow(x as libc::c_double, 2 as libc::c_int as libc::c_double)
            + pow(y as libc::c_double, 2 as libc::c_int as libc::c_double),
    ) as libc::c_int;
    if distance <= D + 15 as libc::c_int / 2 as libc::c_int {
        return 1 as libc::c_int != 0
    } else {
        return 0 as libc::c_int != 0
    };
}
#[no_mangle]
pub unsafe extern "C" fn Initial(mut N: libc::c_int, mut D: libc::c_int) {
    let mut x: libc::c_int = 0;
    let mut y: libc::c_int = 0;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < N {
        scanf(
            b"%d %d\0" as *const u8 as *const libc::c_char,
            &mut x as *mut libc::c_int,
            &mut y as *mut libc::c_int,
        );
        c[i as usize].hori = x;
        c[i as usize].vert = y;
        c[i as usize].shore = NearShore(x, y, D);
        c[i as usize].jump = FirstJump(x, y, D);
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn Unweighted(
    mut S: libc::c_int,
    mut N: libc::c_int,
    mut D: libc::c_int,
) {
    let mut Q: Queue = 0 as *mut QNode;
    let mut V: libc::c_int = 0;
    let mut W: libc::c_int = 0;
    let mut distance: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < N {
        Path[S as usize].path[i as usize] = -(1 as libc::c_int);
        Dist[S as usize].dist[i as usize] = Path[S as usize].path[i as usize];
        i += 1;
        i;
    }
    Q = CreateQueue();
    Dist[S as usize].dist[S as usize] = 0 as libc::c_int;
    AddQ(Q, S);
    while !IsEmpty(Q) {
        V = DeleteQ(Q);
        W = 0 as libc::c_int;
        while W < N {
            distance = Distance(
                c[V as usize].hori,
                c[V as usize].vert,
                c[W as usize].hori,
                c[W as usize].vert,
            );
            if Dist[S as usize].dist[W as usize] == -(1 as libc::c_int) && distance <= D
            {
                Dist[S as usize]
                    .dist[W
                    as usize] = Dist[S as usize].dist[V as usize] + 1 as libc::c_int;
                Path[S as usize].path[W as usize] = V;
                AddQ(Q, W);
            }
            W += 1;
            W;
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn PrintList(mut L: *mut libc::c_int, mut N: libc::c_int) {
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < N {
        printf(b"%d \0" as *const u8 as *const libc::c_char, *L.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut D: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut minj: libc::c_int = 0;
    let mut mini: libc::c_int = 0;
    let mut FirstJumpDistance: libc::c_int = 0;
    let mut min: libc::c_int = 101 as libc::c_int;
    let mut FistDistance: libc::c_int = 101 as libc::c_int;
    let mut S: Stack = 0 as *mut SNode;
    scanf(
        b"%d %d\0" as *const u8 as *const libc::c_char,
        &mut N as *mut libc::c_int,
        &mut D as *mut libc::c_int,
    );
    Initial(N, D);
    if D >= 50 as libc::c_int - D / 2 as libc::c_int {
        printf(b"1\n\0" as *const u8 as *const libc::c_char);
        return 0 as libc::c_int;
    }
    i = 0 as libc::c_int;
    while i < N {
        if c[i as usize].jump {
            Unweighted(i, N, D);
            FirstJumpDistance = Distance(
                c[i as usize].hori,
                c[i as usize].vert,
                0 as libc::c_int,
                0 as libc::c_int,
            );
            j = 0 as libc::c_int;
            while j < N {
                if c[j as usize].shore as libc::c_int != 0
                    && Dist[i as usize].dist[j as usize] > 0 as libc::c_int
                {
                    if Dist[i as usize].dist[j as usize] < min {
                        min = Dist[i as usize].dist[j as usize];
                        FistDistance = FirstJumpDistance;
                        minj = j;
                        mini = i;
                    } else {
                        Dist[i as usize].dist[j as usize] = min;
                        if Dist[i as usize].dist[j as usize] != 0
                            && FirstJumpDistance < FistDistance
                        {
                            FistDistance = FirstJumpDistance;
                            minj = j;
                            mini = i;
                        }
                    }
                }
                j += 1;
                j;
            }
        }
        i += 1;
        i;
    }
    if min == 101 as libc::c_int {
        printf(b"0\n\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"%d\n\0" as *const u8 as *const libc::c_char, min + 2 as libc::c_int);
        S = CreateStack();
        while minj >= 0 as libc::c_int {
            Push(S, minj);
            minj = Path[mini as usize].path[minj as usize];
        }
        while !IsStackEmpty(S) {
            minj = Pop(S);
            printf(
                b"%d %d\n\0" as *const u8 as *const libc::c_char,
                c[minj as usize].hori,
                c[minj as usize].vert,
            );
        }
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
