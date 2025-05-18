use ::libc;
extern "C" {
    fn sqrt(_: libc::c_double) -> libc::c_double;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn getchar() -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn strcpy(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strcmp(_: *const libc::c_char, _: *const libc::c_char) -> libc::c_int;
}
pub type ElementType = [libc::c_char; 17];
pub type Index = libc::c_int;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct LNode {
    pub Data: ElementType,
    pub Password: ElementType,
    pub Next: PtrNode,
}
pub type PtrNode = *mut LNode;
pub type Position = PtrNode;
pub type List = PtrNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TblNode {
    pub TableSize: libc::c_int,
    pub Heads: List,
}
pub type HashTable = *mut TblNode;
#[no_mangle]
pub unsafe extern "C" fn NextPrime(mut N: libc::c_int) -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut p: libc::c_int = if N % 2 as libc::c_int != 0 {
        N + 2 as libc::c_int
    } else {
        N + 1 as libc::c_int
    };
    while p <= 1000000 as libc::c_int {
        i = sqrt(p as libc::c_double) as libc::c_int;
        while i > 2 as libc::c_int {
            if p % i == 0 {
                break;
            }
            i -= 1;
            i;
        }
        if i == 2 as libc::c_int {
            break;
        }
        p += 2 as libc::c_int;
    }
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn CreateTable(mut TableSize: libc::c_int) -> HashTable {
    let mut H: HashTable = 0 as *mut TblNode;
    let mut i: libc::c_int = 0;
    H = malloc(::core::mem::size_of::<TblNode>() as libc::c_ulong) as HashTable;
    (*H).TableSize = NextPrime(TableSize);
    (*H)
        .Heads = malloc(
        ((*H).TableSize as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<LNode>() as libc::c_ulong),
    ) as List;
    i = 0 as libc::c_int;
    while i < (*H).TableSize {
        (*((*H).Heads).offset(i as isize))
            .Data[0 as libc::c_int as usize] = '\0' as i32 as libc::c_char;
        (*((*H).Heads).offset(i as isize))
            .Password[0 as libc::c_int as usize] = '\0' as i32 as libc::c_char;
        let ref mut fresh0 = (*((*H).Heads).offset(i as isize)).Next;
        *fresh0 = 0 as PtrNode;
        i += 1;
        i;
    }
    return H;
}
#[no_mangle]
pub unsafe extern "C" fn Hash(
    mut Key: *mut libc::c_char,
    mut TableSize: libc::c_int,
) -> Index {
    let mut h: libc::c_ulong = 0 as libc::c_int as libc::c_ulong;
    let mut ptr: *mut libc::c_char = Key;
    while *ptr as libc::c_int != '\0' as i32 {
        h = (h << 5 as libc::c_int).wrapping_add(*ptr as libc::c_ulong);
        ptr = ptr.offset(1);
        ptr;
    }
    let mut p: libc::c_int = h.wrapping_rem(TableSize as libc::c_ulong) as libc::c_int;
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn Find(mut H: HashTable, mut Key: *mut libc::c_char) -> Position {
    let mut p: Position = 0 as *mut LNode;
    let mut pos: Index = 0;
    pos = Hash(Key, (*H).TableSize);
    p = (*((*H).Heads).offset(pos as isize)).Next;
    while !p.is_null()
        && strcmp(((*p).Data).as_mut_ptr(), Key as *const libc::c_char) != 0
    {
        p = (*p).Next;
    }
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn Insert(
    mut H: HashTable,
    mut Key: *mut libc::c_char,
    mut PW: *mut libc::c_char,
) {
    let mut p: Position = 0 as *mut LNode;
    let mut NewCell: Position = 0 as *mut LNode;
    let mut pos: Index = 0;
    p = Find(H, Key);
    if p.is_null() {
        NewCell = malloc(::core::mem::size_of::<LNode>() as libc::c_ulong) as Position;
        strcpy(((*NewCell).Data).as_mut_ptr(), Key as *const libc::c_char);
        strcpy(((*NewCell).Password).as_mut_ptr(), PW as *const libc::c_char);
        pos = Hash(Key, (*H).TableSize);
        (*NewCell).Next = (*((*H).Heads).offset(pos as isize)).Next;
        let ref mut fresh1 = (*((*H).Heads).offset(pos as isize)).Next;
        *fresh1 = NewCell;
        printf(b"New: OK\n\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"ERROR: Exist\n\0" as *const u8 as *const libc::c_char);
    };
}
#[no_mangle]
pub unsafe extern "C" fn DestroyTable(mut H: HashTable) {
    let mut i: libc::c_int = 0;
    let mut p: Position = 0 as *mut LNode;
    let mut tmp: Position = 0 as *mut LNode;
    i = 0 as libc::c_int;
    while i < (*H).TableSize {
        p = (*((*H).Heads).offset(i as isize)).Next;
        while !p.is_null() {
            tmp = (*p).Next;
            free(p as *mut libc::c_void);
            p = tmp;
        }
        i += 1;
        i;
    }
    free((*H).Heads as *mut libc::c_void);
    free(H as *mut libc::c_void);
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut QQ: [libc::c_char; 11] = [0; 11];
    let mut PW: [libc::c_char; 20] = [0; 20];
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut N: libc::c_int = 0;
    let mut c: libc::c_char = 0;
    let mut pos: Position = 0 as *mut LNode;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    let mut TableSize: libc::c_int = N / 10 as libc::c_int;
    let mut H: HashTable = CreateTable(TableSize);
    i = 0 as libc::c_int;
    while i < N {
        getchar();
        c = getchar() as libc::c_char;
        scanf(
            b"%s %s\0" as *const u8 as *const libc::c_char,
            QQ.as_mut_ptr(),
            PW.as_mut_ptr(),
        );
        if c as libc::c_int == 'N' as i32 {
            Insert(H, QQ.as_mut_ptr(), PW.as_mut_ptr());
        } else {
            pos = Find(H, QQ.as_mut_ptr());
            if !pos.is_null() {
                if strcmp(((*pos).Password).as_mut_ptr(), PW.as_mut_ptr()) == 0 {
                    printf(b"Login: OK\n\0" as *const u8 as *const libc::c_char);
                } else {
                    printf(b"ERROR: Wrong PW\n\0" as *const u8 as *const libc::c_char);
                }
            } else {
                printf(b"ERROR: Not Exist\n\0" as *const u8 as *const libc::c_char);
            }
        }
        i += 1;
        i;
    }
    DestroyTable(H);
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
