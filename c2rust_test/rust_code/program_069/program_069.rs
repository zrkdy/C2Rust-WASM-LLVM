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
    printf(b"\nPre-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    preOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    root = deleteNode(root, 43 as libc::c_int);
    printf(
        b"\nPre-Order Tree printing after deletion:\n\0" as *const u8
            as *const libc::c_char,
    );
    preOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn deleteNode(
    mut currentNode: *mut node,
    mut value: libc::c_int,
) -> *mut node {
    if currentNode.is_null() {
        return 0 as *mut node
    } else if value < (*currentNode).number {
        (*currentNode).leftChild = deleteNode((*currentNode).leftChild, value);
    } else if value > (*currentNode).number {
        (*currentNode).rightChild = deleteNode((*currentNode).rightChild, value);
    } else if ((*currentNode).leftChild).is_null()
        && ((*currentNode).rightChild).is_null()
    {
        currentNode = 0 as *mut node;
    } else if ((*currentNode).leftChild).is_null() {
        currentNode = (*currentNode).rightChild;
    } else if ((*currentNode).rightChild).is_null() {
        currentNode = (*currentNode).leftChild;
    } else {
        let mut tempNode: *mut node = findMinimum((*currentNode).rightChild);
        (*currentNode).number = (*tempNode).number;
        (*currentNode)
            .rightChild = deleteNode((*currentNode).rightChild, (*tempNode).number);
    }
    return currentNode;
}
#[no_mangle]
pub unsafe extern "C" fn findMinimum(mut currentNode: *mut node) -> *mut node {
    if ((*currentNode).leftChild).is_null() {
        return currentNode;
    }
    return findMinimum((*currentNode).leftChild);
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
pub unsafe extern "C" fn preOrderPrint(mut root_0: *mut node) {
    if root_0.is_null() {
        return;
    }
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*root_0).number);
    preOrderPrint((*root_0).leftChild);
    preOrderPrint((*root_0).rightChild);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
