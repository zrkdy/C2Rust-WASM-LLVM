; ModuleID = '8m63iryfe4dey4qk42tpf2vcm'
source_filename = "8m63iryfe4dey4qk42tpf2vcm"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%LNode = type { [17 x i8], [17 x i8], [6 x i8], ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_0beb4ec10e24df0e49bf3f72913caac2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00!\00\00\00" }>, align 8
@alloc_a91a700852dff4932ea8783197138c54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\10\00\00\00" }>, align 8
@alloc_1ed964aab6d6c3d3f78f16bf85f3fad7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc_7b863443ea0c801cf7566f3b21d7414b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\00\00\00\0A\00\00\00" }>, align 8
@alloc_b0dc3419ba98fe2a0cdebecee6164449 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\00\00\00\05\00\00\00" }>, align 8
@alloc_7bed3bad79b3c05b34a35f82edac66f9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\0F\00\00\00" }>, align 8
@alloc_46f2aeb6d78f6c51a01f5660a1d7acb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\0B\00\00\00" }>, align 8
@alloc_4c87074e4774261940ae0e22a5ad4c08 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\09\00\00\00" }>, align 8
@alloc_2f8e4e32c40ce37b4912ff93bb8d1f9f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00\0B\00\00\00" }>, align 8
@alloc_34f87c6a7ab64b9593f62cafefad227d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00\09\00\00\00" }>, align 8
@alloc_07573b9946555102cb56f595ea45a163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00 \00\00\00" }>, align 8
@alloc_f4a77f64ac4302832b9e4ecfce812327 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\0D\00\00\00" }>, align 8
@alloc_8a3f825e6b9e1682c4e215f90a902226 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00f\00\00\00\0B\00\00\00" }>, align 8
@alloc_d46485fc493231b54d87062b37cc7a34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00 \00\00\00" }>, align 8
@alloc_459597a9f43556bf6c960515b19c5b7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00g\00\00\002\00\00\00" }>, align 8
@alloc_55dea29330452860129a54adfbd44696 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\15\00\00\00" }>, align 8
@alloc_a7396d705c6df60482e1589d45156911 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\00\0B\00\00\00" }>, align 8
@alloc_600339098278502175543d2275ed6a1b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\00\09\00\00\00" }>, align 8
@alloc_92c023f1bd86b74f5a42d66a3e26317a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00\13\00\00\00" }>, align 8
@alloc_2fc622b2ef8caa994bd13df8a6c1e1fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00w\00\00\00\0D\00\00\00" }>, align 8
@alloc_0ae44abee403f26144e6b6a0d725aebe = private unnamed_addr constant [14 x i8] c"ERROR: Exist\0A\00", align 1
@alloc_2f3e8e3acbcdda9fee70033b7df481b3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\87\00\00\00\10\00\00\00" }>, align 8
@alloc_508adef034525713a15eea68b7e9acbd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\88\00\00\00\10\00\00\00" }>, align 8
@alloc_e06022c065eb7f00f0a36183f6dd4882 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\89\00\00\00\19\00\00\00" }>, align 8
@alloc_29dda7ce5af954d70bf8ccdaa642e5c7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\1D\00\00\00" }>, align 8
@alloc_4db6eb145a8dbf35096ebae9dd430862 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\1B\00\00\00" }>, align 8
@alloc_4a6eda898bdde920aeb6902aaba4aae6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\09\00\00\00" }>, align 8
@alloc_a16ca7b2e57ff4581724b9bb708b0a81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8B\00\00\00 \00\00\00" }>, align 8
@alloc_0360c04944b4aee5a37d27d125532c4b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8B\00\00\00\0D\00\00\00" }>, align 8
@alloc_00b593d238a1fab5dca48a47e14d818c = private unnamed_addr constant [9 x i8] c"New: OK\0A\00", align 1
@alloc_b4d74324b3096d801f2e71f13efb1d03 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\98\00\00\00\0F\00\00\00" }>, align 8
@alloc_0b58a670ac24ef526e3d00585fcb3344 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\00\00\00\0A\00\00\00" }>, align 8
@alloc_4f1b09b7fb3312ddefaf937c94d34037 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\99\00\00\00\0F\00\00\00" }>, align 8
@alloc_d3f0ce81c936d03e4f315ec6781737a9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\99\00\00\00\0D\00\00\00" }>, align 8
@alloc_67917eaad185a878e0f4d72460423370 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9B\00\00\00\13\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17hb1440810300a77eaE() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
start:
  %0 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %count, i64 %size)
  %_10.0 = extractvalue { i64, i1 } %0, 0
  %_10.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_10.1, label %bb3, label %bb5

