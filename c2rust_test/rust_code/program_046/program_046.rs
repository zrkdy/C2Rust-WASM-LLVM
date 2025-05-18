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
    pub data: libc::c_int,
    pub right: *mut Node,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Queue {
    pub data: *mut Node,
    pub next: *mut Queue,
}
#[no_mangle]
pub static mut front: *mut Queue = 0 as *const Queue as *mut Queue;
#[no_mangle]
pub static mut rear: *mut Queue = 0 as *const Queue as *mut Queue;
#[no_mangle]
pub unsafe extern "C" fn isEmpty() -> libc::c_int {
    if front.is_null() { return 1 as libc::c_int } else { return 0 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn Pop() {
    if isEmpty() != 0 {
        return;
    }
    let mut temp: *mut Queue = front;
    front = (*front).next;
    free(temp as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn Pfront() -> *mut Node {
    let mut temp: *mut Node = 0 as *mut Node;
    temp = (*front).data;
    return temp;
}
#[no_mangle]
pub unsafe extern "C" fn Enqeue(mut data: *mut Node) {
    let mut temp: *mut Queue = 0 as *mut Queue;
    temp = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong) as *mut Queue;
    (*temp).data = data;
    (*temp).next = 0 as *mut Queue;
    if front.is_null() && rear.is_null() {
        rear = temp;
        front = rear;
        return;
    }
    (*rear).next = temp;
    rear = temp;
}
#[no_mangle]
pub unsafe extern "C" fn NewNode(mut data: libc::c_int) -> *mut Node {
    let mut temp: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*temp).left = 0 as *mut Node;
    (*temp).data = data;
    (*temp).right = 0 as *mut Node;
    return temp;
}
#[no_mangle]
pub unsafe extern "C" fn PostOrder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    PostOrder((*root).left);
    PostOrder((*root).right);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root).data);
}
#[no_mangle]
pub unsafe extern "C" fn FindMin(mut root: *mut Node) -> *mut Node {
    while !((*root).left).is_null() {
        root = (*root).left;
    }
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn LevelOrder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    Enqeue(root);
    while isEmpty() == 0 {
        let mut current: *mut Node = Pfront();
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*current).data);
        if !((*current).left).is_null() {
            Enqeue((*current).left);
        }
        if !((*current).right).is_null() {
            Enqeue((*current).right);
        }
        Pop();
    }
}
#[no_mangle]
pub unsafe extern "C" fn Delete(
    mut root: *mut Node,
    mut data: libc::c_int,
) -> *mut Node {
    if root.is_null() {
        return root
    } else if data < (*root).data {
        (*root).left = Delete((*root).left, data);
    } else if data > (*root).data {
        (*root).right = Delete((*root).right, data);
    } else if ((*root).left).is_null() && ((*root).right).is_null() {
        free(root as *mut libc::c_void);
        root = 0 as *mut Node;
    } else if !((*root).left).is_null() && ((*root).right).is_null() {
        let mut temp: *mut Node = (*root).left;
        free(temp as *mut libc::c_void);
        root = (*root).left;
    } else if !((*root).right).is_null() && ((*root).left).is_null() {
        let mut temp_0: *mut Node = (*root).right;
        free(temp_0 as *mut libc::c_void);
        root = (*root).right;
    } else {
        let mut temp_1: *mut Node = FindMin((*root).right);
        (*root).data = (*temp_1).data;
        (*root).right = Delete((*root).right, (*temp_1).data);
    }
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn InOrder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    InOrder((*root).left);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root).data);
    InOrder((*root).right);
}
#[no_mangle]
pub unsafe extern "C" fn PreOrder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root).data);
    PreOrder((*root).left);
    PreOrder((*root).right);
}
#[no_mangle]
pub unsafe extern "C" fn insert(
    mut root: *mut Node,
    mut data: libc::c_int,
) -> *mut Node {
    if root.is_null() {
        root = NewNode(data);
    } else if data <= (*root).data {
        (*root).left = insert((*root).left, data);
    } else {
        (*root).right = insert((*root).right, data);
    }
    return root;
}
#[no_mangle]
pub unsafe extern "C" fn traverse(mut root: *mut Node) {
    printf(b"\n\nPreOrder traversal : \0" as *const u8 as *const libc::c_char);
    PreOrder(root);
    printf(b"\nInorder traversal  :   \0" as *const u8 as *const libc::c_char);
    InOrder(root);
    printf(b"\nPostOrder traversal:   \0" as *const u8 as *const libc::c_char);
    PostOrder(root);
    printf(b"\n Level Order Traversal: \0" as *const u8 as *const libc::c_char);
    LevelOrder(root);
}
unsafe fn main_0() -> libc::c_int {
    let mut root: *mut Node = 0 as *mut Node;
    root = insert(root, 12 as libc::c_int);
    root = insert(root, 5 as libc::c_int);
    root = insert(root, 8 as libc::c_int);
    root = insert(root, 1 as libc::c_int);
    root = insert(root, 9 as libc::c_int);
    root = insert(root, 7 as libc::c_int);
    traverse(root);
    Delete(root, 8 as libc::c_int);
    traverse(root);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
