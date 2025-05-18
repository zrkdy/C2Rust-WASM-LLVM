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
    pub weight: libc::c_int,
    pub prev: *mut Node,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Heap {
    pub size: libc::c_int,
    pub capacity: libc::c_int,
    pub data: *mut *mut Node,
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
    let mut tmp: *mut Node = *((*heap).data).offset(pos1 as isize);
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
        && (**((*heap).data).offset(right as isize)).weight
            < (**((*heap).data).offset(minpos as isize)).weight
    {
        minpos = right;
    }
    if left < (*heap).size
        && (**((*heap).data).offset(left as isize)).weight
            < (**((*heap).data).offset(minpos as isize)).weight
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
        (::core::mem::size_of::<*mut Node>() as libc::c_ulong)
            .wrapping_mul((*heap).capacity as libc::c_ulong),
    ) as *mut *mut Node;
    return heap;
}
#[no_mangle]
pub unsafe extern "C" fn insert_heap(mut heap: *mut Heap, mut new: *mut Node) {
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
        if (**((*heap).data).offset(currentpos as isize)).weight
            >= (**((*heap).data).offset(parent as isize)).weight
        {
            break;
        }
        heap_swap(heap, currentpos, parent);
    };
}
#[no_mangle]
pub unsafe extern "C" fn delete_min(mut heap: *mut Heap) -> *mut Node {
    if heap_empty(heap) != 0 {
        return 0 as *mut Node;
    }
    let mut retval: *mut Node = *((*heap).data).offset(0 as libc::c_int as isize);
    (*heap).size -= 1;
    let ref mut fresh4 = *((*heap).data).offset(0 as libc::c_int as isize);
    *fresh4 = *((*heap).data).offset((*heap).size as isize);
    heap_hold(heap, 0 as libc::c_int);
    return retval;
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
pub unsafe extern "C" fn calc_weight(
    mut target: *mut [libc::c_int; 3],
    mut m: *mut [libc::c_int; 3],
) -> libc::c_int {
    let mut weight: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < 3 as libc::c_int {
        j = 0 as libc::c_int;
        while j < 3 as libc::c_int {
            if !((*m.offset(i as isize))[j as usize] == -(1 as libc::c_int)) {
                if (*m.offset(i as isize))[j as usize]
                    != (*target.offset(i as isize))[j as usize]
                {
                    weight += 1;
                    weight;
                }
            }
            j += 1;
            j;
        }
        i += 1;
        i;
    }
    return weight;
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
pub unsafe extern "C" fn insertsort(mut data: *mut *mut Node, mut size: libc::c_int) {
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut pivot: *mut Node = 0 as *mut Node;
    i = 1 as libc::c_int;
    while i < size {
        pivot = *data.offset(i as isize);
        j = i - 1 as libc::c_int;
        while j >= 0 as libc::c_int
            && (**data.offset(j as isize)).weight < (*pivot).weight
        {
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
pub unsafe extern "C" fn hillclimbing(
    mut cube: *mut [libc::c_int; 3],
    mut x: libc::c_int,
    mut y: libc::c_int,
    mut target: *mut [libc::c_int; 3],
) {
    let mut currentnode: *mut Node = malloc(
        ::core::mem::size_of::<Node>() as libc::c_ulong,
    ) as *mut Node;
    let mut node: *mut Node = 0 as *mut Node;
    (*currentnode).x = x;
    (*currentnode).y = y;
    (*currentnode).prev = 0 as *mut Node;
    (*currentnode).weight = calc_weight(target, cube);
    cube_copy(cube, ((*currentnode).cube).as_mut_ptr());
    let mut heap: *mut Heap = init_heap();
    insert_heap(heap, currentnode);
    let mut tmpcube: [[libc::c_int; 3]; 3] = [[0; 3]; 3];
    while heap_empty(heap) == 0 {
        currentnode = delete_min(heap);
        if cube_equal(((*currentnode).cube).as_mut_ptr(), target) != 0 {
            displayoutcome(currentnode);
            break;
        } else {
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
                    (*node).weight = calc_weight(target, ((*node).cube).as_mut_ptr());
                    insert_heap(heap, node);
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
                    (*node).weight = calc_weight(target, ((*node).cube).as_mut_ptr());
                    insert_heap(heap, node);
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
                    (*node).weight = calc_weight(target, ((*node).cube).as_mut_ptr());
                    insert_heap(heap, node);
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
                    (*node).weight = calc_weight(target, ((*node).cube).as_mut_ptr());
                    insert_heap(heap, node);
                }
            }
        }
    }
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
    hillclimbing(origin.as_mut_ptr(), x, y, target.as_mut_ptr());
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
