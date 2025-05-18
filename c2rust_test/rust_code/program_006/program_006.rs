use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn validEntryLineColumn(
    mut line: libc::c_int,
    mut column: libc::c_char,
) -> libc::c_int {
    if line >= 1 as libc::c_int && line <= 10 as libc::c_int
        && (column as libc::c_int >= 65 as libc::c_int
            && column as libc::c_int <= 74 as libc::c_int)
    {
        return 1 as libc::c_int;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn validatePosition(
    mut mat: *mut [libc::c_int; 10],
    mut boat: libc::c_int,
    mut line: libc::c_int,
    mut column: libc::c_int,
    mut guide: libc::c_char,
) -> libc::c_int {
    let mut cont: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    if line < 0 as libc::c_int || line > 9 as libc::c_int || column < 0 as libc::c_int
        || column > 9 as libc::c_int
        || guide as libc::c_int != 'H' as i32 && guide as libc::c_int != 'V' as i32
        || boat < 1 as libc::c_int || boat > 3 as libc::c_int
    {
        return 0 as libc::c_int;
    }
    if guide as libc::c_int == 'H' as i32 {
        if 10 as libc::c_int - column < boat {
            return 0 as libc::c_int
        } else {
            j = column;
            while j < column + boat {
                if (*mat.offset(line as isize))[j as usize] == 0 as libc::c_int {
                    cont += 1;
                    cont;
                }
                j += 1;
                j;
            }
        }
    }
    if guide as libc::c_int == 'V' as i32 {
        if 10 as libc::c_int - line < boat {
            return 0 as libc::c_int
        } else {
            i = line;
            while i < line + boat {
                if (*mat.offset(i as isize))[column as usize] == 0 as libc::c_int {
                    cont += 1;
                    cont;
                }
                i += 1;
                i;
            }
        }
    }
    if cont == boat {
        return 1 as libc::c_int;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn canShoot(
    mut mat: *mut [libc::c_int; 10],
    mut line: libc::c_int,
    mut column: libc::c_int,
) -> libc::c_int {
    if (*mat.offset(line as isize))[column as usize] == -(2 as libc::c_int)
        || (*mat.offset(line as isize))[column as usize] == 10 as libc::c_int
        || (*mat.offset(line as isize))[column as usize] == 20 as libc::c_int
        || (*mat.offset(line as isize))[column as usize] == 30 as libc::c_int
        || (*mat.offset(line as isize))[column as usize] == 50 as libc::c_int
    {
        return 0 as libc::c_int;
    }
    return 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn positionBoat(
    mut mat: *mut [libc::c_int; 10],
    mut boat: libc::c_int,
) {
    let mut line: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut column: libc::c_char = 0;
    let mut guide: libc::c_char = 0;
    if boat == 1 as libc::c_int {
        scanf(
            b"%d %c\0" as *const u8 as *const libc::c_char,
            &mut line as *mut libc::c_int,
            &mut column as *mut libc::c_char,
        );
        while validEntryLineColumn(line, column) != 1 as libc::c_int
            || validatePosition(
                mat,
                boat,
                line - 1 as libc::c_int,
                column as libc::c_int - 65 as libc::c_int,
                'H' as i32 as libc::c_char,
            ) != 1 as libc::c_int
        {
            printf(b"Position unavailable!\n\0" as *const u8 as *const libc::c_char);
            scanf(
                b"%d %c\0" as *const u8 as *const libc::c_char,
                &mut line as *mut libc::c_int,
                &mut column as *mut libc::c_char,
            );
        }
    } else {
        scanf(
            b"%d %c %c\0" as *const u8 as *const libc::c_char,
            &mut line as *mut libc::c_int,
            &mut column as *mut libc::c_char,
            &mut guide as *mut libc::c_char,
        );
        while validEntryLineColumn(line, column) == 0 as libc::c_int
            || validatePosition(
                mat,
                boat,
                line - 1 as libc::c_int,
                column as libc::c_int - 65 as libc::c_int,
                guide,
            ) == 0 as libc::c_int
        {
            printf(b"Position unavailable!\n\0" as *const u8 as *const libc::c_char);
            scanf(
                b"%d %c %c\0" as *const u8 as *const libc::c_char,
                &mut line as *mut libc::c_int,
                &mut column as *mut libc::c_char,
                &mut guide as *mut libc::c_char,
            );
        }
    }
    let mut aux: libc::c_int = column as libc::c_int - 'A' as i32;
    line -= 1 as libc::c_int;
    if boat == 1 as libc::c_int {
        j = aux;
        while j < aux + boat {
            (*mat.offset(line as isize))[j as usize] = boat;
            j += 1;
            j;
        }
        let mut a: libc::c_int = line - 1 as libc::c_int;
        while a < line + boat + 1 as libc::c_int {
            let mut b: libc::c_int = aux - 1 as libc::c_int;
            while b < aux + boat + 1 as libc::c_int {
                if a >= 0 as libc::c_int && a <= 9 as libc::c_int
                    && b >= 0 as libc::c_int && b <= 9 as libc::c_int
                {
                    if (*mat.offset(a as isize))[b as usize] != boat {
                        (*mat.offset(a as isize))[b as usize] = -(1 as libc::c_int);
                    }
                }
                b += 1;
                b;
            }
            a += 1;
            a;
        }
    }
    if guide as libc::c_int == 'H' as i32 {
        j = aux;
        while j < aux + boat {
            (*mat.offset(line as isize))[j as usize] = boat;
            j += 1;
            j;
        }
        if boat == 3 as libc::c_int {
            let mut a_0: libc::c_int = line - 1 as libc::c_int;
            while a_0 < line + boat - 1 as libc::c_int {
                let mut b_0: libc::c_int = aux - 1 as libc::c_int;
                while b_0 < aux + boat + 1 as libc::c_int {
                    if a_0 >= 0 as libc::c_int && a_0 <= 9 as libc::c_int
                        && b_0 >= 0 as libc::c_int && b_0 <= 9 as libc::c_int
                    {
                        if (*mat.offset(a_0 as isize))[b_0 as usize] != boat {
                            (*mat
                                .offset(a_0 as isize))[b_0 as usize] = -(1 as libc::c_int);
                        }
                    }
                    b_0 += 1;
                    b_0;
                }
                a_0 += 1;
                a_0;
            }
        } else {
            let mut a_1: libc::c_int = line - 1 as libc::c_int;
            while a_1 < line + boat {
                let mut b_1: libc::c_int = aux - 1 as libc::c_int;
                while b_1 < aux + boat + 1 as libc::c_int {
                    if a_1 >= 0 as libc::c_int && a_1 <= 9 as libc::c_int
                        && b_1 >= 0 as libc::c_int && b_1 <= 9 as libc::c_int
                    {
                        if (*mat.offset(a_1 as isize))[b_1 as usize] != boat {
                            (*mat
                                .offset(a_1 as isize))[b_1 as usize] = -(1 as libc::c_int);
                        }
                    }
                    b_1 += 1;
                    b_1;
                }
                a_1 += 1;
                a_1;
            }
        }
    }
    if guide as libc::c_int == 'V' as i32 {
        j = line;
        while j < line + boat {
            (*mat.offset(j as isize))[aux as usize] = boat;
            j += 1;
            j;
        }
        if boat == 3 as libc::c_int {
            let mut a_2: libc::c_int = line - 1 as libc::c_int;
            while a_2 < line + boat + 1 as libc::c_int {
                let mut b_2: libc::c_int = aux - 1 as libc::c_int;
                while b_2 < aux + boat - 1 as libc::c_int {
                    if a_2 >= 0 as libc::c_int && a_2 <= 9 as libc::c_int
                        && b_2 >= 0 as libc::c_int && b_2 <= 9 as libc::c_int
                    {
                        if (*mat.offset(a_2 as isize))[b_2 as usize] != boat {
                            (*mat
                                .offset(a_2 as isize))[b_2 as usize] = -(1 as libc::c_int);
                        }
                    }
                    b_2 += 1;
                    b_2;
                }
                a_2 += 1;
                a_2;
            }
        } else {
            let mut a_3: libc::c_int = line - 1 as libc::c_int;
            while a_3 < line + boat + 1 as libc::c_int {
                let mut b_3: libc::c_int = aux - 1 as libc::c_int;
                while b_3 < aux + boat {
                    if a_3 >= 0 as libc::c_int && a_3 <= 9 as libc::c_int
                        && b_3 >= 0 as libc::c_int && b_3 <= 9 as libc::c_int
                    {
                        if (*mat.offset(a_3 as isize))[b_3 as usize] != boat {
                            (*mat
                                .offset(a_3 as isize))[b_3 as usize] = -(1 as libc::c_int);
                        }
                    }
                    b_3 += 1;
                    b_3;
                }
                a_3 += 1;
                a_3;
            }
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn printMessage(mut msg: *mut libc::c_char) {
    printf(b"************************\n\0" as *const u8 as *const libc::c_char);
    printf(b"*\n\0" as *const u8 as *const libc::c_char);
    printf(b"* %s\n\0" as *const u8 as *const libc::c_char, msg);
    printf(b"*\n\0" as *const u8 as *const libc::c_char);
    printf(b"************************\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn printMessageScore(
    mut pts1: libc::c_int,
    mut pts2: libc::c_int,
) {
    printf(b"************************\n\0" as *const u8 as *const libc::c_char);
    printf(b"*\n\0" as *const u8 as *const libc::c_char);
    printf(b"* Player'S SCORE 1: %02d\n\0" as *const u8 as *const libc::c_char, pts1);
    printf(b"* Player'S SCORE 2: %02d\n\0" as *const u8 as *const libc::c_char, pts2);
    printf(b"*\n\0" as *const u8 as *const libc::c_char);
    printf(b"************************\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn printTable(
    mut logic: libc::c_int,
    mut stage: libc::c_int,
) -> libc::c_char {
    if stage == 0 as libc::c_int {
        if logic == 0 as libc::c_int {
            return '.' as i32 as libc::c_char
        } else if logic == -(1 as libc::c_int) {
            return '*' as i32 as libc::c_char
        } else if logic == 1 as libc::c_int {
            return '1' as i32 as libc::c_char
        } else if logic == 2 as libc::c_int {
            return '2' as i32 as libc::c_char
        } else {
            return '3' as i32 as libc::c_char
        }
    } else if logic == 0 as libc::c_int || logic == -(1 as libc::c_int)
        || logic == 1 as libc::c_int || logic == 2 as libc::c_int
        || logic == 3 as libc::c_int
    {
        return '.' as i32 as libc::c_char
    } else if logic == -(2 as libc::c_int) {
        return 'x' as i32 as libc::c_char
    } else if logic == 10 as libc::c_int || logic == 20 as libc::c_int
        || logic == 30 as libc::c_int
    {
        return 'N' as i32 as libc::c_char
    } else {
        return 'A' as i32 as libc::c_char
    };
}
#[no_mangle]
pub unsafe extern "C" fn printsTray(
    mut mat: *mut [libc::c_int; 10],
    mut stage: libc::c_int,
) {
    let mut logic: libc::c_int = 0;
    let mut imp: libc::c_char = 0;
    printf(b"     \0" as *const u8 as *const libc::c_char);
    let mut i: libc::c_int = 65 as libc::c_int;
    while i < 75 as libc::c_int {
        printf(b"%c\0" as *const u8 as *const libc::c_char, i);
        if i < 74 as libc::c_int {
            printf(b" \0" as *const u8 as *const libc::c_char);
        }
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
    let mut i_0: libc::c_int = 0 as libc::c_int;
    while i_0 < 12 as libc::c_int {
        if i_0 > 0 as libc::c_int && i_0 < 11 as libc::c_int {
            printf(b"%02d \0" as *const u8 as *const libc::c_char, i_0);
        } else {
            printf(b"   \0" as *const u8 as *const libc::c_char);
        }
        let mut j: libc::c_int = 0 as libc::c_int;
        while j < 12 as libc::c_int {
            if i_0 > 0 as libc::c_int && i_0 < 11 as libc::c_int
                && (j > 0 as libc::c_int && j < 11 as libc::c_int)
            {
                logic = (*mat
                    .offset(
                        (i_0 - 1 as libc::c_int) as isize,
                    ))[(j - 1 as libc::c_int) as usize];
                imp = printTable(logic, stage);
                printf(b"%c\0" as *const u8 as *const libc::c_char, imp as libc::c_int);
            } else {
                printf(b"#\0" as *const u8 as *const libc::c_char);
            }
            if j < 11 as libc::c_int {
                printf(b" \0" as *const u8 as *const libc::c_char);
            }
            j += 1;
            j;
        }
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i_0 += 1;
        i_0;
    }
}
#[no_mangle]
pub unsafe extern "C" fn shoot(
    mut mat: *mut [libc::c_int; 10],
    mut line: libc::c_int,
    mut column: libc::c_int,
) {
    if (*mat.offset(line as isize))[column as usize] == 0 as libc::c_int
        || (*mat.offset(line as isize))[column as usize] == -(1 as libc::c_int)
    {
        (*mat.offset(line as isize))[column as usize] = -(2 as libc::c_int);
    } else if (*mat.offset(line as isize))[column as usize] == 1 as libc::c_int {
        (*mat.offset(line as isize))[column as usize] = 10 as libc::c_int;
    } else if (*mat.offset(line as isize))[column as usize] == 2 as libc::c_int {
        (*mat.offset(line as isize))[column as usize] = 20 as libc::c_int;
    } else if (*mat.offset(line as isize))[column as usize] == 3 as libc::c_int {
        (*mat.offset(line as isize))[column as usize] = 30 as libc::c_int;
    }
}
#[no_mangle]
pub unsafe extern "C" fn calculateScore(
    mut mat: *mut [libc::c_int; 10],
    mut line: libc::c_int,
    mut column: libc::c_int,
) -> libc::c_int {
    let mut c: libc::c_int = 0 as libc::c_int;
    let mut b: libc::c_int = 0 as libc::c_int;
    let mut e: libc::c_int = 0 as libc::c_int;
    let mut d: libc::c_int = 0 as libc::c_int;
    if (*mat.offset(line as isize))[column as usize] == 10 as libc::c_int {
        (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
        return 2 as libc::c_int;
    } else if (*mat.offset(line as isize))[column as usize] == 20 as libc::c_int {
        if (*mat.offset((line + 1 as libc::c_int) as isize))[column as usize]
            == 20 as libc::c_int
        {
            b = 1 as libc::c_int;
        }
        if (*mat.offset((line - 1 as libc::c_int) as isize))[column as usize]
            == 20 as libc::c_int
        {
            c = 1 as libc::c_int;
        }
        if (*mat.offset(line as isize))[(column + 1 as libc::c_int) as usize]
            == 20 as libc::c_int
        {
            d = 1 as libc::c_int;
        }
        if (*mat.offset(line as isize))[(column - 1 as libc::c_int) as usize]
            == 20 as libc::c_int
        {
            e = 1 as libc::c_int;
        }
        if b == 1 as libc::c_int {
            if (*mat.offset((line + 1 as libc::c_int) as isize))[column as usize]
                == 20 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line + 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                return 4 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        }
        if c == 1 as libc::c_int {
            if (*mat.offset((line - 1 as libc::c_int) as isize))[column as usize]
                == 20 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line - 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                return 4 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        }
        if d == 1 as libc::c_int {
            if (*mat.offset(line as isize))[(column + 1 as libc::c_int) as usize]
                == 20 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column + 1 as libc::c_int) as usize] = 50 as libc::c_int;
                return 4 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        }
        if e == 1 as libc::c_int {
            if (*mat.offset(line as isize))[(column - 1 as libc::c_int) as usize]
                == 20 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column - 1 as libc::c_int) as usize] = 50 as libc::c_int;
                return 4 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        }
    } else if (*mat.offset(line as isize))[column as usize] == 30 as libc::c_int {
        if (*mat.offset((line + 1 as libc::c_int) as isize))[column as usize]
            == 30 as libc::c_int
        {
            b = 1 as libc::c_int;
        }
        if (*mat.offset((line - 1 as libc::c_int) as isize))[column as usize]
            == 30 as libc::c_int
        {
            c = 1 as libc::c_int;
        }
        if (*mat.offset(line as isize))[(column + 1 as libc::c_int) as usize]
            == 30 as libc::c_int
        {
            d = 1 as libc::c_int;
        }
        if (*mat.offset(line as isize))[(column - 1 as libc::c_int) as usize]
            == 30 as libc::c_int
        {
            e = 1 as libc::c_int;
        }
        if b == 1 as libc::c_int && c == 1 as libc::c_int {
            if (*mat.offset((line + 1 as libc::c_int) as isize))[column as usize]
                == 30 as libc::c_int
                && (*mat.offset((line - 1 as libc::c_int) as isize))[column as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line + 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line - 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        } else if d == 1 as libc::c_int && e == 1 as libc::c_int {
            if (*mat.offset(line as isize))[(column + 1 as libc::c_int) as usize]
                == 30 as libc::c_int
                && (*mat.offset(line as isize))[(column - 1 as libc::c_int) as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column - 1 as libc::c_int) as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column + 1 as libc::c_int) as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        } else if d == 1 as libc::c_int {
            if (*mat.offset(line as isize))[(column + 1 as libc::c_int) as usize]
                == 30 as libc::c_int
                && (*mat.offset(line as isize))[(column + 2 as libc::c_int) as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column + 1 as libc::c_int) as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column + 2 as libc::c_int) as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        } else if e == 1 as libc::c_int {
            if (*mat.offset(line as isize))[(column - 1 as libc::c_int) as usize]
                == 30 as libc::c_int
                && (*mat.offset(line as isize))[(column - 2 as libc::c_int) as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column - 1 as libc::c_int) as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        line as isize,
                    ))[(column - 2 as libc::c_int) as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        } else if c == 1 as libc::c_int {
            if (*mat.offset((line - 1 as libc::c_int) as isize))[column as usize]
                == 30 as libc::c_int
                && (*mat.offset((line - 2 as libc::c_int) as isize))[column as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line - 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line - 2 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        } else if b == 1 as libc::c_int {
            if (*mat.offset((line + 1 as libc::c_int) as isize))[column as usize]
                == 30 as libc::c_int
                && (*mat.offset((line + 2 as libc::c_int) as isize))[column as usize]
                    == 30 as libc::c_int
            {
                (*mat.offset(line as isize))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line + 1 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                (*mat
                    .offset(
                        (line + 2 as libc::c_int) as isize,
                    ))[column as usize] = 50 as libc::c_int;
                return 7 as libc::c_int;
            } else {
                return 0 as libc::c_int
            }
        }
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn printPositioning(
    mut Player: libc::c_int,
    mut boat: libc::c_int,
    mut nm: libc::c_int,
) {
    if Player == 1 as libc::c_int {
        let mut msg1: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (1/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg2: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (2/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg3: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (3/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg4: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (4/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg5: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (5/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg6: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 1 (6/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg7: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 2 (1/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg8: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 2 (2/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg9: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 2 (3/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg10: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 2 (4/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg11: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 3 (1/2)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg12: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 1 - Position the size boat 3 (2/2)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        if boat == 1 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg1.as_mut_ptr());
            } else if nm == 2 as libc::c_int {
                printMessage(msg2.as_mut_ptr());
            } else if nm == 3 as libc::c_int {
                printMessage(msg3.as_mut_ptr());
            } else if nm == 4 as libc::c_int {
                printMessage(msg4.as_mut_ptr());
            } else if nm == 5 as libc::c_int {
                printMessage(msg5.as_mut_ptr());
            } else if nm == 6 as libc::c_int {
                printMessage(msg6.as_mut_ptr());
            }
        } else if boat == 2 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg7.as_mut_ptr());
            } else if nm == 2 as libc::c_int {
                printMessage(msg8.as_mut_ptr());
            } else if nm == 3 as libc::c_int {
                printMessage(msg9.as_mut_ptr());
            } else if nm == 4 as libc::c_int {
                printMessage(msg10.as_mut_ptr());
            }
        } else if boat == 3 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg11.as_mut_ptr());
            }
            if nm == 2 as libc::c_int {
                printMessage(msg12.as_mut_ptr());
            }
        }
    }
    if Player == 2 as libc::c_int {
        let mut msg1_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (1/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg2_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (2/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg3_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (3/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg4_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (4/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg5_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (5/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg6_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 1 (6/6)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg7_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 2 (1/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg8_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 2 (2/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg9_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 2 (3/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg10_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 2 (4/4)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg11_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 3 (1/2)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        let mut msg12_0: [libc::c_char; 60] = *::core::mem::transmute::<
            &[u8; 60],
            &mut [libc::c_char; 60],
        >(
            b"Player 2 - Position the size boat 3 (2/2)\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0",
        );
        if boat == 1 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg1_0.as_mut_ptr());
            } else if nm == 2 as libc::c_int {
                printMessage(msg2_0.as_mut_ptr());
            } else if nm == 3 as libc::c_int {
                printMessage(msg3_0.as_mut_ptr());
            } else if nm == 4 as libc::c_int {
                printMessage(msg4_0.as_mut_ptr());
            } else if nm == 5 as libc::c_int {
                printMessage(msg5_0.as_mut_ptr());
            } else if nm == 6 as libc::c_int {
                printMessage(msg6_0.as_mut_ptr());
            }
        } else if boat == 2 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg7_0.as_mut_ptr());
            } else if nm == 2 as libc::c_int {
                printMessage(msg8_0.as_mut_ptr());
            } else if nm == 3 as libc::c_int {
                printMessage(msg9_0.as_mut_ptr());
            } else if nm == 4 as libc::c_int {
                printMessage(msg10_0.as_mut_ptr());
            }
        } else if boat == 3 as libc::c_int {
            if nm == 1 as libc::c_int {
                printMessage(msg11_0.as_mut_ptr());
            } else if nm == 2 as libc::c_int {
                printMessage(msg12_0.as_mut_ptr());
            }
        }
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut Player1: [[libc::c_int; 10]; 10] = [[0; 10]; 10];
    let mut Player2: [[libc::c_int; 10]; 10] = [[0; 10]; 10];
    let mut plays: libc::c_int = 1 as libc::c_int;
    let mut pts1: libc::c_int = 0 as libc::c_int;
    let mut pts2: libc::c_int = 0 as libc::c_int;
    let mut a1: libc::c_int = 0 as libc::c_int;
    let mut a2: libc::c_int = 0 as libc::c_int;
    let mut line: libc::c_int = 0;
    let mut col: libc::c_int = 0 as libc::c_int;
    let mut lin: libc::c_int = 0 as libc::c_int;
    let mut column: libc::c_char = 0;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < 10 as libc::c_int {
        let mut j: libc::c_int = 0 as libc::c_int;
        while j < 10 as libc::c_int {
            Player1[i as usize][j as usize] = 0 as libc::c_int;
            Player2[i as usize][j as usize] = 0 as libc::c_int;
            j += 1;
            j;
        }
        i += 1;
        i;
    }
    let mut i_0: libc::c_int = 1 as libc::c_int;
    while i_0 <= 2 as libc::c_int {
        let mut j_0: libc::c_int = 1 as libc::c_int;
        while j_0 <= 6 as libc::c_int {
            if i_0 == 1 as libc::c_int {
                printPositioning(i_0, 1 as libc::c_int, j_0);
                printsTray(Player1.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player1.as_mut_ptr(), 1 as libc::c_int);
            } else if i_0 == 2 as libc::c_int {
                printPositioning(i_0, 1 as libc::c_int, j_0);
                printsTray(Player2.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player2.as_mut_ptr(), 1 as libc::c_int);
            }
            j_0 += 1;
            j_0;
        }
        let mut j_1: libc::c_int = 1 as libc::c_int;
        while j_1 <= 4 as libc::c_int {
            if i_0 == 1 as libc::c_int {
                printPositioning(i_0, 2 as libc::c_int, j_1);
                printsTray(Player1.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player1.as_mut_ptr(), 2 as libc::c_int);
            } else if i_0 == 2 as libc::c_int {
                printPositioning(i_0, 2 as libc::c_int, j_1);
                printsTray(Player2.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player2.as_mut_ptr(), 2 as libc::c_int);
            }
            j_1 += 1;
            j_1;
        }
        let mut j_2: libc::c_int = 1 as libc::c_int;
        while j_2 <= 2 as libc::c_int {
            if i_0 == 1 as libc::c_int {
                printPositioning(i_0, 3 as libc::c_int, j_2);
                printsTray(Player1.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player1.as_mut_ptr(), 3 as libc::c_int);
            } else if i_0 == 2 as libc::c_int {
                printPositioning(i_0, 3 as libc::c_int, j_2);
                printsTray(Player2.as_mut_ptr(), 0 as libc::c_int);
                positionBoat(Player2.as_mut_ptr(), 3 as libc::c_int);
            }
            j_2 += 1;
            j_2;
        }
        i_0 += 1;
        i_0;
    }
    while plays <= 40 as libc::c_int {
        if plays % 2 as libc::c_int != 0 as libc::c_int {
            printMessageScore(pts1, pts2);
            printMessage(
                b"Player 1's turn\0" as *const u8 as *const libc::c_char
                    as *mut libc::c_char,
            );
            printsTray(Player2.as_mut_ptr(), 1 as libc::c_int);
            scanf(
                b"%d %c\0" as *const u8 as *const libc::c_char,
                &mut line as *mut libc::c_int,
                &mut column as *mut libc::c_char,
            );
            while validEntryLineColumn(line, column) != 1 as libc::c_int
                || canShoot(
                    Player2.as_mut_ptr(),
                    line - 1 as libc::c_int,
                    column as libc::c_int - 65 as libc::c_int,
                ) != 1 as libc::c_int
            {
                line = 0 as libc::c_int;
                column = 'a' as i32 as libc::c_char;
                printf(b"Position unavailable!\n\0" as *const u8 as *const libc::c_char);
                scanf(
                    b"%d %c\0" as *const u8 as *const libc::c_char,
                    &mut line as *mut libc::c_int,
                    &mut column as *mut libc::c_char,
                );
            }
            lin = line - 1 as libc::c_int;
            col = column as libc::c_int - 65 as libc::c_int;
            shoot(Player2.as_mut_ptr(), lin, col);
            a1 = pts1;
            pts1 += calculateScore(Player2.as_mut_ptr(), lin, col);
            if a1 != pts1 {
                printMessage(
                    b"Player 1 DROPPED A BOAT!\0" as *const u8 as *const libc::c_char
                        as *mut libc::c_char,
                );
            }
        } else {
            printMessageScore(pts1, pts2);
            printMessage(
                b"Player 2's turn\0" as *const u8 as *const libc::c_char
                    as *mut libc::c_char,
            );
            printsTray(Player1.as_mut_ptr(), 1 as libc::c_int);
            scanf(
                b"%d %c\0" as *const u8 as *const libc::c_char,
                &mut line as *mut libc::c_int,
                &mut column as *mut libc::c_char,
            );
            while validEntryLineColumn(line, column) != 1 as libc::c_int
                || canShoot(
                    Player1.as_mut_ptr(),
                    line - 1 as libc::c_int,
                    column as libc::c_int - 65 as libc::c_int,
                ) != 1 as libc::c_int
            {
                printf(b"Position unavailable!\n\0" as *const u8 as *const libc::c_char);
                scanf(
                    b"%d %c\0" as *const u8 as *const libc::c_char,
                    &mut line as *mut libc::c_int,
                    &mut column as *mut libc::c_char,
                );
            }
            lin = line - 1 as libc::c_int;
            col = column as libc::c_int - 65 as libc::c_int;
            shoot(Player1.as_mut_ptr(), lin, col);
            a2 = pts2;
            pts2 += calculateScore(Player1.as_mut_ptr(), lin, col);
            if a2 != pts2 {
                printMessage(
                    b"Player 2 DROPPED A BOAT!\0" as *const u8 as *const libc::c_char
                        as *mut libc::c_char,
                );
            }
        }
        plays += 1;
        plays;
    }
    printMessage(
        b"END GAME\n\0" as *const u8 as *const libc::c_char as *mut libc::c_char,
    );
    printMessageScore(pts1, pts2);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
