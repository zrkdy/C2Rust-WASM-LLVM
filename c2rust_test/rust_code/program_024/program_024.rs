use ::libc;
extern "C" {
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn sqrt(_: libc::c_double) -> libc::c_double;
}
pub type EntryType = libc::c_uint;
pub const Empty: EntryType = 1;
pub const Legitimate: EntryType = 0;
pub type ElementType = libc::c_int;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Cell {
    pub Data: ElementType,
    pub Info: EntryType,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TblNode {
    pub TableSize: libc::c_int,
    pub Cells: *mut Cell,
}
pub type HashTable = *mut TblNode;
#[no_mangle]
pub unsafe extern "C" fn GetPrime(mut N: libc::c_int) -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut p: libc::c_int = if N % 2 as libc::c_int != 0 {
        N
    } else {
        N + 1 as libc::c_int
    };
    if N <= 2 as libc::c_int {
        return 2 as libc::c_int;
    }
    if N == 3 as libc::c_int {
        return N;
    }
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
    H = malloc(::core::mem::size_of::<TblNode>() as libc::c_ulong) as HashTable;
    (*H).TableSize = GetPrime(TableSize);
    (*H)
        .Cells = malloc(
        ((*H).TableSize as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<Cell>() as libc::c_ulong),
    ) as *mut Cell;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < (*H).TableSize {
        (*((*H).Cells).offset(i as isize)).Data = 0 as libc::c_int;
        (*((*H).Cells).offset(i as isize)).Info = Empty;
        i += 1;
        i;
    }
    return H;
}
#[no_mangle]
pub unsafe extern "C" fn Hash(mut H: HashTable, mut Key: ElementType) -> libc::c_int {
    return Key % (*H).TableSize;
}
#[no_mangle]
pub unsafe extern "C" fn Find(mut H: HashTable, mut Key: ElementType) -> libc::c_int {
    let mut CurrentPos: libc::c_int = 0;
    let mut NewPos: libc::c_int = 0;
    let mut CNum: libc::c_int = 0 as libc::c_int;
    NewPos = Hash(H, Key);
    CurrentPos = NewPos;
    while (*((*H).Cells).offset(NewPos as isize)).Info as libc::c_uint
        != Empty as libc::c_int as libc::c_uint
        && CNum < 2 as libc::c_int * (*H).TableSize
        && (*((*H).Cells).offset(NewPos as isize)).Data != Key
    {
        CNum += 1;
        CNum;
        NewPos = CurrentPos + CNum * CNum;
        if NewPos > (*H).TableSize {
            NewPos %= (*H).TableSize;
        }
    }
    if CNum < 2 as libc::c_int * (*H).TableSize {
        return NewPos
    } else {
        return -(1 as libc::c_int)
    };
}
#[no_mangle]
pub unsafe extern "C" fn Insert(mut H: HashTable, mut Key: ElementType) -> libc::c_int {
    let mut pos: libc::c_int = Find(H, Key);
    if pos != -(1 as libc::c_int) {
        if (*((*H).Cells).offset(pos as isize)).Info as libc::c_uint
            != Legitimate as libc::c_int as libc::c_uint
        {
            (*((*H).Cells).offset(pos as isize)).Info = Legitimate;
            (*((*H).Cells).offset(pos as isize)).Data = Key;
        }
    }
    return pos;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut M: libc::c_int = 0;
    let mut N: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut Key: libc::c_int = 0;
    let mut pos: libc::c_int = 0;
    let mut flag: libc::c_int = 0 as libc::c_int;
    let mut H: HashTable = 0 as *mut TblNode;
    scanf(
        b"%d %d\0" as *const u8 as *const libc::c_char,
        &mut M as *mut libc::c_int,
        &mut N as *mut libc::c_int,
    );
    H = CreateTable(M);
    i = 0 as libc::c_int;
    while i < N {
        scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut Key as *mut libc::c_int);
        pos = Insert(H, Key);
        if pos != -(1 as libc::c_int) {
            if flag == 0 as libc::c_int {
                flag = 1 as libc::c_int;
            } else {
                printf(b" \0" as *const u8 as *const libc::c_char);
            }
            printf(b"%d\0" as *const u8 as *const libc::c_char, pos);
        } else {
            if flag == 0 as libc::c_int {
                flag = 1 as libc::c_int;
            } else {
                printf(b" \0" as *const u8 as *const libc::c_char);
            }
            printf(b"-\0" as *const u8 as *const libc::c_char);
        }
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