bb5:                                              ; preds = %start
  %self = ptrtoint ptr %this to i64
  %1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %_10.0)
  %_19.0 = extractvalue { i64, i1 } %1, 0
  %_19.1 = extractvalue { i64, i1 } %1, 1
  %_17 = icmp slt i64 %_10.0, 0
  %overflow = xor i1 %_19.1, %_17
  %_4 = xor i1 %overflow, true
  br i1 %_4, label %bb1, label %bb2

bb3:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb3, %bb5
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #6
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f544375caf75fd9E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define i32 @NextPrime(i32 %N) unnamed_addr #2 {
start:
  %p = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  %_8 = icmp eq i32 %N, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic, label %bb2

bb2:                                              ; preds = %start
  %_4 = srem i32 %N, 2
  %0 = icmp eq i32 %_4, 0
  br i1 %0, label %bb4, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_0beb4ec10e24df0e49bf3f72913caac2) #6
  unreachable

bb4:                                              ; preds = %bb2
  %1 = add i32 %N, 1
  store i32 %1, ptr %p, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  %2 = add i32 %N, 2
  store i32 %2, ptr %p, align 4
  br label %bb5

bb5:                                              ; preds = %bb14, %bb3, %bb4
  %_11 = load i32, ptr %p, align 4
  %_10 = icmp sle i32 %_11, 1000000
  br i1 %_10, label %bb6, label %bb15

bb15:                                             ; preds = %bb13, %bb5
  %_0 = load i32, ptr %p, align 4
  ret i32 %_0

bb6:                                              ; preds = %bb5
  %_14 = load i32, ptr %p, align 4
  %_13 = sitofp i32 %_14 to double
  %_12 = call double @sqrt(double %_13) #7
  %3 = call i32 @llvm.fptosi.sat.i32.f64(double %_12)
  store i32 %3, ptr %i, align 4
  br label %bb8

bb8:                                              ; preds = %bb12, %bb6
  %_16 = load i32, ptr %i, align 4
  %_15 = icmp sgt i32 %_16, 2
  br i1 %_15, label %bb9, label %bb13

bb13:                                             ; preds = %bb11, %bb8
  %_24 = load i32, ptr %i, align 4
  %4 = icmp eq i32 %_24, 2
  br i1 %4, label %bb15, label %bb14

bb9:                                              ; preds = %bb8
  %_18 = load i32, ptr %p, align 4
  %_19 = load i32, ptr %i, align 4
  %_20 = icmp eq i32 %_19, 0
  br i1 %_20, label %panic1, label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp eq i32 %_19, -1
  %_22 = icmp eq i32 %_18, -2147483648
  %_23 = and i1 %_21, %_22
  br i1 %_23, label %panic2, label %bb11

panic1:                                           ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_a91a700852dff4932ea8783197138c54) #6
  unreachable

bb11:                                             ; preds = %bb10
  %_17 = srem i32 %_18, %_19
  %5 = icmp eq i32 %_17, 0
  br i1 %5, label %bb13, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_a91a700852dff4932ea8783197138c54) #6
  unreachable

bb12:                                             ; preds = %bb11
  %6 = load i32, ptr %i, align 4
  %7 = sub i32 %6, 1
  store i32 %7, ptr %i, align 4
  br label %bb8

bb14:                                             ; preds = %bb13
  %8 = load i32, ptr %p, align 4
  %9 = add i32 %8, 2
  store i32 %9, ptr %p, align 4
  br label %bb5
}

; Function Attrs: nounwind nonlazybind
define ptr @CreateTable(i32 %TableSize) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %H = alloca [8 x i8], align 8
  store ptr null, ptr %H, align 8
  store i32 0, ptr %i, align 4
  %_4 = call ptr @malloc(i64 16) #7
  store ptr %_4, ptr %H, align 8
  %_7 = call i32 @NextPrime(i32 %TableSize) #7
  %_84 = load ptr, ptr %H, align 8
  %_85 = ptrtoint ptr %_84 to i64
  %_88 = and i64 %_85, 7
  %_89 = icmp eq i64 %_88, 0
  br i1 %_89, label %bb23, label %panic

bb23:                                             ; preds = %start
  %_90 = load ptr, ptr %H, align 8
  %_91 = ptrtoint ptr %_90 to i64
  %_94 = icmp eq i64 %_91, 0
  %_95 = and i1 %_94, true
  %_96 = xor i1 %_95, true
  br i1 %_96, label %bb24, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_85, ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #6
  unreachable

bb24:                                             ; preds = %bb23
  %0 = load ptr, ptr %H, align 8
  store i32 %_7, ptr %0, align 8
  %_78 = load ptr, ptr %H, align 8
  %_79 = ptrtoint ptr %_78 to i64
  %_82 = and i64 %_79, 7
  %_83 = icmp eq i64 %_82, 0
  br i1 %_83, label %bb22, label %panic2

