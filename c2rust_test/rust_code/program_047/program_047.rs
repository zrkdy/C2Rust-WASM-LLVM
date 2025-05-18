use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub data: libc::c_int,
    pub height: libc::c_int,
    pub left: *mut Node,
    pub right: *mut Node,
}
#[no_mangle]
pub unsafe extern "C" fn NewNode(mut data: libc::c_int) -> *mut Node {
    let mut temp: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*temp).data = data;
    (*temp).left = 0 as *mut Node;
    (*temp).right = 0 as *mut Node;
    (*temp).height = 1 as libc::c_int;
    return temp;
}
#[no_mangle]
pub unsafe extern "C" fn max(mut a: libc::c_int, mut b: libc::c_int) -> libc::c_int {
    return if a > b { a } else { b };
}
#[no_mangle]
pub unsafe extern "C" fn height(mut node: *mut Node) -> libc::c_int {
    if node.is_null() {
        return 0 as libc::c_int;
    }
    return (*node).height;
}
#[no_mangle]
pub unsafe extern "C" fn Balance(mut node: *mut Node) -> libc::c_int {
    if node.is_null() {
        return 0 as libc::c_int;
    }
    return height((*node).left) - height((*node).right);
}
#[no_mangle]
pub unsafe extern "C" fn LeftRotate(mut z: *mut Node) -> *mut Node {
    let mut y: *mut Node = (*z).right;
    let mut t2: *mut Node = (*y).left;
    (*y).left = z;
    (*z).right = t2;
    (*z).height = max(height((*z).left), height((*z).right)) + 1 as libc::c_int;
    (*y).height = max(height((*y).left), height((*y).right)) + 1 as libc::c_int;
    return y;
}
#[no_mangle]
pub unsafe extern "C" fn RightRotate(mut z: *mut Node) -> *mut Node {
    let mut y: *mut Node = (*z).left;
    let mut t3: *mut Node = (*y).right;
    (*y).right = z;
    (*z).left = t3;
    (*z).height = max(height((*z).left), height((*z).right)) + 1 as libc::c_int;
    (*y).height = max(height((*y).left), height((*y).right)) + 1 as libc::c_int;
    return y;
}
#[no_mangle]
pub unsafe extern "C" fn preorder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root).data);
    preorder((*root).left);
    preorder((*root).right);
}
#[no_mangle]
pub unsafe extern "C" fn FindMin(mut node: *mut Node) -> *mut Node {
    while !((*node).left).is_null() {
        node = (*node).left;
    }
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn Delete(
    mut root: *mut Node,
    mut data: libc::c_int,
) -> *mut Node {
    if root.is_null() {
        return root;
    }
    if data < (*root).data {
        (*root).left = Delete((*root).left, data);
    } else if data > (*root).data {
        (*root).right = Delete((*root).right, data);
    } else if ((*root).right).is_null() && ((*root).left).is_null() {
        free(root as *mut libc::c_void);
        root = 0 as *mut Node;
    } else if !((*root).left).is_null() && ((*root).right).is_null() {
        let mut temp: *mut Node = (*root).left;
        root = (*root).left;
        free(temp as *mut libc::c_void);
    } else if !((*root).right).is_null() && ((*root).left).is_null() {
        let mut temp_0: *mut Node = (*root).right;
        root = (*root).right;
        free(temp_0 as *mut libc::c_void);
    } else {
        let mut temp_1: *mut Node = FindMin((*root).right);
        (*root).data = (*temp_1).data;
        (*root).right = Delete((*root).right, (*temp_1).data);
    }
    if root.is_null() {
        return root;
    }
    (*root).height = 1 as libc::c_int + max(height((*root).left), height((*root).right));
    let mut balance: libc::c_int = Balance(root);
    if balance > 1 as libc::c_int && Balance((*root).left) >= 0 as libc::c_int {
        return RightRotate(root);
    }
    if balance < -(1 as libc::c_int) && Balance((*root).right) <= 0 as libc::c_int {
        return LeftRotate(root);
    }
    if balance > 1 as libc::c_int && Balance((*root).left) < 0 as libc::c_int {
        (*root).left = LeftRotate((*root).left);
        return RightRotate(root);
    }
    if balance < -(1 as libc::c_int) && Balance((*root).right) > 0 as libc::c_int {
        (*root).right = RightRotate((*root).right);
        return LeftRotate(root);
    }
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn Insert(
    mut root: *mut Node,
    mut data: libc::c_int,
) -> *mut Node {
    if root.is_null() {
        return NewNode(data);
    }
    if data < (*root).data {
        (*root).left = Insert((*root).left, data);
    } else if data > (*root).data {
        (*root).right = Insert((*root).right, data);
    } else {
        return root
    }
    (*root).height = max(height((*root).left), height((*root).right)) + 1 as libc::c_int;
    let mut balance: libc::c_int = Balance(root);
    if balance > 1 as libc::c_int && data < (*(*root).left).data {
        return RightRotate(root);
    }
    if balance < -(1 as libc::c_int) && data > (*(*root).right).data {
        return LeftRotate(root);
    }
    if balance > 1 as libc::c_int && data > (*(*root).left).data {
        (*root).left = LeftRotate((*root).left);
        return RightRotate(root);
    }
    if balance < -(1 as libc::c_int) && data < (*(*root).right).data {
        (*root).right = RightRotate((*root).right);
        return LeftRotate(root);
    }
    return root;
}
unsafe fn main_0() -> libc::c_int {
    let mut root: *mut Node = 0 as *mut Node;
    root = Insert(root, 5 as libc::c_int);
    root = Insert(root, 10 as libc::c_int);
    root = Insert(root, 15 as libc::c_int);
    root = Insert(root, 25 as libc::c_int);
    root = Insert(root, 30 as libc::c_int);
    root = Insert(root, 14 as libc::c_int);
    root = Insert(root, 23 as libc::c_int);
    root = Insert(root, 6 as libc::c_int);
    root = Insert(root, 24 as libc::c_int);
    root = Insert(root, 30 as libc::c_int);
    root = Insert(root, 3 as libc::c_int);
    printf(b"\nPreorder traversal of tree is : \0" as *const u8 as *const libc::c_char);
    preorder(root);
    root = Delete(root, 10 as libc::c_int);
    printf(
        b"\nPreorder traversal after deleting 10 is : \0" as *const u8
            as *const libc::c_char,
    );
    preorder(root);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
