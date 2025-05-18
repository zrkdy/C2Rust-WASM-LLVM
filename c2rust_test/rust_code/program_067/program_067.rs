use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct BinaryTreeNode {
    pub data: libc::c_int,
    pub left: *mut BinaryTreeNode,
    pub right: *mut BinaryTreeNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct ListNode {
    pub data: *mut BinaryTreeNode,
    pub next: *mut ListNode,
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Queue {
    pub front: *mut ListNode,
    pub rear: *mut ListNode,
}
#[no_mangle]
pub unsafe extern "C" fn createQueue() -> *mut Queue {
    let mut Q: *mut Queue = 0 as *mut Queue;
    Q = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong) as *mut Queue;
    if Q.is_null() {
        return 0 as *mut Queue;
    }
    (*Q).rear = 0 as *mut ListNode;
    (*Q).front = (*Q).rear;
    return Q;
}
#[no_mangle]
pub unsafe extern "C" fn size(mut Q: *mut Queue) -> libc::c_int {
    let mut temp: *mut ListNode = (*Q).front;
    let mut count: libc::c_int = 0 as libc::c_int;
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        return 0 as libc::c_int;
    }
    while temp != (*Q).rear {
        count += 1;
        count;
        temp = (*temp).next;
    }
    if temp == (*Q).rear {
        count += 1;
        count;
    }
    return count;
}
#[no_mangle]
pub unsafe extern "C" fn frontElement(mut Q: *mut Queue) -> *mut BinaryTreeNode {
    return (*(*Q).front).data;
}
#[no_mangle]
pub unsafe extern "C" fn rearElement(mut Q: *mut Queue) -> *mut BinaryTreeNode {
    return (*(*Q).rear).data;
}
#[no_mangle]
pub unsafe extern "C" fn isEmpty(mut Q: *mut Queue) -> libc::c_int {
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        return 1 as libc::c_int
    } else {
        return 0 as libc::c_int
    };
}
#[no_mangle]
pub unsafe extern "C" fn enQueue(mut Q: *mut Queue, mut node: *mut BinaryTreeNode) {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    temp = malloc(::core::mem::size_of::<ListNode>() as libc::c_ulong) as *mut ListNode;
    (*temp).data = node;
    (*temp).next = 0 as *mut ListNode;
    if ((*Q).rear).is_null() {
        (*Q).rear = temp;
        (*Q).front = (*Q).rear;
    } else {
        (*(*Q).rear).next = temp;
        (*Q).rear = temp;
    };
}
#[no_mangle]
pub unsafe extern "C" fn deQueue(mut Q: *mut Queue) -> *mut BinaryTreeNode {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    if ((*Q).front).is_null() {
        printf(b"\nQueue is Empty \n\0" as *const u8 as *const libc::c_char);
        return 0 as *mut BinaryTreeNode;
    } else {
        temp = (*Q).front;
        (*Q).front = (*(*Q).front).next;
        if ((*Q).front).is_null() {
            (*Q).rear = 0 as *mut ListNode;
        }
        return (*temp).data;
    };
}
#[no_mangle]
pub unsafe extern "C" fn printQueue(mut Q: *mut Queue) {
    let mut temp: *mut ListNode = (*Q).front;
    if ((*Q).front).is_null() && ((*Q).rear).is_null() {
        printf(b"Queue is Empty\n\0" as *const u8 as *const libc::c_char);
        return;
    }
    while !temp.is_null() {
        printf(b"%d\0" as *const u8 as *const libc::c_char, (*(*temp).data).data);
        temp = (*temp).next;
        if !temp.is_null() {
            printf(b"-->\0" as *const u8 as *const libc::c_char);
        }
    }
}
#[no_mangle]
pub unsafe extern "C" fn deleteQueue(mut Q: *mut Queue) {
    let mut temp: *mut ListNode = 0 as *mut ListNode;
    while !((*Q).front).is_null() {
        temp = (*Q).front;
        printf(
            b"Element being deleted: %d\n\0" as *const u8 as *const libc::c_char,
            (*(*temp).data).data,
        );
        (*Q).front = (*(*Q).front).next;
        free(temp as *mut libc::c_void);
    }
    free(Q as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn createNewNode(mut data: libc::c_int) -> *mut BinaryTreeNode {
    let mut newNode: *mut BinaryTreeNode = malloc(
        ::core::mem::size_of::<BinaryTreeNode>() as libc::c_ulong,
    ) as *mut BinaryTreeNode;
    (*newNode).data = data;
    (*newNode).left = 0 as *mut BinaryTreeNode;
    (*newNode).right = 0 as *mut BinaryTreeNode;
    return newNode;
}
#[no_mangle]
pub unsafe extern "C" fn levelOrder(mut root: *mut BinaryTreeNode) {
    let mut temp: *mut BinaryTreeNode = 0 as *mut BinaryTreeNode;
    let mut Q: *mut Queue = createQueue();
    if root.is_null() {
        return;
    }
    enQueue(Q, root);
    while isEmpty(Q) == 0 {
        temp = deQueue(Q);
        printf(b"\n%d\0" as *const u8 as *const libc::c_char, (*temp).data);
        if !((*temp).left).is_null() {
            enQueue(Q, (*temp).left);
        }
        if !((*temp).right).is_null() {
            enQueue(Q, (*temp).right);
        }
    }
    deleteQueue(Q);
}
unsafe fn main_0() -> libc::c_int {
    let mut root: *mut BinaryTreeNode = createNewNode(2 as libc::c_int);
    (*root).left = createNewNode(7 as libc::c_int);
    (*root).right = createNewNode(5 as libc::c_int);
    (*(*root).right).right = createNewNode(9 as libc::c_int);
    (*(*(*root).right).right).left = createNewNode(4 as libc::c_int);
    (*(*root).left).left = createNewNode(2 as libc::c_int);
    (*(*root).left).right = createNewNode(6 as libc::c_int);
    (*(*(*root).left).right).left = createNewNode(5 as libc::c_int);
    (*(*(*root).left).right).right = createNewNode(11 as libc::c_int);
    printf(
        b"Level Order traversal of binary BinaryTreeNode is :\0" as *const u8
            as *const libc::c_char,
    );
    levelOrder(root);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
