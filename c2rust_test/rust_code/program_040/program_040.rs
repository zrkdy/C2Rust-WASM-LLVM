use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
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
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Stack {
    pub data: libc::c_int,
    pub next: *mut Stack,
}
#[no_mangle]
pub static mut stack: *mut Stack = 0 as *const Stack as *mut Stack;
#[no_mangle]
pub unsafe extern "C" fn top() -> libc::c_int {
    if stack.is_null() {
        return -(1 as libc::c_int);
    }
    return (*stack).data;
}
#[no_mangle]
pub unsafe extern "C" fn pop() {
    if stack.is_null() {
        return;
    }
    let mut node: *mut Stack = stack;
    stack = (*stack).next;
    free(node as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty() -> libc::c_int {
    if stack.is_null() { return 1 as libc::c_int } else { return 0 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn push(mut data: libc::c_int) {
    let mut node: *mut Stack = malloc(::core::mem::size_of::<Stack>() as libc::c_ulong)
        as *mut Stack;
    (*node).data = data;
    (*node).next = stack;
    stack = node;
}
#[no_mangle]
pub unsafe extern "C" fn createGraph(mut v: libc::c_int) -> *mut Graph {
    let mut graph: *mut Graph = malloc(
        (::core::mem::size_of::<Graph>() as libc::c_ulong)
            .wrapping_mul(v as libc::c_ulong),
    ) as *mut Graph;
    (*graph).v = v;
    (*graph)
        .array = malloc(
        (::core::mem::size_of::<AdjList>() as libc::c_ulong)
            .wrapping_mul(v as libc::c_ulong),
    ) as *mut AdjList;
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < (*graph).v {
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
    let mut newedge: *mut edge = malloc(::core::mem::size_of::<edge>() as libc::c_ulong)
        as *mut edge;
    (*newedge).dest = dest;
    (*newedge).next = (*((*graph).array).offset(src as isize)).head;
    let ref mut fresh1 = (*((*graph).array).offset(src as isize)).head;
    *fresh1 = newedge;
}
#[no_mangle]
pub unsafe extern "C" fn Transpose(mut graph: *mut Graph) -> *mut Graph {
    let mut tgraph: *mut Graph = createGraph((*graph).v);
    let mut i: libc::c_int = 0 as libc::c_int;
    while i < (*graph).v {
        let mut crawl: *mut edge = 0 as *mut edge;
        crawl = (*((*graph).array).offset(i as isize)).head;
        while !crawl.is_null() {
            let mut newedge: *mut edge = malloc(
                ::core::mem::size_of::<edge>() as libc::c_ulong,
            ) as *mut edge;
            (*newedge).dest = i;
            (*newedge).next = (*((*tgraph).array).offset((*crawl).dest as isize)).head;
            let ref mut fresh2 = (*((*tgraph).array).offset((*crawl).dest as isize))
                .head;
            *fresh2 = newedge;
            crawl = (*crawl).next;
        }
        i += 1;
        i;
    }
    return tgraph;
}
#[no_mangle]
pub unsafe extern "C" fn DFSutil(
    mut graph: *mut Graph,
    mut v: libc::c_int,
    mut visited: *mut libc::c_int,
) {
    *visited.offset(v as isize) = 1 as libc::c_int;
    printf(b"%d \0" as *const u8 as *const libc::c_char, v);
    let mut crawl: *mut edge = 0 as *mut edge;
    crawl = (*((*graph).array).offset(v as isize)).head;
    while !crawl.is_null() {
        if *visited.offset((*crawl).dest as isize) == 0 {
            DFSutil(graph, (*crawl).dest, visited);
        }
        crawl = (*crawl).next;
    }
}
#[no_mangle]
pub unsafe extern "C" fn fillOrder(
    mut graph: *mut Graph,
    mut v: libc::c_int,
    mut visisted: *mut libc::c_int,
) {
    *visisted.offset(v as isize) = 1 as libc::c_int;
    let mut crawl: *mut edge = 0 as *mut edge;
    crawl = (*((*graph).array).offset(v as isize)).head;
    while !crawl.is_null() {
        if *visisted.offset((*crawl).dest as isize) == 0 {
            fillOrder(graph, (*crawl).dest, visisted);
        }
        crawl = (*crawl).next;
    }
    push(v);
}
#[no_mangle]
pub unsafe extern "C" fn printSCC(mut graph: *mut Graph) {
    stack = 0 as *mut Stack;
    let mut i: libc::c_int = 0;
    let mut visisted: *mut libc::c_int = malloc(
        (::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
            .wrapping_mul((*graph).v as libc::c_ulong),
    ) as *mut libc::c_int;
    i = 0 as libc::c_int;
    while i < (*graph).v {
        *visisted.offset(i as isize) = 0 as libc::c_int;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while i < (*graph).v {
        if *visisted.offset(i as isize) == 0 {
            fillOrder(graph, i, visisted);
        }
        i += 1;
        i;
    }
    let mut revgraph: *mut Graph = Transpose(graph);
    i = 0 as libc::c_int;
    while i < (*graph).v {
        *visisted.offset(i as isize) = 0 as libc::c_int;
        i += 1;
        i;
    }
    while isEmpty() == 0 {
        let mut v: libc::c_int = top();
        pop();
        if *visisted.offset(v as isize) == 0 {
            DFSutil(revgraph, v, visisted);
            printf(b"\n\0" as *const u8 as *const libc::c_char);
        }
    }
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut v: libc::c_int = 5 as libc::c_int;
    let mut graph: *mut Graph = createGraph(v);
    addEdge(graph, 1 as libc::c_int, 0 as libc::c_int);
    addEdge(graph, 0 as libc::c_int, 2 as libc::c_int);
    addEdge(graph, 2 as libc::c_int, 1 as libc::c_int);
    addEdge(graph, 0 as libc::c_int, 3 as libc::c_int);
    addEdge(graph, 3 as libc::c_int, 4 as libc::c_int);
    printf(
        b"Following are the strongly connected components \n\0" as *const u8
            as *const libc::c_char,
    );
    printSCC(graph);
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
