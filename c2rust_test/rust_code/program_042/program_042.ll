; ModuleID = 'e8wobo81v1ns19v4a5jeeyfzb'
source_filename = "e8wobo81v1ns19v4a5jeeyfzb"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%AdjList = type { ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@stop = global [8 x i8] zeroinitializer, align 8
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_7d7ab95b13c510530cf54a9652d01b8f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\08\00\00\00" }>, align 8
@alloc_6939081ac62fb3603135e3880f0726eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00\05\00\00\00" }>, align 8
@alloc_866fd08105331faf72b874bff4d0791b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\17\00\00\00" }>, align 8
@alloc_05519a5e87539bab8368e2f0eb332379 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\05\00\00\00" }>, align 8
@alloc_f0feb2aece4921177f6c6a020c995740 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\00\05\00\00\00" }>, align 8
@alloc_7cab9618f7c43c1d1e5c4d4cf59390e3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\00\08\00\00\00" }>, align 8
@alloc_666e5d7d20a6b4e40fbc8acfcd8099bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00 \00\00\00" }>, align 8
@alloc_e11d8ae818c950887af898279b699a76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\0C\00\00\00" }>, align 8
@alloc_fed22b540af341725ca93da381473a8d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\05\00\00\00" }>, align 8
@alloc_ec40ccda9e1f90f1fc6e04d7d1f47049 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\0C\00\00\00" }>, align 8
@alloc_d276e58b0b165cf6e7ab175535023059 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\05\00\00\00" }>, align 8
@alloc_6fbbe498723ac7f1a024e3e35d079c2e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\00\00\00\05\00\00\00" }>, align 8
@alloc_5b75c1c7a850634fca0cfb60ed1d38de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00 \00\00\00" }>, align 8
@alloc_b0d9d938cf3ef83394df0954cc75b003 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00V\00\00\00\0D\00\00\00" }>, align 8
@alloc_450171e86de59dbae00fbb1e9c5a45bc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@alloc_744466bf4e3af320ecc03c11a840fc09 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00f\00\00\00\19\00\00\00" }>, align 8
@alloc_5b324d053ce1430ed9df67eba4c48e9f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00f\00\00\00\17\00\00\00" }>, align 8
@alloc_ed842d3a2a3e93c7ae0fc91ef014b45f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00f\00\00\00\05\00\00\00" }>, align 8
@alloc_89292f370f06b54e082ab418e386554a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00g\00\00\00\1C\00\00\00" }>, align 8
@alloc_ee4fe3b1d9f7a13931cc35ca11abe9b0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00g\00\00\00\09\00\00\00" }>, align 8
@alloc_80883ff8e80cbb9d0e87c67dc1a3fa1d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\05\00\00\00" }>, align 8
@alloc_407561b11479a121bdd158a13c534a3b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\0F\00\00\00" }>, align 8
@alloc_a1c1a5003f4636ef5ca0eddc96d8d29d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\0D\00\00\00" }>, align 8
@alloc_67af0f5f509a33d4aacd19b47c11d736 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\1C\00\00\00" }>, align 8
@alloc_930f6c35bc45e8a11acf660467fda81f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\0C\00\00\00" }>, align 8
@alloc_00434f289f373759ef97d4d8ba443ec6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00\1E\00\00\00" }>, align 8
@alloc_d5da31a785ca6e0998d389145461f61c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00w\00\00\00\11\00\00\00" }>, align 8
@alloc_e57752d72d93a08c661c993a9c587fab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00}\00\00\00\05\00\00\00" }>, align 8
@alloc_0542ea12b7fef8ad83c93bdf96f9c4c1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00\1B\00\00\00" }>, align 8
@alloc_35c3f8508696186ee528481c854b857d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\83\00\00\00\0F\00\00\00" }>, align 8
@alloc_9a1c5f2f01226235f3fe97825114d550 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\89\00\00\00\11\00\00\00" }>, align 8
@alloc_b929c71616281bfd1be2bd4038d3ddf1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@alloc_6d4ce5c5bfa01d21db76e289c9f31d60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\0C\00\00\00" }>, align 8
@alloc_9d2ddb5b6f6721ff4e9bffc51cea228b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h222bfe4211b3e4bcE() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h58c3b0e2e8c36a0cE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbdcaeb6b7415e03cE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define i32 @isempty() unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_14 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_15 = and i1 %_14, true
  %_16 = xor i1 %_15, true
  br i1 %_16, label %bb6, label %panic

