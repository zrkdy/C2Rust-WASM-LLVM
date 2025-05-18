use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Stack {
    pub data: libc::c_int,
    pub next: *mut Stack,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Graph {
    pub v: libc::c_int,
    pub array: *mut AdjList,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct AdjList {
    pub head: *mut edge,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct edge {
    pub dest: libc::c_int,
    pub next: *mut edge,
}
#[no_mangle]
pub static mut stop: *mut Stack = 0 as *const Stack as *mut Stack;
#[no_mangle]
pub unsafe extern "C" fn isempty() -> libc::c_int {
    if stop.is_null() { return 1 as libc::c_int } else { return 0 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn push(mut data: libc::c_int) {
    let mut newnode: *mut Stack = malloc(
        ::core::mem::size_of::<Stack>() as libc::c_ulong,
    ) as *mut Stack;
    (*newnode).data = data;
    (*newnode).next = stop;
    stop = newnode;
}
#[no_mangle]
pub unsafe extern "C" fn pop() {
    if stop.is_null() {
        return;
    }
    let mut node: *mut Stack = stop;
    stop = (*stop).next;
    free(node as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn top() -> libc::c_int {
    return (*stop).data;
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
        *fresh0 = 0 as *mut edge;
        i += 1;
        i;
    }
    return graph;
}
#[no_mangle]
pub unsafe extern "C" fn addEdge(
    mut graph: *mut Graph,
    mut src: libc::c_int,
    mut dest: libc::c_int,
) {
    let mut newnode: *mut edge = malloc(::core::mem::size_of::<edge>() as libc::c_ulong)
        as *mut edge;
    (*newnode).dest = dest;
    (*newnode).next = (*((*graph).array).offset(src as isize)).head;
    let ref mut fresh1 = (*((*graph).array).offset(src as isize)).head;
    *fresh1 = newnode;
}
#[no_mangle]
pub unsafe extern "C" fn tSortutil(
    mut graph: *mut Graph,
    mut v: libc::c_int,
    mut visited: *mut libc::c_int,
) {
    *visited.offset(v as isize) = 1 as libc::c_int;
    let mut crawl: *mut edge = 0 as *mut edge;
    crawl = (*((*graph).array).offset(v as isize)).head;
    while !crawl.is_null() {
        if *visited.offset((*crawl).dest as isize) == 0 {
            tSortutil(graph, (*crawl).dest, visited);
        }
        crawl = (*crawl).next;
    }
    push(v);
}
#[no_mangle]
pub unsafe extern "C" fn TopologicalSort(mut graph: *mut Graph) {
    stop = 0 as *mut Stack;
    let mut visited: *mut libc::c_int = malloc(
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul((*graph).v as libc::c_ulong),
    ) as *mut libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < (*graph).v {
        *visited.offset(i as isize) = 0 as libc::c_int;
        i += 1;
        i;
    }
    let mut i_0: libc::c_int = 0 as libc::c_int;
    while i_0 < (*graph).v {
        if *visited.offset(i_0 as isize) == 0 as libc::c_int {
            tSortutil(graph, i_0, visited);
        }
        i_0 += 1;
        i_0;
    }
    while isempty() == 0 {
        printf(b"%d \0" as *const u8 as *const libc::c_char, top());
        pop();
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut graph: *mut Graph = createGraph(6 as libc::c_int);
    addEdge(graph, 5 as libc::c_int, 2 as libc::c_int);
    addEdge(graph, 5 as libc::c_int, 0 as libc::c_int);
    addEdge(graph, 4 as libc::c_int, 0 as libc::c_int);
    addEdge(graph, 4 as libc::c_int, 1 as libc::c_int);
    addEdge(graph, 2 as libc::c_int, 3 as libc::c_int);
    addEdge(graph, 3 as libc::c_int, 1 as libc::c_int);
    printf(
        b"Topological Sort for given graph is: \0" as *const u8 as *const libc::c_char,
    );
    TopologicalSort(graph);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
