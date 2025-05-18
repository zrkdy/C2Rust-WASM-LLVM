use ::libc;
extern "C" {
    pub type _IO_wide_data;
    pub type _IO_codecvt;
    pub type _IO_marker;
    static mut stderr: *mut FILE;
    fn fclose(__stream: *mut FILE) -> libc::c_int;
    fn fopen(_: *const libc::c_char, _: *const libc::c_char) -> *mut FILE;
    fn fprintf(_: *mut FILE, _: *const libc::c_char, _: ...) -> libc::c_int;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn fscanf(_: *mut FILE, _: *const libc::c_char, _: ...) -> libc::c_int;
    fn putchar(__c: libc::c_int) -> libc::c_int;
    fn feof(__stream: *mut FILE) -> libc::c_int;
    fn perror(__s: *const libc::c_char);
    fn calloc(_: libc::c_ulong, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
pub type __int8_t = libc::c_schar;
pub type __uint8_t = libc::c_uchar;
pub type __off_t = libc::c_long;
pub type __off64_t = libc::c_long;
pub type int8_t = __int8_t;
pub type uint8_t = __uint8_t;
pub type size_t = libc::c_ulong;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct _IO_FILE {
    pub _flags: libc::c_int,
    pub _IO_read_ptr: *mut libc::c_char,
    pub _IO_read_end: *mut libc::c_char,
    pub _IO_read_base: *mut libc::c_char,
    pub _IO_write_base: *mut libc::c_char,
    pub _IO_write_ptr: *mut libc::c_char,
    pub _IO_write_end: *mut libc::c_char,
    pub _IO_buf_base: *mut libc::c_char,
    pub _IO_buf_end: *mut libc::c_char,
    pub _IO_save_base: *mut libc::c_char,
    pub _IO_backup_base: *mut libc::c_char,
    pub _IO_save_end: *mut libc::c_char,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: libc::c_int,
    pub _flags2: libc::c_int,
    pub _old_offset: __off_t,
    pub _cur_column: libc::c_ushort,
    pub _vtable_offset: libc::c_schar,
    pub _shortbuf: [libc::c_char; 1],
    pub _lock: *mut libc::c_void,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut libc::c_void,
    pub __pad5: size_t,
    pub _mode: libc::c_int,
    pub _unused2: [libc::c_char; 20],
}
pub type _IO_lock_t = ();
pub type FILE = _IO_FILE;
#[no_mangle]
pub unsafe extern "C" fn get_number(
    mut fp: *mut FILE,
    mut buffer: *mut libc::c_char,
    mut out_int: *mut uint8_t,
) -> libc::c_int {
    let mut l: libc::c_long = fscanf(
        fp,
        b"%s\n\0" as *const u8 as *const libc::c_char,
        buffer,
    ) as libc::c_long;
    if l == 0 {
        perror(b"Error reading line.\0" as *const u8 as *const libc::c_char);
        return -(1 as libc::c_int);
    }
    let mut L: libc::c_long = strlen(buffer) as libc::c_long;
    let mut i: libc::c_int = 0 as libc::c_int;
    while (i as libc::c_long) < L {
        if (*buffer.offset(i as isize) as libc::c_int) < 0x30 as libc::c_int
            || *buffer.offset(i as isize) as libc::c_int > 0x39 as libc::c_int
        {
            perror(
                b"found inavlid character in the number!\0" as *const u8
                    as *const libc::c_char,
            );
            return -(1 as libc::c_int);
        } else {
            *out_int
                .offset(
                    (L - i as libc::c_long - 1 as libc::c_int as libc::c_long) as isize,
                ) = (*buffer.offset(i as isize) as libc::c_int - 0x30 as libc::c_int)
                as uint8_t;
        }
        i += 1;
        i;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn add_numbers(
    mut a: *mut uint8_t,
    mut b: *mut uint8_t,
    mut N: uint8_t,
) -> libc::c_int {
    let mut carry: libc::c_int = 0 as libc::c_int;
    let mut c: *mut uint8_t = b;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < N as libc::c_int {
        *c
            .offset(
                i as isize,
            ) = (carry + *a.offset(i as isize) as libc::c_int
            + *b.offset(i as isize) as libc::c_int) as uint8_t;
        if *c.offset(i as isize) as libc::c_int > 9 as libc::c_int {
            carry = 1 as libc::c_int;
            let ref mut fresh0 = *c.offset(i as isize);
            *fresh0 = (*fresh0 as libc::c_int - 10 as libc::c_int) as uint8_t;
        } else {
            carry = 0 as libc::c_int;
        }
        i += 1;
        i;
    }
    let mut i_0: libc::c_int = N as libc::c_int;
    while i_0 < N as libc::c_int + 10 as libc::c_int {
        if carry == 0 as libc::c_int {
            break;
        }
        *c
            .offset(
                i_0 as isize,
            ) = (carry + *c.offset(i_0 as isize) as libc::c_int) as uint8_t;
        if *c.offset(i_0 as isize) as libc::c_int > 9 as libc::c_int {
            carry = 1 as libc::c_int;
            let ref mut fresh1 = *c.offset(i_0 as isize);
            *fresh1 = (*fresh1 as libc::c_int - 10 as libc::c_int) as uint8_t;
        } else {
            carry = 0 as libc::c_int;
        }
        i_0 += 1;
        i_0;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn print_number(
    mut number: *mut uint8_t,
    mut N: uint8_t,
    mut num_digits_to_print: int8_t,
) -> libc::c_int {
    let mut start_pos: uint8_t = (N as libc::c_int - 1 as libc::c_int) as uint8_t;
    let mut end_pos: uint8_t = 0;
    while *number.offset(start_pos as isize) as libc::c_int == 0 as libc::c_int {
        start_pos = start_pos.wrapping_sub(1);
        start_pos;
    }
    if (num_digits_to_print as libc::c_int) < 0 as libc::c_int {
        end_pos = 0 as libc::c_int as uint8_t;
    } else if num_digits_to_print as libc::c_int <= start_pos as libc::c_int {
        end_pos = (start_pos as libc::c_int - num_digits_to_print as libc::c_int
            + 1 as libc::c_int) as uint8_t;
    } else {
        fprintf(
            stderr,
            b"invalid number of digits argumet!\n\0" as *const u8 as *const libc::c_char,
        );
        return -(1 as libc::c_int);
    }
    let mut i: libc::c_int = start_pos as libc::c_int;
    while i >= end_pos as libc::c_int {
        putchar(*number.offset(i as isize) as libc::c_int + 0x30 as libc::c_int);
        i -= 1;
        i;
    }
    putchar('\n' as i32);
    return 0 as libc::c_int;
}
unsafe fn main_0() -> libc::c_int {
    let N: libc::c_int = 10 as libc::c_int;
    let N2: libc::c_int = N + 10 as libc::c_int;
    let mut txt_buffer: *mut libc::c_char = calloc(
        (N + 5 as libc::c_int) as libc::c_ulong,
        ::core::mem::size_of::<libc::c_char>() as libc::c_ulong,
    ) as *mut libc::c_char;
    let mut number: *mut uint8_t = calloc(
        N as libc::c_ulong,
        ::core::mem::size_of::<uint8_t>() as libc::c_ulong,
    ) as *mut uint8_t;
    let mut sum: *mut uint8_t = calloc(
        N2 as libc::c_ulong,
        ::core::mem::size_of::<uint8_t>() as libc::c_ulong,
    ) as *mut uint8_t;
    let mut fp: *mut FILE = fopen(
        b"num.txt\0" as *const u8 as *const libc::c_char,
        b"rt\0" as *const u8 as *const libc::c_char,
    );
    if fp.is_null() {
        perror(b"Unable to open file 'num.txt'.\0" as *const u8 as *const libc::c_char);
        free(txt_buffer as *mut libc::c_void);
        free(sum as *mut libc::c_void);
        free(number as *mut libc::c_void);
        return -(1 as libc::c_int);
    }
    let mut count: libc::c_int = 0 as libc::c_int;
    get_number(fp, txt_buffer, sum);
    loop {
        count += 1;
        count;
        if get_number(fp, txt_buffer, number) != 0 as libc::c_int {
            break;
        }
        add_numbers(number, sum, N as uint8_t);
        if !(feof(fp) == 0) {
            break;
        }
    }
    printf(b"\nSum   : \0" as *const u8 as *const libc::c_char);
    print_number(sum, N2 as uint8_t, -(1 as libc::c_int) as int8_t);
    printf(b"first 10 digits: \t\0" as *const u8 as *const libc::c_char);
    print_number(sum, N2 as uint8_t, 10 as libc::c_int as int8_t);
    fclose(fp);
    free(txt_buffer as *mut libc::c_void);
    free(sum as *mut libc::c_void);
    free(number as *mut libc::c_void);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
