use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn puts(__s: *const libc::c_char) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct bst {
    pub number: libc::c_int,
    pub leftChild: *mut bst,
    pub rightChild: *mut bst,
}
pub type node = bst;
#[no_mangle]
pub static mut root: *mut node = 0 as *const node as *mut node;
unsafe fn main_0() -> libc::c_int {
    let mut addingItem: libc::c_int = 0;
    let mut previous: libc::c_int = -(2147483647 as libc::c_int) - 1 as libc::c_int;
    insertNode(47 as libc::c_int);
    insertNode(40 as libc::c_int);
    insertNode(54 as libc::c_int);
    insertNode(38 as libc::c_int);
    insertNode(43 as libc::c_int);
    insertNode(49 as libc::c_int);
    insertNode(39 as libc::c_int);
    insertNode(45 as libc::c_int);
    insertNode(44 as libc::c_int);
    insertNode(30 as libc::c_int);
    insertNode(41 as libc::c_int);
    insertNode(70 as libc::c_int);
    insertNode(46 as libc::c_int);
    insertNode(59 as libc::c_int);
    printf(b"\nIn-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    inOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    if isItBst(root) == 1 as libc::c_int {
        printf(
            b"\nSlower Approach:\nYes, it is BST!\n\0" as *const u8
                as *const libc::c_char,
        );
    } else {
        printf(
            b"\nSlower Approach:\nNo, it is not BST\n\0" as *const u8
                as *const libc::c_char,
        );
    }
    addingItem = 62 as libc::c_int;
    (*(*root).rightChild).number = addingItem;
    printf(
        b"\nAfter adding %d as a right child of root.\nIn-Order Tree printing:\n\0"
            as *const u8 as *const libc::c_char,
        addingItem,
    );
    inOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    if isItBst_fast(root) == 1 as libc::c_int {
        printf(
            b"\nFaster Approach:\nYes, it is BST!\n\0" as *const u8
                as *const libc::c_char,
        );
    } else {
        printf(
            b"\nFaster Approach:\nNo, it is not BST\n\0" as *const u8
                as *const libc::c_char,
        );
    }
    addingItem = 54 as libc::c_int;
    (*(*root).rightChild).number = addingItem;
    printf(
        b"\nAfter adding %d as a right child of root.\nIn-Order Tree printing:\n\0"
            as *const u8 as *const libc::c_char,
        addingItem,
    );
    inOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    if isBstInOrderTraversal(root, previous) == 1 as libc::c_int {
        printf(
            b"\nIn-order traversal Approach:\nYes, it is BST!\n\0" as *const u8
                as *const libc::c_char,
        );
    } else {
        printf(
            b"\nIn-order traversal Approach:\nNo, it is not BST\n\0" as *const u8
                as *const libc::c_char,
        );
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isItBst_fast(mut root_0: *mut node) -> libc::c_int {
    return isBstHelper(
        root_0,
        -(2147483647 as libc::c_int) - 1 as libc::c_int,
        2147483647 as libc::c_int,
    );
}
#[no_mangle]
pub unsafe extern "C" fn isBstHelper(
    mut root_0: *mut node,
    mut minimum: libc::c_int,
    mut maximum: libc::c_int,
) -> libc::c_int {
    if root_0.is_null() {
        return 1 as libc::c_int;
    }
    if (*root_0).number >= minimum && (*root_0).number < maximum
        && isBstHelper((*root_0).leftChild, minimum, (*root_0).number) != 0
        && isBstHelper((*root_0).rightChild, (*root_0).number, maximum) != 0
    {
        return 1 as libc::c_int;
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn isItBst(mut root_0: *mut node) -> libc::c_int {
    if root_0.is_null() {
        return 1 as libc::c_int;
    }
    if !((*root_0).leftChild).is_null()
        && findMax((*root_0).leftChild) > (*root_0).number
    {
        return 0 as libc::c_int;
    }
    if !((*root_0).rightChild).is_null()
        && findMin((*root_0).rightChild) < (*root_0).number
    {
        return 0 as libc::c_int;
    }
    if isItBst((*root_0).leftChild) == 0 || isItBst((*root_0).rightChild) == 0 {
        return 0 as libc::c_int;
    }
    return 1 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn findMin(mut root_0: *mut node) -> libc::c_int {
    if ((*root_0).leftChild).is_null() {
        return (*root_0).number;
    }
    return findMin((*root_0).leftChild);
}
#[no_mangle]
pub unsafe extern "C" fn findMax(mut root_0: *mut node) -> libc::c_int {
    if ((*root_0).rightChild).is_null() {
        return (*root_0).number;
    }
    return findMax((*root_0).rightChild);
}
#[no_mangle]
pub unsafe extern "C" fn isBstInOrderTraversal(
    mut root_0: *mut node,
    mut previous: libc::c_int,
) -> libc::c_int {
    if root_0.is_null() {
        return 1 as libc::c_int;
    }
    if isBstInOrderTraversal((*root_0).leftChild, previous) == 0 {
        return 0 as libc::c_int;
    }
    if (*root_0).number < previous {
        return 0 as libc::c_int;
    }
    previous = (*root_0).number;
    return isBstInOrderTraversal((*root_0).rightChild, previous);
}
#[no_mangle]
pub unsafe extern "C" fn insertNode(mut value: libc::c_int) {
    let mut tempNode: *mut node = 0 as *mut node;
    let mut currentNode: *mut node = 0 as *mut node;
    let mut parentNode: *mut node = 0 as *mut node;
    tempNode = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
    (*tempNode).number = value;
    (*tempNode).leftChild = 0 as *mut bst;
    (*tempNode).rightChild = 0 as *mut bst;
    if root.is_null() {
        root = tempNode;
    } else {
        currentNode = root;
        parentNode = 0 as *mut node;
        loop {
            parentNode = currentNode;
            if value <= (*parentNode).number {
                currentNode = (*currentNode).leftChild;
                if currentNode.is_null() {
                    (*parentNode).leftChild = tempNode;
                    return;
                }
            } else {
                currentNode = (*currentNode).rightChild;
                if currentNode.is_null() {
                    (*parentNode).rightChild = tempNode;
                    return;
                }
            }
        }
    };
}
#[no_mangle]
pub unsafe extern "C" fn inOrderPrint(mut root_0: *mut node) {
    if root_0.is_null() {
        return;
    }
    inOrderPrint((*root_0).leftChild);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root_0).number);
    inOrderPrint((*root_0).rightChild);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
