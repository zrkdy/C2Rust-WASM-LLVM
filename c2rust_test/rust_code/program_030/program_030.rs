use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub cube: [[libc::c_int; 3]; 3],
    pub x: libc::c_int,
    pub y: libc::c_int,
    pub prev: *mut Node,
}
#[no_mangle]
pub unsafe extern "C" fn cube_equal(
    mut m1: *mut [libc::c_int; 3],
    mut m2: *mut [libc::c_int; 3],
) -> libc::c_int {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut ok: libc::c_int = 1 as libc::c_int;
    i = 0 as libc::c_int;
    while i < 3 as libc::c_int && ok != 0 {
        j = 0 as libc::c_int;
        while j < 3 as libc::c_int && ok != 0 {
            if (*m1.offset(i as isize))[j as usize]
                != (*m2.offset(i as isize))[j as usize]
            {
                ok = 0 as libc::c_int;
            }
            j += 1;
            j;
        }
        i += 1;
        i;
    }
    return ok;
}
#[no_mangle]
pub unsafe extern "C" fn cube_copy(
    mut source: *mut [libc::c_int; 3],
    mut dest: *mut [libc::c_int; 3],
) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 3 as libc::c_int {
        j = 0 as libc::c_int;
        while j < 3 as libc::c_int {
            (*dest
                .offset(
                    i as isize,
                ))[j as usize] = (*source.offset(i as isize))[j as usize];
            j += 1;
            j;
        }
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn cube_display(mut m: *mut [libc::c_int; 3]) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 3 as libc::c_int {
        j = 0 as libc::c_int;
        while j < 3 as libc::c_int {
            printf(
                b"%d \0" as *const u8 as *const libc::c_char,
                (*m.offset(i as isize))[j as usize],
            );
            j += 1;
            j;
        }
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i += 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn move_up(
    mut m: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
) {
    (*m
        .offset(
            x as isize,
        ))[y as usize] = (*m.offset((x - 1 as libc::c_int) as isize))[y as usize];
    (*m.offset((x - 1 as libc::c_int) as isize))[y as usize] = -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn move_down(
    mut m: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
) {
    (*m
        .offset(
            x as isize,
        ))[y as usize] = (*m.offset((x + 1 as libc::c_int) as isize))[y as usize];
    (*m.offset((x + 1 as libc::c_int) as isize))[y as usize] = -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn move_left(
    mut m: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
) {
    (*m
        .offset(
            x as isize,
        ))[y as usize] = (*m.offset(x as isize))[(y - 1 as libc::c_int) as usize];
    (*m.offset(x as isize))[(y - 1 as libc::c_int) as usize] = -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn move_right(
    mut m: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
) {
    (*m
        .offset(
            x as isize,
        ))[y as usize] = (*m.offset(x as isize))[(y + 1 as libc::c_int) as usize];
    (*m.offset(x as isize))[(y + 1 as libc::c_int) as usize] = -(1 as libc::c_int);
}
#[no_mangle]
pub unsafe extern "C" fn displayoutcome(mut node: *mut Node) {
    while !node.is_null() {
        cube_display(((*node).cube).as_mut_ptr());
        printf(b"^\n\0" as *const u8 as *const libc::c_char);
        printf(b"^\n\0" as *const u8 as *const libc::c_char);
        printf(b"^\n\0" as *const u8 as *const libc::c_char);
        node = (*node).prev;
    }
}
#[no_mangle]
pub unsafe extern "C" fn inme(
    mut node: *mut Node,
    mut m: *mut [libc::c_int; 3],
) -> libc::c_int {
    let mut ok: libc::c_int = 0 as libc::c_int;
    while !node.is_null() && ok == 0 {
        if cube_equal(((*node).cube).as_mut_ptr(), m) != 0 {
            ok = 1 as libc::c_int;
        }
        node = (*node).prev;
    }
    return ok;
}
#[no_mangle]
pub static mut queue: [*mut Node; 10000] = [0 as *const Node as *mut Node; 10000];
#[no_mangle]
pub static mut head: libc::c_int = 0;
#[no_mangle]
pub static mut rear: libc::c_int = 0;
#[no_mangle]
pub unsafe extern "C" fn queue_empty() -> libc::c_int {
    return (head == rear) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn full() -> libc::c_int {
    return (head == (rear + 1 as libc::c_int) % 10000 as libc::c_int) as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut item: *mut Node) {
    queue[rear as usize] = item;
    rear = (rear + 1 as libc::c_int) % 10000 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn dequeue() -> *mut Node {
    let mut retval: *mut Node = queue[head as usize];
    head = (head + 1 as libc::c_int) % 10000 as libc::c_int;
    return retval;
}
#[no_mangle]
pub unsafe extern "C" fn queue_top() -> *mut Node {
    return queue[head as usize];
}
#[no_mangle]
pub unsafe extern "C" fn bfs_search(
    mut cube: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
    mut target: *mut [libc::c_int; 3],
) {
    let mut currentnode: *mut Node = malloc(
        ::core::mem::size_of::<Node>() as libc::c_ulong,
    ) as *mut Node;
    (*currentnode).x = x;
    (*currentnode).y = y;
    (*currentnode).prev = 0 as *mut Node;
    cube_copy(cube, ((*currentnode).cube).as_mut_ptr());
    enqueue(currentnode);
    let mut node: *mut Node = 0 as *mut Node;
    let mut tmpcube: [[libc::c_int; 3]; 3] = [[0; 3]; 3];
    let mut counter: libc::c_int = 0 as libc::c_int;
    while queue_empty() == 0 {
        currentnode = queue_top();
        if cube_equal(((*currentnode).cube).as_mut_ptr(), target) != 0 {
            printf(b"One method .....\n\0" as *const u8 as *const libc::c_char);
            displayoutcome(currentnode);
            counter += 1 as libc::c_int;
        }
        dequeue();
        cube_copy(((*currentnode).cube).as_mut_ptr(), tmpcube.as_mut_ptr());
        if (*currentnode).x > 0 as libc::c_int {
            move_up(tmpcube.as_mut_ptr(), (*currentnode).x, (*currentnode).y);
            if inme(currentnode, tmpcube.as_mut_ptr()) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                cube_copy(tmpcube.as_mut_ptr(), ((*node).cube).as_mut_ptr());
                (*node).x = (*currentnode).x - 1 as libc::c_int;
                (*node).y = (*currentnode).y;
                (*node).prev = currentnode;
                enqueue(node);
            }
        }
        cube_copy(((*currentnode).cube).as_mut_ptr(), tmpcube.as_mut_ptr());
        if (*currentnode).x < 3 as libc::c_int - 1 as libc::c_int {
            move_down(tmpcube.as_mut_ptr(), (*currentnode).x, (*currentnode).y);
            if inme(currentnode, tmpcube.as_mut_ptr()) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                cube_copy(tmpcube.as_mut_ptr(), ((*node).cube).as_mut_ptr());
                (*node).x = (*currentnode).x + 1 as libc::c_int;
                (*node).y = (*currentnode).y;
                (*node).prev = currentnode;
                enqueue(node);
            }
        }
        cube_copy(((*currentnode).cube).as_mut_ptr(), tmpcube.as_mut_ptr());
        if (*currentnode).y > 0 as libc::c_int {
            move_left(tmpcube.as_mut_ptr(), (*currentnode).x, (*currentnode).y);
            if inme(currentnode, tmpcube.as_mut_ptr()) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                cube_copy(tmpcube.as_mut_ptr(), ((*node).cube).as_mut_ptr());
                (*node).x = (*currentnode).x;
                (*node).y = (*currentnode).y - 1 as libc::c_int;
                (*node).prev = currentnode;
                enqueue(node);
            }
        }
        cube_copy(((*currentnode).cube).as_mut_ptr(), tmpcube.as_mut_ptr());
        if (*currentnode).y < 3 as libc::c_int - 1 as libc::c_int {
            move_right(tmpcube.as_mut_ptr(), (*currentnode).x, (*currentnode).y);
            if inme(currentnode, tmpcube.as_mut_ptr()) == 0 {
                node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
                    as *mut Node;
                cube_copy(tmpcube.as_mut_ptr(), ((*node).cube).as_mut_ptr());
                (*node).x = (*currentnode).x;
                (*node).y = (*currentnode).y + 1 as libc::c_int;
                (*node).prev = currentnode;
                enqueue(node);
            }
        }
    }
    printf(b"Total %d methods\n\0" as *const u8 as *const libc::c_char, counter);
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut origin: [[libc::c_int; 3]; 3] = [
        [2 as libc::c_int, 3 as libc::c_int, -(1 as libc::c_int)],
        [1 as libc::c_int, 8 as libc::c_int, 5 as libc::c_int],
        [7 as libc::c_int, 4 as libc::c_int, 6 as libc::c_int],
    ];
    let mut x: libc::c_int = 0 as libc::c_int;
    let mut y: libc::c_int = 2 as libc::c_int;
    let mut target: [[libc::c_int; 3]; 3] = [
        [1 as libc::c_int, 2 as libc::c_int, 3 as libc::c_int],
        [8 as libc::c_int, -(1 as libc::c_int), 4 as libc::c_int],
        [7 as libc::c_int, 6 as libc::c_int, 5 as libc::c_int],
    ];
    bfs_search(origin.as_mut_ptr(), x, y, target.as_mut_ptr());
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
