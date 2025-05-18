use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub id: libc::c_int,
    pub vertex: libc::c_int,
    pub next: *mut Node,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct TNode {
    pub g: libc::c_int,
    pub f: libc::c_int,
    pub id: libc::c_int,
    pub prev: *mut TNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Heap {
    pub size: libc::c_int,
    pub capacity: libc::c_int,
    pub data: *mut *mut TNode,
}
#[no_mangle]
pub unsafe extern "C" fn heap_empty(mut heap: *mut Heap) -> libc::c_int {
    return ((*heap).size == 0 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn heap_swap(
    mut heap: *mut Heap,
    mut pos1: libc::c_int,
    mut pos2: libc::c_int,
) {
    let mut tmp: *mut TNode = *((*heap).data).offset(pos1 as isize);
    let ref mut fresh0 = *((*heap).data).offset(pos1 as isize);
    *fresh0 = *((*heap).data).offset(pos2 as isize);
    let ref mut fresh1 = *((*heap).data).offset(pos2 as isize);
    *fresh1 = tmp;
}
#[no_mangle]
pub unsafe extern "C" fn heap_hold(mut heap: *mut Heap, mut pos: libc::c_int) {
    let mut left: libc::c_int = 2 as libc::c_int * pos + 1 as libc::c_int;
    let mut right: libc::c_int = 2 as libc::c_int * pos + 2 as libc::c_int;
    let mut minpos: libc::c_int = pos;
    if right < (*heap).size
        && (**((*heap).data).offset(right as isize)).f
            < (**((*heap).data).offset(minpos as isize)).f
    {
        minpos = right;
    }
    if left < (*heap).size
        && (**((*heap).data).offset(left as isize)).f
            < (**((*heap).data).offset(minpos as isize)).f
    {
        minpos = left;
    }
    if minpos != pos {
        heap_swap(heap, minpos, pos);
        heap_hold(heap, minpos);
    }
}
#[no_mangle]
pub unsafe extern "C" fn init_heap() -> *mut Heap {
    let mut heap: *mut Heap = malloc(::core::mem::size_of::<Heap>() as libc::c_ulong)
        as *mut Heap;
    (*heap).size = 0 as libc::c_int;
    (*heap).capacity = 100 as libc::c_int;
    (*heap)
        .data = malloc(
        (::core::mem::size_of::<*mut TNode>() as libc::c_ulong)
            .wrapping_mul((*heap).capacity as libc::c_ulong),
    ) as *mut *mut TNode;
    return heap;
}
#[no_mangle]
pub unsafe extern "C" fn insert_heap(mut heap: *mut Heap, mut new: *mut TNode) {
    let mut currentpos: libc::c_int = (*heap).size;
    let mut parent: libc::c_int = 0;
    let fresh2 = (*heap).size;
    (*heap).size = (*heap).size + 1;
    let ref mut fresh3 = *((*heap).data).offset(fresh2 as isize);
    *fresh3 = new;
    loop {
        parent = (currentpos - 1 as libc::c_int) / 2 as libc::c_int;
        if !(parent >= 0 as libc::c_int) {
            break;
        }
        if (**((*heap).data).offset(currentpos as isize)).f
            >= (**((*heap).data).offset(parent as isize)).f
        {
            break;
        }
        heap_swap(heap, currentpos, parent);
    };
}
#[no_mangle]
pub unsafe extern "C" fn delete_min(mut heap: *mut Heap) -> *mut TNode {
    if heap_empty(heap) != 0 {
        return 0 as *mut TNode;
    }
    let mut retval: *mut TNode = *((*heap).data).offset(0 as libc::c_int as isize);
    (*heap).size -= 1;
    let ref mut fresh4 = *((*heap).data).offset(0 as libc::c_int as isize);
    *fresh4 = *((*heap).data).offset((*heap).size as isize);
    heap_hold(heap, 0 as libc::c_int);
    return retval;
}
#[no_mangle]
pub unsafe extern "C" fn insertsort(mut data: *mut *mut TNode, mut size: libc::c_int) {
    let mut pivot: *mut TNode = 0 as *mut TNode;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 1 as libc::c_int;
    while i < size {
        pivot = *data.offset(i as isize);
        j = i - 1 as libc::c_int;
        while j >= 0 as libc::c_int && (**data.offset(j as isize)).f > (*pivot).f {
            let ref mut fresh5 = *data.offset((j + 1 as libc::c_int) as isize);
            *fresh5 = *data.offset(j as isize);
            j -= 1;
            j;
        }
        let ref mut fresh6 = *data.offset((j + 1 as libc::c_int) as isize);
        *fresh6 = pivot;
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn insertedge(
    mut map: *mut *mut Node,
    mut node1: libc::c_int,
    mut node2: libc::c_int,
    mut vertex: libc::c_int,
) {
    let mut cur: *mut Node = *map.offset(node1 as isize);
    let mut new: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*new).id = node2;
    (*new).vertex = vertex;
    (*new).next = cur;
    let ref mut fresh7 = *map.offset(node1 as isize);
    *fresh7 = new;
}
#[no_mangle]
pub unsafe extern "C" fn find_min_h(
    mut map: *mut *mut Node,
    mut nodeid: libc::c_int,
) -> libc::c_int {
    let mut cur: *mut Node = *map.offset(nodeid as isize);
    let mut h: libc::c_int = 2147483647 as libc::c_int;
    while !cur.is_null() {
        if (*cur).vertex < h {
            h = (*cur).vertex;
        }
        cur = (*cur).next;
    }
    if h == 2147483647 as libc::c_int {
        h = 0 as libc::c_int;
    }
    return h;
}
#[no_mangle]
pub unsafe extern "C" fn displayoutcome(mut node: *mut TNode) {
    printf(b"cost=%d\n\0" as *const u8 as *const libc::c_char, (*node).g);
    while !node.is_null() {
        printf(b"%d <-\0" as *const u8 as *const libc::c_char, (*node).id);
        node = (*node).prev;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn astar(mut map: *mut *mut Node) {
    let mut heap: *mut Heap = init_heap();
    let mut currentnode: *mut TNode = malloc(
        ::core::mem::size_of::<TNode>() as libc::c_ulong,
    ) as *mut TNode;
    (*currentnode).id = 0 as libc::c_int;
    (*currentnode).g = 0 as libc::c_int;
    (*currentnode).prev = 0 as *mut TNode;
    (*currentnode).f = 0 as libc::c_int;
    insert_heap(heap, currentnode);
    let mut neibor: *mut Node = 0 as *mut Node;
    let mut i: libc::c_int = 0;
    let mut htable: [libc::c_int; 13] = [0; 13];
    let mut node: *mut TNode = 0 as *mut TNode;
    i = 0 as libc::c_int;
    while i < 13 as libc::c_int {
        htable[i as usize] = find_min_h(map, i);
        i += 1;
        i;
    }
    while heap_empty(heap) == 0 {
        currentnode = delete_min(heap);
        if (*currentnode).id == 12 as libc::c_int {
            displayoutcome(currentnode);
            break;
        } else {
            neibor = *map.offset((*currentnode).id as isize);
            while !neibor.is_null() {
                node = malloc(::core::mem::size_of::<TNode>() as libc::c_ulong)
                    as *mut TNode;
                (*node).id = (*neibor).id;
                (*node).g = (*currentnode).g + (*neibor).vertex;
                (*node).f = (*node).g + htable[(*node).id as usize];
                (*node).prev = currentnode;
                insert_heap(heap, node);
                neibor = (*neibor).next;
            }
        }
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut map: [*mut Node; 13] = [0 as *mut Node; 13];
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 1 as libc::c_int, 2 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 2 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 3 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 0 as libc::c_int, 4 as libc::c_int, 6 as libc::c_int);
    insertedge(map.as_mut_ptr(), 1 as libc::c_int, 5 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 1 as libc::c_int, 5 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 2 as libc::c_int, 5 as libc::c_int, 9 as libc::c_int);
    insertedge(map.as_mut_ptr(), 2 as libc::c_int, 7 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 3 as libc::c_int, 5 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 3 as libc::c_int, 7 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 4 as libc::c_int, 6 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 4 as libc::c_int, 7 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 5 as libc::c_int, 8 as libc::c_int, 6 as libc::c_int);
    insertedge(map.as_mut_ptr(), 5 as libc::c_int, 10 as libc::c_int, 7 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 8 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 9 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 6 as libc::c_int, 11 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 9 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 10 as libc::c_int, 4 as libc::c_int);
    insertedge(map.as_mut_ptr(), 7 as libc::c_int, 11 as libc::c_int, 5 as libc::c_int);
    insertedge(map.as_mut_ptr(), 8 as libc::c_int, 12 as libc::c_int, 3 as libc::c_int);
    insertedge(map.as_mut_ptr(), 9 as libc::c_int, 12 as libc::c_int, 1 as libc::c_int);
    insertedge(map.as_mut_ptr(), 10 as libc::c_int, 12 as libc::c_int, 2 as libc::c_int);
    insertedge(map.as_mut_ptr(), 11 as libc::c_int, 12 as libc::c_int, 5 as libc::c_int);
    astar(map.as_mut_ptr());
    return 0 as libc::c_int;
}
pub fn main() {
    let mut args: Vec::<*mut libc::c_char> = Vec::new();
    for arg in ::std::env::args() {
        args.push(
            (::std::ffi::CString::new(arg))
                .expect("Failed to convert argument into CString.")
                .into_raw(),
        );
    }
    args.push(::core::ptr::null_mut());
    unsafe {
        ::std::process::exit(
            main_0(
                (args.len() - 1) as libc::c_int,
                args.as_mut_ptr() as *mut *const libc::c_char,
            ) as i32,
        )
    }
}
