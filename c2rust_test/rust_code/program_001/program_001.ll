; ModuleID = '8ugormiluqevox4phow60zcva'
source_filename = "8ugormiluqevox4phow60zcva"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@r_coded = global [8 x i8] c"\FAz\E6\9Ca\D5\AA*", align 1
@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@pcm = global [16 x i8] c"\E8\03\18\FC\D2\04\80\0C\DE\FA\00\00\FF\7F\00\80", align 2
@r_decoded = global [16 x i8] c"\F0\03\10\FC\E0\04\C0\0C\E0\FA\08\00\00~\00\82", align 2
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_fbdae334b2be1b60e7366fade76eebb5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\11\00\00\00" }>, align 8
@alloc_1aa9c3ab3ec38e0d3207d2e5ac4937bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\09\00\00\00" }>, align 8
@alloc_48c557ee59b83a5e686aa613d9a7deae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\10\00\00\00" }>, align 8
@alloc_4a6eda898bdde920aeb6902aaba4aae6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h7374c91a5832ba5aE() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h68f7820d90cca5d4E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define void @encode(ptr %0, ptr %1, i64 %len) unnamed_addr #2 {
start:
  %_35 = alloca [4 x i8], align 4
  %_20 = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %mask = alloca [4 x i8], align 4
  %eee = alloca [4 x i8], align 4
  %abcd = alloca [4 x i8], align 4
  %sign = alloca [4 x i8], align 4
  %pcm_0 = alloca [2 x i8], align 2
  %alaw = alloca [1 x i8], align 1
  %in_0 = alloca [8 x i8], align 8
  %out = alloca [8 x i8], align 8
  store ptr %0, ptr %out, align 8
  store ptr %1, ptr %in_0, align 8
  store i8 0, ptr %alaw, align 1
  store i16 0, ptr %pcm_0, align 2
  store i32 0, ptr %sign, align 4
  store i32 0, ptr %abcd, align 4
  store i32 0, ptr %eee, align 4
  store i32 0, ptr %mask, align 4
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb19, %start
  %_12 = load i64, ptr %i, align 8
  %_11 = icmp ult i64 %_12, %len
  br i1 %_11, label %bb2, label %bb16

bb16:                                             ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %fresh0 = load ptr, ptr %in_0, align 8
  %_15 = load ptr, ptr %in_0, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h68f7820d90cca5d4E"(ptr %_15, i64 1, i64 2) #7
  %_0.i4 = getelementptr inbounds i16, ptr %_15, i64 1
  store ptr %_0.i4, ptr %in_0, align 8
  %_52 = ptrtoint ptr %fresh0 to i64
  %_55 = and i64 %_52, 1
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb17, label %panic

bb17:                                             ; preds = %bb2
  %_58 = ptrtoint ptr %fresh0 to i64
  %_61 = icmp eq i64 %_58, 0
  %_62 = and i1 %_61, true
  %_63 = xor i1 %_62, true
  br i1 %_63, label %bb18, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 2, i64 %_52, ptr align 8 @alloc_fbdae334b2be1b60e7366fade76eebb5) #6
  unreachable

bb18:                                             ; preds = %bb17
  %_16 = load i16, ptr %fresh0, align 2
  store i16 %_16, ptr %pcm_0, align 2
  store i32 7, ptr %eee, align 4
  store i32 16384, ptr %mask, align 4
  %_19 = load i16, ptr %pcm_0, align 2
  %_18 = sext i16 %_19 to i32
  %_17 = and i32 %_18, 32768
  %2 = ashr i32 %_17, 8
  store i32 %2, ptr %sign, align 4
  %_21 = load i32, ptr %sign, align 4
  %3 = icmp eq i32 %_21, 0
  br i1 %3, label %bb5, label %bb4

panic1:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fbdae334b2be1b60e7366fade76eebb5) #6
  unreachable

bb5:                                              ; preds = %bb18
  %_25 = load i16, ptr %pcm_0, align 2
  %4 = sext i16 %_25 to i32
  store i32 %4, ptr %_20, align 4
  br label %bb6

bb4:                                              ; preds = %bb18
  %_24 = load i16, ptr %pcm_0, align 2
  %_23 = sext i16 %_24 to i32
  %_22 = sub i32 0, %_23
  %5 = sub i32 %_22, 1
  store i32 %5, ptr %_20, align 4
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %6 = load i32, ptr %_20, align 4
  %7 = trunc i32 %6 to i16
  store i16 %7, ptr %pcm_0, align 2
  br label %bb7

