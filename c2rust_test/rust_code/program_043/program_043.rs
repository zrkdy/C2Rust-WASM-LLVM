use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct AdjListNode {
    pub dest: libc::c_int,
    pub weight: libc::c_int,
    pub next: *mut AdjListNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct AdjList {
    pub head: *mut AdjListNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Graph {
    pub v: libc::c_int,
    pub array: *mut AdjList,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct MinHeapNode {
    pub v: libc::c_int,
    pub dist: libc::c_int,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct MinHeap {
    pub size: libc::c_int,
    pub capacity: libc::c_int,
    pub pos: *mut libc::c_int,
    pub array: *mut *mut MinHeapNode,
}
#[no_mangle]
pub unsafe extern "C" fn newAdjListNode(
    mut dest: libc::c_int,
    mut weight: libc::c_int,
) -> *mut AdjListNode {
    let mut newNode: *mut AdjListNode = malloc(
        ::core::mem::size_of::<AdjListNode>() as libc::c_ulong,
    ) as *mut AdjListNode;
    (*newNode).dest = dest;
    (*newNode).weight = weight;
    (*newNode).next = 0 as *mut AdjListNode;
    return newNode;
}
#[no_mangle]
pub unsafe extern "C" fn createGraph(mut v: libc::c_int) -> *mut Graph {
    let mut graph: *mut Graph = malloc(::core::mem::size_of::<Graph>() as libc::c_ulong)
        as *mut Graph;
    (*graph).v = v;
    (*graph)
        .array = malloc(
        (::core::mem::size_of::<AdjList>() as libc::c_ulong)
            .wrapping_mul(v as libc::c_ulong),
    ) as *mut AdjList;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < v {
        let ref mut fresh0 = (*((*graph).array).offset(i as isize)).head;
        *fresh0 = 0 as *mut AdjListNode;
        i += 1;
        i;
    }
    return graph;
}
#[no_mangle]
pub unsafe extern "C" fn AddEdge(
    mut graph: *mut Graph,
    mut src: libc::c_int,
    mut dest: libc::c_int,
    mut weight: libc::c_int,
) {
    let mut newNode: *mut AdjListNode = newAdjListNode(dest, weight);
    (*newNode).next = (*((*graph).array).offset(src as isize)).head;
    let ref mut fresh1 = (*((*graph).array).offset(src as isize)).head;
    *fresh1 = newNode;
    newNode = newAdjListNode(src, weight);
    (*newNode).next = (*((*graph).array).offset(dest as isize)).head;
    let ref mut fresh2 = (*((*graph).array).offset(dest as isize)).head;
    *fresh2 = newNode;
}
#[no_mangle]
pub unsafe extern "C" fn newMinHeapNode(
    mut v: libc::c_int,
    mut dist: libc::c_int,
) -> *mut MinHeapNode {
    let mut minHeapNode: *mut MinHeapNode = malloc(
        ::core::mem::size_of::<MinHeapNode>() as libc::c_ulong,
    ) as *mut MinHeapNode;
    (*minHeapNode).v = v;
    (*minHeapNode).dist = dist;
    return minHeapNode;
}
#[no_mangle]
pub unsafe extern "C" fn createMinHeap(mut capacity: libc::c_int) -> *mut MinHeap {
    let mut minHeap: *mut MinHeap = malloc(
        ::core::mem::size_of::<MinHeap>() as libc::c_ulong,
    ) as *mut MinHeap;
    (*minHeap)
        .pos = malloc(
        (capacity as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    (*minHeap).size = 0 as libc::c_int;
    (*minHeap).capacity = capacity;
    (*minHeap)
        .array = malloc(
        (::core::mem::size_of::<*mut MinHeapNode>() as libc::c_ulong)
            .wrapping_mul(capacity as libc::c_ulong),
    ) as *mut *mut MinHeapNode;
    return minHeap;
}
#[no_mangle]
pub unsafe extern "C" fn swapMinHeapNode(
    mut a: *mut *mut MinHeapNode,
    mut b: *mut *mut MinHeapNode,
) {
    let mut temp: *mut MinHeapNode = *a;
    *a = *b;
    *b = temp;
}
#[no_mangle]
pub unsafe extern "C" fn MinHeapify(mut minHeap: *mut MinHeap, mut i: libc::c_int) {
    let mut l: libc::c_int = 2 as libc::c_int * i + 1 as libc::c_int;
    let mut r: libc::c_int = 2 as libc::c_int * i + 2 as libc::c_int;
    let mut smallest: libc::c_int = i;
    if l < (*minHeap).size
        && (**((*minHeap).array).offset(l as isize)).dist
            < (**((*minHeap).array).offset(smallest as isize)).dist
    {
        smallest = l;
    }
    if r < (*minHeap).size
        && (**((*minHeap).array).offset(r as isize)).dist
            < (**((*minHeap).array).offset(smallest as isize)).dist
    {
        smallest = r;
    }
    if smallest != i {
        let mut smallestnode: *mut MinHeapNode = *((*minHeap).array)
            .offset(smallest as isize);
        let mut iNode: *mut MinHeapNode = *((*minHeap).array).offset(i as isize);
        *((*minHeap).pos).offset((*smallestnode).v as isize) = i;
        *((*minHeap).pos).offset((*iNode).v as isize) = smallest;
        swapMinHeapNode(
            &mut *((*minHeap).array).offset(smallest as isize),
            &mut *((*minHeap).array).offset(i as isize),
        );
        MinHeapify(minHeap, smallest);
    }
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty(mut heap: *mut MinHeap) -> libc::c_int {
    return ((*heap).size == 0 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn decreaseKey(
    mut minHeap: *mut MinHeap,
    mut v: libc::c_int,
    mut dist: libc::c_int,
) {
    let mut i: libc::c_int = *((*minHeap).pos).offset(v as isize);
    (**((*minHeap).array).offset(i as isize)).dist = dist;
    while i != 0
        && (**((*minHeap).array).offset(i as isize)).dist
            < (**((*minHeap).array)
                .offset(((i - 1 as libc::c_int) / 2 as libc::c_int) as isize))
                .dist
    {
        *((*minHeap).pos)
            .offset(
                (**((*minHeap).array).offset(i as isize)).v as isize,
            ) = (i - 1 as libc::c_int) / 2 as libc::c_int;
        *((*minHeap).pos)
            .offset(
                (**((*minHeap).array)
                    .offset(((i - 1 as libc::c_int) / 2 as libc::c_int) as isize))
                    .v as isize,
            ) = i;
        swapMinHeapNode(
            &mut *((*minHeap).array).offset(i as isize),
            &mut *((*minHeap).array)
                .offset(((i - 1 as libc::c_int) / 2 as libc::c_int) as isize),
        );
        i = (i - 1 as libc::c_int) / 2 as libc::c_int;
    }
}
#[no_mangle]
pub unsafe extern "C" fn extractMin(mut minHeap: *mut MinHeap) -> *mut MinHeapNode {
    if isEmpty(minHeap) != 0 {
        return 0 as *mut MinHeapNode;
    }
    let mut root: *mut MinHeapNode = *((*minHeap).array)
        .offset(0 as libc::c_int as isize);
    let mut lastNode: *mut MinHeapNode = *((*minHeap).array)
        .offset(((*minHeap).size - 1 as libc::c_int) as isize);
    let ref mut fresh3 = *((*minHeap).array).offset(0 as libc::c_int as isize);
    *fresh3 = lastNode;
    *((*minHeap).pos).offset((*root).v as isize) = (*minHeap).size - 1 as libc::c_int;
    *((*minHeap).pos).offset((*lastNode).v as isize) = 0 as libc::c_int;
    (*minHeap).size -= 1;
    (*minHeap).size;
    MinHeapify(minHeap, 0 as libc::c_int);
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn isInMinHeap(
    mut minHeap: *mut MinHeap,
    mut v: libc::c_int,
) -> libc::c_int {
    if *((*minHeap).pos).offset(v as isize) < (*minHeap).size {
        return 1 as libc::c_int
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn printpath(mut parent: *mut libc::c_int, mut v: libc::c_int) {
    if *parent.offset(v as isize) == v {
        return;
    }
    printpath(parent, *parent.offset(v as isize));
    printf(b"%d->\0" as *const u8 as *const libc::c_char, *parent.offset(v as isize));
}
#[no_mangle]
pub unsafe extern "C" fn printarr(
    mut dist: *mut libc::c_int,
    mut n: libc::c_int,
    mut parent: *mut libc::c_int,
) {
    printf(
        b"Vertex   distance from Source   Path\n\0" as *const u8 as *const libc::c_char,
    );
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < n {
        printf(
            b"%d \t\t%d   \t\t\0" as *const u8 as *const libc::c_char,
            i,
            *dist.offset(i as isize),
        );
        printpath(parent, i);
        printf(b"%d\n\0" as *const u8 as *const libc::c_char, i);
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn dijkstra(mut graph: *mut Graph, mut src: libc::c_int) {
    let mut V: libc::c_int = (*graph).v;
    let mut minHeap: *mut MinHeap = createMinHeap(V);
    let vla = V as usize;
    let mut dist: Vec::<libc::c_int> = ::std::vec::from_elem(0, vla);
    (*minHeap).size = V;
    let vla_0 = V as usize;
    let mut parent: Vec::<libc::c_int> = ::std::vec::from_elem(0, vla_0);
    *parent.as_mut_ptr().offset(src as isize) = src;
    let mut v: libc::c_int = 0 as libc::c_int;
    while v < V {
        *dist.as_mut_ptr().offset(v as isize) = 2147483647 as libc::c_int;
        let ref mut fresh4 = *((*minHeap).array).offset(v as isize);
        *fresh4 = newMinHeapNode(v, 2147483647 as libc::c_int);
        *((*minHeap).pos).offset(v as isize) = v;
        v += 1;
        v;
    }
    *dist.as_mut_ptr().offset(src as isize) = 0 as libc::c_int;
    decreaseKey(minHeap, src, *dist.as_mut_ptr().offset(src as isize));
    while isEmpty(minHeap) == 0 {
        let mut minNode: *mut MinHeapNode = extractMin(minHeap);
        let mut u: libc::c_int = (*minNode).v;
        let mut crawl: *mut AdjListNode = (*((*graph).array).offset(u as isize)).head;
        while !crawl.is_null() {
            let mut v_0: libc::c_int = (*crawl).dest;
            if isInMinHeap(minHeap, v_0) != 0
                && *dist.as_mut_ptr().offset(u as isize) != 2147483647 as libc::c_int
                && *dist.as_mut_ptr().offset(u as isize) + (*crawl).weight
                    < *dist.as_mut_ptr().offset(v_0 as isize)
            {
                *dist
                    .as_mut_ptr()
                    .offset(
                        v_0 as isize,
                    ) = (*crawl).weight + *dist.as_mut_ptr().offset(u as isize);
                *parent.as_mut_ptr().offset(v_0 as isize) = u;
                decreaseKey(minHeap, v_0, *dist.as_mut_ptr().offset(v_0 as isize));
            }
            crawl = (*crawl).next;
        }
    }
    printarr(dist.as_mut_ptr(), V, parent.as_mut_ptr());
}
unsafe fn main_0() -> libc::c_int {
    let mut V: libc::c_int = 9 as libc::c_int;
    let mut graph: *mut Graph = createGraph(V);
    AddEdge(graph, 0 as libc::c_int, 1 as libc::c_int, 4 as libc::c_int);
    AddEdge(graph, 0 as libc::c_int, 7 as libc::c_int, 8 as libc::c_int);
    AddEdge(graph, 1 as libc::c_int, 2 as libc::c_int, 8 as libc::c_int);
    AddEdge(graph, 1 as libc::c_int, 7 as libc::c_int, 11 as libc::c_int);
    AddEdge(graph, 2 as libc::c_int, 3 as libc::c_int, 7 as libc::c_int);
    AddEdge(graph, 2 as libc::c_int, 8 as libc::c_int, 2 as libc::c_int);
    AddEdge(graph, 2 as libc::c_int, 5 as libc::c_int, 4 as libc::c_int);
    AddEdge(graph, 3 as libc::c_int, 4 as libc::c_int, 9 as libc::c_int);
    AddEdge(graph, 3 as libc::c_int, 5 as libc::c_int, 14 as libc::c_int);
    AddEdge(graph, 4 as libc::c_int, 5 as libc::c_int, 10 as libc::c_int);
    AddEdge(graph, 5 as libc::c_int, 6 as libc::c_int, 2 as libc::c_int);
    AddEdge(graph, 6 as libc::c_int, 7 as libc::c_int, 1 as libc::c_int);
    AddEdge(graph, 6 as libc::c_int, 8 as libc::c_int, 6 as libc::c_int);
    AddEdge(graph, 7 as libc::c_int, 8 as libc::c_int, 7 as libc::c_int);
    dijkstra(graph, 1 as libc::c_int);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
