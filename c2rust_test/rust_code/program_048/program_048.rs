use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn free(_: *mut libc::c_void);
}
pub type type_0 = libc::c_uint;
pub const BLACK: type_0 = 1;
pub const RED: type_0 = 0;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct Node {
    pub data: libc::c_int,
    pub left: *mut Node,
    pub right: *mut Node,
    pub parent: *mut Node,
    pub color: type_0,
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
pub unsafe extern "C" fn pfront() -> *mut Node {
    let mut data: *mut Node = 0 as *mut Node;
    data = (*front).data;
    return data;
}
#[no_mangle]
pub unsafe extern "C" fn isempty() -> libc::c_int {
    if front.is_null() { return 1 as libc::c_int } else { return 0 as libc::c_int };
}
#[no_mangle]
pub unsafe extern "C" fn dequeue() {
    if isempty() != 0 {
        return;
    }
    let mut temp: *mut Queue = front;
    front = (*front).next;
    free(temp as *mut libc::c_void);
}
#[no_mangle]
pub unsafe extern "C" fn enqueue(mut data: *mut Node) {
    let mut temp: *mut Queue = malloc(::core::mem::size_of::<Queue>() as libc::c_ulong)
        as *mut Queue;
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
pub unsafe extern "C" fn levelorder(mut root: *mut Node) {
    if root.is_null() {
        return;
    }
    enqueue(root);
    while isempty() == 0 {
        let mut current: *mut Node = pfront();
        printf(b"%d \0" as *const u8 as *const libc::c_char, (*current).data);
        if !((*current).left).is_null() {
            enqueue((*current).left);
        }
        if !((*current).right).is_null() {
            enqueue((*current).right);
        }
        dequeue();
    }
}
#[no_mangle]
pub unsafe extern "C" fn LeftRotate(mut T: *mut *mut Node, mut x: *mut *mut Node) {
    let mut y: *mut Node = (**x).right;
    (**x).right = (*y).left;
    if !((*y).left).is_null() {
        (*(*y).left).parent = *x;
    }
    (*y).parent = (**x).parent;
    if ((**x).parent).is_null() {
        *T = y;
    } else if *x == (*(**x).parent).left {
        (*(**x).parent).left = y;
    } else {
        (*(**x).parent).right = y;
    }
    (*y).left = *x;
    (**x).parent = y;
}
#[no_mangle]
pub unsafe extern "C" fn RightRotate(mut T: *mut *mut Node, mut x: *mut *mut Node) {
    let mut y: *mut Node = (**x).left;
    (**x).left = (*y).right;
    if !((*y).right).is_null() {
        (*(*y).right).parent = *x;
    }
    (*y).parent = (**x).parent;
    if ((**x).parent).is_null() {
        *T = y;
    } else if *x == (*(**x).parent).left {
        (*(**x).parent).left = y;
    } else {
        (*(**x).parent).right = y;
    }
    (*y).right = *x;
    (**x).parent = y;
}
#[no_mangle]
pub unsafe extern "C" fn RB_insert_fixup(mut T: *mut *mut Node, mut z: *mut *mut Node) {
    let mut grandparent: *mut Node = 0 as *mut Node;
    let mut parentpt: *mut Node = 0 as *mut Node;
    while *z != *T && (**z).color as libc::c_uint != BLACK as libc::c_int as libc::c_uint
        && (*(**z).parent).color as libc::c_uint == RED as libc::c_int as libc::c_uint
    {
        parentpt = (**z).parent;
        grandparent = (*(**z).parent).parent;
        if parentpt == (*grandparent).left {
            let mut uncle: *mut Node = (*grandparent).right;
            if !uncle.is_null()
                && (*uncle).color as libc::c_uint == RED as libc::c_int as libc::c_uint
            {
                (*grandparent).color = RED;
                (*parentpt).color = BLACK;
                (*uncle).color = BLACK;
                *z = grandparent;
            } else {
                if *z == (*parentpt).right {
                    LeftRotate(T, &mut parentpt);
                    *z = parentpt;
                    parentpt = (**z).parent;
                }
                RightRotate(T, &mut grandparent);
                (*parentpt).color = BLACK;
                (*grandparent).color = RED;
                *z = parentpt;
            }
        } else {
            let mut uncle_0: *mut Node = (*grandparent).left;
            if !uncle_0.is_null()
                && (*uncle_0).color as libc::c_uint == RED as libc::c_int as libc::c_uint
            {
                (*grandparent).color = RED;
                (*parentpt).color = BLACK;
                (*uncle_0).color = BLACK;
                *z = grandparent;
            } else {
                if *z == (*parentpt).left {
                    RightRotate(T, &mut parentpt);
                    *z = parentpt;
                    parentpt = (**z).parent;
                }
                LeftRotate(T, &mut grandparent);
                (*parentpt).color = BLACK;
                (*grandparent).color = RED;
                *z = parentpt;
            }
        }
    }
    (**T).color = BLACK;
}
#[no_mangle]
pub unsafe extern "C" fn RB_insert(
    mut T: *mut Node,
    mut data: libc::c_int,
) -> *mut Node {
    let mut z: *mut Node = malloc(::core::mem::size_of::<Node>() as libc::c_ulong)
        as *mut Node;
    (*z).data = data;
    (*z).left = 0 as *mut Node;
    (*z).right = 0 as *mut Node;
    (*z).parent = 0 as *mut Node;
    (*z).color = RED;
    let mut y: *mut Node = 0 as *mut Node;
    let mut x: *mut Node = T;
    while !x.is_null() {
        y = x;
        if (*z).data < (*x).data {
            x = (*x).left;
        } else {
            x = (*x).right;
        }
    }
    (*z).parent = y;
    if y.is_null() {
        T = z;
    } else if (*z).data < (*y).data {
        (*y).left = z;
    } else {
        (*y).right = z;
    }
    RB_insert_fixup(&mut T, &mut z);
    return T;
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
pub unsafe extern "C" fn Tree_minimum(mut node: *mut Node) -> *mut Node {
    while !((*node).left).is_null() {
        node = (*node).left;
    }
    return node;
}
#[no_mangle]
pub unsafe extern "C" fn RB_delete_fixup(mut T: *mut *mut Node, mut x: *mut *mut Node) {
    while *x != *T && (**x).color as libc::c_uint == BLACK as libc::c_int as libc::c_uint
    {
        if *x == (*(**x).parent).left {
            let mut w: *mut Node = (*(**x).parent).right;
            if (*w).color as libc::c_uint == RED as libc::c_int as libc::c_uint {
                (*w).color = BLACK;
                (*(**x).parent).color = BLACK;
                LeftRotate(T, &mut (**x).parent);
                w = (*(**x).parent).right;
            }
            if (*(*w).left).color as libc::c_uint == BLACK as libc::c_int as libc::c_uint
                && (*(*w).right).color as libc::c_uint
                    == BLACK as libc::c_int as libc::c_uint
            {
                (*w).color = RED;
                *x = (**x).parent;
            } else {
                if (*(*w).right).color as libc::c_uint
                    == BLACK as libc::c_int as libc::c_uint
                {
                    (*(*w).left).color = BLACK;
                    (*w).color = RED;
                    RightRotate(T, &mut w);
                    w = (*(**x).parent).right;
                }
                (*w).color = (*(**x).parent).color;
                (*(**x).parent).color = BLACK;
                (*(*w).right).color = BLACK;
                LeftRotate(T, &mut (**x).parent);
                *x = *T;
            }
        } else {
            let mut w_0: *mut Node = (*(**x).parent).left;
            if (*w_0).color as libc::c_uint == RED as libc::c_int as libc::c_uint {
                (*w_0).color = BLACK;
                (*(**x).parent).color = BLACK;
                RightRotate(T, &mut (**x).parent);
                w_0 = (*(**x).parent).left;
            }
            if (*(*w_0).right).color as libc::c_uint
                == BLACK as libc::c_int as libc::c_uint
                && (*(*w_0).left).color as libc::c_uint
                    == BLACK as libc::c_int as libc::c_uint
            {
                (*w_0).color = RED;
                *x = (**x).parent;
            } else {
                if (*(*w_0).left).color as libc::c_uint
                    == BLACK as libc::c_int as libc::c_uint
                {
                    (*(*w_0).right).color = BLACK;
                    (*w_0).color = RED;
                    LeftRotate(T, &mut w_0);
                    w_0 = (*(**x).parent).left;
                }
                (*w_0).color = (*(**x).parent).color;
                (*(**x).parent).color = BLACK;
                (*(*w_0).left).color = BLACK;
                RightRotate(T, &mut (**x).parent);
                *x = *T;
            }
        }
    }
    (**x).color = BLACK;
}
#[no_mangle]
pub unsafe extern "C" fn RB_transplat(
    mut T: *mut *mut Node,
    mut u: *mut *mut Node,
    mut v: *mut *mut Node,
) {
    if ((**u).parent).is_null() {
        *T = *v;
    } else if *u == (*(**u).parent).left {
        (*(**u).parent).left = *v;
    } else {
        (*(**u).parent).right = *v;
    }
    if !(*v).is_null() {
        (**v).parent = (**u).parent;
    }
}
#[no_mangle]
pub unsafe extern "C" fn RB_delete(mut T: *mut Node, mut z: *mut Node) -> *mut Node {
    let mut y: *mut Node = z;
    let mut yoc: type_0 = RED;
    yoc = (*z).color;
    let mut x: *mut Node = 0 as *mut Node;
    if ((*z).left).is_null() {
        x = (*z).right;
        RB_transplat(&mut T, &mut z, &mut (*z).right);
    } else if ((*z).right).is_null() {
        x = (*z).left;
        RB_transplat(&mut T, &mut z, &mut (*z).left);
    } else {
        y = Tree_minimum((*z).right);
        yoc = (*y).color;
        x = (*y).right;
        if (*y).parent == z {
            (*x).parent = y;
        } else {
            RB_transplat(&mut T, &mut y, &mut (*y).right);
            (*y).right = (*z).right;
            (*(*y).right).parent = y;
        }
        RB_transplat(&mut T, &mut z, &mut y);
        (*y).left = (*z).left;
        (*(*y).left).parent = y;
        (*y).color = (*z).color;
    }
    if yoc as libc::c_uint == BLACK as libc::c_int as libc::c_uint {
        RB_delete_fixup(&mut T, &mut x);
    }
    return T;
}
#[no_mangle]
pub unsafe extern "C" fn BST_search(
    mut root: *mut Node,
    mut x: libc::c_int,
) -> *mut Node {
    if root.is_null() || (*root).data == x {
        return root;
    }
    if (*root).data > x {
        return BST_search((*root).left, x)
    } else {
        return BST_search((*root).right, x)
    };
}
unsafe fn main_0() -> libc::c_int {
    let mut RBT: *mut Node = 0 as *mut Node;
    RBT = RB_insert(RBT, 2 as libc::c_int);
    RBT = RB_insert(RBT, 1 as libc::c_int);
    RBT = RB_insert(RBT, 4 as libc::c_int);
    RBT = RB_insert(RBT, 5 as libc::c_int);
    RBT = RB_insert(RBT, 9 as libc::c_int);
    RBT = RB_insert(RBT, 3 as libc::c_int);
    RBT = RB_insert(RBT, 6 as libc::c_int);
    RBT = RB_insert(RBT, 7 as libc::c_int);
    printf(b"\nPreorder - \0" as *const u8 as *const libc::c_char);
    preorder(RBT);
    printf(b"\nLevel order - \0" as *const u8 as *const libc::c_char);
    levelorder(RBT);
    let mut x: *mut Node = BST_search(RBT, 5 as libc::c_int);
    RBT = RB_delete(RBT, x);
    printf(b"\nAfter deleting 5\0" as *const u8 as *const libc::c_char);
    printf(b"\nPreorder - \0" as *const u8 as *const libc::c_char);
    preorder(RBT);
    front = 0 as *mut Queue;
    rear = 0 as *mut Queue;
    printf(b"\nLevel order - \0" as *const u8 as *const libc::c_char);
    levelorder(RBT);
    return 0 as libc::c_int;
}
pub fn main() {
    unsafe { ::std::process::exit(main_0() as i32) }
}