panic1:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #6
  unreachable

bb22:                                             ; preds = %bb24
  %_97 = load ptr, ptr %H, align 8
  %_98 = ptrtoint ptr %_97 to i64
  %_101 = icmp eq i64 %_98, 0
  %_102 = and i1 %_101, true
  %_103 = xor i1 %_102, true
  br i1 %_103, label %bb25, label %panic3

panic2:                                           ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_79, ptr align 8 @alloc_7b863443ea0c801cf7566f3b21d7414b) #6
  unreachable

bb25:                                             ; preds = %bb22
  %1 = load ptr, ptr %H, align 8
  %_11 = load i32, ptr %1, align 8
  %_10 = sext i32 %_11 to i64
  %_0.i = mul i64 %_10, 48
  %_8 = call ptr @malloc(i64 %_0.i) #7
  %_72 = load ptr, ptr %H, align 8
  %_73 = ptrtoint ptr %_72 to i64
  %_76 = and i64 %_73, 7
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb21, label %panic4

panic3:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7b863443ea0c801cf7566f3b21d7414b) #6
  unreachable

bb21:                                             ; preds = %bb25
  %_104 = load ptr, ptr %H, align 8
  %_105 = ptrtoint ptr %_104 to i64
  %_108 = icmp eq i64 %_105, 0
  %_109 = and i1 %_108, true
  %_110 = xor i1 %_109, true
  br i1 %_110, label %bb26, label %panic5

panic4:                                           ; preds = %bb25
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_73, ptr align 8 @alloc_b0dc3419ba98fe2a0cdebecee6164449) #6
  unreachable

bb26:                                             ; preds = %bb21
  %2 = load ptr, ptr %H, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %_8, ptr %3, align 8
  store i32 0, ptr %i, align 4
  br label %bb7

panic5:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b0dc3419ba98fe2a0cdebecee6164449) #6
  unreachable

bb7:                                              ; preds = %bb33, %bb26
  %_15 = load i32, ptr %i, align 4
  %_66 = load ptr, ptr %H, align 8
  %_67 = ptrtoint ptr %_66 to i64
  %_70 = and i64 %_67, 7
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %bb20, label %panic6

bb20:                                             ; preds = %bb7
  %_111 = load ptr, ptr %H, align 8
  %_112 = ptrtoint ptr %_111 to i64
  %_115 = icmp eq i64 %_112, 0
  %_116 = and i1 %_115, true
  %_117 = xor i1 %_116, true
  br i1 %_117, label %bb27, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_67, ptr align 8 @alloc_7bed3bad79b3c05b34a35f82edac66f9) #6
  unreachable

bb27:                                             ; preds = %bb20
  %4 = load ptr, ptr %H, align 8
  %_16 = load i32, ptr %4, align 8
  %_14 = icmp slt i32 %_15, %_16
  br i1 %_14, label %bb8, label %bb14

panic7:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7bed3bad79b3c05b34a35f82edac66f9) #6
  unreachable

bb14:                                             ; preds = %bb27
  %_0 = load ptr, ptr %H, align 8
  ret ptr %_0

bb8:                                              ; preds = %bb27
  %_60 = load ptr, ptr %H, align 8
  %_61 = ptrtoint ptr %_60 to i64
  %_64 = and i64 %_61, 7
  %_65 = icmp eq i64 %_64, 0
  br i1 %_65, label %bb19, label %panic8

bb19:                                             ; preds = %bb8
  %_118 = load ptr, ptr %H, align 8
  %_119 = ptrtoint ptr %_118 to i64
  %_122 = icmp eq i64 %_119, 0
  %_123 = and i1 %_122, true
  %_124 = xor i1 %_123, true
  br i1 %_124, label %bb28, label %panic9

panic8:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_61, ptr align 8 @alloc_46f2aeb6d78f6c51a01f5660a1d7acb7) #6
  unreachable

bb28:                                             ; preds = %bb19
  %5 = load ptr, ptr %H, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %_19 = load ptr, ptr %6, align 8
  %_21 = load i32, ptr %i, align 4
  %_20 = sext i32 %_21 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_19, i64 %_20, i64 48) #7
  %_0.i21 = getelementptr inbounds %LNode, ptr %_19, i64 %_20
  %_55 = ptrtoint ptr %_0.i21 to i64
  %_58 = and i64 %_55, 7
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %bb18, label %panic10

panic9:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_46f2aeb6d78f6c51a01f5660a1d7acb7) #6
  unreachable

bb18:                                             ; preds = %bb28
  %_126 = ptrtoint ptr %_0.i21 to i64
  %_129 = icmp eq i64 %_126, 0
  %_130 = and i1 %_129, true
  %_131 = xor i1 %_130, true
  br i1 %_131, label %bb29, label %panic11

