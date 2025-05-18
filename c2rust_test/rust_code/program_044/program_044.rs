use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct MinHeapNode {
    pub data: libc::c_char,
    pub freq: libc::c_uint,
    pub left: *mut MinHeapNode,
    pub right: *mut MinHeapNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct MinHeap {
    pub size: libc::c_uint,
    pub capacity: libc::c_uint,
    pub nodes: *mut *mut MinHeapNode,
}
#[no_mangle]
pub unsafe extern "C" fn newNode(
    mut data: libc::c_char,
    mut freq: libc::c_uint,
) -> *mut MinHeapNode {
    let mut node: *mut MinHeapNode = malloc(
        ::core::mem::size_of::<MinHeapNode>() as libc::c_ulong,
    ) as *mut MinHeapNode;
    (*node).data = data;
    (*node).freq = freq;
    (*node).right = 0 as *mut MinHeapNode;
    (*node).left = (*node).right;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn createMinHeap(mut capacity: libc::c_int) -> *mut MinHeap {
    let mut heap: *mut MinHeap = malloc(
        ::core::mem::size_of::<MinHeap>() as libc::c_ulong,
    ) as *mut MinHeap;
    (*heap).size = 0 as libc::c_int as libc::c_uint;
    (*heap).capacity = capacity as libc::c_uint;
    (*heap)
        .nodes = malloc(
        (::core::mem::size_of::<MinHeapNode>() as libc::c_ulong)
            .wrapping_mul(capacity as libc::c_ulong),
    ) as *mut *mut MinHeapNode;
    return heap;
}
#[no_mangle]
pub unsafe extern "C" fn swapMinheapNodes(
    mut a: *mut *mut MinHeapNode,
    mut b: *mut *mut MinHeapNode,
) {
    let mut t: *mut MinHeapNode = *a;
    *a = *b;
    *b = t;
}
#[no_mangle]
pub unsafe extern "C" fn minHeapify(mut heap: *mut MinHeap, mut i: libc::c_int) {
    let mut l: libc::c_int = 2 as libc::c_int * i + 1 as libc::c_int;
    let mut r: libc::c_int = 2 as libc::c_int * i + 2 as libc::c_int;
    let mut smallest: libc::c_int = i;
    let mut n: libc::c_int = (*heap).size as libc::c_int;
    if l < n
        && (**((*heap).nodes).offset(l as isize)).freq
            < (**((*heap).nodes).offset(smallest as isize)).freq
    {
        smallest = l;
    }
    if r < n
        && (**((*heap).nodes).offset(r as isize)).freq
            < (**((*heap).nodes).offset(smallest as isize)).freq
    {
        smallest = r;
    }
    if smallest != i {
        swapMinheapNodes(
            &mut *((*heap).nodes).offset(i as isize),
            &mut *((*heap).nodes).offset(smallest as isize),
        );
        minHeapify(heap, smallest);
    }
}
#[no_mangle]
pub unsafe extern "C" fn isSizeOne(mut heap: *mut MinHeap) -> libc::c_int {
    return ((*heap).size == 1 as libc::c_int as libc::c_uint) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn extractMin(mut heap: *mut MinHeap) -> *mut MinHeapNode {
    let mut root: *mut MinHeapNode = *((*heap).nodes).offset(0 as libc::c_int as isize);
    let ref mut fresh0 = *((*heap).nodes).offset(0 as libc::c_int as isize);
    *fresh0 = *((*heap).nodes)
        .offset(((*heap).size).wrapping_sub(1 as libc::c_int as libc::c_uint) as isize);
    (*heap).size = ((*heap).size).wrapping_sub(1);
    (*heap).size;
    minHeapify(heap, 0 as libc::c_int);
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn insertMinHeap(
    mut heap: *mut MinHeap,
    mut node: *mut MinHeapNode,
) {
    let mut i: libc::c_int = (*heap).size as libc::c_int;
    (*heap).size = ((*heap).size).wrapping_add(1);
    (*heap).size;
    while i != 0
        && (*node).freq
            < (**((*heap).nodes)
                .offset(((i - 1 as libc::c_int) / 2 as libc::c_int) as isize))
                .freq
    {
        let ref mut fresh1 = *((*heap).nodes).offset(i as isize);
        *fresh1 = *((*heap).nodes)
            .offset(((i - 1 as libc::c_int) / 2 as libc::c_int) as isize);
        i = (i - 1 as libc::c_int) / 2 as libc::c_int;
    }
    let ref mut fresh2 = *((*heap).nodes).offset(i as isize);
    *fresh2 = node;
}
#[no_mangle]
pub unsafe extern "C" fn printarray(mut A: *mut libc::c_int, mut n: libc::c_int) {
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < n {
        printf(b"%d\0" as *const u8 as *const libc::c_char, *A.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn isLeaf(mut node: *mut MinHeapNode) -> libc::c_int {
    return (((*node).left).is_null() && ((*node).right).is_null()) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn buildMinHeap(mut heap: *mut MinHeap) {
    let mut i: libc::c_int = ((*heap).size)
        .wrapping_sub(1 as libc::c_int as libc::c_uint)
        .wrapping_div(2 as libc::c_int as libc::c_uint) as libc::c_int;
    while i > 0 as libc::c_int {
        minHeapify(heap, i);
        i -= 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn createAndBuildHeap(
    mut data: *mut libc::c_char,
    mut freq: *mut libc::c_int,
    mut size: libc::c_int,
) -> *mut MinHeap {
    let mut heap: *mut MinHeap = createMinHeap(size);
    (*heap).size = size as libc::c_uint;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < size {
        let ref mut fresh3 = *((*heap).nodes).offset(i as isize);
        *fresh3 = newNode(
            *data.offset(i as isize),
            *freq.offset(i as isize) as libc::c_uint,
        );
        i += 1;
        i;
    }
    buildMinHeap(heap);
    return heap;
}
#[no_mangle]
pub unsafe extern "C" fn buildHuffmanTree(
    mut data: *mut libc::c_char,
    mut freq: *mut libc::c_int,
    mut size: libc::c_int,
) -> *mut MinHeapNode {
    let mut left: *mut MinHeapNode = 0 as *mut MinHeapNode;
    let mut right: *mut MinHeapNode = 0 as *mut MinHeapNode;
    let mut top: *mut MinHeapNode = 0 as *mut MinHeapNode;
    let mut heap: *mut MinHeap = createAndBuildHeap(data, freq, size);
    while isSizeOne(heap) == 0 {
        left = extractMin(heap);
        right = extractMin(heap);
        top = newNode(
            '#' as i32 as libc::c_char,
            ((*left).freq).wrapping_add((*right).freq),
        );
        (*top).left = left;
        (*top).right = right;
        insertMinHeap(heap, top);
    }
    return extractMin(heap);
}
#[no_mangle]
pub unsafe extern "C" fn pritCodes(
    mut root: *mut MinHeapNode,
    mut A: *mut libc::c_int,
    mut level: libc::c_int,
) {
    if !((*root).left).is_null() {
        *A.offset(level as isize) = 0 as libc::c_int;
        pritCodes((*root).left, A, level + 1 as libc::c_int);
    }
    if !((*root).right).is_null() {
        *A.offset(level as isize) = 1 as libc::c_int;
        pritCodes((*root).right, A, level + 1 as libc::c_int);
    }
    if isLeaf(root) != 0 {
        printf(
            b"%c : \0" as *const u8 as *const libc::c_char,
            (*root).data as libc::c_int,
        );
        printarray(A, level);
    }
}
#[no_mangle]
pub unsafe extern "C" fn HuffmanCodes(
    mut data: *mut libc::c_char,
    mut freq: *mut libc::c_int,
    mut size: libc::c_int,
) {
    let mut root: *mut MinHeapNode = buildHuffmanTree(data, freq, size);
    let mut A: [libc::c_int; 30] = [0; 30];
    pritCodes(root, A.as_mut_ptr(), 0 as libc::c_int);
}
unsafe fn main_0() -> libc::c_int {
    let mut C: [libc::c_char; 6] = [
        'a' as i32 as libc::c_char,
        'b' as i32 as libc::c_char,
        'c' as i32 as libc::c_char,
        'd' as i32 as libc::c_char,
        'e' as i32 as libc::c_char,
        'f' as i32 as libc::c_char,
    ];
    let mut F: [libc::c_int; 6] = [
        5 as libc::c_int,
        9 as libc::c_int,
        12 as libc::c_int,
        13 as libc::c_int,
        16 as libc::c_int,
        45 as libc::c_int,
    ];
    HuffmanCodes(
        C.as_mut_ptr(),
        F.as_mut_ptr(),
        (::core::mem::size_of::<[libc::c_char; 6]>() as libc::c_ulong)
            .wrapping_div(::core::mem::size_of::<libc::c_char>() as libc::c_ulong)
            as libc::c_int,
    );
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
