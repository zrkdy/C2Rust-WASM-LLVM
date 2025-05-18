use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn getchar() -> libc::c_int;
    fn putchar(__c: libc::c_int) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn exit(_: libc::c_int) -> !;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct node {
    pub n: libc::c_int,
    pub keys: [libc::c_int; 2],
    pub p: [*mut node; 3],
}
pub type KeyStatus = libc::c_uint;
pub const LessKeys: KeyStatus = 4;
pub const InsertIt: KeyStatus = 3;
pub const Success: KeyStatus = 2;
pub const SearchFailure: KeyStatus = 1;
pub const Duplicate: KeyStatus = 0;
#[no_mangle]
pub static mut root: *mut node = 0 as *const node as *mut node;
unsafe fn main_0() -> libc::c_int {
    let mut key: libc::c_int = 0;
    let mut choice: libc::c_int = 0;
    printf(
        b"Creation of B tree for M=%d\n\0" as *const u8 as *const libc::c_char,
        3 as libc::c_int,
    );
    loop {
        printf(b"1.Insert\n\0" as *const u8 as *const libc::c_char);
        printf(b"2.Delete\n\0" as *const u8 as *const libc::c_char);
        printf(b"3.Search\n\0" as *const u8 as *const libc::c_char);
        printf(b"4.Display\n\0" as *const u8 as *const libc::c_char);
        printf(b"5.Quit\n\0" as *const u8 as *const libc::c_char);
        printf(b"6.Enumerate\n\0" as *const u8 as *const libc::c_char);
        printf(b"7.Total Keys\n\0" as *const u8 as *const libc::c_char);
        printf(b"8.Min and Max Keys\n\0" as *const u8 as *const libc::c_char);
        printf(b"9.Max Level\n\0" as *const u8 as *const libc::c_char);
        printf(b"Enter your choice : \0" as *const u8 as *const libc::c_char);
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut choice as *mut libc::c_int,
        );
        eatline();
        match choice {
            1 => {
                printf(b"Enter the key : \0" as *const u8 as *const libc::c_char);
                scanf(
                    b"%d\0" as *const u8 as *const libc::c_char,
                    &mut key as *mut libc::c_int,
                );
                eatline();
                insert(key);
            }
            2 => {
                printf(b"Enter the key : \0" as *const u8 as *const libc::c_char);
                scanf(
                    b"%d\0" as *const u8 as *const libc::c_char,
                    &mut key as *mut libc::c_int,
                );
                eatline();
                DelNode(key);
            }
            3 => {
                printf(b"Enter the key : \0" as *const u8 as *const libc::c_char);
                scanf(
                    b"%d\0" as *const u8 as *const libc::c_char,
                    &mut key as *mut libc::c_int,
                );
                eatline();
                search(key);
            }
            4 => {
                printf(b"Btree is :\n\0" as *const u8 as *const libc::c_char);
                display(root, 0 as libc::c_int);
            }
            5 => {
                exit(1 as libc::c_int);
            }
            6 => {
                printf(
                    b"Btree in sorted order is:\n\0" as *const u8 as *const libc::c_char,
                );
                inorder(root);
                putchar('\n' as i32);
            }
            7 => {
                printf(
                    b"The total number of keys in this tree is:\n\0" as *const u8
                        as *const libc::c_char,
                );
                printTotal(root);
            }
            8 => {
                getMinMax(root);
            }
            9 => {
                printf(
                    b"The maximum level in this tree is:\n\0" as *const u8
                        as *const libc::c_char,
                );
                printMaxLevel(root);
            }
            _ => {
                printf(b"Wrong choice\n\0" as *const u8 as *const libc::c_char);
            }
        }
    };
}
#[no_mangle]
pub unsafe extern "C" fn insert(mut key: libc::c_int) {
    let mut newnode: *mut node = 0 as *mut node;
    let mut upKey: libc::c_int = 0;
    let mut value: KeyStatus = Duplicate;
    value = ins(root, key, &mut upKey, &mut newnode);
    if value as libc::c_uint == Duplicate as libc::c_int as libc::c_uint {
        printf(b"Key already available\n\0" as *const u8 as *const libc::c_char);
    }
    if value as libc::c_uint == InsertIt as libc::c_int as libc::c_uint {
        let mut uproot: *mut node = root;
        root = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
        (*root).n = 1 as libc::c_int;
        (*root).keys[0 as libc::c_int as usize] = upKey;
        (*root).p[0 as libc::c_int as usize] = uproot;
        (*root).p[1 as libc::c_int as usize] = newnode;
    }
}
#[no_mangle]
pub unsafe extern "C" fn ins(
    mut ptr: *mut node,
    mut key: libc::c_int,
    mut upKey: *mut libc::c_int,
    mut newnode: *mut *mut node,
) -> KeyStatus {
    let mut newPtr: *mut node = 0 as *mut node;
    let mut lastPtr: *mut node = 0 as *mut node;
    let mut pos: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut n: libc::c_int = 0;
    let mut splitPos: libc::c_int = 0;
    let mut newKey: libc::c_int = 0;
    let mut lastKey: libc::c_int = 0;
    let mut value: KeyStatus = Duplicate;
    if ptr.is_null() {
        *newnode = 0 as *mut node;
        *upKey = key;
        return InsertIt;
    }
    n = (*ptr).n;
    pos = searchPos(key, ((*ptr).keys).as_mut_ptr(), n);
    if pos < n && key == (*ptr).keys[pos as usize] {
        return Duplicate;
    }
    value = ins((*ptr).p[pos as usize], key, &mut newKey, &mut newPtr);
    if value as libc::c_uint != InsertIt as libc::c_int as libc::c_uint {
        return value;
    }
    if n < 3 as libc::c_int - 1 as libc::c_int {
        pos = searchPos(newKey, ((*ptr).keys).as_mut_ptr(), n);
        i = n;
        while i > pos {
            (*ptr).keys[i as usize] = (*ptr).keys[(i - 1 as libc::c_int) as usize];
            (*ptr).p[(i + 1 as libc::c_int) as usize] = (*ptr).p[i as usize];
            i -= 1;
            i;
        }
        (*ptr).keys[pos as usize] = newKey;
        (*ptr).p[(pos + 1 as libc::c_int) as usize] = newPtr;
        (*ptr).n += 1;
        (*ptr).n;
        return Success;
    }
    if pos == 3 as libc::c_int - 1 as libc::c_int {
        lastKey = newKey;
        lastPtr = newPtr;
    } else {
        lastKey = (*ptr).keys[(3 as libc::c_int - 2 as libc::c_int) as usize];
        lastPtr = (*ptr).p[(3 as libc::c_int - 1 as libc::c_int) as usize];
        i = 3 as libc::c_int - 2 as libc::c_int;
        while i > pos {
            (*ptr).keys[i as usize] = (*ptr).keys[(i - 1 as libc::c_int) as usize];
            (*ptr).p[(i + 1 as libc::c_int) as usize] = (*ptr).p[i as usize];
            i -= 1;
            i;
        }
        (*ptr).keys[pos as usize] = newKey;
        (*ptr).p[(pos + 1 as libc::c_int) as usize] = newPtr;
    }
    splitPos = (3 as libc::c_int - 1 as libc::c_int) / 2 as libc::c_int;
    *upKey = (*ptr).keys[splitPos as usize];
    *newnode = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
    (*ptr).n = splitPos;
    (**newnode).n = 3 as libc::c_int - 1 as libc::c_int - splitPos;
    i = 0 as libc::c_int;
    while i < (**newnode).n {
        (**newnode).p[i as usize] = (*ptr).p[(i + splitPos + 1 as libc::c_int) as usize];
        if i < (**newnode).n - 1 as libc::c_int {
            (**newnode)
                .keys[i
                as usize] = (*ptr).keys[(i + splitPos + 1 as libc::c_int) as usize];
        } else {
            (**newnode).keys[i as usize] = lastKey;
        }
        i += 1;
        i;
    }
    (**newnode).p[(**newnode).n as usize] = lastPtr;
    return InsertIt;
}
#[no_mangle]
pub unsafe extern "C" fn display(mut ptr: *mut node, mut blanks: libc::c_int) {
    if !ptr.is_null() {
        let mut i: libc::c_int = 0;
        i = 1 as libc::c_int;
        while i <= blanks {
            printf(b" \0" as *const u8 as *const libc::c_char);
            i += 1;
            i;
        }
        i = 0 as libc::c_int;
        while i < (*ptr).n {
            printf(
                b"%d \0" as *const u8 as *const libc::c_char,
                (*ptr).keys[i as usize],
            );
            i += 1;
            i;
        }
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i = 0 as libc::c_int;
        while i <= (*ptr).n {
            display((*ptr).p[i as usize], blanks + 10 as libc::c_int);
            i += 1;
            i;
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn search(mut key: libc::c_int) {
    let mut pos: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut n: libc::c_int = 0;
    let mut ptr: *mut node = root;
    printf(b"Search path:\n\0" as *const u8 as *const libc::c_char);
    while !ptr.is_null() {
        n = (*ptr).n;
        i = 0 as libc::c_int;
        while i < (*ptr).n {
            printf(
                b" %d\0" as *const u8 as *const libc::c_char,
                (*ptr).keys[i as usize],
            );
            i += 1;
            i;
        }
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        pos = searchPos(key, ((*ptr).keys).as_mut_ptr(), n);
        if pos < n && key == (*ptr).keys[pos as usize] {
            printf(
                b"Key %d found in position %d of last dispalyed node\n\0" as *const u8
                    as *const libc::c_char,
                key,
                i,
            );
            return;
        }
        ptr = (*ptr).p[pos as usize];
    }
    printf(b"Key %d is not available\n\0" as *const u8 as *const libc::c_char, key);
}
#[no_mangle]
pub unsafe extern "C" fn searchPos(
    mut key: libc::c_int,
    mut key_arr: *mut libc::c_int,
    mut n: libc::c_int,
) -> libc::c_int {
    let mut pos: libc::c_int = 0 as libc::c_int;
    while pos < n && key > *key_arr.offset(pos as isize) {
        pos += 1;
        pos;
    }
    return pos;
}
#[no_mangle]
pub unsafe extern "C" fn DelNode(mut key: libc::c_int) {
    let mut uproot: *mut node = 0 as *mut node;
    let mut value: KeyStatus = Duplicate;
    value = del(root, key);
    match value as libc::c_uint {
        1 => {
            printf(
                b"Key %d is not available\n\0" as *const u8 as *const libc::c_char,
                key,
            );
        }
        4 => {
            uproot = root;
            root = (*root).p[0 as libc::c_int as usize];
            free(uproot as *mut libc::c_void);
        }
        _ => {}
    };
}
#[no_mangle]
pub unsafe extern "C" fn del(mut ptr: *mut node, mut key: libc::c_int) -> KeyStatus {
    let mut pos: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut pivot: libc::c_int = 0;
    let mut n: libc::c_int = 0;
    let mut min: libc::c_int = 0;
    let mut key_arr: *mut libc::c_int = 0 as *mut libc::c_int;
    let mut value: KeyStatus = Duplicate;
    let mut p: *mut *mut node = 0 as *mut *mut node;
    let mut lptr: *mut node = 0 as *mut node;
    let mut rptr: *mut node = 0 as *mut node;
    if ptr.is_null() {
        return SearchFailure;
    }
    n = (*ptr).n;
    key_arr = ((*ptr).keys).as_mut_ptr();
    p = ((*ptr).p).as_mut_ptr();
    min = (3 as libc::c_int - 1 as libc::c_int) / 2 as libc::c_int;
    pos = searchPos(key, key_arr, n);
    if (*p.offset(0 as libc::c_int as isize)).is_null() {
        if pos == n || key < *key_arr.offset(pos as isize) {
            return SearchFailure;
        }
        i = pos + 1 as libc::c_int;
        while i < n {
            *key_arr
                .offset((i - 1 as libc::c_int) as isize) = *key_arr.offset(i as isize);
            let ref mut fresh0 = *p.offset(i as isize);
            *fresh0 = *p.offset((i + 1 as libc::c_int) as isize);
            i += 1;
            i;
        }
        (*ptr).n -= 1;
        return (if (*ptr).n >= (if ptr == root { 1 as libc::c_int } else { min }) {
            Success as libc::c_int
        } else {
            LessKeys as libc::c_int
        }) as KeyStatus;
    }
    if pos < n && key == *key_arr.offset(pos as isize) {
        let mut qp: *mut node = *p.offset(pos as isize);
        let mut qp1: *mut node = 0 as *mut node;
        let mut nkey: libc::c_int = 0;
        loop {
            nkey = (*qp).n;
            qp1 = (*qp).p[nkey as usize];
            if qp1.is_null() {
                break;
            }
            qp = qp1;
        }
        *key_arr.offset(pos as isize) = (*qp).keys[(nkey - 1 as libc::c_int) as usize];
        (*qp).keys[(nkey - 1 as libc::c_int) as usize] = key;
    }
    value = del(*p.offset(pos as isize), key);
    if value as libc::c_uint != LessKeys as libc::c_int as libc::c_uint {
        return value;
    }
    if pos > 0 as libc::c_int && (**p.offset((pos - 1 as libc::c_int) as isize)).n > min
    {
        pivot = pos - 1 as libc::c_int;
        lptr = *p.offset(pivot as isize);
        rptr = *p.offset(pos as isize);
        (*rptr)
            .p[((*rptr).n + 1 as libc::c_int) as usize] = (*rptr).p[(*rptr).n as usize];
        i = (*rptr).n;
        while i > 0 as libc::c_int {
            (*rptr).keys[i as usize] = (*rptr).keys[(i - 1 as libc::c_int) as usize];
            (*rptr).p[i as usize] = (*rptr).p[(i - 1 as libc::c_int) as usize];
            i -= 1;
            i;
        }
        (*rptr).n += 1;
        (*rptr).n;
        (*rptr).keys[0 as libc::c_int as usize] = *key_arr.offset(pivot as isize);
        (*rptr).p[0 as libc::c_int as usize] = (*lptr).p[(*lptr).n as usize];
        (*lptr).n -= 1;
        *key_arr.offset(pivot as isize) = (*lptr).keys[(*lptr).n as usize];
        return Success;
    }
    if pos < n && (**p.offset((pos + 1 as libc::c_int) as isize)).n > min {
        pivot = pos;
        lptr = *p.offset(pivot as isize);
        rptr = *p.offset((pivot + 1 as libc::c_int) as isize);
        (*lptr).keys[(*lptr).n as usize] = *key_arr.offset(pivot as isize);
        (*lptr)
            .p[((*lptr).n + 1 as libc::c_int)
            as usize] = (*rptr).p[0 as libc::c_int as usize];
        *key_arr.offset(pivot as isize) = (*rptr).keys[0 as libc::c_int as usize];
        (*lptr).n += 1;
        (*lptr).n;
        (*rptr).n -= 1;
        (*rptr).n;
        i = 0 as libc::c_int;
        while i < (*rptr).n {
            (*rptr).keys[i as usize] = (*rptr).keys[(i + 1 as libc::c_int) as usize];
            (*rptr).p[i as usize] = (*rptr).p[(i + 1 as libc::c_int) as usize];
            i += 1;
            i;
        }
        (*rptr)
            .p[(*rptr).n as usize] = (*rptr).p[((*rptr).n + 1 as libc::c_int) as usize];
        return Success;
    }
    if pos == n {
        pivot = pos - 1 as libc::c_int;
    } else {
        pivot = pos;
    }
    lptr = *p.offset(pivot as isize);
    rptr = *p.offset((pivot + 1 as libc::c_int) as isize);
    (*lptr).keys[(*lptr).n as usize] = *key_arr.offset(pivot as isize);
    (*lptr)
        .p[((*lptr).n + 1 as libc::c_int)
        as usize] = (*rptr).p[0 as libc::c_int as usize];
    i = 0 as libc::c_int;
    while i < (*rptr).n {
        (*lptr)
            .keys[((*lptr).n + 1 as libc::c_int + i)
            as usize] = (*rptr).keys[i as usize];
        (*lptr)
            .p[((*lptr).n + 2 as libc::c_int + i)
            as usize] = (*rptr).p[(i + 1 as libc::c_int) as usize];
        i += 1;
        i;
    }
    (*lptr).n = (*lptr).n + (*rptr).n + 1 as libc::c_int;
    free(rptr as *mut libc::c_void);
    i = pos + 1 as libc::c_int;
    while i < n {
        *key_arr.offset((i - 1 as libc::c_int) as isize) = *key_arr.offset(i as isize);
        let ref mut fresh1 = *p.offset(i as isize);
        *fresh1 = *p.offset((i + 1 as libc::c_int) as isize);
        i += 1;
        i;
    }
    (*ptr).n -= 1;
    return (if (*ptr).n >= (if ptr == root { 1 as libc::c_int } else { min }) {
        Success as libc::c_int
    } else {
        LessKeys as libc::c_int
    }) as KeyStatus;
}
#[no_mangle]
pub unsafe extern "C" fn eatline() {
    let mut c: libc::c_char = 0;
    printf(b"\0" as *const u8 as *const libc::c_char);
    loop {
        c = (getchar() != '\n' as i32) as libc::c_int as libc::c_char;
        if !(c != 0) {
            break;
        }
    };
}
#[no_mangle]
pub unsafe extern "C" fn inorder(mut ptr: *mut node) {
    if !ptr.is_null() {
        if (*ptr).n >= 1 as libc::c_int {
            inorder((*ptr).p[0 as libc::c_int as usize]);
            printf(
                b"%d \0" as *const u8 as *const libc::c_char,
                (*ptr).keys[0 as libc::c_int as usize],
            );
            inorder((*ptr).p[1 as libc::c_int as usize]);
            if (*ptr).n == 2 as libc::c_int {
                printf(
                    b"%d \0" as *const u8 as *const libc::c_char,
                    (*ptr).keys[1 as libc::c_int as usize],
                );
                inorder((*ptr).p[2 as libc::c_int as usize]);
            }
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn totalKeys(mut ptr: *mut node) -> libc::c_int {
    if !ptr.is_null() {
        let mut count: libc::c_int = 1 as libc::c_int;
        if (*ptr).n >= 1 as libc::c_int {
            count += totalKeys((*ptr).p[0 as libc::c_int as usize]);
            count += totalKeys((*ptr).p[1 as libc::c_int as usize]);
            if (*ptr).n == 2 as libc::c_int {
                count
                    += totalKeys((*ptr).p[2 as libc::c_int as usize]) + 1 as libc::c_int;
            }
        }
        return count;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn printTotal(mut ptr: *mut node) {
    printf(b"%d\n\0" as *const u8 as *const libc::c_char, totalKeys(ptr));
}
#[no_mangle]
pub unsafe extern "C" fn getMin(mut ptr: *mut node) -> libc::c_int {
    if !ptr.is_null() {
        let mut min: libc::c_int = 0;
        if !((*ptr).p[0 as libc::c_int as usize]).is_null() {
            min = getMin((*ptr).p[0 as libc::c_int as usize]);
        } else {
            min = (*ptr).keys[0 as libc::c_int as usize];
        }
        return min;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn getMax(mut ptr: *mut node) -> libc::c_int {
    if !ptr.is_null() {
        let mut max_0: libc::c_int = 0;
        if (*ptr).n == 1 as libc::c_int {
            if !((*ptr).p[1 as libc::c_int as usize]).is_null() {
                max_0 = getMax((*ptr).p[1 as libc::c_int as usize]);
            } else {
                max_0 = (*ptr).keys[0 as libc::c_int as usize];
            }
        }
        if (*ptr).n == 2 as libc::c_int {
            if !((*ptr).p[2 as libc::c_int as usize]).is_null() {
                max_0 = getMax((*ptr).p[2 as libc::c_int as usize]);
            } else {
                max_0 = (*ptr).keys[1 as libc::c_int as usize];
            }
        }
        return max_0;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn getMinMax(mut ptr: *mut node) {
    printf(b"%d %d\n\0" as *const u8 as *const libc::c_char, getMin(ptr), getMax(ptr));
}
#[no_mangle]
pub unsafe extern "C" fn max(
    mut first: libc::c_int,
    mut second: libc::c_int,
    mut third: libc::c_int,
) -> libc::c_int {
    let mut max_0: libc::c_int = first;
    if second > max_0 {
        max_0 = second;
    }
    if third > max_0 {
        max_0 = third;
    }
    return max_0;
}
#[no_mangle]
pub unsafe extern "C" fn maxLevel(mut ptr: *mut node) -> libc::c_int {
    if !ptr.is_null() {
        let mut l: libc::c_int = 0 as libc::c_int;
        let mut mr: libc::c_int = 0 as libc::c_int;
        let mut r: libc::c_int = 0 as libc::c_int;
        let mut max_depth: libc::c_int = 0;
        if !((*ptr).p[0 as libc::c_int as usize]).is_null() {
            l = maxLevel((*ptr).p[0 as libc::c_int as usize]);
        }
        if !((*ptr).p[1 as libc::c_int as usize]).is_null() {
            mr = maxLevel((*ptr).p[1 as libc::c_int as usize]);
        }
        if (*ptr).n == 2 as libc::c_int {
            if !((*ptr).p[2 as libc::c_int as usize]).is_null() {
                r = maxLevel((*ptr).p[2 as libc::c_int as usize]);
            }
        }
        max_depth = max(l, mr, r) + 1 as libc::c_int;
        return max_depth;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn printMaxLevel(mut ptr: *mut node) {
    let mut max_0: libc::c_int = maxLevel(ptr) - 1 as libc::c_int;
    if max_0 == -(1 as libc::c_int) {
        printf(b"tree is empty\n\0" as *const u8 as *const libc::c_char);
    } else {
        printf(b"%d\n\0" as *const u8 as *const libc::c_char, max_0);
    };
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
