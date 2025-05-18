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
    let mut minNode: *mut node = 0 as *mut node;
    let mut maxNode: *mut node = 0 as *mut node;
    root = insertNodeRecursive(root, 45 as libc::c_int);
    insertNodeRecursive(root, 54 as libc::c_int);
    insertNodeRecursive(root, 40 as libc::c_int);
    insertNodeRecursive(root, 49 as libc::c_int);
    insertNodeRecursive(root, 38 as libc::c_int);
    insertNodeRecursive(root, 70 as libc::c_int);
    insertNodeIterative(30 as libc::c_int);
    insertNodeIterative(39 as libc::c_int);
    insertNodeIterative(41 as libc::c_int);
    insertNodeIterative(45 as libc::c_int);
    insertNodeIterative(44 as libc::c_int);
    printf(b"\nPre-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    preOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    minNode = findMinIterative(root);
    if !minNode.is_null() {
        printf(
            b"\n\nMinimum value is: %d\n\0" as *const u8 as *const libc::c_char,
            (*minNode).number,
        );
    } else {
        printf(b"\n\nTree is empty!\n\0" as *const u8 as *const libc::c_char);
    }
    maxNode = findMaxRecursive(root);
    if !maxNode.is_null() {
        printf(
            b"\n\nMaximum value is: %d\n\0" as *const u8 as *const libc::c_char,
            (*maxNode).number,
        );
    } else {
        printf(b"\n\nTree is empty!\n\0" as *const u8 as *const libc::c_char);
    }
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn findMinRecursive(mut root_0: *mut node) -> *mut node {
    if ((*root_0).leftChild).is_null() {
        return root_0;
    }
    return findMinRecursive((*root_0).leftChild);
}
#[no_mangle]
pub unsafe extern "C" fn findMaxRecursive(mut root_0: *mut node) -> *mut node {
    if ((*root_0).rightChild).is_null() {
        return root_0;
    }
    return findMaxRecursive((*root_0).rightChild);
}
#[no_mangle]
pub unsafe extern "C" fn findMinIterative(mut root_0: *mut node) -> *mut node {
    if root_0.is_null() {
        return root_0;
    }
    while !((*root_0).leftChild).is_null() {
        root_0 = (*root_0).leftChild;
    }
    return root_0;
}
#[no_mangle]
pub unsafe extern "C" fn findMaxIterative(mut root_0: *mut node) -> *mut node {
    if root_0.is_null() {
        return root_0;
    }
    while !((*root_0).rightChild).is_null() {
        root_0 = (*root_0).rightChild;
    }
    return root_0;
}
#[no_mangle]
pub unsafe extern "C" fn insertNodeRecursive(
    mut newNode: *mut node,
    mut value: libc::c_int,
) -> *mut node {
    if newNode.is_null() {
        newNode = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
        (*newNode).number = value;
        (*newNode).leftChild = 0 as *mut bst;
        (*newNode).rightChild = 0 as *mut bst;
        return newNode;
    } else {
        if value <= (*newNode).number {
            (*newNode).leftChild = insertNodeRecursive((*newNode).leftChild, value);
        } else {
            (*newNode).rightChild = insertNodeRecursive((*newNode).rightChild, value);
        }
        return newNode;
    };
}
#[no_mangle]
pub unsafe extern "C" fn insertNodeIterative(mut value: libc::c_int) {
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
        (*parentNode).leftChild = 0 as *mut bst;
        (*parentNode).rightChild = 0 as *mut bst;
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
