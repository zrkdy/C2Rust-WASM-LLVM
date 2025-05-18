use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
pub type Vertex = libc::c_int;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ENode {
    pub V1: Vertex,
    pub V2: Vertex,
}
pub type PtrENode = *mut ENode;
pub type Edge = PtrENode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct AdjVNode {
    pub AdjV: Vertex,
    pub Next: PtrAdjVNode,
}
pub type PtrAdjVNode = *mut AdjVNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct VNode {
    pub FirstEdge: PtrAdjVNode,
}
pub type AdjList = [VNode; 1000];
#[derive(Copy, Clone)]
#[repr(C)]
pub struct GNode {
    pub Nv: libc::c_int,
    pub Ne: libc::c_int,
    pub G: AdjList,
}
pub type PtrGNode = *mut GNode;
pub type LGraph = PtrGNode;
#[no_mangle]
pub unsafe extern "C" fn CreateGraph(mut VertexNum: libc::c_int) -> LGraph {
    let mut Graph: LGraph = 0 as *mut GNode;
    let mut v: Vertex = 0;
    let mut w: Vertex = 0;
    Graph = malloc(::core::mem::size_of::<GNode>() as libc::c_ulong) as LGraph;
    (*Graph).Nv = VertexNum;
    (*Graph).Ne = 0 as libc::c_int;
    v = 0 as libc::c_int;
    while v < (*Graph).Nv {
        (*Graph).G[v as usize].FirstEdge = 0 as PtrAdjVNode;
        v += 1;
        v;
    }
    return Graph;
}
#[no_mangle]
pub unsafe extern "C" fn InsertEdge(mut Graph: LGraph, mut E: Edge) {
    let mut NewNode: PtrAdjVNode = 0 as *mut AdjVNode;
    NewNode = malloc(::core::mem::size_of::<AdjVNode>() as libc::c_ulong) as PtrAdjVNode;
    (*NewNode).AdjV = (*E).V2;
    (*NewNode).Next = (*Graph).G[(*E).V1 as usize].FirstEdge;
    (*Graph).G[(*E).V1 as usize].FirstEdge = NewNode;
}
#[no_mangle]
pub unsafe extern "C" fn TopSort(
    mut Graph: LGraph,
    mut TopOrder: *mut Vertex,
    mut Cells: *mut libc::c_int,
) -> bool {
    let mut Indegree: [libc::c_int; 1000] = [0; 1000];
    let mut cnt: libc::c_int = 0;
    let mut V: Vertex = 0;
    let mut mini: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut zeroin: *mut libc::c_int = 0 as *mut libc::c_int;
    let mut num_in: libc::c_int = 0 as libc::c_int;
    let mut W: PtrAdjVNode = 0 as *mut AdjVNode;
    zeroin = malloc(
        ((*Graph).Nv as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    V = 0 as libc::c_int;
    while V < (*Graph).Nv {
        Indegree[V as usize] = 0 as libc::c_int;
        *zeroin.offset(V as isize) = 65535 as libc::c_int;
        V += 1;
        V;
    }
    V = 0 as libc::c_int;
    while V < (*Graph).Nv {
        W = (*Graph).G[V as usize].FirstEdge;
        while !W.is_null() {
            Indegree[(*W).AdjV as usize] += 1;
            Indegree[(*W).AdjV as usize];
            W = (*W).Next;
        }
        V += 1;
        V;
    }
    V = 0 as libc::c_int;
    while V < (*Graph).Nv {
        if Indegree[V as usize] == 0 as libc::c_int {
            *zeroin.offset(V as isize) = *Cells.offset(V as isize);
            num_in += 1;
            num_in;
        }
        V += 1;
        V;
    }
    cnt = 0 as libc::c_int;
    while num_in != 0 as libc::c_int {
        mini = 65535 as libc::c_int;
        i = 0 as libc::c_int;
        while i < (*Graph).Nv {
            if *zeroin.offset(i as isize) < mini {
                mini = *zeroin.offset(i as isize);
                V = i;
            }
            i += 1;
            i;
        }
        *zeroin.offset(V as isize) = 65535 as libc::c_int;
        num_in -= 1;
        num_in;
        let fresh0 = cnt;
        cnt = cnt + 1;
        *TopOrder.offset(fresh0 as isize) = mini;
        W = (*Graph).G[V as usize].FirstEdge;
        while !W.is_null() {
            Indegree[(*W).AdjV as usize] -= 1;
            if Indegree[(*W).AdjV as usize] == 0 as libc::c_int {
                *zeroin.offset((*W).AdjV as isize) = *Cells.offset((*W).AdjV as isize);
                num_in += 1;
                num_in;
            }
            W = (*W).Next;
        }
    }
    if cnt != (*Graph).Nv {
        return 0 as libc::c_int != 0
    } else {
        return 1 as libc::c_int != 0
    };
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    let mut c: *mut libc::c_int = 0 as *mut libc::c_int;
    c = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    let mut Cells: *mut libc::c_int = 0 as *mut libc::c_int;
    Cells = malloc(
        (N as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<libc::c_int>() as libc::c_ulong),
    ) as *mut libc::c_int;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < N {
        scanf(
            b"%d\0" as *const u8 as *const libc::c_char,
            &mut *Cells.offset(i as isize) as *mut libc::c_int,
        );
        if *Cells.offset(i as isize) < 0 as libc::c_int {
            *c.offset(i as isize) = 65535 as libc::c_int;
        } else {
            *c.offset(i as isize) = i - *Cells.offset(i as isize) % N;
            if *c.offset(i as isize) < 0 as libc::c_int {
                *c.offset(i as isize) += N;
            }
        }
        i += 1;
        i;
    }
    let mut Graph: LGraph = CreateGraph(N);
    let mut E: Edge = 0 as *mut ENode;
    i = 0 as libc::c_int;
    while i < N {
        if *c.offset(i as isize) > 0 as libc::c_int
            && *c.offset(i as isize) < 65535 as libc::c_int
        {
            E = malloc(::core::mem::size_of::<ENode>() as libc::c_ulong) as Edge;
            j = 1 as libc::c_int;
            while j <= *c.offset(i as isize) {
                (*E).V1 = if i - j > 0 as libc::c_int { i - j } else { i - j + N };
                (*E).V2 = i;
                InsertEdge(Graph, E);
                j += 1;
                j;
            }
        }
        i += 1;
        i;
    }
    let mut TopOrder: [Vertex; 1000] = [0; 1000];
    TopSort(Graph, TopOrder.as_mut_ptr(), Cells);
    let mut flag: libc::c_int = 0 as libc::c_int;
    i = 0 as libc::c_int;
    while i < N {
        if TopOrder[i as usize] >= 0 as libc::c_int {
            if flag == 0 as libc::c_int {
                flag = 1 as libc::c_int;
            } else {
                printf(b" \0" as *const u8 as *const libc::c_char);
            }
            printf(b"%d\0" as *const u8 as *const libc::c_char, TopOrder[i as usize]);
        }
        i += 1;
        i;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
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
