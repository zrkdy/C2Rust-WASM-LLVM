; ModuleID = '5v0qe1ulngchlduf4gbbvbvmc'
source_filename = "5v0qe1ulngchlduf4gbbvbvmc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_46b6465c1338377b2913ec19bdffc84b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\00\00\00\0D\00\00\00" }>, align 8
@alloc_4d12ce1b46c8ed60a17f8caf44282315 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\00\00\00\22\00\00\00" }>, align 8
@alloc_6335488a6545bfc9c180c73dc6191c29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00&\00\00\00" }>, align 8
@alloc_c5a4e2d3791755606033b1f98930c619 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\12\00\00\00" }>, align 8
@alloc_df86e900c94cc1f649585c8cd53247f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@alloc_0564cc05fb4998a20a54b98595b349ad = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\17\00\00\00" }>, align 8
@alloc_5c4faa313c0cc66f8c3db234aa5cd1ae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00]\00\00\00\05\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h9cae43a7971b4708E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17haefc95a979966fcaE"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f8666b91dbefb7aE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::const_ptr::<impl *const T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset18precondition_check17h6d851e684759c984E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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

; Function Attrs: nounwind nonlazybind
define zeroext i1 @isbad_alphabet(ptr %alphabet) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_0 = alloca [1 x i8], align 1
  %len = call i64 @strlen(ptr %alphabet) #7
  %_3 = icmp ult i64 %len, 2
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %start
  store i32 0, ptr %i, align 4
  br label %bb4

bb2:                                              ; preds = %start
  store i8 1, ptr %_0, align 1
  br label %bb14

bb4:                                              ; preds = %bb11, %bb3
  %_8 = load i32, ptr %i, align 4
  %_7 = sext i32 %_8 to i64
  %_6 = icmp ult i64 %_7, %len
  br i1 %_6, label %bb5, label %bb13

bb13:                                             ; preds = %bb4
  store i8 0, ptr %_0, align 1
  br label %bb14

bb5:                                              ; preds = %bb4
  %_14 = load i32, ptr %i, align 4
  %_13 = sext i32 %_14 to i64
; call core::ptr::const_ptr::<impl *const T>::offset::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset18precondition_check17h6d851e684759c984E"(ptr %alphabet, i64 %_13, i64 1) #7
  %_0.i2 = getelementptr inbounds i8, ptr %alphabet, i64 %_13
; call core::ptr::const_ptr::<impl *const T>::offset::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset18precondition_check17h6d851e684759c984E"(ptr %_0.i2, i64 1, i64 1) #7
  %_0.i1 = getelementptr inbounds i8, ptr %_0.i2, i64 1
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::const_ptr::<impl *const T>::offset::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset18precondition_check17h6d851e684759c984E"(ptr %alphabet, i64 %_19, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %alphabet, i64 %_19
  %_22 = ptrtoint ptr %_0.i to i64
  %_25 = icmp eq i64 %_22, 0
  %_26 = and i1 %_25, true
  %_27 = xor i1 %_26, true
  br i1 %_27, label %bb15, label %panic

bb14:                                             ; preds = %bb2, %bb12, %bb13
  %0 = load i8, ptr %_0, align 1
  %1 = trunc nuw i8 %0 to i1
  ret i1 %1

bb15:                                             ; preds = %bb5
  %_17 = load i8, ptr %_0.i, align 1
  %_16 = sext i8 %_17 to i32
  %_10 = call ptr @strchr(ptr %_0.i1, i32 %_16) #7
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_9 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h9f8666b91dbefb7aE"(ptr %_10) #7
  br i1 %_9, label %bb11, label %bb12

panic:                                            ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_46b6465c1338377b2913ec19bdffc84b) #6
  unreachable

bb12:                                             ; preds = %bb15
  store i8 1, ptr %_0, align 1
  br label %bb14

bb11:                                             ; preds = %bb15
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb4
}

; Function Attrs: nounwind nonlazybind
define i64 @converted_len(i64 %nb, i16 signext %base) unnamed_addr #2 {
start:
  %_0 = alloca [8 x i8], align 8
  %_6 = sext i16 %base to i32
  %_5 = sub i32 %_6, 1
  %_4 = sext i32 %_5 to i64
  %_3 = icmp ugt i64 %nb, %_4
  br i1 %_3, label %bb1, label %bb4

bb4:                                              ; preds = %start
  store i64 1, ptr %_0, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_9 = sext i16 %base to i64
  %_3.i = icmp eq i64 %_9, 0
  br i1 %_3.i, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit"

panic.i:                                          ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h167d329a5f43243cE(ptr align 8 @alloc_4d12ce1b46c8ed60a17f8caf44282315) #6
  unreachable

"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit": ; preds = %bb1
  %_0.i1 = udiv i64 %nb, %_9
  %_7 = call i64 @converted_len(i64 %_0.i1, i16 signext %base) #7
  %_0.i = add i64 %_7, 1
  store i64 %_0.i, ptr %_0, align 8
  br label %bb5

bb5:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit", %bb4
  %0 = load i64, ptr %_0, align 8
  ret i64 %0
}

; Function Attrs: nounwind nonlazybind
define void @convertion(i64 %nb, ptr %alphabet, i16 signext %base, ptr %0) unnamed_addr #2 {
start:
  %converted = alloca [8 x i8], align 8
  store ptr %0, ptr %converted, align 8
  %_9 = sext i16 %base to i64
  %_3.i2 = icmp eq i64 %_9, 0
  br i1 %_3.i2, label %panic.i4, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit"