panic10:                                          ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_55, ptr align 8 @alloc_4c87074e4774261940ae0e22a5ad4c08) #6
  unreachable

bb29:                                             ; preds = %bb18
  %7 = getelementptr inbounds nuw i8, ptr %_0.i21, i64 0
  store i8 0, ptr %7, align 8
  %_48 = load ptr, ptr %H, align 8
  %_49 = ptrtoint ptr %_48 to i64
  %_52 = and i64 %_49, 7
  %_53 = icmp eq i64 %_52, 0
  br i1 %_53, label %bb17, label %panic12

panic11:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4c87074e4774261940ae0e22a5ad4c08) #6
  unreachable

bb17:                                             ; preds = %bb29
  %_132 = load ptr, ptr %H, align 8
  %_133 = ptrtoint ptr %_132 to i64
  %_136 = icmp eq i64 %_133, 0
  %_137 = and i1 %_136, true
  %_138 = xor i1 %_137, true
  br i1 %_138, label %bb30, label %panic13

panic12:                                          ; preds = %bb29
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_49, ptr align 8 @alloc_2f8e4e32c40ce37b4912ff93bb8d1f9f) #6
  unreachable

bb30:                                             ; preds = %bb17
  %8 = load ptr, ptr %H, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %_26 = load ptr, ptr %9, align 8
  %_28 = load i32, ptr %i, align 4
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_26, i64 %_27, i64 48) #7
  %_0.i20 = getelementptr inbounds %LNode, ptr %_26, i64 %_27
  %_43 = ptrtoint ptr %_0.i20 to i64
  %_46 = and i64 %_43, 7
  %_47 = icmp eq i64 %_46, 0
  br i1 %_47, label %bb16, label %panic14

panic13:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2f8e4e32c40ce37b4912ff93bb8d1f9f) #6
  unreachable

bb16:                                             ; preds = %bb30
  %_140 = ptrtoint ptr %_0.i20 to i64
  %_143 = icmp eq i64 %_140, 0
  %_144 = and i1 %_143, true
  %_145 = xor i1 %_144, true
  br i1 %_145, label %bb31, label %panic15

panic14:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_43, ptr align 8 @alloc_34f87c6a7ab64b9593f62cafefad227d) #6
  unreachable

bb31:                                             ; preds = %bb16
  %10 = getelementptr inbounds i8, ptr %_0.i20, i64 17
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 0
  store i8 0, ptr %11, align 1
  %_36 = load ptr, ptr %H, align 8
  %_37 = ptrtoint ptr %_36 to i64
  %_40 = and i64 %_37, 7
  %_41 = icmp eq i64 %_40, 0
  br i1 %_41, label %bb15, label %panic16

panic15:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_34f87c6a7ab64b9593f62cafefad227d) #6
  unreachable

bb15:                                             ; preds = %bb31
  %_146 = load ptr, ptr %H, align 8
  %_147 = ptrtoint ptr %_146 to i64
  %_150 = icmp eq i64 %_147, 0
  %_151 = and i1 %_150, true
  %_152 = xor i1 %_151, true
  br i1 %_152, label %bb32, label %panic17

panic16:                                          ; preds = %bb31
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_37, ptr align 8 @alloc_07573b9946555102cb56f595ea45a163) #6
  unreachable

bb32:                                             ; preds = %bb15
  %12 = load ptr, ptr %H, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  %_33 = load ptr, ptr %13, align 8
  %_35 = load i32, ptr %i, align 4
  %_34 = sext i32 %_35 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_33, i64 %_34, i64 48) #7
  %_0.i19 = getelementptr inbounds %LNode, ptr %_33, i64 %_34
  %_154 = ptrtoint ptr %_0.i19 to i64
  %_155 = icmp eq i64 %_154, 0
  %_156 = and i1 %_155, true
  %_157 = xor i1 %_156, true
  br i1 %_157, label %bb33, label %panic18

panic17:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07573b9946555102cb56f595ea45a163) #6
  unreachable

bb33:                                             ; preds = %bb32
  %fresh0 = getelementptr inbounds i8, ptr %_0.i19, i64 40
  store ptr null, ptr %fresh0, align 8
  %14 = load i32, ptr %i, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %i, align 4
  br label %bb7

panic18:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f4a77f64ac4302832b9e4ecfce812327) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @Hash(ptr %Key, i32 %TableSize) unnamed_addr #2 {
start:
  %ptr = alloca [8 x i8], align 8
  %h = alloca [8 x i8], align 8
  store i64 0, ptr %h, align 8
  store ptr %Key, ptr %ptr, align 8
  br label %bb1