bb6:                                              ; preds = %start
  %_2 = load ptr, ptr @stop, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_1 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbdcaeb6b7415e03cE"(ptr %_2) #7
  br i1 %_1, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7d7ab95b13c510530cf54a9652d01b8f) #6
  unreachable

bb3:                                              ; preds = %bb6
  store i32 0, ptr %_0, align 4
  br label %bb4

bb2:                                              ; preds = %bb6
  store i32 1, ptr %_0, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %0 = load i32, ptr %_0, align 4
  ret i32 %0
}

; Function Attrs: nounwind nonlazybind
define void @push(i32 %data) unnamed_addr #2 {
start:
  %_3 = call ptr @malloc(i64 16) #7
  %_28 = ptrtoint ptr %_3 to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb6, label %panic

bb6:                                              ; preds = %start
  %_34 = ptrtoint ptr %_3 to i64
  %_37 = icmp eq i64 %_34, 0
  %_38 = and i1 %_37, true
  %_39 = xor i1 %_38, true
  br i1 %_39, label %bb7, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_6939081ac62fb3603135e3880f0726eb) #6
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %data, ptr %_3, align 8
  %_44 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_45 = and i1 %_44, true
  %_46 = xor i1 %_45, true
  br i1 %_46, label %bb8, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6939081ac62fb3603135e3880f0726eb) #6
  unreachable

bb8:                                              ; preds = %bb7
  %_6 = load ptr, ptr @stop, align 8
  %_16 = ptrtoint ptr %_3 to i64
  %_19 = and i64 %_16, 7
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb4, label %panic3

panic2:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_866fd08105331faf72b874bff4d0791b) #6
  unreachable

bb4:                                              ; preds = %bb8
  %_48 = ptrtoint ptr %_3 to i64
  %_51 = icmp eq i64 %_48, 0
  %_52 = and i1 %_51, true
  %_53 = xor i1 %_52, true
  br i1 %_53, label %bb9, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_16, ptr align 8 @alloc_05519a5e87539bab8368e2f0eb332379) #6
  unreachable

bb9:                                              ; preds = %bb4
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr %_6, ptr %0, align 8
  %_58 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_59 = and i1 %_58, true
  %_60 = xor i1 %_59, true
  br i1 %_60, label %bb10, label %panic5

panic4:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_05519a5e87539bab8368e2f0eb332379) #6
  unreachable

bb10:                                             ; preds = %bb9
  store ptr %_3, ptr @stop, align 8
  ret void

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f0feb2aece4921177f6c6a020c995740) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @pop() unnamed_addr #2 {
start:
  %_40 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb8, label %panic

bb8:                                              ; preds = %start
  %_2 = load ptr, ptr @stop, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_1 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hbdcaeb6b7415e03cE"(ptr %_2) #7
  br i1 %_1, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7cab9618f7c43c1d1e5c4d4cf59390e3) #6
  unreachable

bb2:                                              ; preds = %bb8
  %_47 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb9, label %panic1

bb3:                                              ; preds = %bb11, %bb8
  ret void

bb9:                                              ; preds = %bb2
  %node = load ptr, ptr @stop, align 8
  %_11 = load ptr, ptr @stop, align 8
  %_19 = ptrtoint ptr %_11 to i64
  %_22 = and i64 %_19, 7
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb5, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_666e5d7d20a6b4e40fbc8acfcd8099bd) #6
  unreachable

bb5:                                              ; preds = %bb9
  %_51 = ptrtoint ptr %_11 to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb10, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_19, ptr align 8 @alloc_e11d8ae818c950887af898279b699a76) #6
  unreachable

bb10:                                             ; preds = %bb5
  %0 = getelementptr inbounds i8, ptr %_11, i64 8
  %_6 = load ptr, ptr %0, align 8
  %_61 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_62 = and i1 %_61, true
  %_63 = xor i1 %_62, true
  br i1 %_63, label %bb11, label %panic4

panic3:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e11d8ae818c950887af898279b699a76) #6
  unreachable

bb11:                                             ; preds = %bb10
  store ptr %_6, ptr @stop, align 8
  call void @free(ptr %node) #7
  br label %bb3

