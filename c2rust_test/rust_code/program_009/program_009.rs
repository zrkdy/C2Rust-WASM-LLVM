use ::libc;
extern "C" {
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct node {
    pub ID: libc::c_int,
    pub AT: libc::c_int,
    pub BT: libc::c_int,
    pub priority: libc::c_int,
    pub CT: libc::c_int,
    pub WT: libc::c_int,
    pub TAT: libc::c_int,
    pub next: *mut node,
}
#[no_mangle]
pub unsafe extern "C" fn insert(
    mut root: *mut *mut node,
    mut id: libc::c_int,
    mut at: libc::c_int,
    mut bt: libc::c_int,
    mut prior: libc::c_int,
) {
    let mut new: *mut node = malloc(::core::mem::size_of::<node>() as libc::c_ulong)
        as *mut node;
    let mut ptr: *mut node = *root;
    (*new).ID = id;
    (*new).AT = at;
    (*new).BT = bt;
    (*new).priority = prior;
    (*new).next = 0 as *mut node;
    (*new).CT = 0 as libc::c_int;
    (*new).WT = 0 as libc::c_int;
    (*new).TAT = 0 as libc::c_int;
    if (*root).is_null() {
        *root = new;
        return;
    }
    while !((*ptr).next).is_null() {
        ptr = (*ptr).next;
    }
    (*ptr).next = new;
}
#[no_mangle]
pub unsafe extern "C" fn delete(mut root: *mut *mut node, mut id: libc::c_int) {
    let mut ptr: *mut node = *root;
    let mut prev: *mut node = 0 as *mut node;
    if ptr.is_null() {
        return;
    }
    if (*ptr).ID == id {
        *root = (*ptr).next;
        free(ptr as *mut libc::c_void);
        return;
    }
    while !ptr.is_null() && (*ptr).ID != id {
        prev = ptr;
        ptr = (*ptr).next;
    }
    if ptr.is_null() {
        return;
    }
    (*prev).next = (*ptr).next;
    free(ptr as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn show_list(mut head: *mut node) {
    printf(b"Process Priority AT BT CT TAT WT \n\0" as *const u8 as *const libc::c_char);
    while !head.is_null() {
        printf(
            b"P%d. %d %d %d %d %d %d \n\0" as *const u8 as *const libc::c_char,
            (*head).ID,
            (*head).priority,
            (*head).AT,
            (*head).BT,
            (*head).CT,
            (*head).TAT,
            (*head).WT,
        );
        head = (*head).next;
    }
}
#[no_mangle]
pub unsafe extern "C" fn l_length(mut root: *mut *mut node) -> libc::c_int {
    let mut count: libc::c_int = 0 as libc::c_int;
    let mut ptr: *mut node = *root;
    while !ptr.is_null() {
        count += 1;
        count;
        ptr = (*ptr).next;
    }
    return count;
}
#[no_mangle]
pub unsafe extern "C" fn update(
    mut root: *mut *mut node,
    mut id: libc::c_int,
    mut ct: libc::c_int,
    mut wt: libc::c_int,
    mut tat: libc::c_int,
) {
    let mut ptr: *mut node = *root;
    if !ptr.is_null() && (*ptr).ID == id {
        if ct != 0 as libc::c_int {
            (*ptr).CT = ct;
        }
        if wt != 0 as libc::c_int {
            (*ptr).WT = wt;
        }
        if tat != 0 as libc::c_int {
            (*ptr).TAT = tat;
        }
        return;
    }
    while !ptr.is_null() && (*ptr).ID != id {
        ptr = (*ptr).next;
    }
    if ct != 0 as libc::c_int {
        (*ptr).CT = ct;
    }
    if wt != 0 as libc::c_int {
        (*ptr).WT = wt;
    }
    if tat != 0 as libc::c_int {
        (*ptr).TAT = tat;
    }
}
#[no_mangle]
pub unsafe extern "C" fn compare(mut a: *mut node, mut b: *mut node) -> bool {
    if (*a).AT == (*b).AT {
        return (*a).priority < (*b).priority
    } else {
        return (*a).AT < (*b).AT
    };
}
#[no_mangle]
pub unsafe extern "C" fn calculate_ct(mut root: *mut *mut node) -> libc::c_float {
    let mut ptr: *mut node = *root;
    let mut prior: *mut node = 0 as *mut node;
    let mut rpt: *mut node = 0 as *mut node;
    let mut ct: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0;
    let mut time: libc::c_int = 0 as libc::c_int;
    let mut n: libc::c_int = l_length(root);
    let mut avg: libc::c_float = 0.;
    let mut sum: libc::c_float = 0 as libc::c_int as libc::c_float;
    let mut duproot: *mut node = 0 as *mut node;
    while !ptr.is_null() {
        insert(&mut duproot, (*ptr).ID, (*ptr).AT, (*ptr).BT, (*ptr).priority);
        ptr = (*ptr).next;
    }
    ptr = duproot;
    rpt = (*ptr).next;
    while !rpt.is_null() {
        if !compare(ptr, rpt) {
            ptr = rpt;
        }
        rpt = (*rpt).next;
    }
    ct = (*ptr).AT + (*ptr).BT;
    time = ct;
    sum += ct as libc::c_float;
    update(root, (*ptr).ID, ct, 0 as libc::c_int, 0 as libc::c_int);
    delete(&mut duproot, (*ptr).ID);
    i = 0 as libc::c_int;
    while i < n - 1 as libc::c_int {
        ptr = duproot;
        while !ptr.is_null() && (*ptr).AT > time {
            ptr = (*ptr).next;
        }
        rpt = (*ptr).next;
        while !rpt.is_null() {
            if (*rpt).AT <= time {
                if (*rpt).priority < (*ptr).priority {
                    ptr = rpt;
                }
            }
            rpt = (*rpt).next;
        }
        ct += (*ptr).BT;
        time += (*ptr).BT;
        sum += ct as libc::c_float;
        update(root, (*ptr).ID, ct, 0 as libc::c_int, 0 as libc::c_int);
        delete(&mut duproot, (*ptr).ID);
        i += 1;
        i;
    }
    avg = sum / n as libc::c_float;
    return avg;
}
#[no_mangle]
pub unsafe extern "C" fn calculate_tat(mut root: *mut *mut node) -> libc::c_float {
    let mut avg: libc::c_float = 0.;
    let mut sum: libc::c_float = 0 as libc::c_int as libc::c_float;
    let mut n: libc::c_int = l_length(root);
    let mut ptr: *mut node = *root;
    if (*ptr).CT == 0 as libc::c_int {
        calculate_ct(root);
    }
    while !ptr.is_null() {
        (*ptr).TAT = (*ptr).CT - (*ptr).AT;
        sum += (*ptr).TAT as libc::c_float;
        ptr = (*ptr).next;
    }
    avg = sum / n as libc::c_float;
    return avg;
}
#[no_mangle]
pub unsafe extern "C" fn calculate_wt(mut root: *mut *mut node) -> libc::c_float {
    let mut avg: libc::c_float = 0.;
    let mut sum: libc::c_float = 0 as libc::c_int as libc::c_float;
    let mut n: libc::c_int = l_length(root);
    let mut ptr: *mut node = *root;
    if (*ptr).CT == 0 as libc::c_int {
        calculate_ct(root);
    }
    while !ptr.is_null() {
        (*ptr).WT = (*ptr).TAT - (*ptr).BT;
        sum += (*ptr).WT as libc::c_float;
        ptr = (*ptr).next;
    }
    avg = sum / n as libc::c_float;
    return avg;
}
unsafe extern "C" fn test() {
    let mut root: *mut node = 0 as *mut node;
    insert(
        &mut root,
        1 as libc::c_int,
        0 as libc::c_int,
        5 as libc::c_int,
        1 as libc::c_int,
    );
    insert(
        &mut root,
        2 as libc::c_int,
        1 as libc::c_int,
        4 as libc::c_int,
        2 as libc::c_int,
    );
    insert(
        &mut root,
        3 as libc::c_int,
        2 as libc::c_int,
        3 as libc::c_int,
        3 as libc::c_int,
    );
    insert(
        &mut root,
        4 as libc::c_int,
        3 as libc::c_int,
        2 as libc::c_int,
        4 as libc::c_int,
    );
    insert(
        &mut root,
        5 as libc::c_int,
        4 as libc::c_int,
        1 as libc::c_int,
        5 as libc::c_int,
    );
    let mut avgCT: libc::c_float = calculate_ct(&mut root);
    let mut avgTAT: libc::c_float = calculate_tat(&mut root);
    let mut avgWT: libc::c_float = calculate_wt(&mut root);
    if avgCT == 11 as libc::c_int as libc::c_float {} else {
        __assert_fail(
            b"avgCT == 11\0" as *const u8 as *const libc::c_char,
            b"program_009.c\0" as *const u8 as *const libc::c_char,
            351 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<&[u8; 12], &[libc::c_char; 12]>(b"void test()\0"))
                .as_ptr(),
        );
    };
    if avgTAT == 9 as libc::c_int as libc::c_float {} else {
        __assert_fail(
            b"avgTAT == 9\0" as *const u8 as *const libc::c_char,
            b"program_009.c\0" as *const u8 as *const libc::c_char,
            352 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<&[u8; 12], &[libc::c_char; 12]>(b"void test()\0"))
                .as_ptr(),
        );
    };
    if avgWT == 6 as libc::c_int as libc::c_float {} else {
        __assert_fail(
            b"avgWT == 6\0" as *const u8 as *const libc::c_char,
            b"program_009.c\0" as *const u8 as *const libc::c_char,
            353 as libc::c_int as libc::c_uint,
            (*::core::mem::transmute::<&[u8; 12], &[libc::c_char; 12]>(b"void test()\0"))
                .as_ptr(),
        );
    };
    printf(
        b"[+] All tests have successfully passed!\n\0" as *const u8
            as *const libc::c_char,
    );
}
unsafe fn main_0() -> libc::c_int {
    test();
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
