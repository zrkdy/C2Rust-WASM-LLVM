use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
pub type Vertex = libc::c_int;
pub type WeightType = libc::c_int;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct GNode {
    pub Nv: libc::c_int,
    pub Ne: libc::c_int,
    pub G: [[WeightType; 501]; 501],
    pub C: [[WeightType; 501]; 501],
}
pub type PtrGNode = *mut GNode;
pub type MGraph = PtrGNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ENode {
    pub V1: Vertex,
    pub V2: Vertex,
    pub Weight: WeightType,
    pub Cost: WeightType,
}
pub type PtrENode = *mut ENode;
pub type Edge = PtrENode;
#[no_mangle]
pub unsafe extern "C" fn CreateGraph(
    mut VertexNum: libc::c_int,
    mut EdgeNum: libc::c_int,
) -> MGraph {
    let mut Graph: MGraph = 0 as *mut GNode;
    let mut v: Vertex = 0;
    let mut w: Vertex = 0;
    Graph = malloc(::core::mem::size_of::<GNode>() as libc::c_ulong) as MGraph;
    (*Graph).Nv = VertexNum;
    (*Graph).Ne = EdgeNum;
    v = 0 as libc::c_int;
    while v < VertexNum {
        w = 0 as libc::c_int;
        while w < VertexNum {
            (*Graph).G[v as usize][w as usize] = 65535 as libc::c_int;
            (*Graph).C[v as usize][w as usize] = 65535 as libc::c_int;
            w += 1;
            w;
        }
        v += 1;
        v;
    }
    return Graph;
}
#[no_mangle]
pub unsafe extern "C" fn InsertEdge(mut Graph: MGraph, mut E: Edge) {
    (*Graph).G[(*E).V1 as usize][(*E).V2 as usize] = (*E).Weight;
    (*Graph).G[(*E).V2 as usize][(*E).V1 as usize] = (*E).Weight;
    (*Graph).C[(*E).V1 as usize][(*E).V2 as usize] = (*E).Cost;
    (*Graph).C[(*E).V2 as usize][(*E).V1 as usize] = (*E).Cost;
}
#[no_mangle]
pub unsafe extern "C" fn BuildGraph(
    mut VertexNum: libc::c_int,
    mut EdgeNum: libc::c_int,
) -> MGraph {
    let mut Graph: MGraph = 0 as *mut GNode;
    let mut E: Edge = 0 as *mut ENode;
    let mut i: libc::c_int = 0;
    Graph = CreateGraph(VertexNum, EdgeNum);
    if (*Graph).Ne != 0 as libc::c_int {
        E = malloc(::core::mem::size_of::<ENode>() as libc::c_ulong) as Edge;
        i = 0 as libc::c_int;
        while i < (*Graph).Ne {
            scanf(
                b"%d %d %d %d\0" as *const u8 as *const libc::c_char,
                &mut (*E).V1 as *mut Vertex,
                &mut (*E).V2 as *mut Vertex,
                &mut (*E).Weight as *mut WeightType,
                &mut (*E).Cost as *mut WeightType,
            );
            InsertEdge(Graph, E);
            i += 1;
            i;
        }
    }
    return Graph;
}
#[no_mangle]
pub unsafe extern "C" fn FindMinDist(
    mut Graph: MGraph,
    mut dist: *mut libc::c_int,
    mut collected: *mut libc::c_int,
) -> Vertex {
    let mut MinV: Vertex = 0;
    let mut V: Vertex = 0;
    let mut MinDist: libc::c_int = 65535 as libc::c_int;
    V = 0 as libc::c_int;
    while V < (*Graph).Nv {
        if *collected.offset(V as isize) == 0 as libc::c_int
            && *dist.offset(V as isize) < MinDist
        {
            MinDist = *dist.offset(V as isize);
            MinV = V;
        }
        V += 1;
        V;
    }
    if MinDist < 65535 as libc::c_int { return MinV } else { return 999 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn Dijkstra(
    mut Graph: MGraph,
    mut dist: *mut libc::c_int,
    mut cost: *mut libc::c_int,
    mut path: *mut libc::c_int,
    mut S: Vertex,
) -> bool {
    let mut collected: [libc::c_int; 501] = [0; 501];
    let mut V: Vertex = 0;
    let mut W: Vertex = 0;
    V = 0 as libc::c_int;
    while V < (*Graph).Nv {
        *dist.offset(V as isize) = (*Graph).G[S as usize][V as usize];
        *cost.offset(V as isize) = (*Graph).C[S as usize][V as usize];
        if *dist.offset(V as isize) < 65535 as libc::c_int {
            *path.offset(V as isize) = S;
        } else {
            *path.offset(V as isize) = -(1 as libc::c_int);
        }
        collected[V as usize] = 0 as libc::c_int;
        V += 1;
        V;
    }
    *dist.offset(S as isize) = 0 as libc::c_int;
    *cost.offset(S as isize) = 0 as libc::c_int;
    collected[S as usize] = 1 as libc::c_int;
    loop {
        V = FindMinDist(Graph, dist, collected.as_mut_ptr());
        if V == 999 as libc::c_int {
            break;
        }
        collected[V as usize] = 1 as libc::c_int;
        W = 0 as libc::c_int;
        while W < (*Graph).Nv {
            if collected[W as usize] == 0 as libc::c_int
                && (*Graph).G[V as usize][W as usize] < 65535 as libc::c_int
            {
                if (*Graph).G[V as usize][W as usize] < 0 as libc::c_int {
                    return 0 as libc::c_int != 0;
                }
                if *dist.offset(V as isize) + (*Graph).G[V as usize][W as usize]
                    < *dist.offset(W as isize)
                {
                    *dist
                        .offset(
                            W as isize,
                        ) = *dist.offset(V as isize)
                        + (*Graph).G[V as usize][W as usize];
                    *path.offset(W as isize) = V;
                    *cost
                        .offset(
                            W as isize,
                        ) = *cost.offset(V as isize)
                        + (*Graph).C[V as usize][W as usize];
                } else if *dist.offset(V as isize) + (*Graph).G[V as usize][W as usize]
                    == *dist.offset(W as isize)
                    && *cost.offset(V as isize) + (*Graph).C[V as usize][W as usize]
                        < *cost.offset(W as isize)
                {
                    *cost
                        .offset(
                            W as isize,
                        ) = *cost.offset(V as isize)
                        + (*Graph).C[V as usize][W as usize];
                    *path.offset(W as isize) = V;
                }
            }
            W += 1;
            W;
        }
    }
    return 1 as libc::c_int != 0;
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut M: libc::c_int = 0;
    let mut S: libc::c_int = 0;
    let mut D: libc::c_int = 0;
    let mut dist: [libc::c_int; 501] = [0; 501];
    let mut cost: [libc::c_int; 501] = [0; 501];
    let mut path: [libc::c_int; 501] = [0; 501];
    scanf(
        b"%d %d %d %d\0" as *const u8 as *const libc::c_char,
        &mut N as *mut libc::c_int,
        &mut M as *mut libc::c_int,
        &mut S as *mut libc::c_int,
        &mut D as *mut libc::c_int,
    );
    let mut Graph: MGraph = BuildGraph(N, M);
    if Dijkstra(Graph, dist.as_mut_ptr(), cost.as_mut_ptr(), path.as_mut_ptr(), S) {
        printf(
            b"%d %d\n\0" as *const u8 as *const libc::c_char,
            dist[D as usize],
            cost[D as usize],
        );
    } else {
        printf(b"Error\n\0" as *const u8 as *const libc::c_char);
    }
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
