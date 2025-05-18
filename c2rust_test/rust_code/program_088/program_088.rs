use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn puts(__s: *const libc::c_char) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct tree {
    pub number: libc::c_int,
    pub leftChild: *mut tree,
    pub rightChild: *mut tree,
}
pub type node = tree;
#[no_mangle]
pub static mut root: *mut node = 0 as *const node as *mut node;
unsafe fn main_0() -> libc::c_int {
    insertNode(45 as libc::c_int);
    insertNode(54 as libc::c_int);
    insertNode(40 as libc::c_int);
    insertNode(49 as libc::c_int);
    insertNode(38 as libc::c_int);
    insertNode(70 as libc::c_int);
    insertNode(30 as libc::c_int);
    insertNode(39 as libc::c_int);
    insertNode(41 as libc::c_int);
    insertNode(45 as libc::c_int);
    insertNode(44 as libc::c_int);
    printf(b"\nPre-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    preOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    printf(b"\nIn-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    inOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    printf(b"\nPost-Order Tree printing:\n\0" as *const u8 as *const libc::c_char);
    postOrderPrint(root);
    puts(b"\0" as *const u8 as *const libc::c_char);
    searchOnTree(70 as libc::c_int);
    return 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn insertNode(mut value: libc::c_int) {
    let mut tempNode: *mut node = 0 as *mut node;
    let mut currentNode: *mut node = 0 as *mut node;
    let mut parentNode: *mut node = 0 as *mut node;
    tempNode = malloc(::core::mem::size_of::<node>() as libc::c_ulong) as *mut node;
    (*tempNode).number = value;
    (*tempNode).leftChild = 0 as *mut tree;
    (*tempNode).rightChild = 0 as *mut tree;
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
pub unsafe extern "C" fn searchOnTree(mut value: libc::c_int) {
    let mut currentNode: *mut node = root;
    let mut flag: libc::c_int = 0 as libc::c_int;
    loop {
        if value == (*currentNode).number {
            flag = 1 as libc::c_int;
            break;
        } else {
            if value <= (*currentNode).number {
                currentNode = (*currentNode).leftChild;
            } else {
                currentNode = (*currentNode).rightChild;
            }
            if currentNode.is_null() {
                break;
            }
        }
    }
    if flag == 1 as libc::c_int {
        printf(
            b"\n%d is found on Tree.\n\n\0" as *const u8 as *const libc::c_char,
            (*currentNode).number,
        );
    } else {
        printf(
            b"\n%d is not found on Tree.\n\n\0" as *const u8 as *const libc::c_char,
            value,
        );
    };
}
#[no_mangle]
pub unsafe extern "C" fn preOrderPrint(mut rootNode: *mut node) {
    if rootNode.is_null() {
        return;
    }
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*rootNode).number);
    preOrderPrint((*rootNode).leftChild);
    preOrderPrint((*rootNode).rightChild);
}
#[no_mangle]
pub unsafe extern "C" fn inOrderPrint(mut rootNode: *mut node) {
    if rootNode.is_null() {
        return;
    }
    inOrderPrint((*rootNode).leftChild);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*rootNode).number);
    inOrderPrint((*rootNode).rightChild);
}
#[no_mangle]
pub unsafe extern "C" fn postOrderPrint(mut rootNode: *mut node) {
    if rootNode.is_null() {
        return;
    }
    postOrderPrint((*rootNode).leftChild);
    postOrderPrint((*rootNode).rightChild);
    printf(b"%d \0" as *const u8 as *const libc::c_char, (*rootNode).number);
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