panic4:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fed22b540af341725ca93da381473a8d) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @top() unnamed_addr #2 {
start:
  %_2 = load ptr, ptr @stop, align 8
  %_4 = ptrtoint ptr %_2 to i64
  %_7 = and i64 %_4, 7
  %_8 = icmp eq i64 %_7, 0
  br i1 %_8, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_10 = ptrtoint ptr %_2 to i64
  %_13 = icmp eq i64 %_10, 0
  %_14 = and i1 %_13, true
  %_15 = xor i1 %_14, true
  br i1 %_15, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_4, ptr align 8 @alloc_ec40ccda9e1f90f1fc6e04d7d1f47049) #6
  unreachable

bb2:                                              ; preds = %bb1
  %_0 = load i32, ptr %_2, align 8
  ret i32 %_0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ec40ccda9e1f90f1fc6e04d7d1f47049) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @createGraph(i32 %v) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_2 = call ptr @malloc(i64 16) #7
  %_31 = ptrtoint ptr %_2 to i64
  %_34 = and i64 %_31, 7
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb12, label %panic

bb12:                                             ; preds = %start
  %_37 = ptrtoint ptr %_2 to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb13, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_31, ptr align 8 @alloc_d276e58b0b165cf6e7ab175535023059) #6
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %v, ptr %_2, align 8
  %_9 = sext i32 %v to i64
  %_0.i = mul i64 8, %_9
  %_5 = call ptr @malloc(i64 %_0.i) #7
  %_25 = ptrtoint ptr %_2 to i64
  %_28 = and i64 %_25, 7
  %_29 = icmp eq i64 %_28, 0
  br i1 %_29, label %bb11, label %panic2

panic1:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d276e58b0b165cf6e7ab175535023059) #6
  unreachable

bb11:                                             ; preds = %bb13
  %_44 = ptrtoint ptr %_2 to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb14, label %panic3

panic2:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_25, ptr align 8 @alloc_6fbbe498723ac7f1a024e3e35d079c2e) #6
  unreachable

bb14:                                             ; preds = %bb11
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr %_5, ptr %0, align 8
  store i32 0, ptr %i, align 4
  br label %bb6

panic3:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6fbbe498723ac7f1a024e3e35d079c2e) #6
  unreachable

bb6:                                              ; preds = %bb16, %bb14
  %_12 = load i32, ptr %i, align 4
  %_11 = icmp slt i32 %_12, %v
  br i1 %_11, label %bb7, label %bb9

bb9:                                              ; preds = %bb6
  ret ptr %_2

bb7:                                              ; preds = %bb6
  %_19 = ptrtoint ptr %_2 to i64
  %_22 = and i64 %_19, 7
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb10, label %panic4

bb10:                                             ; preds = %bb7
  %_51 = ptrtoint ptr %_2 to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb15, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_19, ptr align 8 @alloc_5b75c1c7a850634fca0cfb60ed1d38de) #6
  unreachable

bb15:                                             ; preds = %bb10
  %1 = getelementptr inbounds i8, ptr %_2, i64 8
  %_15 = load ptr, ptr %1, align 8
  %_17 = load i32, ptr %i, align 4
  %_16 = sext i32 %_17 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_15, i64 %_16, i64 8) #7
  %_0.i7 = getelementptr inbounds %AdjList, ptr %_15, i64 %_16
  %_58 = ptrtoint ptr %_0.i7 to i64
  %_59 = icmp eq i64 %_58, 0
  %_60 = and i1 %_59, true
  %_61 = xor i1 %_60, true
  br i1 %_61, label %bb16, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5b75c1c7a850634fca0cfb60ed1d38de) #6
  unreachable

bb16:                                             ; preds = %bb15
  store ptr null, ptr %_0.i7, align 8
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb6

panic6:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b0d9d938cf3ef83394df0954cc75b003) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @addEdge(ptr %graph, i32 %src, i32 %dest) unnamed_addr #2 {
start:
  %_5 = call ptr @malloc(i64 16) #7
  %_41 = ptrtoint ptr %_5 to i64
  %_44 = and i64 %_41, 7
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb9, label %panic

