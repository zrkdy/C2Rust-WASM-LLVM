#![allow(
    dead_code,
    mutable_transmutes,
    non_camel_case_types,
    non_snake_case,
    non_upper_case_globals,
    unused_assignments,
    unused_mut
)]
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Point {
    pub x: libc::c_int,
    pub y: libc::c_int,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Person {
    pub id: libc::c_int,
    pub name: *const libc::c_char,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Record {
    pub id: libc::c_int,
    pub data: *mut libc::c_int,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Complex {
    pub point: Point,
    pub ptr: *mut libc::c_void,
}
pub const SIMPLE_INT: libc::c_int = 42 as libc::c_int;
pub const SIMPLE_FLOAT: libc::c_float = 3.14f64 as libc::c_float;
pub const SIMPLE_CHAR: libc::c_char = 'A' as i32 as libc::c_char;
#[no_mangle]
pub static mut STRING_LITERAL: *const libc::c_char = b"Hello, world!\0" as *const u8
    as *const libc::c_char;
#[no_mangle]
pub static ANOTHER_CONST: libc::c_int = 100 as libc::c_int;
#[no_mangle]
pub static mut POINTER_TO_CONST: *const libc::c_int = unsafe {
    &ANOTHER_CONST as *const libc::c_int
};
#[no_mangle]
pub static mut mutable_var: libc::c_int = 200 as libc::c_int;
#[no_mangle]
pub static mut POINTER_TO_MUTABLE: *const libc::c_int = unsafe {
    &raw const mutable_var as *const libc::c_int as *mut libc::c_int
};
#[no_mangle]
pub static mut INTTOPTR_EXAMPLE: *const libc::c_void = unsafe {
    0xdeadbeef as libc::c_uint as *mut libc::c_void
};
pub const SIMPLE_STRUCT: Point = {
    let mut init = Point {
        x: 10 as libc::c_int,
        y: 20 as libc::c_int,
    };
    init
};
#[no_mangle]
pub static STRUCT_WITH_CONST_PTR: Person = {
    let mut init = Person {
        id: 1 as libc::c_int,
        name: b"John\0" as *const u8 as *const libc::c_char,
    };
    init
};
#[no_mangle]
pub static STRUCT_WITH_MUTABLE_PTR: Record = unsafe {
    {
        let mut init = Record {
            id: 2 as libc::c_int,
            data: &raw const mutable_var as *const libc::c_int as *mut libc::c_int,
        };
        init
    }
};
pub const INT_ARRAY: [libc::c_int; 3] = [
    1 as libc::c_int,
    2 as libc::c_int,
    3 as libc::c_int,
];
#[no_mangle]
pub static mut STRING_ARRAY: [*const libc::c_char; 2] = [
    b"First\0" as *const u8 as *const libc::c_char,
    b"Second\0" as *const u8 as *const libc::c_char,
];
#[no_mangle]
pub static mut MUTABLE_PTR_ARRAY: [*const libc::c_int; 2] = unsafe {
    [
        &raw const mutable_var as *const libc::c_int as *mut libc::c_int as *const libc::c_int,
        &raw const mutable_var as *const libc::c_int as *mut libc::c_int as *const libc::c_int,
    ]
};
#[no_mangle]
pub static mut NON_CONST_VAR: libc::c_int = 300 as libc::c_int;
#[no_mangle]
pub static COMPLEX_STRUCT: Complex = unsafe {
    {
        let mut init = Complex {
            point: {
                let mut init = Point {
                    x: 30 as libc::c_int,
                    y: 40 as libc::c_int,
                };
                init
            },
            ptr: 0x1000 as libc::c_int as *mut libc::c_void,
        };
        init
    }
};
unsafe fn main_0() -> libc::c_int {
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
