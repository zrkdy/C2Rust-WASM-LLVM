use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct bst_node {
    pub key: libc::c_int,
    pub left: *mut bst_node,
    pub right: *mut bst_node,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct bst {
    pub root: *mut bst_node,
    pub size: libc::c_int,
}
#[no_mangle]
pub unsafe extern "C" fn bst_create() -> *mut bst {
    let mut bst: *mut bst = malloc(::core::mem::size_of::<bst>() as libc::c_ulong)
        as *mut bst;
    if bst.is_null() {
        return 0 as *mut bst;
    }
    (*bst).root = 0 as *mut bst_node;
    (*bst).size = 0 as libc::c_int;
    return bst;
}
#[no_mangle]
pub unsafe extern "C" fn bst_create_node(mut key: libc::c_int) -> *mut bst_node {
    let mut node: *mut bst_node = malloc(
        ::core::mem::size_of::<bst_node>() as libc::c_ulong,
    ) as *mut bst_node;
    if node.is_null() {
        return 0 as *mut bst_node;
    }
    (*node).left = 0 as *mut bst_node;
    (*node).right = 0 as *mut bst_node;
    (*node).key = key;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn bst_search_node(
    mut node: *mut bst_node,
    mut type_0: libc::c_int,
    mut key: libc::c_int,
) -> *mut bst_node {
    let mut current: *mut bst_node = node;
    let mut parent: *mut bst_node = 0 as *mut bst_node;
    if current.is_null() {
        return 0 as *mut bst_node;
    }
    while !current.is_null() {
        if key < (*current).key {
            parent = current;
            current = (*current).left;
        } else {
            if key == (*current).key {
                break;
            }
            parent = current;
            current = (*current).right;
        }
    }
    if type_0 == 0 as libc::c_int {
        return current;
    }
    return parent;
}
#[no_mangle]
pub unsafe extern "C" fn bst_find_max_node(
    mut node: *mut bst_node,
    mut type_0: libc::c_int,
) -> *mut bst_node {
    let mut current: *mut bst_node = node;
    let mut parent: *mut bst_node = 0 as *mut bst_node;
    if current.is_null() {
        return 0 as *mut bst_node;
    }
    while !((*current).right).is_null() {
        parent = current;
        current = (*current).right;
    }
    if type_0 == 0 as libc::c_int {
        return current;
    }
    return parent;
}
#[no_mangle]
pub unsafe extern "C" fn bst_insert_node(
    mut bst: *mut bst,
    mut key: libc::c_int,
) -> *mut bst {
    let mut current: *mut bst_node = (*bst).root;
    let mut parent: *mut bst_node = 0 as *mut bst_node;
    if current.is_null() {
        (*bst).root = bst_create_node(key);
    } else {
        parent = bst_search_node((*bst).root, 1 as libc::c_int, key);
        if parent.is_null() {
            return 0 as *mut bst;
        }
        if key < (*parent).key {
            (*parent).left = bst_create_node(key);
        } else if key == (*parent).key {
            return 0 as *mut bst
        } else {
            (*parent).right = bst_create_node(key);
        }
    }
    (*bst).size += 1;
    (*bst).size;
    return bst;
}
#[no_mangle]
pub unsafe extern "C" fn bst_delete_node(mut bst: *mut bst, mut key: libc::c_int) {
    let mut parent: *mut bst_node = bst_search_node((*bst).root, 1 as libc::c_int, key);
    let mut current: *mut bst_node = 0 as *mut bst_node;
    let mut temp: *mut bst_node = 0 as *mut bst_node;
    let mut max: *mut bst_node = 0 as *mut bst_node;
    current = bst_search_node(parent, 0 as libc::c_int, key);
    if parent.is_null() && current.is_null() {
        temp = (*bst).root;
        (*bst).root = 0 as *mut bst_node;
    } else if ((*current).left).is_null() && ((*current).right).is_null() {
        if (*current).key < (*parent).key {
            temp = (*parent).left;
            (*parent).left = 0 as *mut bst_node;
        } else {
            temp = (*parent).right;
            (*parent).right = 0 as *mut bst_node;
        }
    } else if ((*current).left).is_null() {
        temp = (*current).right;
        (*current).key = (*(*current).right).key;
        (*current).left = (*(*current).right).left;
        (*current).right = (*(*current).right).right;
    } else if ((*current).right).is_null() {
        temp = (*current).left;
        (*current).key = (*(*current).left).key;
        (*current).left = (*(*current).left).left;
        (*current).right = (*(*current).left).right;
    } else {
        max = bst_find_max_node((*current).left, 1 as libc::c_int);
        if max.is_null() {
            temp = (*current).left;
            (*current).key = (*(*current).left).key;
            (*current).left = (*(*current).left).left;
        } else {
            temp = (*max).right;
            (*current).key = (*(*max).right).key;
            (*max).right = (*(*max).right).left;
        }
    }
    free(temp as *mut libc::c_void);
    (*bst).size -= 1;
    (*bst).size;
}
#[no_mangle]
pub unsafe extern "C" fn bst_inorder_traversal(mut node: *mut bst_node) {
    if !node.is_null() {
        bst_inorder_traversal((*node).left);
        printf(b"%d\t\0" as *const u8 as *const libc::c_char, (*node).key);
        bst_inorder_traversal((*node).right);
    }
}
unsafe fn main_0() -> libc::c_int {
    let mut bst: *mut bst = bst_create();
    let mut arr: [libc::c_int; 13] = [
        21 as libc::c_int,
        3 as libc::c_int,
        5 as libc::c_int,
        26 as libc::c_int,
        29 as libc::c_int,
        50 as libc::c_int,
        18 as libc::c_int,
        53 as libc::c_int,
        8 as libc::c_int,
        67 as libc::c_int,
        1 as libc::c_int,
        78 as libc::c_int,
        6 as libc::c_int,
    ];
    let mut length: libc::c_int = (::core::mem::size_of::<[libc::c_int; 13]>()
        as libc::c_ulong)
        .wrapping_div(::core::mem::size_of::<libc::c_int>() as libc::c_ulong)
        as libc::c_int;
    let mut i: libc::c_int = 0;
    i = 0 as libc::c_int;
    while i < length {
        bst_insert_node(bst, arr[i as usize]);
        printf(b"size: %d \0" as *const u8 as *const libc::c_char, (*bst).size);
        printf(b"Inorder Traversal: \0" as *const u8 as *const libc::c_char);
        bst_inorder_traversal((*bst).root);
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i += 1;
        i;
    }
    i = length - 1 as libc::c_int;
    while i >= 0 as libc::c_int {
        bst_delete_node(bst, arr[i as usize]);
        printf(b"size: %d \0" as *const u8 as *const libc::c_char, (*bst).size);
        printf(b"Inorder Traversal: \0" as *const u8 as *const libc::c_char);
        bst_inorder_traversal((*bst).root);
        printf(b"\n\0" as *const u8 as *const libc::c_char);
        i -= 1;
        i;
    }
    free(bst as *mut libc::c_void);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
