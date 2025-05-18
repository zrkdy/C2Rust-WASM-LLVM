; ModuleID = 'dv3ey6w79ibsus6wzs4h6wl1m'
source_filename = "dv3ey6w79ibsus6wzs4h6wl1m"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%VNode = type { ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_ce61f435f91c14c925ef75509f84a7d9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\00\00\00\05\00\00\00" }>, align 8
@alloc_5084ab4427ad12819a58c085604b37aa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\05\00\00\00" }>, align 8
@alloc_befe91106f887a888d99892551a1a0a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\00\0F\00\00\00" }>, align 8
@alloc_80be1f8f68ed85156a5e366357ba62bf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00\09\00\00\00" }>, align 8
@alloc_61e4802fc1c2ab9e5eb4eb0dc95b6a00 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\17\00\00\00" }>, align 8
@alloc_2b741aa80e9bacc62157d48afd5adfbd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\05\00\00\00" }>, align 8
@alloc_f26be3c492622fd7cd955ba98140b32a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\22\00\00\00" }>, align 8
@alloc_0564cc05fb4998a20a54b98595b349ad = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\17\00\00\00" }>, align 8
@alloc_2efa6fb076c65f88b785c700efd47dae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@alloc_b91fbfdeaccd5d788465fab3755bda06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\10\00\00\00" }>, align 8
@alloc_1ed964aab6d6c3d3f78f16bf85f3fad7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc_2afe7e875dc201aa09c87521f177685d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00]\00\00\00\0A\00\00\00" }>, align 8
@alloc_7e2ae7d331f4221e732a29e4f0743e19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00a\00\00\00\0F\00\00\00" }>, align 8
@alloc_fd3e62756c20ee8758341d2a0edb1fcf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\0F\00\00\00" }>, align 8
@alloc_24c923319f6ccb289057ea78f5f90e17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\00\0F\00\00\00" }>, align 8
@alloc_4f1b09b7fb3312ddefaf937c94d34037 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\99\00\00\00\0F\00\00\00" }>, align 8
@alloc_5128586b491d6ee9da3fbf6d56914d63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00\13\00\00\00" }>, align 8
@alloc_79d22b28192de9a5876d448983a4046a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\88\00\00\00\09\00\00\00" }>, align 8
@alloc_5086773ec26bb191205697fb7e200158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\00\00\00\09\00\00\00" }>, align 8
@alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\0D\00\00\00" }>, align 8
@alloc_60fb75f391ca7b4a36855423b38c05c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\16\00\00\00" }>, align 8
@alloc_6d1f9d876bb4fa79d54a252d895f9e60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\0D\00\00\00" }>, align 8
@alloc_1072589bd20b781fbbfcfad5a252fef6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\19\00\00\00" }>, align 8
@alloc_80eebcf601c1bb14a8b3d1dda7348f7d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\10\00\00\00" }>, align 8
@alloc_62be78a6d54610e27de01937a0a7d09d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\00D\00\00\00" }>, align 8
@alloc_c4c0f53f22a96392306b0c2a98b1450c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\006\00\00\00" }>, align 8
@alloc_07df7d276e84638ee083082bf36d6df4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\00 \00\00\00" }>, align 8
@alloc_f1c693e3b94320c639f0a594f5dc048b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\00\11\00\00\00" }>, align 8
@alloc_21f83570a3fb0464fad17633f480e290 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\96\00\00\00\11\00\00\00" }>, align 8
@alloc_84efc14ee437e1d4947bba5aee9d22a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\81\00\00\00\10\00\00\00" }>, align 8
@alloc_b0f9965d8a01e5d72f97cddda2cb8f98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\82\00\00\00\18\00\00\00" }>, align 8
@alloc_930f6c35bc45e8a11acf660467fda81f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\0C\00\00\00" }>, align 8
@alloc_da135248a865094ac1ee7c569f8ef04a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00*\00\00\00" }>, align 8
@alloc_0882f91a599619b9fd464d5e2869844d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00u\00\00\00\0D\00\00\00" }>, align 8
@alloc_4bfa8bf5a4685eae06012c7a1442518a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00i\00\00\00\0D\00\00\00" }>, align 8
@alloc_95e0d0006a8a3b543dac9b8f9f0f179e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00\16\00\00\00" }>, align 8
@alloc_6142d5ac17e158aac58f671d4ea5aedf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00\0D\00\00\00" }>, align 8
@alloc_04b390832ed176cb51a17101c5c4ba9b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\16\00\00\00" }>, align 8
@alloc_ed51078e6dc684779de3934d5e746b2a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\0D\00\00\00" }>, align 8
@alloc_cc2739d80bcd3cce1112df60b4b4a818 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\11\00\00\00" }>, align 8
@alloc_af5a6df1d54b8f0bccfde6f4beaa6593 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\09\00\00\00" }>, align 8
@alloc_71ffd02a7e301b782824a236319d9c55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h82f6ce1a19d9a2b7E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #7
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h70b70065b22dfcf5E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define ptr @CreateGraph(i32 %VertexNum) unnamed_addr #2 {
start:
  %v = alloca [4 x i8], align 4
  %Graph = alloca [8 x i8], align 8
  store ptr null, ptr %Graph, align 8
  store i32 0, ptr %v, align 4
  %_4 = call ptr @malloc(i64 8008) #8
  store ptr %_4, ptr %Graph, align 8
  %_31 = load ptr, ptr %Graph, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb10, label %panic

bb10:                                             ; preds = %start
  %_37 = load ptr, ptr %Graph, align 8
  %_38 = ptrtoint ptr %_37 to i64
  %_41 = icmp eq i64 %_38, 0
  %_42 = and i1 %_41, true
  %_43 = xor i1 %_42, true
  br i1 %_43, label %bb11, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_ce61f435f91c14c925ef75509f84a7d9) #7
  unreachable

bb11:                                             ; preds = %bb10
  %0 = load ptr, ptr %Graph, align 8
  store i32 %VertexNum, ptr %0, align 8
  %_25 = load ptr, ptr %Graph, align 8
  %_26 = ptrtoint ptr %_25 to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb9, label %panic2

panic1:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ce61f435f91c14c925ef75509f84a7d9) #7
  unreachable

bb9:                                              ; preds = %bb11
  %_44 = load ptr, ptr %Graph, align 8
  %_45 = ptrtoint ptr %_44 to i64
  %_48 = icmp eq i64 %_45, 0
  %_49 = and i1 %_48, true
  %_50 = xor i1 %_49, true
  br i1 %_50, label %bb12, label %panic3

