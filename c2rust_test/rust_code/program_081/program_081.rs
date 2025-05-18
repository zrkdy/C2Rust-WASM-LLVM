use ::libc;
extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
    fn __ctype_b_loc() -> *mut *const libc::c_ushort;
    fn _sys_charout(ch: libc::c_int);
}
pub type __builtin_va_list = [__va_list_tag; 1];
#[derive(Copy, Clone)]
#[repr(C)]
pub struct __va_list_tag {
    pub gp_offset: libc::c_uint,
    pub fp_offset: libc::c_uint,
    pub overflow_arg_area: *mut libc::c_void,
    pub reg_save_area: *mut libc::c_void,
}
pub type va_list = __builtin_va_list;
pub type __uint32_t = libc::c_uint;
pub type C2RustUnnamed = libc::c_uint;
pub const _ISalnum: C2RustUnnamed = 8;
pub const _ISpunct: C2RustUnnamed = 4;
pub const _IScntrl: C2RustUnnamed = 2;
pub const _ISblank: C2RustUnnamed = 1;
pub const _ISgraph: C2RustUnnamed = 32768;
pub const _ISprint: C2RustUnnamed = 16384;
pub const _ISspace: C2RustUnnamed = 8192;
pub const _ISxdigit: C2RustUnnamed = 4096;
pub const _ISdigit: C2RustUnnamed = 2048;
pub const _ISalpha: C2RustUnnamed = 1024;
pub const _ISlower: C2RustUnnamed = 512;
pub const _ISupper: C2RustUnnamed = 256;
pub type uint32_t = __uint32_t;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct sfmt_info {
    pub width: libc::c_long,
    pub precision: libc::c_long,
    pub count: libc::c_ulong,
    pub arg: *mut libc::c_void,
    pub outchar: Option::<unsafe extern "C" fn(*mut libc::c_void, libc::c_char) -> ()>,
    pub space: libc::c_char,
    pub right: libc::c_char,
    pub alter: libc::c_char,
    pub plus: libc::c_char,
    pub zero: libc::c_char,
    pub mod_0: libc::c_char,
    pub type_0: libc::c_char,
}
unsafe extern "C" fn putb(mut __x: *mut libc::c_void, mut ch: libc::c_char) {
    _sys_charout(ch as libc::c_int);
}
unsafe extern "C" fn putstr(mut str: *mut libc::c_void, mut ch: libc::c_char) {
    let mut x: *mut *mut libc::c_char = str as *mut *mut libc::c_char;
    let fresh0 = *x;
    *x = (*x).offset(1);
    *fresh0 = ch;
}
unsafe extern "C" fn strout(
    mut info: *mut sfmt_info,
    mut str: *mut libc::c_char,
    mut len: libc::c_long,
) {
    let mut size: libc::c_long = 0;
    let mut i: libc::c_ulong = 0;
    let mut pad: libc::c_char = ' ' as i32 as libc::c_char;
    let mut c: libc::c_int = 0;
    if len == 0 as libc::c_int as libc::c_long {
        str = b" (null)\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    }
    size = if (*info).width < len { len } else { (*info).width };
    if (*info).right != 0 {
        i = (size - len) as libc::c_ulong;
        while i > 0 as libc::c_int as libc::c_ulong {
            ((*info).outchar)
                .expect(
                    "non-null function pointer",
                )(&mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void, pad);
            i = i.wrapping_sub(1);
            i;
        }
        size = len;
    }
    loop {
        c = *str as libc::c_int;
        if !(c != 0 && len > 0 as libc::c_int as libc::c_long) {
            break;
        }
        ((*info).outchar)
            .expect(
                "non-null function pointer",
            )(
            &mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void,
            c as libc::c_char,
        );
        size -= 1;
        size;
        str = str.offset(1);
        str;
        len -= 1;
        len;
    }
    i = (size - len) as libc::c_ulong;
    while i > 0 as libc::c_int as libc::c_ulong {
        ((*info).outchar)
            .expect(
                "non-null function pointer",
            )(&mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void, pad);
        i = i.wrapping_sub(1);
        i;
    }
}
unsafe extern "C" fn charout(
    mut info: *mut sfmt_info,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut cbuf: [libc::c_char; 2] = [0; 2];
    cbuf[0 as libc::c_int as usize] = (*arg_pt).arg::<libc::c_ulong>() as libc::c_char;
    cbuf[1 as libc::c_int as usize] = 0 as libc::c_int as libc::c_char;
    strout(info, cbuf.as_mut_ptr(), 1 as libc::c_int as libc::c_long);
}
unsafe extern "C" fn stringout(
    mut info: *mut sfmt_info,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut str: *mut libc::c_char = (*arg_pt).arg::<libc::c_int>() as *mut libc::c_char;
    if str.is_null() {
        str = b"(null)\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    }
    strout(info, str, strlen(str) as libc::c_long);
}
unsafe extern "C" fn write_u(
    mut p: *mut libc::c_char,
    mut v: libc::c_ulong,
) -> *mut libc::c_char {
    loop {
        let fresh1 = p;
        p = p.offset(-1);
        *fresh1 = v
            .wrapping_rem(10 as libc::c_int as libc::c_ulong)
            .wrapping_add('0' as i32 as libc::c_ulong) as libc::c_char;
        v = v.wrapping_div(10 as libc::c_int as libc::c_ulong);
        if !(v != 0) {
            break;
        }
    }
    return p;
}
unsafe extern "C" fn write_oct(
    mut p: *mut libc::c_char,
    mut v: libc::c_uint,
) -> *mut libc::c_char {
    if v > 99 as libc::c_int as libc::c_uint {
        p = p.offset(2 as libc::c_int as isize);
    } else if v > 9 as libc::c_int as libc::c_uint {
        p = p.offset(1 as libc::c_int as isize);
    }
    write_u(p, v as libc::c_ulong);
    return p.offset(1 as libc::c_int as isize);
}
unsafe extern "C" fn ipout(
    mut info: *mut sfmt_info,
    mut is_netorder: libc::c_int,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut ip: uint32_t = (*arg_pt).arg::<uint32_t>();
    let mut strbuf: [libc::c_char; 32] = [0; 32];
    let mut p: *mut libc::c_char = strbuf.as_mut_ptr();
    if is_netorder != 0 {
        let mut x0: uint32_t = ip >> 24 as libc::c_int
            & 0xff as libc::c_int as libc::c_uint;
        let mut x1: uint32_t = ip >> 16 as libc::c_int
            & 0xff as libc::c_int as libc::c_uint;
        let mut x2: uint32_t = ip >> 8 as libc::c_int
            & 0xff as libc::c_int as libc::c_uint;
        let mut x3: uint32_t = ip >> 0 as libc::c_int
            & 0xff as libc::c_int as libc::c_uint;
        ip = x0 | x1 << 8 as libc::c_int | x2 << 16 as libc::c_int
            | x3 << 24 as libc::c_int;
    }
    p = write_oct(p, ip & 0xff as libc::c_int as libc::c_uint);
    ip >>= 8 as libc::c_int;
    let fresh2 = p;
    p = p.offset(1);
    *fresh2 = '.' as i32 as libc::c_char;
    p = write_oct(p, ip & 0xff as libc::c_int as libc::c_uint);
    ip >>= 8 as libc::c_int;
    let fresh3 = p;
    p = p.offset(1);
    *fresh3 = '.' as i32 as libc::c_char;
    p = write_oct(p, ip & 0xff as libc::c_int as libc::c_uint);
    ip >>= 8 as libc::c_int;
    let fresh4 = p;
    p = p.offset(1);
    *fresh4 = '.' as i32 as libc::c_char;
    p = write_oct(p, ip & 0xff as libc::c_int as libc::c_uint);
    *p = 0 as libc::c_int as libc::c_char;
    strout(
        info,
        strbuf.as_mut_ptr(),
        p.offset_from(strbuf.as_mut_ptr()) as libc::c_long,
    );
}
unsafe extern "C" fn decout(
    mut info: *mut sfmt_info,
    mut do_unsigned: libc::c_int,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut dec_buff: [libc::c_char; 32] = [0; 32];
    let mut pt: *mut libc::c_char = 0 as *mut libc::c_char;
    let mut tmp: *mut libc::c_char = 0 as *mut libc::c_char;
    let mut neg: libc::c_char = 0;
    let mut uval: libc::c_ulong = 0;
    let mut count: libc::c_ulong = 0;
    let mut len: libc::c_long = 0;
    let mut val: libc::c_long = 0;
    count = 0 as libc::c_int as libc::c_ulong;
    pt = &mut *dec_buff.as_mut_ptr().offset(19 as libc::c_int as isize)
        as *mut libc::c_char;
    let fresh5 = pt;
    pt = pt.offset(-1);
    *fresh5 = 0 as libc::c_int as libc::c_char;
    if do_unsigned != 0 {
        if (*info).mod_0 as libc::c_int == 'h' as i32 {
            uval = (*arg_pt).arg::<libc::c_ulong>() as libc::c_ushort as libc::c_ulong;
        } else {
            uval = (*arg_pt).arg::<libc::c_ulong>();
        }
        neg = 0 as libc::c_int as libc::c_char;
    } else {
        if (*info).mod_0 as libc::c_int == 'h' as i32 {
            val = (*arg_pt).arg::<libc::c_long>() as libc::c_short as libc::c_long;
        } else {
            val = (*arg_pt).arg::<libc::c_long>();
        }
        if val < 0 as libc::c_int as libc::c_long {
            neg = 1 as libc::c_int as libc::c_char;
            val = -val;
        } else {
            neg = 0 as libc::c_int as libc::c_char;
        }
        uval = val as libc::c_ulong;
    }
    tmp = write_u(pt, uval);
    count = pt.offset_from(tmp) as libc::c_long as libc::c_ulong;
    pt = tmp;
    while count < (*info).precision as libc::c_ulong {
        let fresh6 = pt;
        pt = pt.offset(-1);
        *fresh6 = '0' as i32 as libc::c_char;
        count = count.wrapping_add(1);
        count;
    }
    pt = pt.offset(1);
    pt;
    if (*info).zero != 0 {
        len = (1 as libc::c_int as libc::c_ulong).wrapping_add(strlen(pt))
            as libc::c_long;
        while (*info).width > len {
            pt = pt.offset(-1);
            *pt = '0' as i32 as libc::c_char;
            len += 1;
            len;
        }
        len -= 1;
        len;
    }
    if neg != 0 {
        pt = pt.offset(-1);
        *pt = '-' as i32 as libc::c_char;
    } else if (*info).plus != 0 {
        pt = pt.offset(-1);
        *pt = '+' as i32 as libc::c_char;
    } else if (*info).space != 0 {
        pt = pt.offset(-1);
        *pt = ' ' as i32 as libc::c_char;
    } else if (*info).zero as libc::c_int != 0 && (*info).width > len {
        pt = pt.offset(-1);
        *pt = '0' as i32 as libc::c_char;
    }
    (*info).precision = -(1 as libc::c_int) as libc::c_long;
    strout(info, pt, strlen(pt) as libc::c_long);
}
unsafe extern "C" fn hexout(
    mut info: *mut sfmt_info,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    static mut __hexstr: [libc::c_char; 17] = unsafe {
        *::core::mem::transmute::<&[u8; 17], &[libc::c_char; 17]>(b"0123456789abcdef\0")
    };
    static mut __HEXstr: [libc::c_char; 17] = unsafe {
        *::core::mem::transmute::<&[u8; 17], &[libc::c_char; 17]>(b"0123456789ABCDEF\0")
    };
    let mut hexbuff: [libc::c_char; 32] = [0; 32];
    let mut pt: *mut libc::c_char = 0 as *mut libc::c_char;
    let mut d: *const libc::c_char = if (*info).type_0 as libc::c_int == 'X' as i32 {
        __HEXstr.as_ptr()
    } else {
        __hexstr.as_ptr()
    };
    let mut val: libc::c_ulong = 0;
    let mut count: libc::c_ulong = 0;
    let mut len: libc::c_long = 0;
    count = 0 as libc::c_int as libc::c_ulong;
    if (*info).mod_0 as libc::c_int == 'h' as i32 {
        val = (*arg_pt).arg::<libc::c_ulong>() as libc::c_ushort as libc::c_ulong;
    } else {
        val = (*arg_pt).arg::<libc::c_ulong>();
    }
    pt = &mut *hexbuff.as_mut_ptr().offset(15 as libc::c_int as isize)
        as *mut libc::c_char;
    let fresh7 = pt;
    pt = pt.offset(-1);
    *fresh7 = 0 as libc::c_int as libc::c_char;
    loop {
        let fresh8 = pt;
        pt = pt.offset(-1);
        *fresh8 = *d.offset((val & 0xf as libc::c_int as libc::c_ulong) as isize);
        count = count.wrapping_add(1);
        count;
        val >>= 4 as libc::c_int;
        if !(val != 0) {
            break;
        }
    }
    while count < (*info).precision as libc::c_ulong {
        let fresh9 = pt;
        pt = pt.offset(-1);
        *fresh9 = '0' as i32 as libc::c_char;
        count = count.wrapping_add(1);
        count;
    }
    pt = pt.offset(1);
    pt;
    if (*info).zero != 0 {
        len = strlen(pt) as libc::c_long;
        if (*info).alter != 0 {
            len += 2 as libc::c_int as libc::c_long;
            while (*info).width > len {
                pt = pt.offset(-1);
                *pt = '0' as i32 as libc::c_char;
                len += 1;
                len;
            }
            len -= 2 as libc::c_int as libc::c_long;
        } else {
            while (*info).width > len {
                pt = pt.offset(-1);
                *pt = '0' as i32 as libc::c_char;
                len += 1 as libc::c_int as libc::c_long;
            }
        }
    }
    if (*info).alter as libc::c_int != 0 || (*info).type_0 as libc::c_int == 'p' as i32 {
        if (*info).type_0 as libc::c_int == 'x' as i32
            || (*info).type_0 as libc::c_int == 'p' as i32
        {
            pt = pt.offset(-1);
            *pt = 'x' as i32 as libc::c_char;
        } else {
            pt = pt.offset(-1);
            *pt = 'X' as i32 as libc::c_char;
        }
        pt = pt.offset(-1);
        *pt = '0' as i32 as libc::c_char;
    }
    (*info).precision = -(1 as libc::c_int) as libc::c_long;
    strout(info, pt, strlen(pt) as libc::c_long);
}
unsafe extern "C" fn percent(
    mut format: *const libc::c_char,
    mut info: *mut sfmt_info,
    mut arg_pt: *mut ::core::ffi::VaList,
) -> *const libc::c_char {
    let mut p_flag: libc::c_char = 0 as libc::c_int as libc::c_char;
    (*info).width = -(1 as libc::c_int) as libc::c_long;
    (*info).precision = 6 as libc::c_int as libc::c_long;
    (*info).right = 1 as libc::c_int as libc::c_char;
    (*info).plus = 0 as libc::c_int as libc::c_char;
    (*info).alter = 0 as libc::c_int as libc::c_char;
    (*info).zero = 0 as libc::c_int as libc::c_char;
    (*info).space = 0 as libc::c_int as libc::c_char;
    (*info).type_0 = 0 as libc::c_int as libc::c_char;
    (*info).mod_0 = 0 as libc::c_int as libc::c_char;
    if *format as libc::c_int == '-' as i32 {
        (*info).right = 0 as libc::c_int as libc::c_char;
        format = format.offset(1);
        format;
    }
    if *format as libc::c_int == '+' as i32 {
        (*info).plus = 1 as libc::c_int as libc::c_char;
        format = format.offset(1);
        format;
    }
    if *format as libc::c_int == ' ' as i32 {
        if (*info).plus != 0 {
            (*info).space = 1 as libc::c_int as libc::c_char;
        }
        format = format.offset(1);
        format;
    }
    if *format as libc::c_int == '#' as i32 {
        (*info).alter = 1 as libc::c_int as libc::c_char;
        format = format.offset(1);
        format;
    }
    if *format as libc::c_int == '0' as i32 {
        if (*info).right != 0 {
            (*info).zero = 1 as libc::c_int as libc::c_char;
        }
        format = format.offset(1);
        format;
    }
    if *format as libc::c_int == '*' as i32 {
        (*info).width = (*arg_pt).arg::<libc::c_int>() as libc::c_long;
        if (*info).width < 0 as libc::c_int as libc::c_long {
            (*info).right = 0 as libc::c_int as libc::c_char;
            (*info).width = -(*info).width;
        }
        format = format.offset(1);
        format;
    } else if *(*__ctype_b_loc()).offset(*format as libc::c_int as isize) as libc::c_int
        & _ISdigit as libc::c_int as libc::c_ushort as libc::c_int != 0
    {
        (*info).width = 0 as libc::c_int as libc::c_long;
        while *(*__ctype_b_loc()).offset(*format as libc::c_int as isize) as libc::c_int
            & _ISdigit as libc::c_int as libc::c_ushort as libc::c_int != 0
        {
            let fresh10 = format;
            format = format.offset(1);
            (*info)
                .width = (*info).width * 10 as libc::c_int as libc::c_long
                + *fresh10 as libc::c_long - '0' as i32 as libc::c_long;
        }
    }
    if *format as libc::c_int == '.' as i32 {
        p_flag = 1 as libc::c_int as libc::c_char;
        format = format.offset(1);
        format;
        if *format as libc::c_int == '*' as i32 {
            (*info).precision = (*arg_pt).arg::<libc::c_int>() as libc::c_long;
            format = format.offset(1);
            format;
        } else {
            (*info).precision = 0 as libc::c_int as libc::c_long;
            while *(*__ctype_b_loc()).offset(*format as libc::c_int as isize)
                as libc::c_int & _ISdigit as libc::c_int as libc::c_ushort as libc::c_int
                != 0
            {
                let fresh11 = format;
                format = format.offset(1);
                (*info)
                    .precision = (*info).precision * 10 as libc::c_int as libc::c_long
                    + *fresh11 as libc::c_long - '0' as i32 as libc::c_long;
            }
        }
    }
    if *format as libc::c_int == 'h' as i32 || *format as libc::c_int == 'l' as i32
        || *format as libc::c_int == 'L' as i32
    {
        let fresh12 = format;
        format = format.offset(1);
        (*info).mod_0 = *fresh12;
    }
    if p_flag as libc::c_int != 0 && *format as libc::c_int != 'c' as i32
        && *format as libc::c_int != '%' as i32
    {
        (*info).precision = 0 as libc::c_int as libc::c_long;
    }
    (*info).type_0 = *format;
    return format;
}
unsafe extern "C" fn _print_internal(
    mut info: *mut sfmt_info,
    mut format: *const libc::c_char,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut ch: libc::c_ulong = 0;
    let mut c: libc::c_int = 0;
    loop {
        c = *format as libc::c_int;
        if !(c != 0) {
            break;
        }
        if c != '%' as i32 {
            ((*info).outchar)
                .expect(
                    "non-null function pointer",
                )(
                &mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void,
                c as libc::c_char,
            );
        } else {
            format = percent(format.offset(1 as libc::c_int as isize), info, arg_pt);
            ch = (*info).type_0 as libc::c_ulong;
            match ch {
                99 => {
                    charout(info, arg_pt);
                }
                72 => {
                    ipout(info, 0 as libc::c_int, arg_pt);
                }
                78 => {
                    ipout(info, 1 as libc::c_int, arg_pt);
                }
                100 => {
                    decout(info, 0 as libc::c_int, arg_pt);
                }
                120 | 88 | 112 => {
                    hexout(info, arg_pt);
                }
                115 => {
                    stringout(info, arg_pt);
                }
                117 => {
                    decout(info, 1 as libc::c_int, arg_pt);
                }
                37 => {
                    ((*info).outchar)
                        .expect(
                            "non-null function pointer",
                        )(
                        &mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void,
                        '%' as i32 as libc::c_char,
                    );
                }
                _ => {
                    ((*info).outchar)
                        .expect(
                            "non-null function pointer",
                        )(
                        &mut (*info).arg as *mut *mut libc::c_void as *mut libc::c_void,
                        ch as libc::c_char,
                    );
                }
            }
        }
        format = format.offset(1);
        format;
    };
}
#[no_mangle]
pub unsafe extern "C" fn v_XPRINT(
    mut format: *mut libc::c_char,
    mut arg_pt: *mut ::core::ffi::VaList,
) {
    let mut info: sfmt_info = sfmt_info {
        width: 0,
        precision: 0,
        count: 0,
        arg: 0 as *mut libc::c_void,
        outchar: None,
        space: 0,
        right: 0,
        alter: 0,
        plus: 0,
        zero: 0,
        mod_0: 0,
        type_0: 0,
    };
    if format.is_null() {
        format = b" (null)\0" as *const u8 as *const libc::c_char as *mut libc::c_char;
    }
    info.arg = 0 as *mut libc::c_void;
    info
        .outchar = Some(
        putb as unsafe extern "C" fn(*mut libc::c_void, libc::c_char) -> (),
    );
    _print_internal(&mut info, format, arg_pt);
}
#[no_mangle]
pub unsafe extern "C" fn sprintf(
    mut str: *mut libc::c_char,
    mut format: *const libc::c_char,
    mut args: ...
) -> libc::c_int {
    let mut ap: ::core::ffi::VaListImpl;
    let mut info: sfmt_info = sfmt_info {
        width: 0,
        precision: 0,
        count: 0,
        arg: 0 as *mut libc::c_void,
        outchar: None,
        space: 0,
        right: 0,
        alter: 0,
        plus: 0,
        zero: 0,
        mod_0: 0,
        type_0: 0,
    };
    if !format.is_null() {} else {
        __assert_fail(
            b"format\0" as *const u8 as *const libc::c_char,
            b"program_081.c\0" as *const u8 as *const libc::c_char,
            690 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 39],
                &[libc::c_char; 39],
            >(b"int sprintf(char *, const char *, ...)\0"))
                .as_ptr(),
        );
    };
    info.arg = str as *mut libc::c_void;
    info
        .outchar = Some(
        putstr as unsafe extern "C" fn(*mut libc::c_void, libc::c_char) -> (),
    );
    ap = args.clone();
    _print_internal(&mut info, format, &mut ap.as_va_list());
    *(info.arg as *mut libc::c_char) = 0 as libc::c_int as libc::c_char;
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn printf(
    mut format: *const libc::c_char,
    mut args: ...
) -> libc::c_int {
    let mut ap: ::core::ffi::VaListImpl;
    let mut info: sfmt_info = sfmt_info {
        width: 0,
        precision: 0,
        count: 0,
        arg: 0 as *mut libc::c_void,
        outchar: None,
        space: 0,
        right: 0,
        alter: 0,
        plus: 0,
        zero: 0,
        mod_0: 0,
        type_0: 0,
    };
    if !format.is_null() {} else {
        __assert_fail(
            b"format\0" as *const u8 as *const libc::c_char,
            b"program_081.c\0" as *const u8 as *const libc::c_char,
            715 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<
                &[u8; 31],
                &[libc::c_char; 31],
            >(b"void printf(const char *, ...)\0"))
                .as_ptr(),
        );
    };
    info.arg = 0 as *mut libc::c_void;
    info
        .outchar = Some(
        putb as unsafe extern "C" fn(*mut libc::c_void, libc::c_char) -> (),
    );
    ap = args.clone();
    _print_internal(&mut info, format, &mut ap.as_va_list());
    panic!("Reached end of non-void function without returning");
}
