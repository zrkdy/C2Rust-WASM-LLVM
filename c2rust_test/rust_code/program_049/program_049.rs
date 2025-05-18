use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub data: libc::c_int,
    pub left: *mut Node,
    pub right: *mut Node,
    pub height: libc::c_int,
}
#[no_mangle]
pub static mut root: *mut Node = 0 as *const Node as *mut Node;
#[no_mangle]
pub unsafe extern "C" fn node_height(mut node: *mut Node) -> libc::c_int {
    let mut left: libc::c_int = 0;
    let mut right: libc::c_int = 0;
    left = if !node.is_null() && !((*node).left).is_null() {
        (*(*node).left).height
    } else {
        0 as libc::c_int
    };
    right = if !node.is_null() && !((*node).right).is_null() {
        (*(*node).right).height
    } else {
        0 as libc::c_int
    };
    return if left > right { left + 1 as libc::c_int } else { right + 1 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn LR_Rotation(mut node: *mut Node) -> *mut Node {
    let mut node_left: *mut Node = (*node).left;
    let mut left_right: *mut Node = (*node_left).right;
    (*node_left).right = (*left_right).left;
    (*node).left = (*left_right).right;
    (*left_right).left = (*node).left;
    (*left_right).right = node;
    (*node).height = node_height(node);
    (*node_left).height = node_height(node_left);
    (*left_right).height = node_height(left_right);
    if root == node {
        root = left_right;
    }
    return left_right;
}
#[no_mangle]
pub unsafe extern "C" fn RL_Rotation(mut node: *mut Node) -> *mut Node {
    let mut right_node: *mut Node = (*node).right;
    let mut right_left: *mut Node = (*right_node).left;
    (*right_left).left = node;
    (*right_left).right = right_node;
    if root == node {
        root = right_left;
    }
    (*node).height = node_height(node);
    (*right_node).height = node_height(right_node);
    (*right_left).height = node_height(right_left);
    return right_left;
}
#[no_mangle]
pub unsafe extern "C" fn RR_Rotation(mut node: *mut Node) -> *mut Node {
    let mut right_node: *mut Node = (*node).right;
    let mut right_left: *mut Node = (*right_node).left;
    (*node).right = right_left;
    (*right_node).left = node;
    (*node).height = node_height(node);
    (*right_node).height = node_height(right_node);
    if root == node {
        root = right_node;
    }
    return right_node;
}
#[no_mangle]
pub unsafe extern "C" fn LL_Rotation(mut node: *mut Node) -> *mut Node {
    let mut left_node: *mut Node = (*node).left;
    let mut left_right: *mut Node = (*left_node).right;
    (*left_node).right = node;
    (*node).left = left_right;
    (*node).height = node_height(node);
    (*left_node).height = node_height(left_node);
    if root == node {
        root = left_node;
    }
    return left_node;
}
#[no_mangle]
pub unsafe extern "C" fn createNode(
    mut node: *mut Node,
    mut value: libc::c_int,
) -> *mut Node {
    node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong) as *mut Node;
    (*node).data = value;
    (*node).height = 1 as libc::c_int;
    (*node).right = 0 as *mut Node;
    (*node).left = (*node).right;
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn Inorder(mut root_0: *mut Node) {
    if !root_0.is_null() {
        Inorder((*root_0).left);
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*root_0).data);
        Inorder((*root_0).right);
    }
}
#[no_mangle]
pub unsafe extern "C" fn Balance_factor(mut node: *mut Node) -> libc::c_int {
    let mut left: libc::c_int = 0;
    let mut right: libc::c_int = 0;
    left = if !node.is_null() && !((*node).left).is_null() {
        (*(*node).left).height
    } else {
        0 as libc::c_int
    };
    right = if !node.is_null() && !((*node).right).is_null() {
        (*(*node).right).height
    } else {
        0 as libc::c_int
    };
    return left - right;
}
#[no_mangle]
pub unsafe extern "C" fn Rotate(
    mut node: *mut Node,
    mut BALANCE_FACTOR: libc::c_int,
) -> *mut Node {
    let mut bf: libc::c_int = 0;
    if BALANCE_FACTOR == 2 as libc::c_int {
        bf = Balance_factor((*node).left);
        if bf == 1 as libc::c_int {
            node = LL_Rotation(node);
        } else if bf == -(1 as libc::c_int) {
            node = LR_Rotation(node);
        }
    } else if BALANCE_FACTOR == -(2 as libc::c_int) {
        bf = Balance_factor((*node).right);
        if bf == 1 as libc::c_int {
            node = RL_Rotation(node);
        } else if bf == -(1 as libc::c_int) {
            node = RR_Rotation(node);
        }
    }
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn insert(
    mut node: *mut Node,
    mut value: libc::c_int,
) -> *mut Node {
    let mut temp: *mut Node = 0 as *mut Node;
    let mut BALANCE_FACTOR: libc::c_int = 0;
    if node.is_null() {
        return createNode(temp, value);
    }
    if (*node).data > value {
        (*node).left = insert((*node).left, value);
    } else if (*node).data < value {
        (*node).right = insert((*node).right, value);
    }
    (*node).height = node_height(node);
    BALANCE_FACTOR = Balance_factor(node);
    Rotate(node, BALANCE_FACTOR);
    return node;
}
unsafe fn main_0() -> libc::c_int {
    root = insert(root, 30 as libc::c_int);
    insert(root, 20 as libc::c_int);
    insert(root, 40 as libc::c_int);
    insert(root, 50 as libc::c_int);
    insert(root, 10 as libc::c_int);
    insert(root, 25 as libc::c_int);
    insert(root, 5 as libc::c_int);
    insert(root, 15 as libc::c_int);
    insert(root, 28 as libc::c_int);
    insert(root, 4 as libc::c_int);
    Inorder(root);
    printf(b"\n%d\0" as *const u8 as *const libc::c_char, Balance_factor(root));
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