bb7:                                              ; preds = %bb9, %bb6
  %_28 = load i16, ptr %pcm_0, align 2
  %_27 = sext i16 %_28 to i32
  %_29 = load i32, ptr %mask, align 4
  %_26 = and i32 %_27, %_29
  %8 = icmp eq i32 %_26, 0
  br i1 %8, label %bb8, label %bb10

bb8:                                              ; preds = %bb7
  %_31 = load i32, ptr %eee, align 4
  %_30 = icmp sgt i32 %_31, 0
  br i1 %_30, label %bb9, label %bb10

bb10:                                             ; preds = %bb8, %bb7
  %_34 = load i16, ptr %pcm_0, align 2
  %_33 = sext i16 %_34 to i32
  %_36 = load i32, ptr %eee, align 4
  %9 = icmp eq i32 %_36, 0
  br i1 %9, label %bb12, label %bb11

bb9:                                              ; preds = %bb8
  %10 = load i32, ptr %eee, align 4
  %11 = sub i32 %10, 1
  store i32 %11, ptr %eee, align 4
  %12 = load i32, ptr %mask, align 4
  %13 = ashr i32 %12, 1
  store i32 %13, ptr %mask, align 4
  br label %bb7

bb12:                                             ; preds = %bb10
  store i32 4, ptr %_35, align 4
  br label %bb13

bb11:                                             ; preds = %bb10
  %_37 = load i32, ptr %eee, align 4
  %14 = add i32 %_37, 3
  store i32 %14, ptr %_35, align 4
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %15 = load i32, ptr %_35, align 4
  %16 = and i32 %15, 31
  %_32 = ashr i32 %_33, %16
  %17 = and i32 %_32, 15
  store i32 %17, ptr %abcd, align 4
  %18 = load i32, ptr %eee, align 4
  %19 = shl i32 %18, 4
  store i32 %19, ptr %eee, align 4
  %_40 = load i32, ptr %sign, align 4
  %_41 = load i32, ptr %eee, align 4
  %_39 = or i32 %_40, %_41
  %_42 = load i32, ptr %abcd, align 4
  %_38 = or i32 %_39, %_42
  %20 = trunc i32 %_38 to i8
  store i8 %20, ptr %alaw, align 1
  %fresh1 = load ptr, ptr %out, align 8
  %_45 = load ptr, ptr %out, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h68f7820d90cca5d4E"(ptr %_45, i64 1, i64 1) #7
  %_0.i3 = getelementptr inbounds i8, ptr %_45, i64 1
  store ptr %_0.i3, ptr %out, align 8
  %_48 = load i8, ptr %alaw, align 1
  %_47 = zext i8 %_48 to i32
  %_46 = xor i32 %_47, 213
  %_65 = ptrtoint ptr %fresh1 to i64
  %_68 = icmp eq i64 %_65, 0
  %_69 = and i1 %_68, true
  %_70 = xor i1 %_69, true
  br i1 %_70, label %bb19, label %panic2

bb19:                                             ; preds = %bb13
  %21 = trunc i32 %_46 to i8
  store i8 %21, ptr %fresh1, align 1
  %_50 = load i64, ptr %i, align 8
  %_0.i = add i64 %_50, 1
  store i64 %_0.i, ptr %i, align 8
  br label %bb1

panic2:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1aa9c3ab3ec38e0d3207d2e5ac4937bd) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @decode(ptr %0, ptr %1, i64 %len) unnamed_addr #2 {
start:
  %_36 = alloca [4 x i8], align 4
  %_29 = alloca [4 x i8], align 4
  %_27 = alloca [4 x i8], align 4
  %i = alloca [8 x i8], align 8
  %eee = alloca [4 x i8], align 4
  %sign = alloca [4 x i8], align 4
  %pcm_0 = alloca [4 x i8], align 4
  %alaw = alloca [1 x i8], align 1
  %in_0 = alloca [8 x i8], align 8
  %out = alloca [8 x i8], align 8
  store ptr %0, ptr %out, align 8
  store ptr %1, ptr %in_0, align 8
  store i8 0, ptr %alaw, align 1
  store i32 0, ptr %pcm_0, align 4
  store i32 0, ptr %sign, align 4
  store i32 0, ptr %eee, align 4
  store i64 0, ptr %i, align 8
  br label %bb1

bb1:                                              ; preds = %bb17, %start
  %_10 = load i64, ptr %i, align 8
  %_9 = icmp ult i64 %_10, %len
  br i1 %_9, label %bb2, label %bb15

