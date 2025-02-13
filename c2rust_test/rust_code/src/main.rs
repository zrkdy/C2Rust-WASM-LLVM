extern crate libc;

#[allow(
    dead_code,
    mutable_transmutes,
    non_camel_case_types,
    non_snake_case,
    non_upper_case_globals,
    unused_assignments,
    unused_mut
)]  // 修正为外部属性

use core::ffi::{c_int, c_char, c_ulong};  // 导入 c_int, c_char, c_ulong

extern "C" {
    fn printf(_: *const c_char, _: ...) -> c_int;
}

#[no_mangle]
pub unsafe extern "C" fn sum(arr: *mut c_int, size: c_int) -> c_int {
    let mut total: c_int = 0;
    let mut i: c_int = 0;
    
    while i < size {
        total += *arr.offset(i as isize);
        i += 1;
    }
    
    total
}

unsafe fn main_0() -> c_int {
    let mut arr: [c_int; 5] = [1, 2, 3, 4, 5];
    
    // 计算数组长度的方式
    let mut size: c_int = (::core::mem::size_of::<[c_int; 5]>() as c_ulong)
        .wrapping_div(::core::mem::size_of::<c_int>() as c_ulong) as c_int;
    
    let mut result: c_int = sum(arr.as_mut_ptr(), size);
    
    // printf 调用
    printf(b"Sum of array: %d\n\0" as *const u8 as *const c_char, result);
    
    return 0;
}

pub fn main() {
    unsafe {
        ::std::process::exit(main_0() as i32);
    }
}