bb1:                                              ; preds = %bb7, %start
  %_26 = load ptr, ptr %ptr, align 8
  %_27 = ptrtoint ptr %_26 to i64
  %_30 = icmp eq i64 %_27, 0
  %_31 = and i1 %_30, true
  %_32 = xor i1 %_31, true
  br i1 %_32, label %bb8, label %panic

bb8:                                              ; preds = %bb1
  %0 = load ptr, ptr %ptr, align 8
  %_7 = load i8, ptr %0, align 1
  %_6 = sext i8 %_7 to i32
  %_5 = icmp ne i32 %_6, 0
  br i1 %_5, label %bb2, label %bb5

panic:                                            ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8a3f825e6b9e1682c4e215f90a902226) #6
  unreachable

bb5:                                              ; preds = %bb8
  %_17 = load i64, ptr %h, align 8
  %_18 = sext i32 %TableSize to i64
  %_3.i = icmp eq i64 %_18, 0
  br i1 %_3.i, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit"

panic.i:                                          ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_d46485fc493231b54d87062b37cc7a34) #6
  unreachable

"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit": ; preds = %bb5
  %_0.i2 = urem i64 %_17, %_18
  %p = trunc i64 %_0.i2 to i32
  ret i32 %p

bb2:                                              ; preds = %bb8
  %_11 = load i64, ptr %h, align 8
  %_10 = shl i64 %_11, 5
  %_19 = load ptr, ptr %ptr, align 8
  %_20 = ptrtoint ptr %_19 to i64
  %_23 = icmp eq i64 %_20, 0
  %_24 = and i1 %_23, true
  %_25 = xor i1 %_24, true
  br i1 %_25, label %bb7, label %panic1

bb7:                                              ; preds = %bb2
  %1 = load ptr, ptr %ptr, align 8
  %_13 = load i8, ptr %1, align 1
  %_12 = sext i8 %_13 to i64
  %_0.i = add i64 %_10, %_12
  store i64 %_0.i, ptr %h, align 8
  %_15 = load ptr, ptr %ptr, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_15, i64 1, i64 1) #7
  %_0.i3 = getelementptr inbounds i8, ptr %_15, i64 1
  store ptr %_0.i3, ptr %ptr, align 8
  br label %bb1

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_459597a9f43556bf6c960515b19c5b7b) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @Find(ptr %H, ptr %Key) unnamed_addr #2 {
start:
  %pos = alloca [4 x i8], align 4
  %p = alloca [8 x i8], align 8
  store ptr null, ptr %p, align 8
  store i32 0, ptr %pos, align 4
  %_40 = ptrtoint ptr %H to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb13, label %panic

bb13:                                             ; preds = %start
  %_46 = ptrtoint ptr %H to i64
  %_49 = icmp eq i64 %_46, 0
  %_50 = and i1 %_49, true
  %_51 = xor i1 %_50, true
  br i1 %_51, label %bb14, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_55dea29330452860129a54adfbd44696) #6
  unreachable

bb14:                                             ; preds = %bb13
  %_6 = load i32, ptr %H, align 8
  %_5 = call i32 @Hash(ptr %Key, i32 %_6) #7
  store i32 %_5, ptr %pos, align 4
  %_34 = ptrtoint ptr %H to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb12, label %panic2

panic1:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_55dea29330452860129a54adfbd44696) #6
  unreachable

bb12:                                             ; preds = %bb14
  %_53 = ptrtoint ptr %H to i64
  %_56 = icmp eq i64 %_53, 0
  %_57 = and i1 %_56, true
  %_58 = xor i1 %_57, true
  br i1 %_58, label %bb15, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_a7396d705c6df60482e1589d45156911) #6
  unreachable

bb15:                                             ; preds = %bb12
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_9 = load ptr, ptr %0, align 8
  %_11 = load i32, ptr %pos, align 4
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_9, i64 %_10, i64 48) #7
  %_0.i = getelementptr inbounds %LNode, ptr %_9, i64 %_10
  %_28 = ptrtoint ptr %_0.i to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb11, label %panic4

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a7396d705c6df60482e1589d45156911) #6
  unreachable

bb11:                                             ; preds = %bb15
  %_60 = ptrtoint ptr %_0.i to i64
  %_63 = icmp eq i64 %_60, 0
  %_64 = and i1 %_63, true
  %_65 = xor i1 %_64, true
  br i1 %_65, label %bb16, label %panic5

panic4:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_600339098278502175543d2275ed6a1b) #6
  unreachable

bb16:                                             ; preds = %bb11
  %1 = getelementptr inbounds i8, ptr %_0.i, i64 40
  %_7 = load ptr, ptr %1, align 8
  store ptr %_7, ptr %p, align 8
  br label %bb3

panic5:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_600339098278502175543d2275ed6a1b) #6
  unreachable

bb3:                                              ; preds = %bb17, %bb16
  %_13 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_12 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f544375caf75fd9E"(ptr %_13) #7
  br i1 %_12, label %bb9, label %bb5