bb9:                                              ; preds = %start
  %_47 = ptrtoint ptr %_5 to i64
  %_50 = icmp eq i64 %_47, 0
  %_51 = and i1 %_50, true
  %_52 = xor i1 %_51, true
  br i1 %_52, label %bb10, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_41, ptr align 8 @alloc_450171e86de59dbae00fbb1e9c5a45bc) #6
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %dest, ptr %_5, align 8
  %_35 = ptrtoint ptr %graph to i64
  %_38 = and i64 %_35, 7
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb8, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_450171e86de59dbae00fbb1e9c5a45bc) #6
  unreachable

bb8:                                              ; preds = %bb10
  %_54 = ptrtoint ptr %graph to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb11, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_35, ptr align 8 @alloc_744466bf4e3af320ecc03c11a840fc09) #6
  unreachable

bb11:                                             ; preds = %bb8
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_10 = load ptr, ptr %0, align 8
  %_11 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_10, i64 %_11, i64 8) #7
  %_0.i11 = getelementptr inbounds %AdjList, ptr %_10, i64 %_11
  %_29 = ptrtoint ptr %_0.i11 to i64
  %_32 = and i64 %_29, 7
  %_33 = icmp eq i64 %_32, 0
  br i1 %_33, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_744466bf4e3af320ecc03c11a840fc09) #6
  unreachable

bb7:                                              ; preds = %bb11
  %_61 = ptrtoint ptr %_0.i11 to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_29, ptr align 8 @alloc_5b324d053ce1430ed9df67eba4c48e9f) #6
  unreachable

bb12:                                             ; preds = %bb7
  %_8 = load ptr, ptr %_0.i11, align 8
  %_23 = ptrtoint ptr %_5 to i64
  %_26 = and i64 %_23, 7
  %_27 = icmp eq i64 %_26, 0
  br i1 %_27, label %bb6, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5b324d053ce1430ed9df67eba4c48e9f) #6
  unreachable

bb6:                                              ; preds = %bb12
  %_68 = ptrtoint ptr %_5 to i64
  %_71 = icmp eq i64 %_68, 0
  %_72 = and i1 %_71, true
  %_73 = xor i1 %_72, true
  br i1 %_73, label %bb13, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_23, ptr align 8 @alloc_ed842d3a2a3e93c7ae0fc91ef014b45f) #6
  unreachable

bb13:                                             ; preds = %bb6
  %1 = getelementptr inbounds i8, ptr %_5, i64 8
  store ptr %_8, ptr %1, align 8
  %_17 = ptrtoint ptr %graph to i64
  %_20 = and i64 %_17, 7
  %_21 = icmp eq i64 %_20, 0
  br i1 %_21, label %bb5, label %panic8

panic7:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ed842d3a2a3e93c7ae0fc91ef014b45f) #6
  unreachable

bb5:                                              ; preds = %bb13
  %_75 = ptrtoint ptr %graph to i64
  %_78 = icmp eq i64 %_75, 0
  %_79 = and i1 %_78, true
  %_80 = xor i1 %_79, true
  br i1 %_80, label %bb14, label %panic9

panic8:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_17, ptr align 8 @alloc_89292f370f06b54e082ab418e386554a) #6
  unreachable

bb14:                                             ; preds = %bb5
  %2 = getelementptr inbounds i8, ptr %graph, i64 8
  %_14 = load ptr, ptr %2, align 8
  %_15 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_14, i64 %_15, i64 8) #7
  %_0.i = getelementptr inbounds %AdjList, ptr %_14, i64 %_15
  %_82 = ptrtoint ptr %_0.i to i64
  %_83 = icmp eq i64 %_82, 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb15, label %panic10

panic9:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_89292f370f06b54e082ab418e386554a) #6
  unreachable

bb15:                                             ; preds = %bb14
  store ptr %_5, ptr %_0.i, align 8
  ret void

panic10:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee4fe3b1d9f7a13931cc35ca11abe9b0) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @tSortutil(ptr %graph, i32 %v, ptr %visited) unnamed_addr #2 {
start:
  %crawl = alloca [8 x i8], align 8
  %_5 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %visited, i64 %_5, i64 4) #7
  %_0.i14 = getelementptr inbounds i32, ptr %visited, i64 %_5
  %_58 = ptrtoint ptr %_0.i14 to i64
  %_61 = and i64 %_58, 3
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb17, label %panic

