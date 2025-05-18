use ::libc;
extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
}
pub type __uint8_t = libc::c_uchar;
pub type __int16_t = libc::c_short;
pub type __int32_t = libc::c_int;
pub type int16_t = __int16_t;
pub type int32_t = __int32_t;
pub type uint8_t = __uint8_t;
pub type size_t = libc::c_ulong;
#[no_mangle]
pub static mut pcm: [int16_t; 8] = [
    1000 as libc::c_int as int16_t,
    -(1000 as libc::c_int) as int16_t,
    1234 as libc::c_int as int16_t,
    3200 as libc::c_int as int16_t,
    -(1314 as libc::c_int) as int16_t,
    0 as libc::c_int as int16_t,
    32767 as libc::c_int as int16_t,
    -(32768 as libc::c_int) as int16_t,
];
#[no_mangle]
pub static mut r_coded: [uint8_t; 8] = [
    250 as libc::c_int as uint8_t,
    122 as libc::c_int as uint8_t,
    230 as libc::c_int as uint8_t,
    156 as libc::c_int as uint8_t,
    97 as libc::c_int as uint8_t,
    213 as libc::c_int as uint8_t,
    170 as libc::c_int as uint8_t,
    42 as libc::c_int as uint8_t,
];
#[no_mangle]
pub static mut r_decoded: [int16_t; 8] = [
    1008 as libc::c_int as int16_t,
    -(1008 as libc::c_int) as int16_t,
    1248 as libc::c_int as int16_t,
    3264 as libc::c_int as int16_t,
    -(1312 as libc::c_int) as int16_t,
    8 as libc::c_int as int16_t,
    32256 as libc::c_int as int16_t,
    -(32256 as libc::c_int) as int16_t,
];
#[no_mangle]
pub unsafe extern "C" fn encode(
    mut out: *mut uint8_t,
    mut in_0: *mut int16_t,
    mut len: size_t,
) {
    let mut alaw: uint8_t = 0 as libc::c_int as uint8_t;
    let mut pcm_0: int16_t = 0 as libc::c_int as int16_t;
    let mut sign: int32_t = 0 as libc::c_int;
    let mut abcd: int32_t = 0 as libc::c_int;
    let mut eee: int32_t = 0 as libc::c_int;
    let mut mask: int32_t = 0 as libc::c_int;
    let mut i: size_t = 0 as libc::c_int as size_t;
    while i < len {
        let fresh0 = in_0;
        in_0 = in_0.offset(1);
        pcm_0 = *fresh0;
        eee = 7 as libc::c_int;
        mask = 0x4000 as libc::c_int;
        sign = (pcm_0 as libc::c_int & 0x8000 as libc::c_int) >> 8 as libc::c_int;
        pcm_0 = (if sign != 0 {
            -(pcm_0 as libc::c_int) - 1 as libc::c_int
        } else {
            pcm_0 as libc::c_int
        }) as int16_t;
        while pcm_0 as libc::c_int & mask == 0 as libc::c_int && eee > 0 as libc::c_int {
            eee -= 1;
            eee;
            mask >>= 1 as libc::c_int;
        }
        abcd = pcm_0 as libc::c_int
            >> (if eee != 0 { eee + 3 as libc::c_int } else { 4 as libc::c_int })
            & 0xf as libc::c_int;
        eee <<= 4 as libc::c_int;
        alaw = (sign | eee | abcd) as uint8_t;
        let fresh1 = out;
        out = out.offset(1);
        *fresh1 = (alaw as libc::c_int ^ 0xd5 as libc::c_int) as uint8_t;
        i = i.wrapping_add(1);
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn decode(
    mut out: *mut int16_t,
    mut in_0: *mut uint8_t,
    mut len: size_t,
) {
    let mut alaw: uint8_t = 0 as libc::c_int as uint8_t;
    let mut pcm_0: int32_t = 0 as libc::c_int;
    let mut sign: int32_t = 0 as libc::c_int;
    let mut eee: int32_t = 0 as libc::c_int;
    let mut i: size_t = 0 as libc::c_int as size_t;
    while i < len {
        let fresh2 = in_0;
        in_0 = in_0.offset(1);
        alaw = *fresh2;
        alaw = (alaw as libc::c_int ^ 0xd5 as libc::c_int) as uint8_t;
        sign = alaw as libc::c_int & 0x80 as libc::c_int;
        eee = (alaw as libc::c_int & 0x70 as libc::c_int) >> 4 as libc::c_int;
        pcm_0 = (alaw as libc::c_int & 0xf as libc::c_int) << 4 as libc::c_int
            | 8 as libc::c_int;
        pcm_0 += if eee != 0 { 0x100 as libc::c_int } else { 0 as libc::c_int };
        pcm_0
            <<= if eee > 1 as libc::c_int {
                eee - 1 as libc::c_int
            } else {
                0 as libc::c_int
            };
        let fresh3 = out;
        out = out.offset(1);
        *fresh3 = (if sign != 0 { -pcm_0 } else { pcm_0 }) as int16_t;
        i = i.wrapping_add(1);
        i;
    }
}
unsafe extern "C" fn test(
    mut pcm_0: *mut int16_t,
    mut coded: *mut uint8_t,
    mut decoded: *mut int16_t,
    mut len: size_t,
) {
    encode(coded, pcm_0, len);
    let mut i: size_t = 0 as libc::c_int as size_t;
    while i < len {
        if *coded.offset(i as isize) as libc::c_int == r_coded[i as usize] as libc::c_int
        {} else {
            __assert_fail(
                b"coded[i] == r_coded[i]\0" as *const u8 as *const libc::c_char,
                b"program_001.c\0" as *const u8 as *const libc::c_char,
                156 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 51],
                    &[libc::c_char; 51],
                >(b"void test(int16_t *, uint8_t *, int16_t *, size_t)\0"))
                    .as_ptr(),
            );
        };
        i = i.wrapping_add(1);
        i;
    }
    decode(decoded, coded, len);
    let mut i_0: size_t = 0 as libc::c_int as size_t;
    while i_0 < len {
        if *decoded.offset(i_0 as isize) as libc::c_int
            == r_decoded[i_0 as usize] as libc::c_int
        {} else {
            __assert_fail(
                b"decoded[i] == r_decoded[i]\0" as *const u8 as *const libc::c_char,
                b"program_001.c\0" as *const u8 as *const libc::c_char,
                165 as libc::c_int as libc::c_uint,
                (*::core::mem::transmute::<
                    &[u8; 51],
                    &[libc::c_char; 51],
                >(b"void test(int16_t *, uint8_t *, int16_t *, size_t)\0"))
                    .as_ptr(),
            );
        };
        i_0 = i_0.wrapping_add(1);
        i_0;
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *mut libc::c_char,
) -> libc::c_int {
    let mut coded: [uint8_t; 8] = [0; 8];
    let mut decoded: [int16_t; 8] = [0; 8];
    test(
        pcm.as_mut_ptr(),
        coded.as_mut_ptr(),
        decoded.as_mut_ptr(),
        8 as libc::c_int as size_t,
    );
    printf(b"inputs: \0" as *const u8 as *const libc::c_char);
    let mut i: size_t = 0 as libc::c_int as size_t;
    while i < 8 as libc::c_int as size_t {
        printf(
            b"%d \0" as *const u8 as *const libc::c_char,
            pcm[i as usize] as libc::c_int,
        );
        i = i.wrapping_add(1);
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    printf(b"encode: \0" as *const u8 as *const libc::c_char);
    let mut i_0: size_t = 0 as libc::c_int as size_t;
    while i_0 < 8 as libc::c_int as size_t {
        printf(
            b"%u \0" as *const u8 as *const libc::c_char,
            coded[i_0 as usize] as libc::c_int,
        );
        i_0 = i_0.wrapping_add(1);
        i_0;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    printf(b"decode: \0" as *const u8 as *const libc::c_char);
    let mut i_1: size_t = 0 as libc::c_int as size_t;
    while i_1 < 8 as libc::c_int as size_t {
        printf(
            b"%d \0" as *const u8 as *const libc::c_char,
            decoded[i_1 as usize] as libc::c_int,
        );
        i_1 = i_1.wrapping_add(1);
        i_1;
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
                args.as_mut_ptr() as *mut *mut libc::c_char,
            ) as i32,
        )
    }
}