panic2:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_5084ab4427ad12819a58c085604b37aa) #7
  unreachable

bb12:                                             ; preds = %bb9
  %1 = load ptr, ptr %Graph, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 0, ptr %2, align 4
  store i32 0, ptr %v, align 4
  br label %bb3

panic3:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5084ab4427ad12819a58c085604b37aa) #7
  unreachable

bb3:                                              ; preds = %bb14, %bb12
  %_8 = load i32, ptr %v, align 4
  %_19 = load ptr, ptr %Graph, align 8
  %_20 = ptrtoint ptr %_19 to i64
  %_23 = and i64 %_20, 7
  %_24 = icmp eq i64 %_23, 0
  br i1 %_24, label %bb8, label %panic4

bb8:                                              ; preds = %bb3
  %_51 = load ptr, ptr %Graph, align 8
  %_52 = ptrtoint ptr %_51 to i64
  %_55 = icmp eq i64 %_52, 0
  %_56 = and i1 %_55, true
  %_57 = xor i1 %_56, true
  br i1 %_57, label %bb13, label %panic5

panic4:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_20, ptr align 8 @alloc_befe91106f887a888d99892551a1a0a7) #7
  unreachable

bb13:                                             ; preds = %bb8
  %3 = load ptr, ptr %Graph, align 8
  %_9 = load i32, ptr %3, align 8
  %_7 = icmp slt i32 %_8, %_9
  br i1 %_7, label %bb4, label %bb6

panic5:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_befe91106f887a888d99892551a1a0a7) #7
  unreachable

bb6:                                              ; preds = %bb13
  %_0 = load ptr, ptr %Graph, align 8
  ret ptr %_0

bb4:                                              ; preds = %bb13
  %_11 = load i32, ptr %v, align 4
  %_10 = sext i32 %_11 to i64
  %_12 = icmp ult i64 %_10, 1000
  br i1 %_12, label %bb5, label %panic6

bb5:                                              ; preds = %bb4
  %_13 = load ptr, ptr %Graph, align 8
  %_14 = ptrtoint ptr %_13 to i64
  %_17 = and i64 %_14, 7
  %_18 = icmp eq i64 %_17, 0
  br i1 %_18, label %bb7, label %panic7

panic6:                                           ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_10, i64 1000, ptr align 8 @alloc_80be1f8f68ed85156a5e366357ba62bf) #7
  unreachable

bb7:                                              ; preds = %bb5
  %_58 = load ptr, ptr %Graph, align 8
  %_59 = ptrtoint ptr %_58 to i64
  %_62 = icmp eq i64 %_59, 0
  %_63 = and i1 %_62, true
  %_64 = xor i1 %_63, true
  br i1 %_64, label %bb14, label %panic8

panic7:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_14, ptr align 8 @alloc_80be1f8f68ed85156a5e366357ba62bf) #7
  unreachable

bb14:                                             ; preds = %bb7
  %4 = load ptr, ptr %Graph, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %6 = getelementptr inbounds nuw %VNode, ptr %5, i64 %_10
  store ptr null, ptr %6, align 8
  %7 = load i32, ptr %v, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %v, align 4
  br label %bb3

panic8:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_80be1f8f68ed85156a5e366357ba62bf) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @InsertEdge(ptr %Graph, ptr %E) unnamed_addr #2 {
start:
  %NewNode = alloca [8 x i8], align 8
  store ptr null, ptr %NewNode, align 8
  %_4 = call ptr @malloc(i64 16) #8
  store ptr %_4, ptr %NewNode, align 8
  %_53 = ptrtoint ptr %E to i64
  %_56 = and i64 %_53, 3
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb11, label %panic

bb11:                                             ; preds = %start
  %_59 = ptrtoint ptr %E to i64
  %_62 = icmp eq i64 %_59, 0
  %_63 = and i1 %_62, true
  %_64 = xor i1 %_63, true
  br i1 %_64, label %bb12, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_53, ptr align 8 @alloc_61e4802fc1c2ab9e5eb4eb0dc95b6a00) #7
  unreachable

bb12:                                             ; preds = %bb11
  %0 = getelementptr inbounds i8, ptr %E, i64 4
  %_7 = load i32, ptr %0, align 4
  %_46 = load ptr, ptr %NewNode, align 8
  %_47 = ptrtoint ptr %_46 to i64
  %_50 = and i64 %_47, 7
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %bb10, label %panic2

panic1:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_61e4802fc1c2ab9e5eb4eb0dc95b6a00) #7
  unreachable

bb10:                                             ; preds = %bb12
  %_65 = load ptr, ptr %NewNode, align 8
  %_66 = ptrtoint ptr %_65 to i64
  %_69 = icmp eq i64 %_66, 0
  %_70 = and i1 %_69, true
  %_71 = xor i1 %_70, true
  br i1 %_71, label %bb13, label %panic3

panic2:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_47, ptr align 8 @alloc_2b741aa80e9bacc62157d48afd5adfbd) #7
  unreachable

bb13:                                             ; preds = %bb10
  %1 = load ptr, ptr %NewNode, align 8
  store i32 %_7, ptr %1, align 8
  %_41 = ptrtoint ptr %E to i64
  %_44 = and i64 %_41, 3
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb9, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2b741aa80e9bacc62157d48afd5adfbd) #7
  unreachable

bb9:                                              ; preds = %bb13
  %_73 = ptrtoint ptr %E to i64
  %_76 = icmp eq i64 %_73, 0
  %_77 = and i1 %_76, true
  %_78 = xor i1 %_77, true
  br i1 %_78, label %bb14, label %panic5

panic4:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_41, ptr align 8 @alloc_f26be3c492622fd7cd955ba98140b32a) #7
  unreachable

bb14:                                             ; preds = %bb9
  %_10 = load i32, ptr %E, align 4
  %_9 = sext i32 %_10 to i64
  %_11 = icmp ult i64 %_9, 1000
  br i1 %_11, label %bb3, label %panic6

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f26be3c492622fd7cd955ba98140b32a) #7
  unreachable

bb3:                                              ; preds = %bb14
  %_35 = ptrtoint ptr %Graph to i64
  %_38 = and i64 %_35, 7
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb8, label %panic7