bb15:                                             ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %fresh2 = load ptr, ptr %in_0, align 8
  %_13 = load ptr, ptr %in_0, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h68f7820d90cca5d4E"(ptr %_13, i64 1, i64 1) #7
  %_0.i3 = getelementptr inbounds i8, ptr %_13, i64 1
  store ptr %_0.i3, ptr %in_0, align 8
  %_55 = ptrtoint ptr %fresh2 to i64
  %_58 = icmp eq i64 %_55, 0
  %_59 = and i1 %_58, true
  %_60 = xor i1 %_59, true
  br i1 %_60, label %bb18, label %panic

bb18:                                             ; preds = %bb2
  %_14 = load i8, ptr %fresh2, align 1
  store i8 %_14, ptr %alaw, align 1
  %_17 = load i8, ptr %alaw, align 1
  %_16 = zext i8 %_17 to i32
  %_15 = xor i32 %_16, 213
  %2 = trunc i32 %_15 to i8
  store i8 %2, ptr %alaw, align 1
  %_19 = load i8, ptr %alaw, align 1
  %_18 = zext i8 %_19 to i32
  %3 = and i32 %_18, 128
  store i32 %3, ptr %sign, align 4
  %_22 = load i8, ptr %alaw, align 1
  %_21 = zext i8 %_22 to i32
  %_20 = and i32 %_21, 112
  %4 = ashr i32 %_20, 4
  store i32 %4, ptr %eee, align 4
  %_26 = load i8, ptr %alaw, align 1
  %_25 = zext i8 %_26 to i32
  %_24 = and i32 %_25, 15
  %_23 = shl i32 %_24, 4
  %5 = or i32 %_23, 8
  store i32 %5, ptr %pcm_0, align 4
  %_28 = load i32, ptr %eee, align 4
  %6 = icmp eq i32 %_28, 0
  br i1 %6, label %bb5, label %bb4

panic:                                            ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_48c557ee59b83a5e686aa613d9a7deae) #6
  unreachable

bb5:                                              ; preds = %bb18
  store i32 0, ptr %_27, align 4
  br label %bb6

bb4:                                              ; preds = %bb18
  store i32 256, ptr %_27, align 4
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %7 = load i32, ptr %pcm_0, align 4
  %8 = load i32, ptr %_27, align 4
  %9 = add i32 %7, %8
  store i32 %9, ptr %pcm_0, align 4
  %_31 = load i32, ptr %eee, align 4
  %_30 = icmp sgt i32 %_31, 1
  br i1 %_30, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  store i32 0, ptr %_29, align 4
  br label %bb9

bb7:                                              ; preds = %bb6
  %_32 = load i32, ptr %eee, align 4
  %10 = sub i32 %_32, 1
  store i32 %10, ptr %_29, align 4
  br label %bb9

bb9:                                              ; preds = %bb7, %bb8
  %11 = load i32, ptr %pcm_0, align 4
  %12 = load i32, ptr %_29, align 4
  %13 = and i32 %12, 31
  %14 = shl i32 %11, %13
  store i32 %14, ptr %pcm_0, align 4
  %fresh3 = load ptr, ptr %out, align 8
  %_35 = load ptr, ptr %out, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h68f7820d90cca5d4E"(ptr %_35, i64 1, i64 2) #7
  %_0.i4 = getelementptr inbounds i16, ptr %_35, i64 1
  store ptr %_0.i4, ptr %out, align 8
  %_37 = load i32, ptr %sign, align 4
  %15 = icmp eq i32 %_37, 0
  br i1 %15, label %bb12, label %bb11

bb12:                                             ; preds = %bb9
  %16 = load i32, ptr %pcm_0, align 4
  store i32 %16, ptr %_36, align 4
  br label %bb13

bb11:                                             ; preds = %bb9
  %_38 = load i32, ptr %pcm_0, align 4
  %17 = sub i32 0, %_38
  store i32 %17, ptr %_36, align 4
  br label %bb13

bb13:                                             ; preds = %bb11, %bb12
  %_42 = ptrtoint ptr %fresh3 to i64
  %_45 = and i64 %_42, 1
  %_46 = icmp eq i64 %_45, 0
  br i1 %_46, label %bb16, label %panic1

bb16:                                             ; preds = %bb13
  %_48 = ptrtoint ptr %fresh3 to i64
  %_51 = icmp eq i64 %_48, 0
  %_52 = and i1 %_51, true
  %_53 = xor i1 %_52, true
  br i1 %_53, label %bb17, label %panic2

panic1:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 2, i64 %_42, ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #6
  unreachable

bb17:                                             ; preds = %bb16
  %18 = load i32, ptr %_36, align 4
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %fresh3, align 2
  %_40 = load i64, ptr %i, align 8
  %_0.i = add i64 %_40, 1
  store i64 %_0.i, ptr %i, align 8
  br label %bb1

panic2:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

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