bb5:                                              ; preds = %bb3
  %_73 = load ptr, ptr %p, align 8
  %_74 = ptrtoint ptr %_73 to i64
  %_75 = icmp eq i64 %_74, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb18, label %panic6

bb9:                                              ; preds = %bb18, %bb3
  %_0 = load ptr, ptr %p, align 8
  ret ptr %_0

bb18:                                             ; preds = %bb5
  %_18 = load ptr, ptr %p, align 8
  %_14 = call i32 @strcmp(ptr %_18, ptr %Key) #7
  %2 = icmp eq i32 %_14, 0
  br i1 %2, label %bb9, label %bb8

panic6:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_92c023f1bd86b74f5a42d66a3e26317a) #6
  unreachable

bb8:                                              ; preds = %bb18
  %_21 = load ptr, ptr %p, align 8
  %_22 = ptrtoint ptr %_21 to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb10, label %panic7

bb10:                                             ; preds = %bb8
  %_66 = load ptr, ptr %p, align 8
  %_67 = ptrtoint ptr %_66 to i64
  %_70 = icmp eq i64 %_67, 0
  %_71 = and i1 %_70, true
  %_72 = xor i1 %_71, true
  br i1 %_72, label %bb17, label %panic8

panic7:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_2fc622b2ef8caa994bd13df8a6c1e1fc) #6
  unreachable

bb17:                                             ; preds = %bb10
  %3 = load ptr, ptr %p, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 40
  %_20 = load ptr, ptr %4, align 8
  store ptr %_20, ptr %p, align 8
  br label %bb3

panic8:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2fc622b2ef8caa994bd13df8a6c1e1fc) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Insert(ptr %H, ptr %Key, ptr %PW) unnamed_addr #2 {
start:
  %pos = alloca [4 x i8], align 4
  %NewCell = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %NewCell, align 8
  store i32 0, ptr %pos, align 4
  %_7 = call ptr @Find(ptr %H, ptr %Key) #7
  store ptr %_7, ptr %p, align 8
  %_9 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_8 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f544375caf75fd9E"(ptr %_9) #7
  br i1 %_8, label %bb3, label %bb13

bb13:                                             ; preds = %start
  %_41 = call i32 (ptr, ...) @printf(ptr @alloc_0ae44abee403f26144e6b6a0d725aebe) #7
  br label %bb14

bb3:                                              ; preds = %start
  %_10 = call ptr @malloc(i64 48) #7
  store ptr %_10, ptr %NewCell, align 8
  %_121 = load ptr, ptr %NewCell, align 8
  %_122 = ptrtoint ptr %_121 to i64
  %_123 = icmp eq i64 %_122, 0
  %_124 = and i1 %_123, true
  %_125 = xor i1 %_124, true
  br i1 %_125, label %bb27, label %panic

bb14:                                             ; preds = %bb25, %bb13
  ret void

bb27:                                             ; preds = %bb3
  %_16 = load ptr, ptr %NewCell, align 8
  %_13 = call ptr @strcpy(ptr %_16, ptr %Key) #7
  %_116 = load ptr, ptr %NewCell, align 8
  %_117 = ptrtoint ptr %_116 to i64
  %_118 = icmp eq i64 %_117, 0
  %_119 = and i1 %_118, true
  %_120 = xor i1 %_119, true
  br i1 %_120, label %bb26, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2f3e8e3acbcdda9fee70033b7df481b3) #6
  unreachable

bb26:                                             ; preds = %bb27
  %0 = load ptr, ptr %NewCell, align 8
  %_21 = getelementptr inbounds i8, ptr %0, i64 17
  %_18 = call ptr @strcpy(ptr %_21, ptr %PW) #7
  %_71 = ptrtoint ptr %H to i64
  %_74 = and i64 %_71, 7
  %_75 = icmp eq i64 %_74, 0
  br i1 %_75, label %bb19, label %panic2

panic1:                                           ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_508adef034525713a15eea68b7e9acbd) #6
  unreachable

bb19:                                             ; preds = %bb26
  %_77 = ptrtoint ptr %H to i64
  %_80 = icmp eq i64 %_77, 0
  %_81 = and i1 %_80, true
  %_82 = xor i1 %_81, true
  br i1 %_82, label %bb20, label %panic3

panic2:                                           ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_71, ptr align 8 @alloc_e06022c065eb7f00f0a36183f6dd4882) #6
  unreachable

bb20:                                             ; preds = %bb19
  %_24 = load i32, ptr %H, align 8
  %_23 = call i32 @Hash(ptr %Key, i32 %_24) #7
  store i32 %_23, ptr %pos, align 4
  %_65 = ptrtoint ptr %H to i64
  %_68 = and i64 %_65, 7
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %bb18, label %panic4