panic6:                                           ; preds = %bb14
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_9, i64 1000, ptr align 8 @alloc_0564cc05fb4998a20a54b98595b349ad) #7
  unreachable

bb8:                                              ; preds = %bb3
  %_80 = ptrtoint ptr %Graph to i64
  %_83 = icmp eq i64 %_80, 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb15, label %panic8

panic7:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_35, ptr align 8 @alloc_0564cc05fb4998a20a54b98595b349ad) #7
  unreachable

bb15:                                             ; preds = %bb8
  %2 = getelementptr inbounds i8, ptr %Graph, i64 8
  %3 = getelementptr inbounds nuw %VNode, ptr %2, i64 %_9
  %_8 = load ptr, ptr %3, align 8
  %_28 = load ptr, ptr %NewNode, align 8
  %_29 = ptrtoint ptr %_28 to i64
  %_32 = and i64 %_29, 7
  %_33 = icmp eq i64 %_32, 0
  br i1 %_33, label %bb7, label %panic9

panic8:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0564cc05fb4998a20a54b98595b349ad) #7
  unreachable

bb7:                                              ; preds = %bb15
  %_86 = load ptr, ptr %NewNode, align 8
  %_87 = ptrtoint ptr %_86 to i64
  %_90 = icmp eq i64 %_87, 0
  %_91 = and i1 %_90, true
  %_92 = xor i1 %_91, true
  br i1 %_92, label %bb16, label %panic10

panic9:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_29, ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #7
  unreachable

bb16:                                             ; preds = %bb7
  %4 = load ptr, ptr %NewNode, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %_8, ptr %5, align 8
  %_12 = load ptr, ptr %NewNode, align 8
  %_23 = ptrtoint ptr %E to i64
  %_26 = and i64 %_23, 3
  %_27 = icmp eq i64 %_26, 0
  br i1 %_27, label %bb6, label %panic11

panic10:                                          ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #7
  unreachable

bb6:                                              ; preds = %bb16
  %_94 = ptrtoint ptr %E to i64
  %_97 = icmp eq i64 %_94, 0
  %_98 = and i1 %_97, true
  %_99 = xor i1 %_98, true
  br i1 %_99, label %bb17, label %panic12

panic11:                                          ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_23, ptr align 8 @alloc_b91fbfdeaccd5d788465fab3755bda06) #7
  unreachable

bb17:                                             ; preds = %bb6
  %_14 = load i32, ptr %E, align 4
  %_13 = sext i32 %_14 to i64
  %_15 = icmp ult i64 %_13, 1000
  br i1 %_15, label %bb4, label %panic13

panic12:                                          ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b91fbfdeaccd5d788465fab3755bda06) #7
  unreachable

bb4:                                              ; preds = %bb17
  %_17 = ptrtoint ptr %Graph to i64
  %_20 = and i64 %_17, 7
  %_21 = icmp eq i64 %_20, 0
  br i1 %_21, label %bb5, label %panic14

panic13:                                          ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_13, i64 1000, ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #7
  unreachable

bb5:                                              ; preds = %bb4
  %_101 = ptrtoint ptr %Graph to i64
  %_104 = icmp eq i64 %_101, 0
  %_105 = and i1 %_104, true
  %_106 = xor i1 %_105, true
  br i1 %_106, label %bb18, label %panic15

panic14:                                          ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_17, ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #7
  unreachable

bb18:                                             ; preds = %bb5
  %6 = getelementptr inbounds i8, ptr %Graph, i64 8
  %7 = getelementptr inbounds nuw %VNode, ptr %6, i64 %_13
  store ptr %_12, ptr %7, align 8
  ret void

panic15:                                          ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @TopSort(ptr %Graph, ptr %TopOrder, ptr %Cells) unnamed_addr #2 {
start:
  %W = alloca [8 x i8], align 8
  %num_in = alloca [4 x i8], align 4
  %zeroin = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  %mini = alloca [4 x i8], align 4
  %V = alloca [4 x i8], align 4
  %cnt = alloca [4 x i8], align 4
  %Indegree = alloca [4000 x i8], align 4
  %_0 = alloca [1 x i8], align 1
  call void @llvm.memset.p0.i64(ptr align 4 %Indegree, i8 0, i64 4000, i1 false)
  store i32 0, ptr %cnt, align 4
  store i32 0, ptr %V, align 4
  store i32 0, ptr %mini, align 4
  store i32 0, ptr %i, align 4
  store ptr null, ptr %zeroin, align 8
  store i32 0, ptr %num_in, align 4
  store ptr null, ptr %W, align 8
  %_255 = ptrtoint ptr %Graph to i64
  %_258 = and i64 %_255, 7
  %_259 = icmp eq i64 %_258, 0
  br i1 %_259, label %bb76, label %panic

bb76:                                             ; preds = %start
  %_261 = ptrtoint ptr %Graph to i64
  %_264 = icmp eq i64 %_261, 0
  %_265 = and i1 %_264, true
  %_266 = xor i1 %_265, true
  br i1 %_266, label %bb77, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_255, ptr align 8 @alloc_2afe7e875dc201aa09c87521f177685d) #7
  unreachable

bb77:                                             ; preds = %bb76
  %_15 = load i32, ptr %Graph, align 8
  %_14 = sext i32 %_15 to i64
  %_0.i = mul i64 %_14, 4
  %_12 = call ptr @malloc(i64 %_0.i) #8
  store ptr %_12, ptr %zeroin, align 8
  store i32 0, ptr %V, align 4
  br label %bb4

panic1:                                           ; preds = %bb76
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2afe7e875dc201aa09c87521f177685d) #7
  unreachable

bb4:                                              ; preds = %bb79, %bb77
  %_19 = load i32, ptr %V, align 4
  %_249 = ptrtoint ptr %Graph to i64
  %_252 = and i64 %_249, 7
  %_253 = icmp eq i64 %_252, 0
  br i1 %_253, label %bb75, label %panic2

bb75:                                             ; preds = %bb4
  %_268 = ptrtoint ptr %Graph to i64
  %_271 = icmp eq i64 %_268, 0
  %_272 = and i1 %_271, true
  %_273 = xor i1 %_272, true
  br i1 %_273, label %bb78, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_249, ptr align 8 @alloc_7e2ae7d331f4221e732a29e4f0743e19) #7
  unreachable

bb78:                                             ; preds = %bb75
  %_20 = load i32, ptr %Graph, align 8
  %_18 = icmp slt i32 %_19, %_20
  br i1 %_18, label %bb5, label %bb8

