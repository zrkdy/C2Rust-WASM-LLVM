use ::libc;
extern "C" {
    pub type _IO_wide_data;
    pub type _IO_codecvt;
    pub type _IO_marker;
    fn tolower(_: libc::c_int) -> libc::c_int;
    static mut stderr: *mut FILE;
    fn fclose(__stream: *mut FILE) -> libc::c_int;
    fn fopen(_: *const libc::c_char, _: *const libc::c_char) -> *mut FILE;
    fn fprintf(_: *mut FILE, _: *const libc::c_char, _: ...) -> libc::c_int;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn fgets(
        __s: *mut libc::c_char,
        __n: libc::c_int,
        __stream: *mut FILE,
    ) -> *mut libc::c_char;
    fn rewind(__stream: *mut FILE);
    fn rand() -> libc::c_int;
    fn srand(__seed: libc::c_uint);
    fn exit(_: libc::c_int) -> !;
    fn strcpy(_: *mut libc::c_char, _: *const libc::c_char) -> *mut libc::c_char;
    fn strchr(_: *const libc::c_char, _: libc::c_int) -> *mut libc::c_char;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
    fn time(__timer: *mut time_t) -> time_t;
}
pub type __off_t = libc::c_long;
pub type __off64_t = libc::c_long;
pub type __time_t = libc::c_long;
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
pub type time_t = __time_t;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct game_instance {
    pub current_word: [libc::c_char; 30],
    pub hidden: [libc::c_char; 30],
    pub size: libc::c_int,
    pub incorrect: libc::c_int,
    pub guesses: [libc::c_char; 25],
    pub guesses_size: libc::c_int,
}
unsafe fn main_0() -> libc::c_int {
    let mut game: game_instance = new_game();
    let mut guess: libc::c_char = 0;
    while !(strchr((game.hidden).as_mut_ptr(), '_' as i32)).is_null()
        && game.incorrect <= 12 as libc::c_int
    {
        loop {
            printf(
                b"\n****************************\n\0" as *const u8 as *const libc::c_char,
            );
            printf(b"Your word: \0" as *const u8 as *const libc::c_char);
            let mut i: libc::c_int = 0 as libc::c_int;
            while i < game.size {
                printf(
                    b"%c \0" as *const u8 as *const libc::c_char,
                    game.hidden[i as usize] as libc::c_int,
                );
                i += 1;
                i;
            }
            if game.guesses_size > 0 as libc::c_int {
                printf(
                    b"\nSo far, you have guessed: \0" as *const u8 as *const libc::c_char,
                );
                let mut i_0: libc::c_int = 0 as libc::c_int;
                while i_0 < game.guesses_size {
                    printf(
                        b"%c \0" as *const u8 as *const libc::c_char,
                        game.guesses[i_0 as usize] as libc::c_int,
                    );
                    i_0 += 1;
                    i_0;
                }
            }
            printf(
                b"\nYou have %d guesses left.\0" as *const u8 as *const libc::c_char,
                12 as libc::c_int - game.incorrect,
            );
            printf(b"\nPlease enter a letter: \0" as *const u8 as *const libc::c_char);
            scanf(
                b" %c\0" as *const u8 as *const libc::c_char,
                &mut guess as *mut libc::c_char,
            );
            guess = tolower(guess as libc::c_int) as libc::c_char;
            if !(new_guess(
                guess,
                (game.guesses).as_mut_ptr() as *const libc::c_char,
                game.guesses_size,
            ) != -(1 as libc::c_int))
            {
                break;
            }
        }
        game.guesses[game.guesses_size as usize] = guess;
        game.guesses_size += 1;
        game.guesses_size;
        if in_word(
            guess,
            (game.current_word).as_mut_ptr() as *const libc::c_char,
            game.size as libc::c_uint,
        ) == 1 as libc::c_int
        {
            printf(b"That letter is in the word!\0" as *const u8 as *const libc::c_char);
            let mut i_1: libc::c_int = 0 as libc::c_int;
            while i_1 < game.size {
                if game.current_word[i_1 as usize] as libc::c_int == guess as libc::c_int
                {
                    game.hidden[i_1 as usize] = guess;
                }
                i_1 += 1;
                i_1;
            }
        } else {
            printf(
                b"That letter is not in the word.\n\0" as *const u8
                    as *const libc::c_char,
            );
            game.incorrect += 1;
            game.incorrect;
        }
        picture(game.incorrect);
    }
    won((game.current_word).as_mut_ptr() as *const libc::c_char, game.incorrect);
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn new_guess(
    mut new_guess_0: libc::c_char,
    mut guesses: *const libc::c_char,
    mut size: libc::c_int,
) -> libc::c_int {
    let mut j: libc::c_int = 0 as libc::c_int;
    while j < size {
        if *guesses.offset(j as isize) as libc::c_int == new_guess_0 as libc::c_int {
            printf(
                b"\nYou have already guessed that letter.\0" as *const u8
                    as *const libc::c_char,
            );
            return 1 as libc::c_int;
        }
        j += 1;
        j;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn in_word(
    mut letter: libc::c_char,
    mut word: *const libc::c_char,
    mut size: libc::c_uint,
) -> libc::c_int {
    let mut i: libc::c_int = 0 as libc::c_int;
    while (i as libc::c_uint) < size {
        if *word.offset(i as isize) as libc::c_int == letter as libc::c_int {
            return 1 as libc::c_int;
        }
        i += 1;
        i;
    }
    return -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn new_game() -> game_instance {
    let mut word: [libc::c_char; 30] = [0; 30];
    let mut fptr: *mut FILE = 0 as *mut FILE;
    fptr = fopen(
        b"games/words.txt\0" as *const u8 as *const libc::c_char,
        b"r\0" as *const u8 as *const libc::c_char,
    );
    if fptr.is_null() {
        fprintf(stderr, b"File not found.\n\0" as *const u8 as *const libc::c_char);
        exit(1 as libc::c_int);
    }
    let mut line_number: libc::c_int = 0 as libc::c_int;
    while !(fgets(word.as_mut_ptr(), 30 as libc::c_int, fptr)).is_null() {
        line_number += 1;
        line_number;
    }
    rewind(fptr);
    let mut random_num: libc::c_int = 0;
    srand(time(0 as *mut time_t) as libc::c_uint);
    random_num = rand() % line_number;
    let mut s: libc::c_int = 0 as libc::c_int;
    while s <= random_num {
        fgets(word.as_mut_ptr(), 30 as libc::c_int, fptr);
        s += 1;
        s;
    }
    if !(strchr(word.as_mut_ptr(), '\n' as i32)).is_null() {
        word[(strlen(word.as_mut_ptr())).wrapping_sub(1 as libc::c_int as libc::c_ulong)
            as usize] = '\0' as i32 as libc::c_char;
    }
    fclose(fptr);
    let mut current_game: game_instance = game_instance {
        current_word: [0; 30],
        hidden: [0; 30],
        size: 0,
        incorrect: 0,
        guesses: [0; 25],
        guesses_size: 0,
    };
    strcpy((current_game.current_word).as_mut_ptr(), word.as_mut_ptr());
    current_game.size = strlen(word.as_mut_ptr()) as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    while (i as libc::c_ulong) < strlen(word.as_mut_ptr()) {
        current_game.hidden[i as usize] = '_' as i32 as libc::c_char;
        i += 1;
        i;
    }
    current_game.incorrect = 0 as libc::c_int;
    current_game.guesses_size = 0 as libc::c_int;
    return current_game;
}
#[no_mangle]
pub unsafe extern "C" fn won(mut word: *const libc::c_char, mut score: libc::c_int) {
    if score > 12 as libc::c_int {
        printf(
            b"\nYou lost! The word was: %s.\n\0" as *const u8 as *const libc::c_char,
            word,
        );
    } else {
        printf(
            b"\nYou won! You had %d guesses left.\n\0" as *const u8
                as *const libc::c_char,
            12 as libc::c_int - score,
        );
    };
}
#[no_mangle]
pub unsafe extern "C" fn picture(mut score: libc::c_int) {
    match score {
        12 => {
            printf(
                b"\n      _\n  __( ' )> \n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        11 => {
            printf(
                b"\n      _\n  __( ' )\n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        10 => {
            printf(
                b"\n      _\n  __(   )\n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        9 => {
            printf(
                b"\n        \n  __(   )\n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        8 => {
            printf(
                b"\n        \n  __(    \n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        7 => {
            printf(
                b"\n        \n  __     \n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        6 => {
            printf(
                b"\n        \n  _      \n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        5 => {
            printf(
                b"\n        \n  _      \n   _ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        4 => {
            printf(
                b"\n        \n         \n   _ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        3 => {
            printf(
                b"\n        \n         \n     < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        2 => {
            printf(
                b"\n        \n         \n       _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        1 => {
            printf(
                b"\n        \n         \n         ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
        0 => {}
        _ => {
            printf(
                b"\n      _\n  __( ' )> QUACK!\n \\_ < _ ) \0" as *const u8
                    as *const libc::c_char,
            );
        }
    };
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