bb17:                                             ; preds = %start
  %_64 = ptrtoint ptr %_0.i14 to i64
  %_67 = icmp eq i64 %_64, 0
  %_68 = and i1 %_67, true
  %_69 = xor i1 %_68, true
  br i1 %_69, label %bb18, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_58, ptr align 8 @alloc_80883ff8e80cbb9d0e87c67dc1a3fa1d) #6
  unreachable

bb18:                                             ; preds = %bb17
  store i32 1, ptr %_0.i14, align 4
  store ptr null, ptr %crawl, align 8
  %_52 = ptrtoint ptr %graph to i64
  %_55 = and i64 %_52, 7
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb16, label %panic2

panic1:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_80883ff8e80cbb9d0e87c67dc1a3fa1d) #6
  unreachable

bb16:                                             ; preds = %bb18
  %_71 = ptrtoint ptr %graph to i64
  %_74 = icmp eq i64 %_71, 0
  %_75 = and i1 %_74, true
  %_76 = xor i1 %_75, true
  br i1 %_76, label %bb19, label %panic3

panic2:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_52, ptr align 8 @alloc_407561b11479a121bdd158a13c534a3b) #6
  unreachable

bb19:                                             ; preds = %bb16
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_9 = load ptr, ptr %0, align 8
  %_10 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_9, i64 %_10, i64 8) #7
  %_0.i15 = getelementptr inbounds %AdjList, ptr %_9, i64 %_10
  %_46 = ptrtoint ptr %_0.i15 to i64
  %_49 = and i64 %_46, 7
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb15, label %panic4

panic3:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_407561b11479a121bdd158a13c534a3b) #6
  unreachable

bb15:                                             ; preds = %bb19
  %_78 = ptrtoint ptr %_0.i15 to i64
  %_81 = icmp eq i64 %_78, 0
  %_82 = and i1 %_81, true
  %_83 = xor i1 %_82, true
  br i1 %_83, label %bb20, label %panic5

panic4:                                           ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_46, ptr align 8 @alloc_a1c1a5003f4636ef5ca0eddc96d8d29d) #6
  unreachable

bb20:                                             ; preds = %bb15
  %_7 = load ptr, ptr %_0.i15, align 8
  store ptr %_7, ptr %crawl, align 8
  br label %bb3

panic5:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a1c1a5003f4636ef5ca0eddc96d8d29d) #6
  unreachable

bb3:                                              ; preds = %bb24, %bb20
  %_12 = load ptr, ptr %crawl, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_11 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h58c3b0e2e8c36a0cE"(ptr %_12) #7
  br i1 %_11, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %_39 = load ptr, ptr %crawl, align 8
  %_40 = ptrtoint ptr %_39 to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb14, label %panic6

bb5:                                              ; preds = %bb3
  call void @push(i32 %v) #7
  ret void

bb14:                                             ; preds = %bb6
  %_84 = load ptr, ptr %crawl, align 8
  %_85 = ptrtoint ptr %_84 to i64
  %_88 = icmp eq i64 %_85, 0
  %_89 = and i1 %_88, true
  %_90 = xor i1 %_89, true
  br i1 %_90, label %bb21, label %panic7

panic6:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_67af0f5f509a33d4aacd19b47c11d736) #6
  unreachable

bb21:                                             ; preds = %bb14
  %1 = load ptr, ptr %crawl, align 8
  %_16 = load i32, ptr %1, align 8
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %visited, i64 %_15, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %visited, i64 %_15
  %_34 = ptrtoint ptr %_0.i to i64
  %_37 = and i64 %_34, 3
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb13, label %panic8

panic7:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_67af0f5f509a33d4aacd19b47c11d736) #6
  unreachable

bb13:                                             ; preds = %bb21
  %_92 = ptrtoint ptr %_0.i to i64
  %_95 = icmp eq i64 %_92, 0
  %_96 = and i1 %_95, true
  %_97 = xor i1 %_96, true
  br i1 %_97, label %bb22, label %panic9

panic8:                                           ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_34, ptr align 8 @alloc_930f6c35bc45e8a11acf660467fda81f) #6
  unreachable

bb22:                                             ; preds = %bb13
  %_13 = load i32, ptr %_0.i, align 4
  %2 = icmp eq i32 %_13, 0
  br i1 %2, label %bb8, label %bb9

panic9:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_930f6c35bc45e8a11acf660467fda81f) #6
  unreachable