panic3:                                           ; preds = %bb75
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7e2ae7d331f4221e732a29e4f0743e19) #7
  unreachable

bb8:                                              ; preds = %bb78
  store i32 0, ptr %V, align 4
  br label %bb9

bb5:                                              ; preds = %bb78
  %_22 = load i32, ptr %V, align 4
  %_21 = sext i32 %_22 to i64
  %_23 = icmp ult i64 %_21, 1000
  br i1 %_23, label %bb6, label %panic55

bb9:                                              ; preds = %bb14, %bb8
  %_29 = load i32, ptr %V, align 4
  %_237 = ptrtoint ptr %Graph to i64
  %_240 = and i64 %_237, 7
  %_241 = icmp eq i64 %_240, 0
  br i1 %_241, label %bb73, label %panic4

bb73:                                             ; preds = %bb9
  %_282 = ptrtoint ptr %Graph to i64
  %_285 = icmp eq i64 %_282, 0
  %_286 = and i1 %_285, true
  %_287 = xor i1 %_286, true
  br i1 %_287, label %bb80, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_237, ptr align 8 @alloc_fd3e62756c20ee8758341d2a0edb1fcf) #7
  unreachable

bb80:                                             ; preds = %bb73
  %_30 = load i32, ptr %Graph, align 8
  %_28 = icmp slt i32 %_29, %_30
  br i1 %_28, label %bb10, label %bb18

panic5:                                           ; preds = %bb73
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fd3e62756c20ee8758341d2a0edb1fcf) #7
  unreachable

bb18:                                             ; preds = %bb80
  store i32 0, ptr %V, align 4
  br label %bb19

bb10:                                             ; preds = %bb80
  %_33 = load i32, ptr %V, align 4
  %_32 = sext i32 %_33 to i64
  %_34 = icmp ult i64 %_32, 1000
  br i1 %_34, label %bb11, label %panic44

bb19:                                             ; preds = %bb25, %bb18
  %_45 = load i32, ptr %V, align 4
  %_207 = ptrtoint ptr %Graph to i64
  %_210 = and i64 %_207, 7
  %_211 = icmp eq i64 %_210, 0
  br i1 %_211, label %bb68, label %panic6

bb68:                                             ; preds = %bb19
  %_317 = ptrtoint ptr %Graph to i64
  %_320 = icmp eq i64 %_317, 0
  %_321 = and i1 %_320, true
  %_322 = xor i1 %_321, true
  br i1 %_322, label %bb85, label %panic7

panic6:                                           ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_207, ptr align 8 @alloc_24c923319f6ccb289057ea78f5f90e17) #7
  unreachable

bb85:                                             ; preds = %bb68
  %_46 = load i32, ptr %Graph, align 8
  %_44 = icmp slt i32 %_45, %_46
  br i1 %_44, label %bb20, label %bb26

panic7:                                           ; preds = %bb68
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_24c923319f6ccb289057ea78f5f90e17) #7
  unreachable

bb26:                                             ; preds = %bb85
  store i32 0, ptr %cnt, align 4
  br label %bb27

bb20:                                             ; preds = %bb85
  %_49 = load i32, ptr %V, align 4
  %_48 = sext i32 %_49 to i64
  %_50 = icmp ult i64 %_48, 1000
  br i1 %_50, label %bb21, label %panic39

bb27:                                             ; preds = %bb39, %bb26
  %_59 = load i32, ptr %num_in, align 4
  %0 = icmp eq i32 %_59, 0
  br i1 %0, label %bb48, label %bb28

bb48:                                             ; preds = %bb27
  %_108 = load i32, ptr %cnt, align 4
  %_111 = ptrtoint ptr %Graph to i64
  %_114 = and i64 %_111, 7
  %_115 = icmp eq i64 %_114, 0
  br i1 %_115, label %bb52, label %panic8

bb28:                                             ; preds = %bb27
  store i32 65535, ptr %mini, align 4
  store i32 0, ptr %i, align 4
  br label %bb29

bb52:                                             ; preds = %bb48
  %_429 = ptrtoint ptr %Graph to i64
  %_432 = icmp eq i64 %_429, 0
  %_433 = and i1 %_432, true
  %_434 = xor i1 %_433, true
  br i1 %_434, label %bb101, label %panic9

panic8:                                           ; preds = %bb48
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_111, ptr align 8 @alloc_4f1b09b7fb3312ddefaf937c94d34037) #7
  unreachable

bb101:                                            ; preds = %bb52
  %_109 = load i32, ptr %Graph, align 8
  %_107 = icmp ne i32 %_108, %_109
  br i1 %_107, label %bb49, label %bb50

panic9:                                           ; preds = %bb52
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4f1b09b7fb3312ddefaf937c94d34037) #7
  unreachable

bb50:                                             ; preds = %bb101
  store i8 1, ptr %_0, align 1
  br label %bb51

bb49:                                             ; preds = %bb101
  store i8 0, ptr %_0, align 1
  br label %bb51

bb51:                                             ; preds = %bb49, %bb50
  %1 = load i8, ptr %_0, align 1
  %2 = trunc nuw i8 %1 to i1
  ret i1 %2

bb29:                                             ; preds = %bb34, %bb28
  %_61 = load i32, ptr %i, align 4
  %_189 = ptrtoint ptr %Graph to i64
  %_192 = and i64 %_189, 7
  %_193 = icmp eq i64 %_192, 0
  br i1 %_193, label %bb65, label %panic10

bb65:                                             ; preds = %bb29
  %_338 = ptrtoint ptr %Graph to i64
  %_341 = icmp eq i64 %_338, 0
  %_342 = and i1 %_341, true
  %_343 = xor i1 %_342, true
  br i1 %_343, label %bb88, label %panic11

panic10:                                          ; preds = %bb29
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_189, ptr align 8 @alloc_5128586b491d6ee9da3fbf6d56914d63) #7
  unreachable

bb88:                                             ; preds = %bb65
  %_62 = load i32, ptr %Graph, align 8
  %_60 = icmp slt i32 %_61, %_62
  br i1 %_60, label %bb30, label %bb35

panic11:                                          ; preds = %bb65
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5128586b491d6ee9da3fbf6d56914d63) #7
  unreachable