panic3:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e06022c065eb7f00f0a36183f6dd4882) #6
  unreachable

bb18:                                             ; preds = %bb20
  %_84 = ptrtoint ptr %H to i64
  %_87 = icmp eq i64 %_84, 0
  %_88 = and i1 %_87, true
  %_89 = xor i1 %_88, true
  br i1 %_89, label %bb21, label %panic5

panic4:                                           ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_65, ptr align 8 @alloc_29dda7ce5af954d70bf8ccdaa642e5c7) #6
  unreachable

bb21:                                             ; preds = %bb18
  %1 = getelementptr inbounds i8, ptr %H, i64 8
  %_27 = load ptr, ptr %1, align 8
  %_29 = load i32, ptr %pos, align 4
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_27, i64 %_28, i64 48) #7
  %_0.i13 = getelementptr inbounds %LNode, ptr %_27, i64 %_28
  %_59 = ptrtoint ptr %_0.i13 to i64
  %_62 = and i64 %_59, 7
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb17, label %panic6

panic5:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_29dda7ce5af954d70bf8ccdaa642e5c7) #6
  unreachable

bb17:                                             ; preds = %bb21
  %_91 = ptrtoint ptr %_0.i13 to i64
  %_94 = icmp eq i64 %_91, 0
  %_95 = and i1 %_94, true
  %_96 = xor i1 %_95, true
  br i1 %_96, label %bb22, label %panic7

panic6:                                           ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_59, ptr align 8 @alloc_4db6eb145a8dbf35096ebae9dd430862) #6
  unreachable

bb22:                                             ; preds = %bb17
  %2 = getelementptr inbounds i8, ptr %_0.i13, i64 40
  %_25 = load ptr, ptr %2, align 8
  %_52 = load ptr, ptr %NewCell, align 8
  %_53 = ptrtoint ptr %_52 to i64
  %_56 = and i64 %_53, 7
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb16, label %panic8

panic7:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4db6eb145a8dbf35096ebae9dd430862) #6
  unreachable

bb16:                                             ; preds = %bb22
  %_97 = load ptr, ptr %NewCell, align 8
  %_98 = ptrtoint ptr %_97 to i64
  %_101 = icmp eq i64 %_98, 0
  %_102 = and i1 %_101, true
  %_103 = xor i1 %_102, true
  br i1 %_103, label %bb23, label %panic9

panic8:                                           ; preds = %bb22
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_53, ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #6
  unreachable

bb23:                                             ; preds = %bb16
  %3 = load ptr, ptr %NewCell, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 40
  store ptr %_25, ptr %4, align 8
  %_47 = ptrtoint ptr %H to i64
  %_50 = and i64 %_47, 7
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %bb15, label %panic10

panic9:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #6
  unreachable

bb15:                                             ; preds = %bb23
  %_105 = ptrtoint ptr %H to i64
  %_108 = icmp eq i64 %_105, 0
  %_109 = and i1 %_108, true
  %_110 = xor i1 %_109, true
  br i1 %_110, label %bb24, label %panic11

panic10:                                          ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_47, ptr align 8 @alloc_a16ca7b2e57ff4581724b9bb708b0a81) #6
  unreachable

bb24:                                             ; preds = %bb15
  %5 = getelementptr inbounds i8, ptr %H, i64 8
  %_32 = load ptr, ptr %5, align 8
  %_34 = load i32, ptr %pos, align 4
  %_33 = sext i32 %_34 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_32, i64 %_33, i64 48) #7
  %_0.i = getelementptr inbounds %LNode, ptr %_32, i64 %_33
  %_112 = ptrtoint ptr %_0.i to i64
  %_113 = icmp eq i64 %_112, 0
  %_114 = and i1 %_113, true
  %_115 = xor i1 %_114, true
  br i1 %_115, label %bb25, label %panic12

panic11:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a16ca7b2e57ff4581724b9bb708b0a81) #6
  unreachable

bb25:                                             ; preds = %bb24
  %fresh1 = getelementptr inbounds i8, ptr %_0.i, i64 40
  %_35 = load ptr, ptr %NewCell, align 8
  store ptr %_35, ptr %fresh1, align 8
  %_36 = call i32 (ptr, ...) @printf(ptr @alloc_00b593d238a1fab5dca48a47e14d818c) #7
  br label %bb14

panic12:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0360c04944b4aee5a37d27d125532c4b) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @DestroyTable(ptr %H) unnamed_addr #2 {
start:
  %tmp = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  store ptr null, ptr %p, align 8
  store ptr null, ptr %tmp, align 8
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load i32, ptr %i, align 4
  %_50 = ptrtoint ptr %H to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb16, label %panic

