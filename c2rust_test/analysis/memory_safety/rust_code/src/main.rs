#![allow(
    dead_code,
    mutable_transmutes,
    non_camel_case_types,
    non_snake_case,
    non_upper_case_globals,
    unused_assignments,
    unused_mut
)]
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
unsafe fn main_0() -> libc::c_int {
    let mut null_ptr: *mut libc::c_int = 0 as *mut libc::c_int;
    printf(b"Value: %d\n\0" as *const u8 as *const libc::c_char, *null_ptr);
    let mut dynamic_arr: *mut libc::c_int = malloc(
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul(5 as libc::c_int as libc::c_ulong),
    ) as *mut libc::c_int;
    *dynamic_arr.offset(0 as libc::c_int as isize) = 10 as libc::c_int;
    free(dynamic_arr as *mut libc::c_void);
    printf(
        b"Value after free: %d\n\0" as *const u8 as *const libc::c_char,
        *dynamic_arr.offset(0 as libc::c_int as isize),
    );
    free(dynamic_arr as *mut libc::c_void);
    let mut buffer: [libc::c_int; 5] = [
        1 as libc::c_int,
        2 as libc::c_int,
        3 as libc::c_int,
        4 as libc::c_int,
        5 as libc::c_int,
    ];
    let mut negative_index: libc::c_int = buffer[-(1 as libc::c_int) as usize];
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