bb35:                                             ; preds = %bb88
  %_77 = load ptr, ptr %zeroin, align 8
  %_79 = load i32, ptr %V, align 4
  %_78 = sext i32 %_79 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_77, i64 %_78, i64 4) #8
  %_0.i66 = getelementptr inbounds i32, ptr %_77, i64 %_78
  %_171 = ptrtoint ptr %_0.i66 to i64
  %_174 = and i64 %_171, 3
  %_175 = icmp eq i64 %_174, 0
  br i1 %_175, label %bb62, label %panic12

bb30:                                             ; preds = %bb88
  %_66 = load ptr, ptr %zeroin, align 8
  %_68 = load i32, ptr %i, align 4
  %_67 = sext i32 %_68 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_66, i64 %_67, i64 4) #8
  %_0.i62 = getelementptr inbounds i32, ptr %_66, i64 %_67
  %_183 = ptrtoint ptr %_0.i62 to i64
  %_186 = and i64 %_183, 3
  %_187 = icmp eq i64 %_186, 0
  br i1 %_187, label %bb64, label %panic35

bb62:                                             ; preds = %bb35
  %_359 = ptrtoint ptr %_0.i66 to i64
  %_362 = icmp eq i64 %_359, 0
  %_363 = and i1 %_362, true
  %_364 = xor i1 %_363, true
  br i1 %_364, label %bb91, label %panic13

panic12:                                          ; preds = %bb35
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_171, ptr align 8 @alloc_79d22b28192de9a5876d448983a4046a) #7
  unreachable

bb91:                                             ; preds = %bb62
  store i32 65535, ptr %_0.i66, align 4
  %3 = load i32, ptr %num_in, align 4
  %4 = sub i32 %3, 1
  store i32 %4, ptr %num_in, align 4
  %fresh0 = load i32, ptr %cnt, align 4
  %_81 = load i32, ptr %cnt, align 4
  %5 = add i32 %_81, 1
  store i32 %5, ptr %cnt, align 4
  %_82 = load i32, ptr %mini, align 4
  %_84 = sext i32 %fresh0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %TopOrder, i64 %_84, i64 4) #8
  %_0.i65 = getelementptr inbounds i32, ptr %TopOrder, i64 %_84
  %_165 = ptrtoint ptr %_0.i65 to i64
  %_168 = and i64 %_165, 3
  %_169 = icmp eq i64 %_168, 0
  br i1 %_169, label %bb61, label %panic14

panic13:                                          ; preds = %bb62
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_79d22b28192de9a5876d448983a4046a) #7
  unreachable

bb61:                                             ; preds = %bb91
  %_366 = ptrtoint ptr %_0.i65 to i64
  %_369 = icmp eq i64 %_366, 0
  %_370 = and i1 %_369, true
  %_371 = xor i1 %_370, true
  br i1 %_371, label %bb92, label %panic15

panic14:                                          ; preds = %bb91
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_165, ptr align 8 @alloc_5086773ec26bb191205697fb7e200158) #7
  unreachable

bb92:                                             ; preds = %bb61
  store i32 %_82, ptr %_0.i65, align 4
  %_87 = load i32, ptr %V, align 4
  %_86 = sext i32 %_87 to i64
  %_88 = icmp ult i64 %_86, 1000
  br i1 %_88, label %bb38, label %panic16

panic15:                                          ; preds = %bb61
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5086773ec26bb191205697fb7e200158) #7
  unreachable

bb38:                                             ; preds = %bb92
  %_159 = ptrtoint ptr %Graph to i64
  %_162 = and i64 %_159, 7
  %_163 = icmp eq i64 %_162, 0
  br i1 %_163, label %bb60, label %panic17

panic16:                                          ; preds = %bb92
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_86, i64 1000, ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #7
  unreachable

bb60:                                             ; preds = %bb38
  %_373 = ptrtoint ptr %Graph to i64
  %_376 = icmp eq i64 %_373, 0
  %_377 = and i1 %_376, true
  %_378 = xor i1 %_377, true
  br i1 %_378, label %bb93, label %panic18

panic17:                                          ; preds = %bb38
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_159, ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #7
  unreachable

bb93:                                             ; preds = %bb60
  %6 = getelementptr inbounds i8, ptr %Graph, i64 8
  %7 = getelementptr inbounds nuw %VNode, ptr %6, i64 %_86
  %_85 = load ptr, ptr %7, align 8
  store ptr %_85, ptr %W, align 8
  br label %bb39

panic18:                                          ; preds = %bb60
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #7
  unreachable

bb39:                                             ; preds = %bb100, %bb93
  %_90 = load ptr, ptr %W, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_89 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h70b70065b22dfcf5E"(ptr %_90) #8
  br i1 %_89, label %bb27, label %bb41

bb41:                                             ; preds = %bb39
  %_152 = load ptr, ptr %W, align 8
  %_153 = ptrtoint ptr %_152 to i64
  %_156 = and i64 %_153, 7
  %_157 = icmp eq i64 %_156, 0
  br i1 %_157, label %bb59, label %panic19

bb59:                                             ; preds = %bb41
  %_379 = load ptr, ptr %W, align 8
  %_380 = ptrtoint ptr %_379 to i64
  %_383 = icmp eq i64 %_380, 0
  %_384 = and i1 %_383, true
  %_385 = xor i1 %_384, true
  br i1 %_385, label %bb94, label %panic20

panic19:                                          ; preds = %bb41
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_153, ptr align 8 @alloc_60fb75f391ca7b4a36855423b38c05c9) #7
  unreachable

bb94:                                             ; preds = %bb59
  %8 = load ptr, ptr %W, align 8
  %_92 = load i32, ptr %8, align 8
  %_91 = sext i32 %_92 to i64
  %_93 = icmp ult i64 %_91, 1000
  br i1 %_93, label %bb42, label %panic21

panic20:                                          ; preds = %bb59
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_60fb75f391ca7b4a36855423b38c05c9) #7
  unreachable

bb42:                                             ; preds = %bb94
  %9 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_91
  %10 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_91
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %11, 1
  store i32 %12, ptr %9, align 4
  %_146 = load ptr, ptr %W, align 8
  %_147 = ptrtoint ptr %_146 to i64
  %_150 = and i64 %_147, 7
  %_151 = icmp eq i64 %_150, 0
  br i1 %_151, label %bb58, label %panic22

panic21:                                          ; preds = %bb94
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_91, i64 1000, ptr align 8 @alloc_6d1f9d876bb4fa79d54a252d895f9e60) #7
  unreachable