panic.i4:                                         ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_6335488a6545bfc9c180c73dc6191c29) #6
  unreachable

"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit": ; preds = %start
  %_0.i3 = urem i64 %nb, %_9
; call core::ptr::const_ptr::<impl *const T>::offset::precondition_check
  call void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset18precondition_check17h6d851e684759c984E"(ptr %alphabet, i64 %_0.i3, i64 1) #7
  %_0.i6 = getelementptr inbounds i8, ptr %alphabet, i64 %_0.i3
  %_28 = ptrtoint ptr %_0.i6 to i64
  %_31 = icmp eq i64 %_28, 0
  %_32 = and i1 %_31, true
  %_33 = xor i1 %_32, true
  br i1 %_33, label %bb8, label %panic

bb8:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit"
  %_5 = load i8, ptr %_0.i6, align 1
  %_20 = load ptr, ptr %converted, align 8
  %_21 = ptrtoint ptr %_20 to i64
  %_24 = icmp eq i64 %_21, 0
  %_25 = and i1 %_24, true
  %_26 = xor i1 %_25, true
  br i1 %_26, label %bb7, label %panic1

panic:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_rem17hec1ab60b89e3b85dE.exit"
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c5a4e2d3791755606033b1f98930c619) #6
  unreachable

bb7:                                              ; preds = %bb8
  %1 = load ptr, ptr %converted, align 8
  store i8 %_5, ptr %1, align 1
  %_13 = sext i16 %base to i32
  %_12 = sub i32 %_13, 1
  %_11 = sext i32 %_12 to i64
  %_10 = icmp ugt i64 %nb, %_11
  br i1 %_10, label %bb3, label %bb6

panic1:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df86e900c94cc1f649585c8cd53247f2) #6
  unreachable

bb6:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit", %bb7
  ret void

bb3:                                              ; preds = %bb7
  %_15 = load ptr, ptr %converted, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17haefc95a979966fcaE"(ptr %_15, i64 -1, i64 1) #7
  %_0.i5 = getelementptr inbounds i8, ptr %_15, i64 -1
  store ptr %_0.i5, ptr %converted, align 8
  %_18 = sext i16 %base to i64
  %_3.i = icmp eq i64 %_18, 0
  br i1 %_3.i, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit"

panic.i:                                          ; preds = %bb3
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h167d329a5f43243cE(ptr align 8 @alloc_0564cc05fb4998a20a54b98595b349ad) #6
  unreachable

"_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17had61cd6eb3e47705E.exit": ; preds = %bb3
  %_0.i = udiv i64 %nb, %_18
  %_19 = load ptr, ptr %converted, align 8
  call void @convertion(i64 %_0.i, ptr %alphabet, i16 signext %base, ptr %_19) #7
  br label %bb6
}

; Function Attrs: nounwind nonlazybind
define ptr @decimal_to_anybase(i64 %nb, ptr %alphabet) unnamed_addr #2 {
start:
  %converted = alloca [8 x i8], align 8
  %_0 = alloca [8 x i8], align 8
  store ptr null, ptr %converted, align 8
  %_4 = call zeroext i1 @isbad_alphabet(ptr %alphabet) #7
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %start
  %base = call i64 @strlen(ptr %alphabet) #7
  %_7 = trunc i64 %base to i16
  %final_len = call i64 @converted_len(i64 %nb, i16 signext %_7) #7
  %_0.i = add i64 %final_len, 1
  %_8 = call ptr @malloc(i64 %_0.i) #7
  store ptr %_8, ptr %converted, align 8
  %_15 = load ptr, ptr %converted, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17haefc95a979966fcaE"(ptr %_15, i64 %final_len, i64 1) #7
  %_0.i4 = getelementptr inbounds i8, ptr %_15, i64 %final_len
  %_26 = ptrtoint ptr %_0.i4 to i64
  %_29 = icmp eq i64 %_26, 0
  %_30 = and i1 %_29, true
  %_31 = xor i1 %_30, true
  br i1 %_31, label %bb15, label %panic

bb2:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb14

bb15:                                             ; preds = %bb3
  store i8 0, ptr %_0.i4, align 1
  %_18 = trunc i64 %base to i16
  %_21 = load ptr, ptr %converted, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17haefc95a979966fcaE"(ptr %_21, i64 %final_len, i64 1) #7
  %_0.i3 = getelementptr inbounds i8, ptr %_21, i64 %final_len
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17haefc95a979966fcaE"(ptr %_0.i3, i64 -1, i64 1) #7
  %_0.i2 = getelementptr inbounds i8, ptr %_0.i3, i64 -1
  call void @convertion(i64 %nb, ptr %alphabet, i16 signext %_18, ptr %_0.i2) #7
  %0 = load ptr, ptr %converted, align 8
  store ptr %0, ptr %_0, align 8
  br label %bb14

panic:                                            ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5c4faa313c0cc66f8c3db234aa5cd1ae) #6
  unreachable

bb14:                                             ; preds = %bb2, %bb15
  %1 = load ptr, ptr %_0, align 8
  ret ptr %1
}

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h167d329a5f43243cE(ptr align 8) unnamed_addr #3

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

; Function Attrs: nounwind nonlazybind
declare i64 @strlen(ptr) unnamed_addr #2

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare ptr @strchr(ptr, i32) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

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