bb8:                                              ; preds = %bb22
  %_27 = load ptr, ptr %crawl, align 8
  %_28 = ptrtoint ptr %_27 to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb12, label %panic10

bb9:                                              ; preds = %bb23, %bb22
  %_21 = load ptr, ptr %crawl, align 8
  %_22 = ptrtoint ptr %_21 to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb11, label %panic12

bb12:                                             ; preds = %bb8
  %_98 = load ptr, ptr %crawl, align 8
  %_99 = ptrtoint ptr %_98 to i64
  %_102 = icmp eq i64 %_99, 0
  %_103 = and i1 %_102, true
  %_104 = xor i1 %_103, true
  br i1 %_104, label %bb23, label %panic11

panic10:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_00434f289f373759ef97d4d8ba443ec6) #6
  unreachable

bb23:                                             ; preds = %bb12
  %3 = load ptr, ptr %crawl, align 8
  %_18 = load i32, ptr %3, align 8
  call void @tSortutil(ptr %graph, i32 %_18, ptr %visited) #7
  br label %bb9

panic11:                                          ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_00434f289f373759ef97d4d8ba443ec6) #6
  unreachable

bb11:                                             ; preds = %bb9
  %_105 = load ptr, ptr %crawl, align 8
  %_106 = ptrtoint ptr %_105 to i64
  %_109 = icmp eq i64 %_106, 0
  %_110 = and i1 %_109, true
  %_111 = xor i1 %_110, true
  br i1 %_111, label %bb24, label %panic13

panic12:                                          ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_d5da31a785ca6e0998d389145461f61c) #6
  unreachable

bb24:                                             ; preds = %bb11
  %4 = load ptr, ptr %crawl, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %_19 = load ptr, ptr %5, align 8
  store ptr %_19, ptr %crawl, align 8
  br label %bb3

panic13:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d5da31a785ca6e0998d389145461f61c) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @TopologicalSort(ptr %graph) unnamed_addr #2 {
start:
  %i_0 = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_75 = icmp eq i64 ptrtoint (ptr @stop to i64), 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb25, label %panic

bb25:                                             ; preds = %start
  store ptr null, ptr @stop, align 8
  %_60 = ptrtoint ptr %graph to i64
  %_63 = and i64 %_60, 7
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %bb23, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e57752d72d93a08c661c993a9c587fab) #6
  unreachable

bb23:                                             ; preds = %bb25
  %_79 = ptrtoint ptr %graph to i64
  %_82 = icmp eq i64 %_79, 0
  %_83 = and i1 %_82, true
  %_84 = xor i1 %_83, true
  br i1 %_84, label %bb26, label %panic2

panic1:                                           ; preds = %bb25
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_60, ptr align 8 @alloc_0542ea12b7fef8ad83c93bdf96f9c4c1) #6
  unreachable

bb26:                                             ; preds = %bb23
  %_9 = load i32, ptr %graph, align 8
  %_8 = sext i32 %_9 to i64
  %_0.i = mul i64 4, %_8
  %_4 = call ptr @malloc(i64 %_0.i) #7
  store i32 0, ptr %i, align 4
  br label %bb4

panic2:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0542ea12b7fef8ad83c93bdf96f9c4c1) #6
  unreachable

bb4:                                              ; preds = %bb28, %bb26
  %_12 = load i32, ptr %i, align 4
  %_54 = ptrtoint ptr %graph to i64
  %_57 = and i64 %_54, 7
  %_58 = icmp eq i64 %_57, 0
  br i1 %_58, label %bb22, label %panic3

bb22:                                             ; preds = %bb4
  %_86 = ptrtoint ptr %graph to i64
  %_89 = icmp eq i64 %_86, 0
  %_90 = and i1 %_89, true
  %_91 = xor i1 %_90, true
  br i1 %_91, label %bb27, label %panic4

panic3:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_54, ptr align 8 @alloc_35c3f8508696186ee528481c854b857d) #6
  unreachable

bb27:                                             ; preds = %bb22
  %_13 = load i32, ptr %graph, align 8
  %_11 = icmp slt i32 %_12, %_13
  br i1 %_11, label %bb5, label %bb7

panic4:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_35c3f8508696186ee528481c854b857d) #6
  unreachable

bb7:                                              ; preds = %bb27
  store i32 0, ptr %i_0, align 4
  br label %bb8