bb58:                                             ; preds = %bb42
  %_386 = load ptr, ptr %W, align 8
  %_387 = ptrtoint ptr %_386 to i64
  %_390 = icmp eq i64 %_387, 0
  %_391 = and i1 %_390, true
  %_392 = xor i1 %_391, true
  br i1 %_392, label %bb95, label %panic23

panic22:                                          ; preds = %bb42
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_147, ptr align 8 @alloc_1072589bd20b781fbbfcfad5a252fef6) #7
  unreachable

bb95:                                             ; preds = %bb58
  %13 = load ptr, ptr %W, align 8
  %_96 = load i32, ptr %13, align 8
  %_95 = sext i32 %_96 to i64
  %_97 = icmp ult i64 %_95, 1000
  br i1 %_97, label %bb43, label %panic24

panic23:                                          ; preds = %bb58
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1072589bd20b781fbbfcfad5a252fef6) #7
  unreachable

bb43:                                             ; preds = %bb95
  %14 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_95
  %_94 = load i32, ptr %14, align 4
  %15 = icmp eq i32 %_94, 0
  br i1 %15, label %bb44, label %bb47

panic24:                                          ; preds = %bb95
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_95, i64 1000, ptr align 8 @alloc_80eebcf601c1bb14a8b3d1dda7348f7d) #7
  unreachable

bb44:                                             ; preds = %bb43
  %_140 = load ptr, ptr %W, align 8
  %_141 = ptrtoint ptr %_140 to i64
  %_144 = and i64 %_141, 7
  %_145 = icmp eq i64 %_144, 0
  br i1 %_145, label %bb57, label %panic25

bb47:                                             ; preds = %bb99, %bb43
  %_116 = load ptr, ptr %W, align 8
  %_117 = ptrtoint ptr %_116 to i64
  %_120 = and i64 %_117, 7
  %_121 = icmp eq i64 %_120, 0
  br i1 %_121, label %bb53, label %panic33

bb57:                                             ; preds = %bb44
  %_393 = load ptr, ptr %W, align 8
  %_394 = ptrtoint ptr %_393 to i64
  %_397 = icmp eq i64 %_394, 0
  %_398 = and i1 %_397, true
  %_399 = xor i1 %_398, true
  br i1 %_399, label %bb96, label %panic26

panic25:                                          ; preds = %bb44
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_141, ptr align 8 @alloc_62be78a6d54610e27de01937a0a7d09d) #7
  unreachable

bb96:                                             ; preds = %bb57
  %16 = load ptr, ptr %W, align 8
  %_101 = load i32, ptr %16, align 8
  %_100 = sext i32 %_101 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %Cells, i64 %_100, i64 4) #8
  %_0.i64 = getelementptr inbounds i32, ptr %Cells, i64 %_100
  %_135 = ptrtoint ptr %_0.i64 to i64
  %_138 = and i64 %_135, 3
  %_139 = icmp eq i64 %_138, 0
  br i1 %_139, label %bb56, label %panic27

panic26:                                          ; preds = %bb57
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_62be78a6d54610e27de01937a0a7d09d) #7
  unreachable

bb56:                                             ; preds = %bb96
  %_401 = ptrtoint ptr %_0.i64 to i64
  %_404 = icmp eq i64 %_401, 0
  %_405 = and i1 %_404, true
  %_406 = xor i1 %_405, true
  br i1 %_406, label %bb97, label %panic28

panic27:                                          ; preds = %bb96
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_135, ptr align 8 @alloc_c4c0f53f22a96392306b0c2a98b1450c) #7
  unreachable

bb97:                                             ; preds = %bb56
  %_98 = load i32, ptr %_0.i64, align 4
  %_103 = load ptr, ptr %zeroin, align 8
  %_128 = load ptr, ptr %W, align 8
  %_129 = ptrtoint ptr %_128 to i64
  %_132 = and i64 %_129, 7
  %_133 = icmp eq i64 %_132, 0
  br i1 %_133, label %bb55, label %panic29

panic28:                                          ; preds = %bb56
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c4c0f53f22a96392306b0c2a98b1450c) #7
  unreachable

bb55:                                             ; preds = %bb97
  %_407 = load ptr, ptr %W, align 8
  %_408 = ptrtoint ptr %_407 to i64
  %_411 = icmp eq i64 %_408, 0
  %_412 = and i1 %_411, true
  %_413 = xor i1 %_412, true
  br i1 %_413, label %bb98, label %panic30

panic29:                                          ; preds = %bb97
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_129, ptr align 8 @alloc_07df7d276e84638ee083082bf36d6df4) #7
  unreachable

bb98:                                             ; preds = %bb55
  %17 = load ptr, ptr %W, align 8
  %_105 = load i32, ptr %17, align 8
  %_104 = sext i32 %_105 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_103, i64 %_104, i64 4) #8
  %_0.i63 = getelementptr inbounds i32, ptr %_103, i64 %_104
  %_123 = ptrtoint ptr %_0.i63 to i64
  %_126 = and i64 %_123, 3
  %_127 = icmp eq i64 %_126, 0
  br i1 %_127, label %bb54, label %panic31

panic30:                                          ; preds = %bb55
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07df7d276e84638ee083082bf36d6df4) #7
  unreachable

bb54:                                             ; preds = %bb98
  %_415 = ptrtoint ptr %_0.i63 to i64
  %_418 = icmp eq i64 %_415, 0
  %_419 = and i1 %_418, true
  %_420 = xor i1 %_419, true
  br i1 %_420, label %bb99, label %panic32

panic31:                                          ; preds = %bb98
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_123, ptr align 8 @alloc_f1c693e3b94320c639f0a594f5dc048b) #7
  unreachable

bb99:                                             ; preds = %bb54
  store i32 %_98, ptr %_0.i63, align 4
  %18 = load i32, ptr %num_in, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %num_in, align 4
  br label %bb47

panic32:                                          ; preds = %bb54
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f1c693e3b94320c639f0a594f5dc048b) #7
  unreachable

bb53:                                             ; preds = %bb47
  %_421 = load ptr, ptr %W, align 8
  %_422 = ptrtoint ptr %_421 to i64
  %_425 = icmp eq i64 %_422, 0
  %_426 = and i1 %_425, true
  %_427 = xor i1 %_426, true
  br i1 %_427, label %bb100, label %panic34

