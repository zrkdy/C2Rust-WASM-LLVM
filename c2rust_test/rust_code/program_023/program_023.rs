use ::libc;
extern "C" {
    fn atoi(__nptr: *const libc::c_char) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn strcpy(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strcmp(_: *const libc::c_char, _: *const libc::c_char) -> libc::c_int;
    fn sqrt(_: libc::c_double) -> libc::c_double;
}
pub type ElementType = [libc::c_char; 12];
#[derive(Copy, Clone)]
#[repr(C)]
pub struct LNode {
    pub Data: ElementType,
    pub Count: libc::c_int,
    pub Next: PtrNode,
}
pub type PtrNode = *mut LNode;
pub type List = *mut LNode;
pub type Position = *mut LNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TblNode {
    pub TableSize: libc::c_int,
    pub Heads: List,
}
pub type HashTable = *mut TblNode;
#[no_mangle]
pub unsafe extern "C" fn GetPrime(mut N: libc::c_int) -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut p: libc::c_int = if N % 2 as libc::c_int != 0 {
        N + 2 as libc::c_int
    } else {
        N + 1 as libc::c_int
    };
    while p < 100000 as libc::c_int {
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
    (*H).TableSize = GetPrime(TableSize);
    (*H)
        .Heads = malloc(
        ((*H).TableSize as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<LNode>() as libc::c_ulong),
    ) as List;
    i = 0 as libc::c_int;
    while i < (*H).TableSize {
        (*((*H).Heads).offset(i as isize))
            .Data[0 as libc::c_int as usize] = '\0' as i32 as libc::c_char;
        let ref mut fresh0 = (*((*H).Heads).offset(i as isize)).Next;
        *fresh0 = 0 as PtrNode;
        (*((*H).Heads).offset(i as isize)).Count = 0 as libc::c_int;
        i += 1;
        i;
    }
    return H;
}
#[no_mangle]
pub unsafe extern "C" fn Hash(
    mut Key: *mut libc::c_char,
    mut TableSize: libc::c_int,
) -> libc::c_int {
    return atoi(
        Key.offset(11 as libc::c_int as isize).offset(-(5 as libc::c_int as isize))
            as *const libc::c_char,
    ) % TableSize;
}
#[no_mangle]
pub unsafe extern "C" fn Find(mut H: HashTable, mut key: *mut libc::c_char) -> Position {
    let mut pos: libc::c_int = 0;
    let mut p: Position = 0 as *mut LNode;
    pos = Hash(key, (*H).TableSize);
    p = (*((*H).Heads).offset(pos as isize)).Next;
    while !p.is_null()
        && strcmp(((*p).Data).as_mut_ptr(), key as *const libc::c_char) != 0
    {
        p = (*p).Next;
    }
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn Insert(mut H: HashTable, mut Key: *mut libc::c_char) {
    let mut p: Position = 0 as *mut LNode;
    let mut NewNode: Position = 0 as *mut LNode;
    let mut pos: libc::c_int = 0;
    p = Find(H, Key);
    if p.is_null() {
        pos = Hash(Key, (*H).TableSize);
        NewNode = malloc(::core::mem::size_of::<LNode>() as libc::c_ulong) as Position;
        strcpy(((*NewNode).Data).as_mut_ptr(), Key as *const libc::c_char);
        (*NewNode).Count = 1 as libc::c_int;
        (*NewNode).Next = (*((*H).Heads).offset(pos as isize)).Next;
        let ref mut fresh1 = (*((*H).Heads).offset(pos as isize)).Next;
        *fresh1 = NewNode;
    } else {
        (*p).Count += 1;
        (*p).Count;
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
#[no_mangle]
pub unsafe extern "C" fn ScanAndOutput(mut H: HashTable) {
    let mut maxnum: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0;
    let mut repeat: libc::c_int = 0;
    let mut maxphone: ElementType = [0; 12];
    let mut p: Position = 0 as *mut LNode;
    i = 0 as libc::c_int;
    while i < (*H).TableSize {
        p = (*((*H).Heads).offset(i as isize)).Next;
        while !p.is_null() {
            if (*p).Count > maxnum {
                maxnum = (*p).Count;
                strcpy(maxphone.as_mut_ptr(), ((*p).Data).as_mut_ptr());
                repeat = 1 as libc::c_int;
            } else if (*p).Count == maxnum {
                if strcmp(((*p).Data).as_mut_ptr(), maxphone.as_mut_ptr())
                    < 0 as libc::c_int
                {
                    strcpy(maxphone.as_mut_ptr(), ((*p).Data).as_mut_ptr());
                }
                repeat += 1;
                repeat;
            }
            p = (*p).Next;
        }
        i += 1;
        i;
    }
    printf(
        b"%s %d\0" as *const u8 as *const libc::c_char,
        maxphone.as_mut_ptr(),
        maxnum,
    );
    if repeat > 1 as libc::c_int {
        printf(b" %d\n\0" as *const u8 as *const libc::c_char, repeat);
    } else {
        printf(b"\n\0" as *const u8 as *const libc::c_char);
    };
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut n: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut phone: ElementType = [0; 12];
    let mut H: HashTable = 0 as *mut TblNode;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut n as *mut libc::c_int);
    H = CreateTable(n * 2 as libc::c_int);
    i = 0 as libc::c_int;
    while i < 2 as libc::c_int * n {
        scanf(b"%s\0" as *const u8 as *const libc::c_char, phone.as_mut_ptr());
        Insert(H, phone.as_mut_ptr());
        i += 1;
        i;
    }
    ScanAndOutput(H);
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
