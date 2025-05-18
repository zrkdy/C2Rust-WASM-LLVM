use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub left: *mut Node,
    pub right: *mut Node,
    pub data: libc::c_int,
}
#[no_mangle]
pub static mut root: *mut Node = 0 as *const Node as *mut Node;
#[no_mangle]
pub unsafe extern "C" fn createNode(
    mut node: *mut Node,
    mut value: libc::c_int,
) -> *mut Node {
    node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    (*node).data = value;
    (*node).right = 0 as *mut Node;
    (*node).left = (*node).right;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn insert(
    mut node: *mut Node,
    mut value: libc::c_int,
) -> *mut Node {
    let mut temp: *mut Node = 0 as *mut Node;
    if node.is_null() {
        return createNode(temp, value);
    }
    if (*node).data > value {
        (*node).left = insert((*node).left, value);
    } else if (*node).data < value {
        (*node).right = insert((*node).right, value);
    }
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn inorder(mut node: *mut Node) {
    if !node.is_null() {
        inorder((*node).left);
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*node).data);
        inorder((*node).right);
    }
}
#[no_mangle]
pub unsafe extern "C" fn search(
    mut root_0: *mut Node,
    mut key: libc::c_int,
) -> *mut Node {
    if !root_0.is_null() {
        if (*root_0).data > key {
            return search((*root_0).left, key)
        } else if (*root_0).data < key {
            return search((*root_0).right, key)
        } else {
            return root_0
        }
    }
    return 0 as *mut Node;
}
#[no_mangle]
pub unsafe extern "C" fn height(mut root_0: *mut Node) -> libc::c_int {
    let mut x: libc::c_int = 0;
    let mut y: libc::c_int = 0;
    if root_0.is_null() {
        return 0 as libc::c_int;
    }
    x = height((*root_0).left);
    y = height((*root_0).right);
    return if x > y { x + 1 as libc::c_int } else { y + 1 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn Predecessor(mut root_0: *mut Node) -> *mut Node {
    while !root_0.is_null() && !((*root_0).right).is_null() {
        root_0 = (*root_0).right;
    }
    return root_0;
}
#[no_mangle]
pub unsafe extern "C" fn successor(mut root_0: *mut Node) -> *mut Node {
    while !root_0.is_null() && !((*root_0).left).is_null() {
        root_0 = (*root_0).left;
    }
    return root_0;
}
#[no_mangle]
pub unsafe extern "C" fn Delete(mut node: *mut Node, mut key: libc::c_int) -> *mut Node {
    let mut temp: *mut Node = 0 as *mut Node;
    if node.is_null() {
        return 0 as *mut Node;
    }
    if ((*node).left).is_null() && ((*node).right).is_null() && (*node).data == key {
        if node == root {
            root = 0 as *mut Node;
        }
        free(node as *mut libc::c_void);
        return 0 as *mut Node;
    }
    if (*node).data > key {
        (*node).left = Delete((*node).left, key);
    } else if (*node).data < key {
        (*node).right = Delete((*node).right, key);
    } else {
        let mut left: libc::c_int = 0;
        let mut right: libc::c_int = 0;
        left = height((*node).left);
        right = height((*node).right);
        if left > right {
            temp = Predecessor((*node).left);
            (*node).data = (*temp).data;
            (*node).left = Delete((*node).left, (*temp).data);
        } else {
            temp = successor((*node).right);
            (*node).data = (*temp).data;
            (*node).right = Delete((*node).right, (*temp).data);
        }
    }
    return node;
}
unsafe fn main_0() -> libc::c_int {
    let mut result: *mut Node = 0 as *mut Node;
    root = insert(root, 10 as libc::c_int);
    insert(root, 5 as libc::c_int);
    insert(root, 20 as libc::c_int);
    insert(root, 15 as libc::c_int);
    Delete(root, 15 as libc::c_int);
    inorder(root);
    result = search(root, 10 as libc::c_int);
    if !result.is_null() {
        printf(
            b"\nelement %d Found\n\0" as *const u8 as *const libc::c_char,
            (*result).data,
        );
    } else {
        printf(b"\nelement Not found!\n\0" as *const u8 as *const libc::c_char);
    }
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