panic33:                                          ; preds = %bb47
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_117, ptr align 8 @alloc_21f83570a3fb0464fad17633f480e290) #7
  unreachable

bb100:                                            ; preds = %bb53
  %20 = load ptr, ptr %W, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  %_106 = load ptr, ptr %21, align 8
  store ptr %_106, ptr %W, align 8
  br label %bb39

panic34:                                          ; preds = %bb53
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_21f83570a3fb0464fad17633f480e290) #7
  unreachable

bb64:                                             ; preds = %bb30
  %_345 = ptrtoint ptr %_0.i62 to i64
  %_348 = icmp eq i64 %_345, 0
  %_349 = and i1 %_348, true
  %_350 = xor i1 %_349, true
  br i1 %_350, label %bb89, label %panic36

panic35:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_183, ptr align 8 @alloc_84efc14ee437e1d4947bba5aee9d22a7) #7
  unreachable

bb89:                                             ; preds = %bb64
  %_64 = load i32, ptr %_0.i62, align 4
  %_69 = load i32, ptr %mini, align 4
  %_63 = icmp slt i32 %_64, %_69
  br i1 %_63, label %bb32, label %bb34

panic36:                                          ; preds = %bb64
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_84efc14ee437e1d4947bba5aee9d22a7) #7
  unreachable

bb34:                                             ; preds = %bb90, %bb89
  %22 = load i32, ptr %i, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %i, align 4
  br label %bb29

bb32:                                             ; preds = %bb89
  %_72 = load ptr, ptr %zeroin, align 8
  %_74 = load i32, ptr %i, align 4
  %_73 = sext i32 %_74 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_72, i64 %_73, i64 4) #8
  %_0.i61 = getelementptr inbounds i32, ptr %_72, i64 %_73
  %_177 = ptrtoint ptr %_0.i61 to i64
  %_180 = and i64 %_177, 3
  %_181 = icmp eq i64 %_180, 0
  br i1 %_181, label %bb63, label %panic37

bb63:                                             ; preds = %bb32
  %_352 = ptrtoint ptr %_0.i61 to i64
  %_355 = icmp eq i64 %_352, 0
  %_356 = and i1 %_355, true
  %_357 = xor i1 %_356, true
  br i1 %_357, label %bb90, label %panic38

panic37:                                          ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_177, ptr align 8 @alloc_b0f9965d8a01e5d72f97cddda2cb8f98) #7
  unreachable

bb90:                                             ; preds = %bb63
  %_70 = load i32, ptr %_0.i61, align 4
  store i32 %_70, ptr %mini, align 4
  %_75 = load i32, ptr %i, align 4
  store i32 %_75, ptr %V, align 4
  br label %bb34

panic38:                                          ; preds = %bb63
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b0f9965d8a01e5d72f97cddda2cb8f98) #7
  unreachable

bb21:                                             ; preds = %bb20
  %24 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_48
  %_47 = load i32, ptr %24, align 4
  %25 = icmp eq i32 %_47, 0
  br i1 %25, label %bb22, label %bb25

panic39:                                          ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_48, i64 1000, ptr align 8 @alloc_930f6c35bc45e8a11acf660467fda81f) #7
  unreachable

bb22:                                             ; preds = %bb21
  %_54 = load i32, ptr %V, align 4
  %_53 = sext i32 %_54 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %Cells, i64 %_53, i64 4) #8
  %_0.i60 = getelementptr inbounds i32, ptr %Cells, i64 %_53
  %_201 = ptrtoint ptr %_0.i60 to i64
  %_204 = and i64 %_201, 3
  %_205 = icmp eq i64 %_204, 0
  br i1 %_205, label %bb67, label %panic40

bb25:                                             ; preds = %bb87, %bb21
  %26 = load i32, ptr %V, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %V, align 4
  br label %bb19

bb67:                                             ; preds = %bb22
  %_324 = ptrtoint ptr %_0.i60 to i64
  %_327 = icmp eq i64 %_324, 0
  %_328 = and i1 %_327, true
  %_329 = xor i1 %_328, true
  br i1 %_329, label %bb86, label %panic41

panic40:                                          ; preds = %bb22
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_201, ptr align 8 @alloc_da135248a865094ac1ee7c569f8ef04a) #7
  unreachable

bb86:                                             ; preds = %bb67
  %_51 = load i32, ptr %_0.i60, align 4
  %_56 = load ptr, ptr %zeroin, align 8
  %_58 = load i32, ptr %V, align 4
  %_57 = sext i32 %_58 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_56, i64 %_57, i64 4) #8
  %_0.i59 = getelementptr inbounds i32, ptr %_56, i64 %_57
  %_195 = ptrtoint ptr %_0.i59 to i64
  %_198 = and i64 %_195, 3
  %_199 = icmp eq i64 %_198, 0
  br i1 %_199, label %bb66, label %panic42

panic41:                                          ; preds = %bb67
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_da135248a865094ac1ee7c569f8ef04a) #7
  unreachable

bb66:                                             ; preds = %bb86
  %_331 = ptrtoint ptr %_0.i59 to i64
  %_334 = icmp eq i64 %_331, 0
  %_335 = and i1 %_334, true
  %_336 = xor i1 %_335, true
  br i1 %_336, label %bb87, label %panic43

panic42:                                          ; preds = %bb86
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_195, ptr align 8 @alloc_0882f91a599619b9fd464d5e2869844d) #7
  unreachable

bb87:                                             ; preds = %bb66
  store i32 %_51, ptr %_0.i59, align 4
  %28 = load i32, ptr %num_in, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %num_in, align 4
  br label %bb25

panic43:                                          ; preds = %bb66
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0882f91a599619b9fd464d5e2869844d) #7
  unreachable

bb11:                                             ; preds = %bb10
  %_231 = ptrtoint ptr %Graph to i64
  %_234 = and i64 %_231, 7
  %_235 = icmp eq i64 %_234, 0
  br i1 %_235, label %bb72, label %panic45

panic44:                                          ; preds = %bb10
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_32, i64 1000, ptr align 8 @alloc_4bfa8bf5a4685eae06012c7a1442518a) #7
  unreachable

bb72:                                             ; preds = %bb11
  %_289 = ptrtoint ptr %Graph to i64
  %_292 = icmp eq i64 %_289, 0
  %_293 = and i1 %_292, true
  %_294 = xor i1 %_293, true
  br i1 %_294, label %bb81, label %panic46

