use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub vertex: libc::c_int,
    pub height: libc::c_int,
    pub prev: *mut Node,
}
#[no_mangle]
pub static mut queue: [*mut Node; 1000] = [0 as *const Node as *mut Node; 1000];
#[no_mangle]
pub static mut head: libc::c_int = 0;
#[no_mangle]
pub static mut rear: libc::c_int = 0;
#[no_mangle]
pub unsafe extern "C" fn qempty() -> libc::c_int {
    return (head == rear) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn qfull() -> libc::c_int {
    return (head == (rear + 1 as libc::c_int) % 1000 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut item: *mut Node) {
    queue[rear as usize] = item;
    rear = (rear + 1 as libc::c_int) % 1000 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn dequeue() -> *mut Node {
    let mut retval: *mut Node = queue[head as usize];
    head = (head + 1 as libc::c_int) % 1000 as libc::c_int;
    return retval;
}
#[no_mangle]
pub unsafe extern "C" fn isneibor(
    mut map: *mut [libc::c_int; 7],
    mut node1: libc::c_int,
    mut node2: libc::c_int,
) -> libc::c_int {
    return (*map.offset(node1 as isize))[node2 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn getneibors(
    mut map: *mut [libc::c_int; 7],
    mut node: libc::c_int,
    mut neibors: *mut libc::c_int,
    mut size: *mut libc::c_int,
) {
    let mut counter: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 7 as libc::c_int {
        if (*map.offset(node as isize))[i as usize] != 0 {
            let fresh0 = counter;
            counter = counter + 1;
            *neibors.offset(fresh0 as isize) = i;
        }
        i += 1;
        i;
    }
    *size = counter;
}
#[no_mangle]
pub unsafe extern "C" fn displayoutcome(mut answer: *mut libc::c_int) {
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 7 as libc::c_int {
        printf(b"%d \0" as *const u8 as *const libc::c_char, *answer.offset(i as isize));
        i += 1;
        i;
    }
    printf(b"%d\n\0" as *const u8 as *const libc::c_char, 0 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn inme(mut node: *mut Node, mut who: libc::c_int) -> libc::c_int {
    let mut ok: libc::c_int = 0 as libc::c_int;
    while !node.is_null() && ok == 0 {
        if (*node).vertex == who {
            ok = 1 as libc::c_int;
        }
        node = (*node).prev;
    }
    return ok;
}
#[no_mangle]
pub unsafe extern "C" fn displayout_come(mut node: *mut Node) {
    printf(b"%d \0" as *const u8 as *const libc::c_char, 0 as libc::c_int);
    while !node.is_null() {
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*node).vertex);
        node = (*node).prev;
    }
    printf(b"\n\0" as *const u8 as *const libc::c_char);
}
#[no_mangle]
pub unsafe extern "C" fn bfs_search(mut map: *mut [libc::c_int; 7]) {
    let mut i: libc::c_int = 0;
    let mut step: libc::c_int = 0;
    let mut currentnode: *mut Node = malloc(
        ::core::mem::size_of::<Node>() as libc::c_ulong,
    ) as *mut Node;
    (*currentnode).vertex = 0 as libc::c_int;
    (*currentnode).prev = 0 as *mut Node;
    (*currentnode).height = 0 as libc::c_int;
    enqueue(currentnode);
    let mut neibors: [libc::c_int; 7] = [0; 7];
    let mut neiborsize: libc::c_int = 0;
    let mut node: *mut Node = 0 as *mut Node;
    while qempty() == 0 {
        currentnode = dequeue();
        step = (*currentnode).height;
        if step == 7 as libc::c_int - 1 as libc::c_int
            && isneibor(map, (*currentnode).vertex, 0 as libc::c_int) != 0
        {
            displayout_come(currentnode);
        }
        getneibors(map, (*currentnode).vertex, neibors.as_mut_ptr(), &mut neiborsize);
        i = 0 as libc::c_int;
        while i < neiborsize {
            if inme(currentnode, neibors[i as usize]) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                (*node).height = step + 1 as libc::c_int;
                (*node).prev = currentnode;
                (*node).vertex = neibors[i as usize];
                enqueue(node);
            }
            i += 1;
            i;
        }
    }
}
#[no_mangle]
pub static mut stack: [*mut Node; 100] = [0 as *const Node as *mut Node; 100];
#[no_mangle]
pub static mut sp: libc::c_int = -(1 as libc::c_int);
#[no_mangle]
pub unsafe extern "C" fn sempty() -> libc::c_int {
    return (sp == -(1 as libc::c_int)) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn push(mut item: *mut Node) {
    sp += 1;
    stack[sp as usize] = item;
}
#[no_mangle]
pub unsafe extern "C" fn pop() -> *mut Node {
    let fresh1 = sp;
    sp = sp - 1;
    return stack[fresh1 as usize];
}
#[no_mangle]
pub unsafe extern "C" fn top() -> *mut Node {
    return stack[sp as usize];
}
#[no_mangle]
pub unsafe extern "C" fn dfs_search(mut map: *mut [libc::c_int; 7]) {
    let mut currentnode: *mut Node = malloc(
        ::core::mem::size_of::<Node>() as libc::c_ulong,
    ) as *mut Node;
    (*currentnode).vertex = 0 as libc::c_int;
    (*currentnode).height = 0 as libc::c_int;
    (*currentnode).prev = 0 as *mut Node;
    push(currentnode);
    let mut neiborsize: libc::c_int = 0;
    let mut neibors: [libc::c_int; 7] = [0; 7];
    let mut i: libc::c_int = 0;
    let mut node: *mut Node = 0 as *mut Node;
    while sempty() == 0 {
        currentnode = top();
        if (*currentnode).height == 7 as libc::c_int - 1 as libc::c_int
            && isneibor(map, (*currentnode).vertex, 0 as libc::c_int) != 0
        {
            displayout_come(currentnode);
        }
        pop();
        getneibors(map, (*currentnode).vertex, neibors.as_mut_ptr(), &mut neiborsize);
        i = 0 as libc::c_int;
        while i < neiborsize {
            if inme(currentnode, neibors[i as usize]) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                (*node).vertex = neibors[i as usize];
                (*node).height = (*currentnode).height + 1 as libc::c_int;
                (*node).prev = currentnode;
                push(node);
            }
            i += 1;
            i;
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn backtrace(
    mut map: *mut [libc::c_int; 7],
    mut answer: *mut libc::c_int,
    mut step: libc::c_int,
    mut visited: *mut libc::c_int,
) {
    if step == 7 as libc::c_int
        && isneibor(
            map,
            *answer.offset((step - 1 as libc::c_int) as isize),
            0 as libc::c_int,
        ) != 0
    {
        displayoutcome(answer);
        return;
    }
    let mut myneibor: [libc::c_int; 7] = [0; 7];
    let mut neiborsize: libc::c_int = 0;
    let mut currentnode: libc::c_int = *answer
        .offset((step - 1 as libc::c_int) as isize);
    let mut i: libc::c_int = 0;
    getneibors(map, currentnode, myneibor.as_mut_ptr(), &mut neiborsize);
    i = 0 as libc::c_int;
    while i < neiborsize {
        if *visited.offset(myneibor[i as usize] as isize) == 0 {
            *answer.offset(step as isize) = myneibor[i as usize];
            *visited.offset(myneibor[i as usize] as isize) = 1 as libc::c_int;
            backtrace(map, answer, step + 1 as libc::c_int, visited);
            *visited.offset(myneibor[i as usize] as isize) = 0 as libc::c_int;
        }
        i += 1;
        i;
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut map: [[libc::c_int; 7]; 7] = [
        [
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            1 as libc::c_int,
        ],
        [
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
        ],
        [
            0 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
        ],
        [
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
        ],
        [
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
        ],
        [
            1 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
        ],
        [
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            1 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
            0 as libc::c_int,
        ],
    ];
    let mut answer: [libc::c_int; 7] = [0; 7];
    answer[0 as libc::c_int as usize] = 0 as libc::c_int;
    let mut visited: [libc::c_int; 7] = [0; 7];
    visited[0 as libc::c_int as usize] = 1 as libc::c_int;
    printf(b"use backtrace:\n\0" as *const u8 as *const libc::c_char);
    backtrace(
        map.as_mut_ptr(),
        answer.as_mut_ptr(),
        1 as libc::c_int,
        visited.as_mut_ptr(),
    );
    printf(b"use DFS:\n\0" as *const u8 as *const libc::c_char);
    dfs_search(map.as_mut_ptr());
    printf(b"use BFS:\n\0" as *const u8 as *const libc::c_char);
    bfs_search(map.as_mut_ptr());
    return 0;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