bb5:                                              ; preds = %bb27
  %_16 = load i32, ptr %i, align 4
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_4, i64 %_15, i64 4) #7
  %_0.i11 = getelementptr inbounds i32, ptr %_4, i64 %_15
  %_48 = ptrtoint ptr %_0.i11 to i64
  %_51 = and i64 %_48, 3
  %_52 = icmp eq i64 %_51, 0
  br i1 %_52, label %bb21, label %panic9

bb8:                                              ; preds = %bb12, %bb7
  %_19 = load i32, ptr %i_0, align 4
  %_42 = ptrtoint ptr %graph to i64
  %_45 = and i64 %_42, 7
  %_46 = icmp eq i64 %_45, 0
  br i1 %_46, label %bb20, label %panic5

bb20:                                             ; preds = %bb8
  %_100 = ptrtoint ptr %graph to i64
  %_103 = icmp eq i64 %_100, 0
  %_104 = and i1 %_103, true
  %_105 = xor i1 %_104, true
  br i1 %_105, label %bb29, label %panic6

panic5:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_42, ptr align 8 @alloc_9a1c5f2f01226235f3fe97825114d550) #6
  unreachable

bb29:                                             ; preds = %bb20
  %_20 = load i32, ptr %graph, align 8
  %_18 = icmp slt i32 %_19, %_20
  br i1 %_18, label %bb9, label %bb13

panic6:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9a1c5f2f01226235f3fe97825114d550) #6
  unreachable

bb13:                                             ; preds = %bb15, %bb29
  %_27 = call i32 @isempty() #7
  %0 = icmp eq i32 %_27, 0
  br i1 %0, label %bb15, label %bb18

bb9:                                              ; preds = %bb29
  %_24 = load i32, ptr %i_0, align 4
  %_23 = sext i32 %_24 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h9be23858d64bac11E"(ptr %_4, i64 %_23, i64 4) #7
  %_0.i12 = getelementptr inbounds i32, ptr %_4, i64 %_23
  %_36 = ptrtoint ptr %_0.i12 to i64
  %_39 = and i64 %_36, 3
  %_40 = icmp eq i64 %_39, 0
  br i1 %_40, label %bb19, label %panic7

bb15:                                             ; preds = %bb13
  %_33 = call i32 @top() #7
  %_28 = call i32 (ptr, ...) @printf(ptr @alloc_b929c71616281bfd1be2bd4038d3ddf1, i32 %_33) #7
  call void @pop() #7
  br label %bb13

bb18:                                             ; preds = %bb13
  ret void

bb19:                                             ; preds = %bb9
  %_107 = ptrtoint ptr %_0.i12 to i64
  %_110 = icmp eq i64 %_107, 0
  %_111 = and i1 %_110, true
  %_112 = xor i1 %_111, true
  br i1 %_112, label %bb30, label %panic8

panic7:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_36, ptr align 8 @alloc_6d4ce5c5bfa01d21db76e289c9f31d60) #6
  unreachable

bb30:                                             ; preds = %bb19
  %_21 = load i32, ptr %_0.i12, align 4
  %1 = icmp eq i32 %_21, 0
  br i1 %1, label %bb11, label %bb12

panic8:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6d4ce5c5bfa01d21db76e289c9f31d60) #6
  unreachable

bb11:                                             ; preds = %bb30
  %_26 = load i32, ptr %i_0, align 4
  call void @tSortutil(ptr %graph, i32 %_26, ptr %_4) #7
  br label %bb12

bb12:                                             ; preds = %bb11, %bb30
  %2 = load i32, ptr %i_0, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i_0, align 4
  br label %bb8

bb21:                                             ; preds = %bb5
  %_93 = ptrtoint ptr %_0.i11 to i64
  %_96 = icmp eq i64 %_93, 0
  %_97 = and i1 %_96, true
  %_98 = xor i1 %_97, true
  br i1 %_98, label %bb28, label %panic10

panic9:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_48, ptr align 8 @alloc_9d2ddb5b6f6721ff4e9bffc51cea228b) #6
  unreachable

bb28:                                             ; preds = %bb21
  store i32 0, ptr %_0.i11, align 4
  %4 = load i32, ptr %i, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %i, align 4
  br label %bb4

panic10:                                          ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d2ddb5b6f6721ff4e9bffc51cea228b) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
