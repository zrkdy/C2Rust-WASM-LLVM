; ModuleID = '6js10g3847d90gulwyviwgjyq'
source_filename = "6js10g3847d90gulwyviwgjyq"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_f1eadd94f92da7c96604aa6786de27c1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\007\00\00\00\0B\00\00\00" }>, align 8
@alloc_b6e19de1f5151b51b8788bfc8ca6e5c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\05\00\00\00" }>, align 8
@alloc_f893aaec7fb59d66993645aec7e8c702 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00\12\00\00\00" }>, align 8
@alloc_44fe032a3c519fed455ab6c1bbdfc1ca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00\0B\00\00\00" }>, align 8
@alloc_1c8e77b1edc1532fcfee4e4c7504e958 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00[\00\00\00\22\00\00\00" }>, align 8
@alloc_e6d9feeb3090cf025dddbb08a4db89fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00_\00\00\00\09\00\00\00" }>, align 8
@alloc_9fd0d8089602b49d7240982dd95949ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00`\00\00\00\09\00\00\00" }>, align 8
@alloc_1a91262cb014a58a71e2df99019abffe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\0B\00\00\00" }>, align 8
@alloc_dd9bcd26a37d9b12be2e9e61427b486f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\22\00\00\00" }>, align 8
@alloc_13c7d6433f4d53ba2c9128965961cb67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\09\00\00\00" }>, align 8
@alloc_992ca00fb69b04b518e4832572a4fd54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\09\00\00\00" }>, align 8
@alloc_7db16bfa1134aab24aca04181c933302 = private unnamed_addr constant [21 x i8] c"strcmp(copy, s) == 0\00", align 1
@alloc_596693a3b445ba0ab44f4819d72652da = private unnamed_addr constant [14 x i8] c"program_002.c\00", align 1
@alloc_eac82bbd8bf7dfb09f71a5335b5010cd = private unnamed_addr constant [55 x i8] c"void test_string(const char *, const char *, int, int)\00", align 1
@alloc_8a204c97ad36d1582ba0e97b6059fe64 = private unnamed_addr constant [30 x i8] c"strcmp(copy, ciphertext) == 0\00", align 1

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h1da317aecaee2d10E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #8
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; Function Attrs: nounwind nonlazybind
define i32 @modular_multiplicative_inverse(i32 %0, i32 %1) unnamed_addr #2 {
start:
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 4
  %div_result = alloca [8 x i8], align 4
  %x = alloca [8 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %m = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  store i32 %0, ptr %a, align 4
  store i32 %1, ptr %m, align 4
  %4 = getelementptr inbounds nuw i32, ptr %x, i64 0
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds nuw i32, ptr %x, i64 1
  store i32 0, ptr %5, align 4
  store i32 0, ptr %div_result, align 4
  %6 = getelementptr inbounds i8, ptr %div_result, i64 4
  store i32 0, ptr %6, align 4
  %_6 = load i32, ptr %m, align 4
  %_5 = icmp eq i32 %_6, 0
  br i1 %_5, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_9 = load i32, ptr %a, align 4
  %_10 = load i32, ptr %m, align 4
  %_3.i = icmp eq i32 %_10, 0
  br i1 %_3.i, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h72c03e3ca66b232eE.exit"

panic.i:                                          ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_f1eadd94f92da7c96604aa6786de27c1) #8
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h72c03e3ca66b232eE.exit": ; preds = %bb2
  %_0.i = urem i32 %_9, %_10
  store i32 %_0.i, ptr %a, align 4
  %_12 = load i32, ptr %a, align 4
  %_11 = icmp eq i32 %_12, 0
  br i1 %_11, label %bb4, label %bb5

bb1:                                              ; preds = %start
  store i32 0, ptr %_0, align 4
  br label %bb16

bb5:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h72c03e3ca66b232eE.exit"
  %_14 = load i32, ptr %a, align 4
  %7 = getelementptr inbounds i8, ptr %div_result, i64 4
  store i32 %_14, ptr %7, align 4
  br label %bb6

bb4:                                              ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$12wrapping_rem17h72c03e3ca66b232eE.exit"
  store i32 0, ptr %_0, align 4
  br label %bb16

bb6:                                              ; preds = %bb7, %bb5
  %8 = getelementptr inbounds i8, ptr %div_result, i64 4
  %_16 = load i32, ptr %8, align 4
  %_15 = icmp sgt i32 %_16, 0
  br i1 %_15, label %bb7, label %bb14

bb14:                                             ; preds = %bb6
  %9 = getelementptr inbounds nuw i32, ptr %x, i64 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %_0, align 4
  br label %bb16

bb7:                                              ; preds = %bb6
  %_19 = load i32, ptr %m, align 4
  %_21 = load i32, ptr %a, align 4
  %11 = call i64 @div(i32 %_19, i32 %_21) #9
  store i64 %11, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 8 %2, i64 8, i1 false)
  %_17.0 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds i8, ptr %3, i64 4
  %_17.1 = load i32, ptr %12, align 4
  store i32 %_17.0, ptr %div_result, align 4
  %13 = getelementptr inbounds i8, ptr %div_result, i64 4
  store i32 %_17.1, ptr %13, align 4
  %_22 = load i32, ptr %a, align 4
  store i32 %_22, ptr %m, align 4
  %14 = getelementptr inbounds i8, ptr %div_result, i64 4
  %_23 = load i32, ptr %14, align 4
  store i32 %_23, ptr %a, align 4
  %15 = getelementptr inbounds nuw i32, ptr %x, i64 1
  %_25 = load i32, ptr %15, align 4
  %16 = getelementptr inbounds nuw i32, ptr %x, i64 0
  %_29 = load i32, ptr %16, align 4
  %_32 = load i32, ptr %div_result, align 4
  %_28 = mul i32 %_29, %_32
  %next = sub i32 %_25, %_28
  %17 = getelementptr inbounds nuw i32, ptr %x, i64 0
  %_33 = load i32, ptr %17, align 4
  %18 = getelementptr inbounds nuw i32, ptr %x, i64 1
  store i32 %_33, ptr %18, align 4
  %19 = getelementptr inbounds nuw i32, ptr %x, i64 0
  store i32 %next, ptr %19, align 4
  br label %bb6

bb16:                                             ; preds = %bb1, %bb4, %bb14
  %20 = load i32, ptr %_0, align 4
  ret i32 %20
}

; Function Attrs: nounwind nonlazybind
define i64 @inverse_key(i64 %0) unnamed_addr #2 {
start:
  %inverse = alloca [8 x i8], align 4
  %_0 = alloca [8 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %key = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %key, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %inverse, align 4
  %2 = getelementptr inbounds i8, ptr %inverse, i64 4
  store i32 0, ptr %2, align 4
  %_5 = load i32, ptr %key, align 4
  %_3 = call i32 @modular_multiplicative_inverse(i32 %_5, i32 95) #9
  store i32 %_3, ptr %inverse, align 4
  %3 = load i32, ptr %inverse, align 4
  %4 = add i32 %3, 95
  store i32 %4, ptr %inverse, align 4
  %5 = load i32, ptr %inverse, align 4
  %_10 = icmp eq i32 %5, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic, label %bb3

bb3:                                              ; preds = %start
  %6 = load i32, ptr %inverse, align 4
  %7 = srem i32 %6, 95
  store i32 %7, ptr %inverse, align 4
  %8 = getelementptr inbounds i8, ptr %key, i64 4
  %_14 = load i32, ptr %8, align 4
  %_18 = icmp eq i32 %_14, -2147483648
  %_19 = and i1 false, %_18
  br i1 %_19, label %panic1, label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_b6e19de1f5151b51b8788bfc8ca6e5c9) #8
  unreachable

bb5:                                              ; preds = %bb3
  %_13 = srem i32 %_14, 95
  %_12 = sub i32 0, %_13
  %9 = getelementptr inbounds i8, ptr %inverse, i64 4
  %10 = add i32 %_12, 95
  store i32 %10, ptr %9, align 4
  %11 = load i32, ptr %inverse, align 4
  %12 = getelementptr inbounds i8, ptr %inverse, i64 4
  %13 = load i32, ptr %12, align 4
  store i32 %11, ptr %_0, align 4
  %14 = getelementptr inbounds i8, ptr %_0, i64 4
  store i32 %13, ptr %14, align 4
  %15 = load i64, ptr %_0, align 4
  ret i64 %15

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_f893aaec7fb59d66993645aec7e8c702) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @affine_encrypt(ptr %s, i64 %0) unnamed_addr #2 {
start:
  %c = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %1 = alloca [8 x i8], align 8
  %key = alloca [8 x i8], align 4
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %key, ptr align 8 %1, i64 8, i1 false)
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_9 = load i32, ptr %i, align 4
  %_8 = sext i32 %_9 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_8, i64 1) #9
  %_0.i5 = getelementptr inbounds i8, ptr %s, i64 %_8
  %_44 = ptrtoint ptr %_0.i5 to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb11, label %panic

bb11:                                             ; preds = %bb1
  %_6 = load i8, ptr %_0.i5, align 1
  %_5 = sext i8 %_6 to i32
  %_4 = icmp ne i32 %_5, 0
  br i1 %_4, label %bb3, label %bb8

panic:                                            ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_44fe032a3c519fed455ab6c1bbdfc1ca) #8
  unreachable

bb8:                                              ; preds = %bb11
  ret void

bb3:                                              ; preds = %bb11
  %_16 = load i32, ptr %i, align 4
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_15, i64 1) #9
  %_0.i4 = getelementptr inbounds i8, ptr %s, i64 %_15
  %_37 = ptrtoint ptr %_0.i4 to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb10, label %panic1

bb10:                                             ; preds = %bb3
  %_13 = load i8, ptr %_0.i4, align 1
  %_12 = sext i8 %_13 to i32
  %2 = sub i32 %_12, 32
  store i32 %2, ptr %c, align 4
  %_17 = load i32, ptr %key, align 4
  %3 = load i32, ptr %c, align 4
  %4 = mul i32 %3, %_17
  store i32 %4, ptr %c, align 4
  %5 = getelementptr inbounds i8, ptr %key, i64 4
  %_18 = load i32, ptr %5, align 4
  %6 = load i32, ptr %c, align 4
  %7 = add i32 %6, %_18
  store i32 %7, ptr %c, align 4
  %8 = load i32, ptr %c, align 4
  %_22 = icmp eq i32 %8, -2147483648
  %_23 = and i1 false, %_22
  br i1 %_23, label %panic2, label %bb6

panic1:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1c8e77b1edc1532fcfee4e4c7504e958) #8
  unreachable

bb6:                                              ; preds = %bb10
  %9 = load i32, ptr %c, align 4
  %10 = srem i32 %9, 95
  store i32 %10, ptr %c, align 4
  %_25 = load i32, ptr %c, align 4
  %_24 = add i32 %_25, 32
  %_28 = load i32, ptr %i, align 4
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_27, i64 1) #9
  %_0.i = getelementptr inbounds i8, ptr %s, i64 %_27
  %_30 = ptrtoint ptr %_0.i to i64
  %_33 = icmp eq i64 %_30, 0
  %_34 = and i1 %_33, true
  %_35 = xor i1 %_34, true
  br i1 %_35, label %bb9, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_e6d9feeb3090cf025dddbb08a4db89fe) #8
  unreachable

bb9:                                              ; preds = %bb6
  %11 = trunc i32 %_24 to i8
  store i8 %11, ptr %_0.i, align 1
  %12 = load i32, ptr %i, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %i, align 4
  br label %bb1

panic3:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9fd0d8089602b49d7240982dd95949ba) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @affine_decrypt(ptr %s, i64 %0) unnamed_addr #2 {
start:
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 4
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 4
  %c = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %5 = alloca [8 x i8], align 8
  %key = alloca [8 x i8], align 4
  store i64 %0, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %key, ptr align 8 %5, i64 8, i1 false)
  %6 = load i32, ptr %key, align 4
  %7 = getelementptr inbounds i8, ptr %key, i64 4
  %8 = load i32, ptr %7, align 4
  store i32 %6, ptr %4, align 4
  %9 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %8, ptr %9, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 4 %4, i64 8, i1 false)
  %10 = load i64, ptr %3, align 8
  %11 = call i64 @inverse_key(i64 %10) #9
  store i64 %11, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %1, i64 8, i1 false)
  %inverse.0 = load i32, ptr %2, align 4
  %12 = getelementptr inbounds i8, ptr %2, i64 4
  %inverse.1 = load i32, ptr %12, align 4
  store i32 0, ptr %i, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %start
  %_10 = load i32, ptr %i, align 4
  %_9 = sext i32 %_10 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_9, i64 1) #9
  %_0.i5 = getelementptr inbounds i8, ptr %s, i64 %_9
  %_45 = ptrtoint ptr %_0.i5 to i64
  %_48 = icmp eq i64 %_45, 0
  %_49 = and i1 %_48, true
  %_50 = xor i1 %_49, true
  br i1 %_50, label %bb12, label %panic

bb12:                                             ; preds = %bb2
  %_7 = load i8, ptr %_0.i5, align 1
  %_6 = sext i8 %_7 to i32
  %_5 = icmp ne i32 %_6, 0
  br i1 %_5, label %bb4, label %bb9

panic:                                            ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1a91262cb014a58a71e2df99019abffe) #8
  unreachable

bb9:                                              ; preds = %bb12
  ret void

bb4:                                              ; preds = %bb12
  %_17 = load i32, ptr %i, align 4
  %_16 = sext i32 %_17 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_16, i64 1) #9
  %_0.i4 = getelementptr inbounds i8, ptr %s, i64 %_16
  %_38 = ptrtoint ptr %_0.i4 to i64
  %_41 = icmp eq i64 %_38, 0
  %_42 = and i1 %_41, true
  %_43 = xor i1 %_42, true
  br i1 %_43, label %bb11, label %panic1

bb11:                                             ; preds = %bb4
  %_14 = load i8, ptr %_0.i4, align 1
  %_13 = sext i8 %_14 to i32
  %13 = sub i32 %_13, 32
  store i32 %13, ptr %c, align 4
  %14 = load i32, ptr %c, align 4
  %15 = add i32 %14, %inverse.1
  store i32 %15, ptr %c, align 4
  %16 = load i32, ptr %c, align 4
  %17 = mul i32 %16, %inverse.0
  store i32 %17, ptr %c, align 4
  %18 = load i32, ptr %c, align 4
  %_23 = icmp eq i32 %18, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic2, label %bb7

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_dd9bcd26a37d9b12be2e9e61427b486f) #8
  unreachable

bb7:                                              ; preds = %bb11
  %19 = load i32, ptr %c, align 4
  %20 = srem i32 %19, 95
  store i32 %20, ptr %c, align 4
  %_26 = load i32, ptr %c, align 4
  %_25 = add i32 %_26, 32
  %_29 = load i32, ptr %i, align 4
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hf09c84217b96632aE"(ptr %s, i64 %_28, i64 1) #9
  %_0.i = getelementptr inbounds i8, ptr %s, i64 %_28
  %_31 = ptrtoint ptr %_0.i to i64
  %_34 = icmp eq i64 %_31, 0
  %_35 = and i1 %_34, true
  %_36 = xor i1 %_35, true
  br i1 %_36, label %bb10, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_13c7d6433f4d53ba2c9128965961cb67) #8
  unreachable

bb10:                                             ; preds = %bb7
  %21 = trunc i32 %_25 to i8
  store i8 %21, ptr %_0.i, align 1
  %22 = load i32, ptr %i, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %i, align 4
  br label %bb2

panic3:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_992ca00fb69b04b518e4832572a4fd54) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @test_string(ptr %s, ptr %ciphertext, i32 %a, i32 %b) unnamed_addr #2 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 4
  %2 = alloca [8 x i8], align 8
  %3 = alloca [8 x i8], align 4
  %_9 = call i64 @strlen(ptr %s) #9
  %_0.i = add i64 %_9, 1
  %_6 = call ptr @malloc(i64 %_0.i) #9
  %_13 = call ptr @strcpy(ptr %_6, ptr %s) #9
  store i32 %a, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  store i32 %b, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 4 %3, i64 8, i1 false)
  %5 = load i64, ptr %2, align 8
  call void @affine_encrypt(ptr %_6, i64 %5) #9
  %_16 = call i32 @strcmp(ptr %_6, ptr %ciphertext) #9
  %6 = icmp eq i32 %_16, 0
  br i1 %6, label %bb9, label %bb10

bb9:                                              ; preds = %start
  store i32 %a, ptr %1, align 4
  %7 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %b, ptr %7, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 4 %1, i64 8, i1 false)
  %8 = load i64, ptr %0, align 8
  call void @affine_decrypt(ptr %_6, i64 %8) #9
  %_33 = call i32 @strcmp(ptr %_6, ptr %s) #9
  %9 = icmp eq i32 %_33, 0
  br i1 %9, label %bb14, label %bb15

bb10:                                             ; preds = %start
  call void @__assert_fail(ptr @alloc_8a204c97ad36d1582ba0e97b6059fe64, ptr @alloc_596693a3b445ba0ab44f4819d72652da, i32 165, ptr @alloc_eac82bbd8bf7dfb09f71a5335b5010cd) #8
  unreachable

bb14:                                             ; preds = %bb9
  call void @free(ptr %_6) #9
  ret void

bb15:                                             ; preds = %bb9
  call void @__assert_fail(ptr @alloc_7db16bfa1134aab24aca04181c933302, ptr @alloc_596693a3b445ba0ab44f4819d72652da, i32 169, ptr @alloc_eac82bbd8bf7dfb09f71a5335b5010cd) #8
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

; Function Attrs: nounwind nonlazybind
declare i64 @div(i32, i32) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #3

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind
declare i64 @strlen(ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @strcpy(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @strcmp(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; Function Attrs: noreturn nounwind nonlazybind
declare void @__assert_fail(ptr, ptr, i32, ptr) unnamed_addr #7

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
