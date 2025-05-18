use ::libc;
extern "C" {
    fn printf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn scanf(_: *const libc::c_char, _: ...) -> libc::c_int;
    fn getchar() -> libc::c_int;
    fn malloc(_: libc::c_ulong) -> *mut libc::c_void;
    fn strncmp(
        _: *const libc::c_char,
        _: *const libc::c_char,
        _: libc::c_ulong,
    ) -> libc::c_int;
    fn strlen(_: *const libc::c_char) -> libc::c_ulong;
}
#[derive(Copy, Clone)]
#[repr(C)]
pub struct HTNode {
    pub Weight: libc::c_int,
    pub Left: HuffmanTree,
    pub Right: HuffmanTree,
}
pub type HuffmanTree = *mut HTNode;
#[derive(Copy, Clone)]
#[repr(C)]
pub struct HNode {
    pub Data: *mut HuffmanTree,
    pub Size: libc::c_int,
    pub Capacity: libc::c_int,
}
pub type MinHeap = *mut HNode;
#[no_mangle]
pub static mut mini: HuffmanTree = 0 as *const HTNode as *mut HTNode;
#[no_mangle]
pub unsafe extern "C" fn CreateHeap() -> MinHeap {
    let mut H: MinHeap = malloc(::core::mem::size_of::<HNode>() as libc::c_ulong)
        as MinHeap;
    (*H)
        .Data = malloc(
        ((65 as libc::c_int + 1 as libc::c_int) as libc::c_ulong)
            .wrapping_mul(::core::mem::size_of::<HuffmanTree>() as libc::c_ulong),
    ) as *mut HuffmanTree;
    (*H).Size = 0 as libc::c_int;
    (*H).Capacity = 65 as libc::c_int;
    let ref mut fresh0 = *((*H).Data).offset(0 as libc::c_int as isize);
    *fresh0 = mini;
    return H;
}
#[no_mangle]
pub unsafe extern "C" fn IsHeapFull(mut H: MinHeap) -> bool {
    return (*H).Size == (*H).Capacity;
}
#[no_mangle]
pub unsafe extern "C" fn IsHeapEmpty(mut H: MinHeap) -> bool {
    return (*H).Size == 0 as libc::c_int;
}
#[no_mangle]
pub unsafe extern "C" fn InsertMinHeap(mut H: MinHeap, mut item: HuffmanTree) {
    let mut i: libc::c_int = 0;
    if IsHeapFull(H) {
        printf(b"FULL\n\0" as *const u8 as *const libc::c_char);
        return;
    }
    (*H).Size += 1;
    i = (*H).Size;
    while (**((*H).Data).offset((i / 2 as libc::c_int) as isize)).Weight > (*item).Weight
    {
        let ref mut fresh1 = *((*H).Data).offset(i as isize);
        *fresh1 = *((*H).Data).offset((i / 2 as libc::c_int) as isize);
        i /= 2 as libc::c_int;
    }
    let ref mut fresh2 = *((*H).Data).offset(i as isize);
    *fresh2 = item;
}
#[no_mangle]
pub unsafe extern "C" fn DeleteMin(mut H: MinHeap) -> HuffmanTree {
    let mut parent: libc::c_int = 0;
    let mut child: libc::c_int = 0;
    let mut MinItem: HuffmanTree = 0 as *mut HTNode;
    let mut temp: HuffmanTree = 0 as *mut HTNode;
    if IsHeapEmpty(H) {
        printf(b"Empty\n\0" as *const u8 as *const libc::c_char);
        return 0 as HuffmanTree;
    }
    MinItem = *((*H).Data).offset(1 as libc::c_int as isize);
    temp = *((*H).Data).offset((*H).Size as isize);
    (*H).Size -= 1;
    (*H).Size;
    parent = 1 as libc::c_int;
    while parent * 2 as libc::c_int <= (*H).Size {
        child = parent * 2 as libc::c_int;
        if child != (*H).Size
            && (**((*H).Data).offset(child as isize)).Weight
                > (**((*H).Data).offset((child + 1 as libc::c_int) as isize)).Weight
        {
            child += 1;
            child;
        }
        if (*temp).Weight <= (**((*H).Data).offset(child as isize)).Weight {
            break;
        }
        let ref mut fresh3 = *((*H).Data).offset(parent as isize);
        *fresh3 = *((*H).Data).offset(child as isize);
        parent = child;
    }
    let ref mut fresh4 = *((*H).Data).offset(parent as isize);
    *fresh4 = temp;
    return MinItem;
}
#[no_mangle]
pub unsafe extern "C" fn PercDown(mut H: MinHeap, mut p: libc::c_int) {
    let mut parent: libc::c_int = 0;
    let mut child: libc::c_int = 0;
    let mut X: HuffmanTree = 0 as *mut HTNode;
    X = *((*H).Data).offset(p as isize);
    parent = p;
    while parent * 2 as libc::c_int <= (*H).Size {
        child = parent * 2 as libc::c_int;
        if child != (*H).Size
            && (**((*H).Data).offset(child as isize)).Weight
                > (**((*H).Data).offset((child + 1 as libc::c_int) as isize)).Weight
        {
            child += 1;
            child;
        }
        if (*X).Weight <= (**((*H).Data).offset(child as isize)).Weight {
            break;
        }
        let ref mut fresh5 = *((*H).Data).offset(parent as isize);
        *fresh5 = *((*H).Data).offset(child as isize);
        parent = child;
    }
    let ref mut fresh6 = *((*H).Data).offset(parent as isize);
    *fresh6 = X;
}
#[no_mangle]
pub unsafe extern "C" fn BuildMinHeap(mut H: MinHeap) {
    let mut i: libc::c_int = 0;
    i = (*H).Size / 2 as libc::c_int;
    while i > 0 as libc::c_int {
        PercDown(H, i);
        i -= 1;
        i;
    }
}
#[no_mangle]
pub unsafe extern "C" fn CreateHuffman() -> HuffmanTree {
    let mut HFT: HuffmanTree = 0 as *mut HTNode;
    HFT = malloc(::core::mem::size_of::<HTNode>() as libc::c_ulong) as HuffmanTree;
    (*HFT).Left = 0 as HuffmanTree;
    (*HFT).Right = 0 as HuffmanTree;
    return HFT;
}
#[no_mangle]
pub unsafe extern "C" fn Huffman(mut H: MinHeap) -> HuffmanTree {
    let mut i: libc::c_int = 0;
    let mut N: libc::c_int = 0;
    let mut T: HuffmanTree = 0 as *mut HTNode;
    BuildMinHeap(H);
    N = (*H).Size;
    i = 1 as libc::c_int;
    while i < N {
        T = malloc(::core::mem::size_of::<HTNode>() as libc::c_ulong) as HuffmanTree;
        (*T).Left = DeleteMin(H);
        (*T).Right = DeleteMin(H);
        (*T).Weight = (*(*T).Left).Weight + (*(*T).Right).Weight;
        InsertMinHeap(H, T);
        i += 1;
        i;
    }
    T = DeleteMin(H);
    return T;
}
#[no_mangle]
pub unsafe extern "C" fn WPL(mut H: HuffmanTree, mut depth: libc::c_int) -> libc::c_int {
    if ((*H).Left).is_null() && ((*H).Right).is_null() {
        return depth * (*H).Weight
    } else {
        return WPL((*H).Left, depth + 1 as libc::c_int)
            + WPL((*H).Right, depth + 1 as libc::c_int)
    };
}
#[no_mangle]
pub unsafe extern "C" fn Min(mut a: libc::c_int, mut b: libc::c_int) -> libc::c_int {
    return if a < b { a } else { b };
}
#[no_mangle]
pub unsafe extern "C" fn IsPrefix(
    mut code: *mut [libc::c_char; 65],
    mut N: libc::c_int,
) -> bool {
    let mut length: libc::c_int = 0;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i <= N {
        let mut j: libc::c_int = i + 1 as libc::c_int;
        while j <= N {
            length = Min(
                strlen((*code.offset(i as isize)).as_mut_ptr()) as libc::c_int,
                strlen((*code.offset(j as isize)).as_mut_ptr()) as libc::c_int,
            );
            if strncmp(
                (*code.offset(i as isize)).as_mut_ptr(),
                (*code.offset(j as isize)).as_mut_ptr(),
                length as libc::c_ulong,
            ) == 0 as libc::c_int
            {
                return 1 as libc::c_int != 0;
            }
            j += 1;
            j;
        }
        i += 1;
        i;
    }
    return 0 as libc::c_int != 0;
}
#[no_mangle]
pub unsafe extern "C" fn Check(
    mut code: *mut [libc::c_char; 65],
    mut f: *mut libc::c_int,
    mut wpl: libc::c_int,
    mut N: libc::c_int,
) -> bool {
    let mut Len: libc::c_int = 0 as libc::c_int;
    let mut i: libc::c_int = 1 as libc::c_int;
    while i <= N {
        Len = (Len as libc::c_ulong)
            .wrapping_add(
                (strlen((*code.offset(i as isize)).as_mut_ptr()))
                    .wrapping_mul(*f.offset(i as isize) as libc::c_ulong),
            ) as libc::c_int as libc::c_int;
        i += 1;
        i;
    }
    if Len != wpl { return 0 as libc::c_int != 0 } else { return !IsPrefix(code, N) };
}
unsafe fn main_0(
    mut argc: libc::c_int,
    mut argv: *mut *const libc::c_char,
) -> libc::c_int {
    let mut N: libc::c_int = 0;
    let mut i: libc::c_int = 0;
    let mut j: libc::c_int = 0;
    let mut f: [libc::c_int; 65] = [0; 65];
    let mut wpl: libc::c_int = 0;
    let mut M: libc::c_int = 0;
    let mut c: [libc::c_char; 65] = [0; 65];
    let mut code: [[libc::c_char; 65]; 65] = [[0; 65]; 65];
    let mut HFT: HuffmanTree = 0 as *mut HTNode;
    mini = CreateHuffman();
    (*mini).Weight = -(1000 as libc::c_int);
    let mut H: MinHeap = CreateHeap();
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut N as *mut libc::c_int);
    (*H).Size = N;
    i = 1 as libc::c_int;
    while i <= N {
        getchar();
        scanf(
            b"%c %d\0" as *const u8 as *const libc::c_char,
            &mut *c.as_mut_ptr().offset(i as isize) as *mut libc::c_char,
            &mut *f.as_mut_ptr().offset(i as isize) as *mut libc::c_int,
        );
        HFT = malloc(::core::mem::size_of::<HTNode>() as libc::c_ulong) as HuffmanTree;
        (*HFT).Left = 0 as HuffmanTree;
        (*HFT).Right = 0 as HuffmanTree;
        (*HFT).Weight = f[i as usize];
        let ref mut fresh7 = *((*H).Data).offset(i as isize);
        *fresh7 = HFT;
        i += 1;
        i;
    }
    HFT = Huffman(H);
    wpl = WPL(HFT, 0 as libc::c_int);
    scanf(b"%d\0" as *const u8 as *const libc::c_char, &mut M as *mut libc::c_int);
    j = 0 as libc::c_int;
    while j < M {
        i = 1 as libc::c_int;
        while i <= N {
            getchar();
            scanf(
                b"%c %s\0" as *const u8 as *const libc::c_char,
                &mut *c.as_mut_ptr().offset(i as isize) as *mut libc::c_char,
                (code[i as usize]).as_mut_ptr(),
            );
            i += 1;
            i;
        }
        if Check(code.as_mut_ptr(), f.as_mut_ptr(), wpl, N) {
            printf(b"Yes\n\0" as *const u8 as *const libc::c_char);
        } else {
            printf(b"No\n\0" as *const u8 as *const libc::c_char);
        }
        j += 1;
        j;
    }
    return 0 as libc::c_int;
}
pub fn main() {
    let mut args: Vec::<*mut libc::c_char> = Vec::new();
    for arg in ::std::env::args() {
        args.push(
            (::std::ffi::CString::new(arg))
                .expect("Failed to convert argument into CString.")
                .into_raw(),
        );
    }
    args.push(::core::ptr::null_mut());
    unsafe {
        ::std::process::exit(
            main_0(
                (args.len() - 1) as libc::c_int,
                args.as_mut_ptr() as *mut *const libc::c_char,
            ) as i32,
        )
    }
}
