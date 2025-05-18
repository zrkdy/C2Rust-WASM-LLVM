use ::libc;
extern "C" {
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn strtow(
    mut str: *mut libc::c_char,
    mut delims: *mut libc::c_char,
) -> *mut *mut libc::c_char {
    let mut words: *mut *mut libc::c_char = 0 as *mut *mut libc::c_char;
    let mut wc: libc::c_int = 0;
    let mut wordLen: libc::c_int = 0;
    let mut n: libc::c_int = 0;
    let mut i: libc::c_int = 0 as libc::c_int;
    if str.is_null() || *str == 0 {
        return 0 as *mut *mut libc::c_char;
    }
    wc = get_word_count(str, delims);
    if wc == 0 as libc::c_int {
        return 0 as *mut *mut libc::c_char;
    }
    words = malloc(
        ((wc + 1 as libc::c_int) as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<*mut libc::c_char>() as libc::c_ulong),
    ) as *mut *mut libc::c_char;
    if words.is_null() {
        return 0 as *mut *mut libc::c_char;
    }
    while i < wc {
        wordLen = get_word_length(str, delims);
        if is_delim(*str, delims) != 0 {
            str = get_next_word(str, delims);
        }
        let ref mut fresh0 = *words.offset(i as isize);
        *fresh0 = malloc(
            ((wordLen + 1 as libc::c_int) as libc::c_ulong)
                .wrapping_mul(::core::mem::size_of::<libc::c_char>() as libc::c_ulong),
        ) as *mut libc::c_char;
        if (*words.offset(i as isize)).is_null() {
            while i >= 0 as libc::c_int {
                i -= 1;
                i;
                free(*words.offset(i as isize) as *mut libc::c_void);
            }
            free(words as *mut libc::c_void);
            return 0 as *mut *mut libc::c_char;
        }
        n = 0 as libc::c_int;
        while n < wordLen {
            *(*words.offset(i as isize)).offset(n as isize) = *str.offset(n as isize);
            n += 1;
            n;
        }
        *(*words.offset(i as isize)).offset(n as isize) = '\0' as i32 as libc::c_char;
        str = get_next_word(str, delims);
        i += 1;
        i;
    }
    let ref mut fresh1 = *words.offset(i as isize);
    *fresh1 = 0 as *mut libc::c_char;
    return words;
}
#[no_mangle]
pub unsafe extern "C" fn is_delim(
    mut ch: libc::c_char,
    mut delims: *mut libc::c_char,
) -> libc::c_int {
    let mut i: libc::c_int = 0 as libc::c_int;
    while *delims.offset(i as isize) != 0 {
        if *delims.offset(i as isize) as libc::c_int == ch as libc::c_int {
            return 1 as libc::c_int;
        }
        i += 1;
        i;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn get_word_length(
    mut str: *mut libc::c_char,
    mut delims: *mut libc::c_char,
) -> libc::c_int {
    let mut wLen: libc::c_int = 0 as libc::c_int;
    let mut pending: libc::c_int = 1 as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    while *str.offset(i as isize) != 0 {
        if is_delim(*str.offset(i as isize), delims) != 0 {
            pending = 1 as libc::c_int;
        } else if pending != 0 {
            wLen += 1;
            wLen;
        }
        if wLen > 0 as libc::c_int && is_delim(*str.offset(i as isize), delims) != 0 {
            break;
        }
        i += 1;
        i;
    }
    return wLen;
}
#[no_mangle]
pub unsafe extern "C" fn get_word_count(
    mut str: *mut libc::c_char,
    mut delims: *mut libc::c_char,
) -> libc::c_int {
    let mut wc: libc::c_int = 0 as libc::c_int;
    let mut pending: libc::c_int = 1 as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    while *str.offset(i as isize) != 0 {
        if is_delim(*str.offset(i as isize), delims) != 0 {
            pending = 1 as libc::c_int;
        } else if pending != 0 {
            pending = 0 as libc::c_int;
            wc += 1;
            wc;
        }
        i += 1;
        i;
    }
    return wc;
}
#[no_mangle]
pub unsafe extern "C" fn get_next_word(
    mut str: *mut libc::c_char,
    mut delims: *mut libc::c_char,
) -> *mut libc::c_char {
    let mut pending: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    while *str.offset(i as isize) != 0 {
        if is_delim(*str.offset(i as isize), delims) != 0 {
            pending = 1 as libc::c_int;
        } else if pending != 0 {
            break;
        }
        i += 1;
        i;
    }
    return str.offset(i as isize);
}
