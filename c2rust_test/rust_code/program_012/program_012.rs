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
pub struct Node {
    pub data: libc::c_int,
    pub next: *mut Node,
}
#[no_mangle]
pub unsafe extern "C" fn BucketSort(mut arr: *mut libc::c_int) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut buckets: *mut *mut Node = 0 as *mut *mut Node;
    buckets = malloc(
        (::core::mem::size_of::<*mut Node>() as libc::c_ulong)
            .wrapping_mul(5 as libc::c_int as libc::c_ulong),
    ) as *mut *mut Node;
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        let ref mut fresh0 = *buckets.offset(i as isize);
        *fresh0 = 0 as *mut Node;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < 8 as libc::c_int {
        let mut current: *mut Node = 0 as *mut Node;
        let mut pos: libc::c_int = getBucketIndex(*arr.offset(i as isize));
        current = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
        (*current).data = *arr.offset(i as isize);
        (*current).next = *buckets.offset(pos as isize);
        let ref mut fresh1 = *buckets.offset(pos as isize);
        *fresh1 = current;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        printf(b"Bucket[\"%d\"] : \0" as *const u8 as *const libc::c_char, i);
        printBuckets(*buckets.offset(i as isize));
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        let ref mut fresh2 = *buckets.offset(i as isize);
        *fresh2 = InsertionSort(*buckets.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"--------------\n\0" as *const u8 as *const libc::c_char);
    printf(b"Buckets after sorted\n\0" as *const u8 as *const libc::c_char);
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        printf(b"Bucket[\"%d\"] : \0" as *const u8 as *const libc::c_char, i);
        printBuckets(*buckets.offset(i as isize));
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i += 1;
        i;
    }
    j = 0 as libc::c_int;
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        let mut node: *mut Node = 0 as *mut Node;
        node = *buckets.offset(i as isize);
        while !node.is_null() {
            if j < 8 as libc::c_int {} else {
                __assert_fail(
                    b"j < NARRAY\0" as *const u8 as *const libc::c_char,
                    b"program_012.c\0" as *const u8 as *const libc::c_char,
                    83 as libc::c_int as libc::c_uint,
                    (*::core::mem::transmute::<
                        &[u8; 23],
                        &[libc::c_char; 23],
                    >(b"void BucketSort(int *)\0"))
                        .as_ptr(),
                );
            };
            let fresh3 = j;
            j = j + 1;
            *arr.offset(fresh3 as isize) = (*node).data;
            node = (*node).next;
        }
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < 5 as libc::c_int {
        let mut node_0: *mut Node = 0 as *mut Node;
        node_0 = *buckets.offset(i as isize);
        while !node_0.is_null() {
            let mut tmp: *mut Node = 0 as *mut Node;
            tmp = node_0;
            node_0 = (*node_0).next;
            free(tmp as *mut libc::c_void);
        }
        i += 1;
        i;
    }
    free(buckets as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn InsertionSort(mut list: *mut Node) -> *mut Node {
    let mut k: *mut Node = 0 as *mut Node;
    let mut nodeList: *mut Node = 0 as *mut Node;
    if list.is_null() || ((*list).next).is_null() {
        return list;
    }
    nodeList = list;
    k = (*list).next;
    (*nodeList).next = 0 as *mut Node;
    while !k.is_null() {
        let mut ptr: *mut Node = 0 as *mut Node;
        if (*nodeList).data > (*k).data {
            let mut tmp: *mut Node = 0 as *mut Node;
            tmp = k;
            k = (*k).next;
            (*tmp).next = nodeList;
            nodeList = tmp;
        } else {
            ptr = nodeList;
            while !((*ptr).next).is_null() {
                if (*(*ptr).next).data > (*k).data {
                    break;
                }
                ptr = (*ptr).next;
            }
            if !((*ptr).next).is_null() {
                let mut tmp_0: *mut Node = 0 as *mut Node;
                tmp_0 = k;
                k = (*k).next;
                (*tmp_0).next = (*ptr).next;
                (*ptr).next = tmp_0;
            } else {
                (*ptr).next = k;
                k = (*k).next;
                (*(*ptr).next).next = 0 as *mut Node;
            }
        }
    }
    return nodeList;
}
#[no_mangle]
pub unsafe extern "C" fn getBucketIndex(mut value: libc::c_int) -> libc::c_int {
    return value / 10 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn print(mut ar: *mut libc::c_int) {
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 8 as libc::c_int {
        printf(b"%d \0" as *const u8 as *const libc::c_char, *ar.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn printBuckets(mut list: *mut Node) {
    let mut cur: *mut Node = list;
    while !cur.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*cur).data);
        cur = (*cur).next;
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut array: [libc::c_int; 8] = [
        29 as libc::c_int,
        25 as libc::c_int,
        -(1 as libc::c_int),
        49 as libc::c_int,
        9 as libc::c_int,
        37 as libc::c_int,
        21 as libc::c_int,
        43 as libc::c_int,
    ];
    printf(b"Initial array\n\0" as *const u8 as *const libc::c_char);
    print(array.as_mut_ptr());
    printf(b"------------\n\0" as *const u8 as *const libc::c_char);
    BucketSort(array.as_mut_ptr());
    printf(b"------------\n\0" as *const u8 as *const libc::c_char);
    printf(b"Sorted array\n\0" as *const u8 as *const libc::c_char);
    print(array.as_mut_ptr());
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