panic45:                                          ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_231, ptr align 8 @alloc_4bfa8bf5a4685eae06012c7a1442518a) #7
  unreachable

bb81:                                             ; preds = %bb72
  %30 = getelementptr inbounds i8, ptr %Graph, i64 8
  %31 = getelementptr inbounds nuw %VNode, ptr %30, i64 %_32
  %_31 = load ptr, ptr %31, align 8
  store ptr %_31, ptr %W, align 8
  br label %bb12

panic46:                                          ; preds = %bb72
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4bfa8bf5a4685eae06012c7a1442518a) #7
  unreachable

bb12:                                             ; preds = %bb84, %bb81
  %_36 = load ptr, ptr %W, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_35 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h70b70065b22dfcf5E"(ptr %_36) #8
  br i1 %_35, label %bb14, label %bb15

bb15:                                             ; preds = %bb12
  %_224 = load ptr, ptr %W, align 8
  %_225 = ptrtoint ptr %_224 to i64
  %_228 = and i64 %_225, 7
  %_229 = icmp eq i64 %_228, 0
  br i1 %_229, label %bb71, label %panic47

bb14:                                             ; preds = %bb12
  %32 = load i32, ptr %V, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %V, align 4
  br label %bb9

bb71:                                             ; preds = %bb15
  %_295 = load ptr, ptr %W, align 8
  %_296 = ptrtoint ptr %_295 to i64
  %_299 = icmp eq i64 %_296, 0
  %_300 = and i1 %_299, true
  %_301 = xor i1 %_300, true
  br i1 %_301, label %bb82, label %panic48

panic47:                                          ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_225, ptr align 8 @alloc_95e0d0006a8a3b543dac9b8f9f0f179e) #7
  unreachable

bb82:                                             ; preds = %bb71
  %34 = load ptr, ptr %W, align 8
  %_38 = load i32, ptr %34, align 8
  %_37 = sext i32 %_38 to i64
  %_39 = icmp ult i64 %_37, 1000
  br i1 %_39, label %bb16, label %panic49

panic48:                                          ; preds = %bb71
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_95e0d0006a8a3b543dac9b8f9f0f179e) #7
  unreachable

bb16:                                             ; preds = %bb82
  %35 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_37
  %36 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_37
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %35, align 4
  %_218 = load ptr, ptr %W, align 8
  %_219 = ptrtoint ptr %_218 to i64
  %_222 = and i64 %_219, 7
  %_223 = icmp eq i64 %_222, 0
  br i1 %_223, label %bb70, label %panic50

panic49:                                          ; preds = %bb82
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_37, i64 1000, ptr align 8 @alloc_6142d5ac17e158aac58f671d4ea5aedf) #7
  unreachable

bb70:                                             ; preds = %bb16
  %_302 = load ptr, ptr %W, align 8
  %_303 = ptrtoint ptr %_302 to i64
  %_306 = icmp eq i64 %_303, 0
  %_307 = and i1 %_306, true
  %_308 = xor i1 %_307, true
  br i1 %_308, label %bb83, label %panic51

panic50:                                          ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_219, ptr align 8 @alloc_04b390832ed176cb51a17101c5c4ba9b) #7
  unreachable

bb83:                                             ; preds = %bb70
  %39 = load ptr, ptr %W, align 8
  %_41 = load i32, ptr %39, align 8
  %_40 = sext i32 %_41 to i64
  %_42 = icmp ult i64 %_40, 1000
  br i1 %_42, label %bb17, label %panic52

panic51:                                          ; preds = %bb70
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_04b390832ed176cb51a17101c5c4ba9b) #7
  unreachable

bb17:                                             ; preds = %bb83
  %_212 = load ptr, ptr %W, align 8
  %_213 = ptrtoint ptr %_212 to i64
  %_216 = and i64 %_213, 7
  %_217 = icmp eq i64 %_216, 0
  br i1 %_217, label %bb69, label %panic53

panic52:                                          ; preds = %bb83
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_40, i64 1000, ptr align 8 @alloc_ed51078e6dc684779de3934d5e746b2a) #7
  unreachable

bb69:                                             ; preds = %bb17
  %_309 = load ptr, ptr %W, align 8
  %_310 = ptrtoint ptr %_309 to i64
  %_313 = icmp eq i64 %_310, 0
  %_314 = and i1 %_313, true
  %_315 = xor i1 %_314, true
  br i1 %_315, label %bb84, label %panic54

panic53:                                          ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_213, ptr align 8 @alloc_cc2739d80bcd3cce1112df60b4b4a818) #7
  unreachable

bb84:                                             ; preds = %bb69
  %40 = load ptr, ptr %W, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 8
  %_43 = load ptr, ptr %41, align 8
  store ptr %_43, ptr %W, align 8
  br label %bb12

panic54:                                          ; preds = %bb69
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cc2739d80bcd3cce1112df60b4b4a818) #7
  unreachable

bb6:                                              ; preds = %bb5
  %42 = getelementptr inbounds nuw i32, ptr %Indegree, i64 %_21
  store i32 0, ptr %42, align 4
  %_25 = load ptr, ptr %zeroin, align 8
  %_27 = load i32, ptr %V, align 4
  %_26 = sext i32 %_27 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha67fd5259fbac2c9E"(ptr %_25, i64 %_26, i64 4) #8
  %_0.i58 = getelementptr inbounds i32, ptr %_25, i64 %_26
  %_243 = ptrtoint ptr %_0.i58 to i64
  %_246 = and i64 %_243, 3
  %_247 = icmp eq i64 %_246, 0
  br i1 %_247, label %bb74, label %panic56

panic55:                                          ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_21, i64 1000, ptr align 8 @alloc_af5a6df1d54b8f0bccfde6f4beaa6593) #7
  unreachable

bb74:                                             ; preds = %bb6
  %_275 = ptrtoint ptr %_0.i58 to i64
  %_278 = icmp eq i64 %_275, 0
  %_279 = and i1 %_278, true
  %_280 = xor i1 %_279, true
  br i1 %_280, label %bb79, label %panic57

panic56:                                          ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_243, ptr align 8 @alloc_71ffd02a7e301b782824a236319d9c55) #7
  unreachable

bb79:                                             ; preds = %bb74
  store i32 65535, ptr %_0.i58, align 4
  %43 = load i32, ptr %V, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %V, align 4
  br label %bb4

panic57:                                          ; preds = %bb74
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_71ffd02a7e301b782824a236319d9c55) #7
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
