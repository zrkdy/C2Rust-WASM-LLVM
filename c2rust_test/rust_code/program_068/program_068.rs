use ::libc;
extern "C" {
    pub type _IO_wide_data;
    pub type _IO_codecvt;
    pub type _IO_marker;
    static mut stderr: *mut FILE;
    fn fprintf(_: *mut FILE, _: *const libc::c_char, _: ...) -> libc::c_int;
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn calloc(_: libc::c_ulong, _: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
    fn abort() -> !;
    fn __assert_fail(
        __assertion: *const libc::c_char,
        __file: *const libc::c_char,
        __line: libc::c_uint,
        __function: *const libc::c_char,
    ) -> !;
}
pub type size_t = libc::c_ulong;
pub type __off_t = libc::c_long;
pub type __off64_t = libc::c_long;
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
#[derive(Copy, Clone)]
#[repr(C)]
pub struct element {
    pub key: libc::c_int,
    pub value: libc::c_int,
}
pub type element_0 = *mut element;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct list {
    pub data: element_0,
    pub next: *mut list,
}
pub type list_0 = *mut list;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct chain {
    pub list: list_0,
}
pub type chain_0 = *mut chain;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct table {
    pub capacity: libc::c_int,
    pub size: libc::c_int,
    pub buckets: *mut chain_0,
}
pub type table_0 = *mut table;
#[no_mangle]
pub unsafe extern "C" fn xmalloc(mut capacity: size_t) -> *mut libc::c_void {
    let mut p: *mut libc::c_void = malloc(capacity);
    if p.is_null() {
        fprintf(stderr, b"allocation failed\n\0" as *const u8 as *const libc::c_char);
        abort();
    }
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn xcalloc(
    mut nobj: size_t,
    mut capacity: size_t,
) -> *mut libc::c_void {
    let mut p: *mut libc::c_void = calloc(nobj, capacity);
    if p.is_null() {
        fprintf(stderr, b"allocation failed\n\0" as *const u8 as *const libc::c_char);
        abort();
    }
    return p;
}
#[no_mangle]
pub unsafe extern "C" fn deleteList(mut p: list_0) {
    let mut q: list_0 = 0 as *mut list;
    while !p.is_null() {
        if !((*p).data).is_null() {
            free((*p).data as *mut libc::c_void);
        }
        q = (*p).next;
        free(p as *mut libc::c_void);
        p = q;
    }
}
#[no_mangle]
pub unsafe extern "C" fn newChain() -> chain_0 {
    let mut C: chain_0 = xmalloc(::core::mem::size_of::<chain>() as libc::c_ulong)
        as chain_0;
    (*C).list = 0 as list_0;
    return C;
}
#[no_mangle]
pub unsafe extern "C" fn findInChain(
    mut H: table_0,
    mut C: chain_0,
    mut key: libc::c_int,
) -> list_0 {
    let mut p: list_0 = (*C).list;
    while !p.is_null() {
        if key == (*(*p).data).key {
            return p;
        }
        p = (*p).next;
    }
    return 0 as list_0;
}
#[no_mangle]
pub unsafe extern "C" fn insertInChain(
    mut H: table_0,
    mut C: chain_0,
    mut e: element_0,
) -> element_0 {
    let mut p: list_0 = findInChain(H, C, (*e).key);
    if p.is_null() {
        let mut new_item: list_0 = xmalloc(
            ::core::mem::size_of::<list>() as libc::c_ulong,
        ) as list_0;
        (*new_item).data = e;
        (*new_item).next = (*C).list;
        (*C).list = new_item;
        return 0 as element_0;
    } else {
        let mut oldElement: element_0 = (*p).data;
        (*p).data = e;
        return oldElement;
    };
}
#[no_mangle]
pub unsafe extern "C" fn searchInChain(
    mut H: table_0,
    mut C: chain_0,
    mut key: libc::c_int,
) -> element_0 {
    let mut p: list_0 = findInChain(H, C, key);
    if p.is_null() { return 0 as element_0 } else { return (*p).data };
}
#[no_mangle]
pub unsafe extern "C" fn deleteChain(mut C: chain_0) {
    deleteList((*C).list);
    free(C as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn hash(
    mut key: libc::c_int,
    mut capacity: libc::c_int,
) -> libc::c_int {
    return key % capacity;
}
#[no_mangle]
pub unsafe extern "C" fn newHashTable(mut capacity: libc::c_int) -> table_0 {
    let mut A: *mut chain_0 = xcalloc(
        capacity as size_t,
        ::core::mem::size_of::<chain_0>() as libc::c_ulong,
    ) as *mut chain_0;
    let mut H: table_0 = xmalloc(::core::mem::size_of::<table>() as libc::c_ulong)
        as table_0;
    (*H).capacity = capacity;
    (*H).size = 0 as libc::c_int;
    (*H).buckets = A;
    return H;
}
#[no_mangle]
pub unsafe extern "C" fn put(mut H: table_0, mut e: element_0) -> element_0 {
    let mut oldElement: element_0 = 0 as *mut element;
    let mut key: libc::c_int = (*e).key;
    let mut h: libc::c_int = hash(key, (*H).capacity);
    if (*((*H).buckets).offset(h as isize)).is_null() {
        let ref mut fresh0 = *((*H).buckets).offset(h as isize);
        *fresh0 = newChain();
    }
    oldElement = insertInChain(H, *((*H).buckets).offset(h as isize), e);
    if !oldElement.is_null() {
        return oldElement;
    }
    (*H).size += 1;
    (*H).size;
    return 0 as element_0;
}
#[no_mangle]
pub unsafe extern "C" fn get(mut H: table_0, mut key: libc::c_int) -> element_0 {
    let mut h: libc::c_int = hash(key, (*H).capacity);
    if (*((*H).buckets).offset(h as isize)).is_null() {
        return 0 as element_0;
    }
    let mut e: element_0 = searchInChain(H, *((*H).buckets).offset(h as isize), key);
    return e;
}
#[no_mangle]
pub unsafe extern "C" fn deleteHashTable(mut H: table_0) {
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < (*H).capacity {
        let mut C: chain_0 = *((*H).buckets).offset(i as isize);
        if !C.is_null() {
            deleteChain(C);
        }
        i += 1;
        i;
    }
    free((*H).buckets as *mut libc::c_void);
    free(H as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn deleteElement(mut e: element_0) {
    free(e as *mut libc::c_void);
}
unsafe fn main_0() -> libc::c_int {
    let mut n: libc::c_int = 100 as libc::c_int;
    let mut capacity: libc::c_int = 5 as libc::c_int;
    let mut num_tests: libc::c_int = 5 as libc::c_int;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    printf(
        b"Testing buckets of capacity %d with %d values, %d times\n\0" as *const u8
            as *const libc::c_char,
        capacity,
        n,
        num_tests,
    );
    j = 0 as libc::c_int;
    while j < num_tests {
        let mut H: table_0 = newHashTable(capacity);
        i = 0 as libc::c_int;
        while i < n {
            let mut e: element_0 = xmalloc(
                ::core::mem::size_of::<element>() as libc::c_ulong,
            ) as element_0;
            (*e).key = j * n + i;
            (*e).value = j * n + i;
            put(H, e);
            i += 1;
            i;
        }
        i = 0 as libc::c_int;
        while i < n {
            let mut key: libc::c_int = j * n + i;
            if (*get(H, key)).value == j * n + i {} else {
                __assert_fail(
                    b"((element)get(H, key))->value == j*n+i\0" as *const u8
                        as *const libc::c_char,
                    b"program_068.c\0" as *const u8 as *const libc::c_char,
                    194 as libc::c_int as libc::c_uint,
                    (*::core::mem::transmute::<
                        &[u8; 11],
                        &[libc::c_char; 11],
                    >(b"int main()\0"))
                        .as_ptr(),
                );
            };
            i += 1;
            i;
        }
        i = 0 as libc::c_int;
        while i < n {
            let mut key_0: libc::c_int = (j + 1 as libc::c_int) * n + i;
            if (get(H, key_0)).is_null() {} else {
                __assert_fail(
                    b"get(H, key) == NULL\0" as *const u8 as *const libc::c_char,
                    b"program_068.c\0" as *const u8 as *const libc::c_char,
                    198 as libc::c_int as libc::c_uint,
                    (*::core::mem::transmute::<
                        &[u8; 11],
                        &[libc::c_char; 11],
                    >(b"int main()\0"))
                        .as_ptr(),
                );
            };
            i += 1;
            i;
        }
        deleteHashTable(H);
        j += 1;
        j;
    }
    printf(b"All tests passed!\n\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
