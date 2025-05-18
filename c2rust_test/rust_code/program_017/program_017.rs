use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TreeNode {
    pub v: libc::c_int,
    pub Left: Tree,
    pub Right: Tree,
    pub flag: libc::c_int,
}
pub type Tree = *mut TreeNode;
unsafe fn main_0() -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut L: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut T: Tree = 0 as *mut TreeNode;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    while N != 0 {
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut L as *mut libc::c_int);
        T = MakeTree(N);
        i = 0 as libc::c_int;
        while i < L {
            if Judge(T, N) != 0 {
                printf(b"Yes\n\0" as *const u8 as *const libc::c_char);
            } else {
                printf(b"No\n\0" as *const u8 as *const libc::c_char);
            }
            ResetT(T);
            i += 1;
            i;
        }
        FreeTree(T);
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn MakeTree(mut N: libc::c_int) -> Tree {
    let mut T: Tree = 0 as *mut TreeNode;
    let mut i: libc::c_int = 0;
    let mut V: libc::c_int = 0;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut V as *mut libc::c_int);
    T = NewNode(V);
    i = 1 as libc::c_int;
    while i < N {
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut V as *mut libc::c_int);
        T = Insert(T, V);
        i += 1;
        i;
    }
    return T;
}
#[no_mangle]
pub unsafe extern "C" fn NewNode(mut V: libc::c_int) -> Tree {
    let mut T: Tree = malloc(::core::mem::size_of::<TreeNode>() as libc::c_ulong)
        as Tree;
    (*T).v = V;
    (*T).Right = 0 as Tree;
    (*T).Left = (*T).Right;
    (*T).flag = 0 as libc::c_int;
    return T;
}
#[no_mangle]
pub unsafe extern "C" fn Insert(mut T: Tree, mut V: libc::c_int) -> Tree {
    if T.is_null() {
        T = NewNode(V);
    } else if V > (*T).v {
        (*T).Right = Insert((*T).Right, V);
    } else {
        (*T).Left = Insert((*T).Left, V);
    }
    return T;
}
#[no_mangle]
pub unsafe extern "C" fn check(mut T: Tree, mut V: libc::c_int) -> libc::c_int {
    if (*T).flag != 0 {
        if V < (*T).v {
            return check((*T).Left, V)
        } else if V > (*T).v {
            return check((*T).Right, V)
        } else {
            return 0 as libc::c_int
        }
    } else if V == (*T).v {
        (*T).flag = 1 as libc::c_int;
        return 1 as libc::c_int;
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn Judge(mut T: Tree, mut N: libc::c_int) -> libc::c_int {
    let mut V: libc::c_int = 0;
    let mut Tflag: libc::c_int = 1 as libc::c_int;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut V as *mut libc::c_int);
    if (*T).v != V {
        Tflag = 0 as libc::c_int;
    } else {
        (*T).flag = 1 as libc::c_int;
    }
    let mut i: libc::c_int = 1 as libc::c_int;
    while i < N {
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut V as *mut libc::c_int);
        if Tflag != 0 && check(T, V) != 0 {
            Tflag = 1 as libc::c_int;
        } else {
            Tflag = 0 as libc::c_int;
        }
        i += 1;
        i;
    }
    return Tflag;
}
#[no_mangle]
pub unsafe extern "C" fn ResetT(mut T: Tree) {
    if !((*T).Left).is_null() {
        ResetT((*T).Left);
    }
    if !((*T).Right).is_null() {
        ResetT((*T).Right);
    }
    (*T).flag = 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn FreeTree(mut T: Tree) {
    if !((*T).Left).is_null() {
        FreeTree((*T).Left);
    }
    if !((*T).Right).is_null() {
        FreeTree((*T).Right);
    }
    free(T as *mut libc::c_void);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
