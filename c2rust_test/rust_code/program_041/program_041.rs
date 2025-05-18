use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn qsort(
        __base: *mut libc::c_void,
        __nmemb: size_t,
        __size: size_t,
        __compar: __compar_fn_t,
    );
}
pub type size_t = libc::c_ulong;
pub type __compar_fn_t = Option::<
    unsafe extern "C" fn(*const libc::c_void, *const libc::c_void) -> libc::c_int,
>;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Edge {
    pub src: libc::c_int,
    pub dest: libc::c_int,
    pub weight: libc::c_int,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Graph {
    pub v: libc::c_int,
    pub e: libc::c_int,
    pub edge: *mut Edge,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct subset {
    pub parent: libc::c_int,
    pub rank: libc::c_int,
}
#[no_mangle]
pub unsafe extern "C" fn find(
    mut subsets: *mut subset,
    mut i: libc::c_int,
) -> libc::c_int {
    if (*subsets.offset(i as isize)).parent != i {
        (*subsets.offset(i as isize))
            .parent = find(subsets, (*subsets.offset(i as isize)).parent);
    }
    return (*subsets.offset(i as isize)).parent;
}
#[no_mangle]
pub unsafe extern "C" fn Union(
    mut subsets: *mut subset,
    mut x: libc::c_int,
    mut y: libc::c_int,
) {
    let mut xroot: libc::c_int = find(subsets, x);
    let mut yroot: libc::c_int = find(subsets, y);
    if (*subsets.offset(xroot as isize)).rank < (*subsets.offset(yroot as isize)).rank {
        (*subsets.offset(xroot as isize)).parent = yroot;
    } else if (*subsets.offset(xroot as isize)).rank
        > (*subsets.offset(yroot as isize)).rank
    {
        (*subsets.offset(yroot as isize)).parent = xroot;
    } else {
        (*subsets.offset(yroot as isize)).parent = xroot;
        let ref mut fresh0 = (*subsets.offset(xroot as isize)).rank;
        *fresh0 += 1;
        *fresh0;
    };
}
#[no_mangle]
pub unsafe extern "C" fn scompare(
    mut a: *const libc::c_void,
    mut b: *const libc::c_void,
) -> libc::c_int {
    let mut na: *mut Edge = a as *mut Edge;
    let mut nb: *mut Edge = b as *mut Edge;
    return ((*na).weight > (*nb).weight) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn creategraph(
    mut v: libc::c_int,
    mut e: libc::c_int,
) -> *mut Graph {
    let mut graph: *mut Graph = malloc(::core::mem::size_of::<Graph>() as libc::c_ulong)
        as *mut Graph;
    (*graph).v = v;
    (*graph).e = e;
    (*graph)
        .edge = malloc(
        (::core::mem::size_of::<Edge>() as libc::c_ulong)
            .wrapping_mul(e as libc::c_ulong),
    ) as *mut Edge;
    return graph;
}
#[no_mangle]
pub unsafe extern "C" fn MST_kruskal(mut graph: *mut Graph) {
    let mut v: libc::c_int = (*graph).v;
    let vla = v as usize;
    let mut result: Vec::<Edge> = ::std::vec::from_elem(
        Edge { src: 0, dest: 0, weight: 0 },
        vla,
    );
    let mut e: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0 as libc::c_int;
    qsort(
        (*graph).edge as *mut libc::c_void,
        (*graph).e as size_t,
        ::core::mem::size_of::<Edge>() as libc::c_ulong,
        Some(
            scompare
                as unsafe extern "C" fn(
                    *const libc::c_void,
                    *const libc::c_void,
                ) -> libc::c_int,
        ),
    );
    let mut subsets: *mut subset = malloc(
        (::core::mem::size_of::<subset>() as libc::c_ulong)
            .wrapping_mul(v as libc::c_ulong),
    ) as *mut subset;
    i = 0 as libc::c_int;
    while i < v {
        (*subsets.offset(i as isize)).parent = i;
        (*subsets.offset(i as isize)).rank = 0 as libc::c_int;
        i += 1;
        i;
    }
    i = 0 as libc::c_int;
    while e < v - 1 as libc::c_int {
        let fresh1 = i;
        i = i + 1;
        let mut crawl: Edge = *((*graph).edge).offset(fresh1 as isize);
        let mut x: libc::c_int = find(subsets, crawl.src);
        let mut y: libc::c_int = find(subsets, crawl.dest);
        if x != y {
            let fresh2 = e;
            e = e + 1;
            *result.as_mut_ptr().offset(fresh2 as isize) = crawl;
            Union(subsets, x, y);
        }
    }
    printf(b"Following edges are there in MST \n\0" as *const u8 as *const libc::c_char);
    printf(b"src--dest=weight\n\0" as *const u8 as *const libc::c_char);
    i = 0 as libc::c_int;
    while i < e {
        printf(
            b"%d--%d=%d\n\0" as *const u8 as *const libc::c_char,
            (*result.as_mut_ptr().offset(i as isize)).src,
            (*result.as_mut_ptr().offset(i as isize)).dest,
            (*result.as_mut_ptr().offset(i as isize)).weight,
        );
        i += 1;
        i;
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut v: libc::c_int = 4 as libc::c_int;
    let mut e: libc::c_int = 5 as libc::c_int;
    let mut graph: *mut Graph = creategraph(v, e);
    (*((*graph).edge).offset(0 as libc::c_int as isize)).src = 0 as libc::c_int;
    (*((*graph).edge).offset(0 as libc::c_int as isize)).dest = 1 as libc::c_int;
    (*((*graph).edge).offset(0 as libc::c_int as isize)).weight = 10 as libc::c_int;
    (*((*graph).edge).offset(1 as libc::c_int as isize)).src = 0 as libc::c_int;
    (*((*graph).edge).offset(1 as libc::c_int as isize)).dest = 2 as libc::c_int;
    (*((*graph).edge).offset(1 as libc::c_int as isize)).weight = 6 as libc::c_int;
    (*((*graph).edge).offset(2 as libc::c_int as isize)).src = 0 as libc::c_int;
    (*((*graph).edge).offset(2 as libc::c_int as isize)).dest = 3 as libc::c_int;
    (*((*graph).edge).offset(2 as libc::c_int as isize)).weight = 5 as libc::c_int;
    (*((*graph).edge).offset(3 as libc::c_int as isize)).src = 1 as libc::c_int;
    (*((*graph).edge).offset(3 as libc::c_int as isize)).dest = 3 as libc::c_int;
    (*((*graph).edge).offset(3 as libc::c_int as isize)).weight = 15 as libc::c_int;
    (*((*graph).edge).offset(4 as libc::c_int as isize)).src = 2 as libc::c_int;
    (*((*graph).edge).offset(4 as libc::c_int as isize)).dest = 3 as libc::c_int;
    (*((*graph).edge).offset(4 as libc::c_int as isize)).weight = 4 as libc::c_int;
    MST_kruskal(graph);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