bb16:                                             ; preds = %bb1
  %_56 = ptrtoint ptr %H to i64
  %_59 = icmp eq i64 %_56, 0
  %_60 = and i1 %_59, true
  %_61 = xor i1 %_60, true
  br i1 %_61, label %bb17, label %panic1

panic:                                            ; preds = %bb1
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_b4d74324b3096d801f2e71f13efb1d03) #6
  unreachable

bb17:                                             ; preds = %bb16
  %_7 = load i32, ptr %H, align 8
  %_5 = icmp slt i32 %_6, %_7
  br i1 %_5, label %bb2, label %bb9

panic1:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b4d74324b3096d801f2e71f13efb1d03) #6
  unreachable

bb9:                                              ; preds = %bb17
  %_26 = ptrtoint ptr %H to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb12, label %panic2

bb2:                                              ; preds = %bb17
  %_44 = ptrtoint ptr %H to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb15, label %panic4

bb12:                                             ; preds = %bb9
  %_84 = ptrtoint ptr %H to i64
  %_87 = icmp eq i64 %_84, 0
  %_88 = and i1 %_87, true
  %_89 = xor i1 %_88, true
  br i1 %_89, label %bb21, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_0b58a670ac24ef526e3d00585fcb3344) #6
  unreachable

bb21:                                             ; preds = %bb12
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_22 = load ptr, ptr %0, align 8
  call void @free(ptr %_22) #7
  call void @free(ptr %H) #7
  ret void

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0b58a670ac24ef526e3d00585fcb3344) #6
  unreachable

bb15:                                             ; preds = %bb2
  %_63 = ptrtoint ptr %H to i64
  %_66 = icmp eq i64 %_63, 0
  %_67 = and i1 %_66, true
  %_68 = xor i1 %_67, true
  br i1 %_68, label %bb18, label %panic5

panic4:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_4f1b09b7fb3312ddefaf937c94d34037) #6
  unreachable

bb18:                                             ; preds = %bb15
  %1 = getelementptr inbounds i8, ptr %H, i64 8
  %_10 = load ptr, ptr %1, align 8
  %_12 = load i32, ptr %i, align 4
  %_11 = sext i32 %_12 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hfad2465dd7b8872cE"(ptr %_10, i64 %_11, i64 48) #7
  %_0.i = getelementptr inbounds %LNode, ptr %_10, i64 %_11
  %_38 = ptrtoint ptr %_0.i to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb14, label %panic6

panic5:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4f1b09b7fb3312ddefaf937c94d34037) #6
  unreachable

bb14:                                             ; preds = %bb18
  %_70 = ptrtoint ptr %_0.i to i64
  %_73 = icmp eq i64 %_70, 0
  %_74 = and i1 %_73, true
  %_75 = xor i1 %_74, true
  br i1 %_75, label %bb19, label %panic7

panic6:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_d3f0ce81c936d03e4f315ec6781737a9) #6
  unreachable

bb19:                                             ; preds = %bb14
  %2 = getelementptr inbounds i8, ptr %_0.i, i64 40
  %_8 = load ptr, ptr %2, align 8
  store ptr %_8, ptr %p, align 8
  br label %bb4

panic7:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d3f0ce81c936d03e4f315ec6781737a9) #6
  unreachable

bb4:                                              ; preds = %bb20, %bb19
  %_14 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_13 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f544375caf75fd9E"(ptr %_14) #7
  br i1 %_13, label %bb6, label %bb7

bb7:                                              ; preds = %bb4
  %_31 = load ptr, ptr %p, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb13, label %panic8

bb6:                                              ; preds = %bb4
  %3 = load i32, ptr %i, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %i, align 4
  br label %bb1

bb13:                                             ; preds = %bb7
  %_76 = load ptr, ptr %p, align 8
  %_77 = ptrtoint ptr %_76 to i64
  %_80 = icmp eq i64 %_77, 0
  %_81 = and i1 %_80, true
  %_82 = xor i1 %_81, true
  br i1 %_82, label %bb20, label %panic9

panic8:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_67917eaad185a878e0f4d72460423370) #6
  unreachable

bb20:                                             ; preds = %bb13
  %5 = load ptr, ptr %p, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 40
  %_15 = load ptr, ptr %6, align 8
  store ptr %_15, ptr %tmp, align 8
  %_18 = load ptr, ptr %p, align 8
  call void @free(ptr %_18) #7
  %_19 = load ptr, ptr %tmp, align 8
  store ptr %_19, ptr %p, align 8
  br label %bb4

panic9:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_67917eaad185a878e0f4d72460423370) #6
  unreachable
}

; core::panicking::panic_const::panic_const_rem_by_zero
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #3

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #3

; Function Attrs: nounwind nonlazybind
declare double @sqrt(double) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #4

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare i32 @strcmp(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @strcpy(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
