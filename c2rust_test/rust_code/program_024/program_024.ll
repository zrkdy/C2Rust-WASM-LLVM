; ModuleID = '7wx9gj4yrup8ttp1e827phwzy'
source_filename = "7wx9gj4yrup8ttp1e827phwzy"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Cell = type { i32, i32 }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_c2e59462afb009297a8b4b41392a0d6c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\00\00\00!\00\00\00" }>, align 8
@alloc_a91a700852dff4932ea8783197138c54 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\10\00\00\00" }>, align 8
@alloc_2efa6fb076c65f88b785c700efd47dae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@alloc_2be66f708afb6c9c7afef10e3ef8e1cd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\0A\00\00\00" }>, align 8
@alloc_1ed964aab6d6c3d3f78f16bf85f3fad7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc_f9a67bec99a265e1c517b42633a964bb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00R\00\00\00\0F\00\00\00" }>, align 8
@alloc_c2969f50405a3de605e3c0d93ac28257 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\0B\00\00\00" }>, align 8
@alloc_2fa07e5c5a985409f8dbc948d52d22b5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\09\00\00\00" }>, align 8
@alloc_46f2aeb6d78f6c51a01f5660a1d7acb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\0B\00\00\00" }>, align 8
@alloc_4c87074e4774261940ae0e22a5ad4c08 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00T\00\00\00\09\00\00\00" }>, align 8
@alloc_2edf5a438efb7b6fa4677b2a9b7668ae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\\\00\00\00\12\00\00\00" }>, align 8
@alloc_1e4c8ffa703b1cce26c51c095987f271 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\\\00\00\00\0C\00\00\00" }>, align 8
@alloc_88d35e2688e20d58b2364e2e9f502ca3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00e\00\00\00\0D\00\00\00" }>, align 8
@alloc_95f3932edbdc6e4003beba81c677cc87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00e\00\00\00\0B\00\00\00" }>, align 8
@alloc_69deb300f34fc98f5220167dff590a53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00g\00\00\00&\00\00\00" }>, align 8
@alloc_f4814cca99c3b16614bec750b995568e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\0E\00\00\00" }>, align 8
@alloc_1dd7d828d60f48f87bf51ed9e01db9ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\00\00\00\0C\00\00\00" }>, align 8
@alloc_afdd9b3563cc7c683eb33ee249dd2ebf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\22\00\00\00" }>, align 8
@alloc_e3fa67539eaa9b6f831f6d0c28f99470 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\15\00\00\00" }>, align 8
@alloc_f509ee40e6a6cde97404b60b02d20ecd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00n\00\00\00\17\00\00\00" }>, align 8
@alloc_8f226039eb518008340a7477715fa328 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00n\00\00\00\0D\00\00\00" }>, align 8
@alloc_73c46b1328fe2bebe1924c8abc01d4ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\0E\00\00\00" }>, align 8
@alloc_8b4ce467755e6c88b0dcd9b649e6cbbd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\0C\00\00\00" }>, align 8
@alloc_74c5aee057f6a6d15e806701ad54d84c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\0F\00\00\00" }>, align 8
@alloc_5185148b11bc8d5d8860d9c8af74a0a3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\0D\00\00\00" }>, align 8
@alloc_1b9e4dcc03c398f38899d58ffd4a5373 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\0F\00\00\00" }>, align 8
@alloc_30b20f89bd11fc1dca03a3f743b59ee6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\0D\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h7b411a860214cd89E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define i32 @GetPrime(i32 %N) unnamed_addr #2 {
start:
  %p = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
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
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_c2e59462afb009297a8b4b41392a0d6c) #6
  unreachable

bb4:                                              ; preds = %bb2
  %1 = add i32 %N, 1
  store i32 %1, ptr %p, align 4
  br label %bb5

bb3:                                              ; preds = %bb2
  store i32 %N, ptr %p, align 4
  br label %bb5

bb5:                                              ; preds = %bb3, %bb4
  %_10 = icmp sle i32 %N, 2
  br i1 %_10, label %bb6, label %bb7

bb7:                                              ; preds = %bb5
  %2 = icmp eq i32 %N, 3
  br i1 %2, label %bb8, label %bb9

bb6:                                              ; preds = %bb5
  store i32 2, ptr %_0, align 4
  br label %bb20

bb8:                                              ; preds = %bb7
  store i32 %N, ptr %_0, align 4
  br label %bb20

bb9:                                              ; preds = %bb18, %bb7
  %_12 = load i32, ptr %p, align 4
  %_11 = icmp slt i32 %_12, 100000
  br i1 %_11, label %bb10, label %bb19

bb20:                                             ; preds = %bb6, %bb19, %bb8
  %3 = load i32, ptr %_0, align 4
  ret i32 %3

bb19:                                             ; preds = %bb17, %bb9
  %4 = load i32, ptr %p, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb20

bb10:                                             ; preds = %bb9
  %_15 = load i32, ptr %p, align 4
  %_14 = sitofp i32 %_15 to double
  %_13 = call double @sqrt(double %_14) #7
  %5 = call i32 @llvm.fptosi.sat.i32.f64(double %_13)
  store i32 %5, ptr %i, align 4
  br label %bb12

bb12:                                             ; preds = %bb16, %bb10
  %_17 = load i32, ptr %i, align 4
  %_16 = icmp sgt i32 %_17, 2
  br i1 %_16, label %bb13, label %bb17

bb17:                                             ; preds = %bb15, %bb12
  %_25 = load i32, ptr %i, align 4
  %6 = icmp eq i32 %_25, 2
  br i1 %6, label %bb19, label %bb18

bb13:                                             ; preds = %bb12
  %_19 = load i32, ptr %p, align 4
  %_20 = load i32, ptr %i, align 4
  %_21 = icmp eq i32 %_20, 0
  br i1 %_21, label %panic1, label %bb14

bb14:                                             ; preds = %bb13
  %_22 = icmp eq i32 %_20, -1
  %_23 = icmp eq i32 %_19, -2147483648
  %_24 = and i1 %_22, %_23
  br i1 %_24, label %panic2, label %bb15

panic1:                                           ; preds = %bb13
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_a91a700852dff4932ea8783197138c54) #6
  unreachable

bb15:                                             ; preds = %bb14
  %_18 = srem i32 %_19, %_20
  %7 = icmp eq i32 %_18, 0
  br i1 %7, label %bb17, label %bb16

panic2:                                           ; preds = %bb14
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_a91a700852dff4932ea8783197138c54) #6
  unreachable

bb16:                                             ; preds = %bb15
  %8 = load i32, ptr %i, align 4
  %9 = sub i32 %8, 1
  store i32 %9, ptr %i, align 4
  br label %bb12

bb18:                                             ; preds = %bb17
  %10 = load i32, ptr %p, align 4
  %11 = add i32 %10, 2
  store i32 %11, ptr %p, align 4
  br label %bb9
}

; Function Attrs: nounwind nonlazybind
define ptr @CreateTable(i32 %TableSize) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %H = alloca [8 x i8], align 8
  store ptr null, ptr %H, align 8
  %_3 = call ptr @malloc(i64 16) #7
  store ptr %_3, ptr %H, align 8
  %_6 = call i32 @GetPrime(i32 %TableSize) #7
  %_67 = load ptr, ptr %H, align 8
  %_68 = ptrtoint ptr %_67 to i64
  %_71 = and i64 %_68, 7
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %bb19, label %panic

bb19:                                             ; preds = %start
  %_73 = load ptr, ptr %H, align 8
  %_74 = ptrtoint ptr %_73 to i64
  %_77 = icmp eq i64 %_74, 0
  %_78 = and i1 %_77, true
  %_79 = xor i1 %_78, true
  br i1 %_79, label %bb20, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_68, ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #6
  unreachable

bb20:                                             ; preds = %bb19
  %0 = load ptr, ptr %H, align 8
  store i32 %_6, ptr %0, align 8
  %_61 = load ptr, ptr %H, align 8
  %_62 = ptrtoint ptr %_61 to i64
  %_65 = and i64 %_62, 7
  %_66 = icmp eq i64 %_65, 0
  br i1 %_66, label %bb18, label %panic2

panic1:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #6
  unreachable

bb18:                                             ; preds = %bb20
  %_80 = load ptr, ptr %H, align 8
  %_81 = ptrtoint ptr %_80 to i64
  %_84 = icmp eq i64 %_81, 0
  %_85 = and i1 %_84, true
  %_86 = xor i1 %_85, true
  br i1 %_86, label %bb21, label %panic3

panic2:                                           ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_62, ptr align 8 @alloc_2be66f708afb6c9c7afef10e3ef8e1cd) #6
  unreachable

bb21:                                             ; preds = %bb18
  %1 = load ptr, ptr %H, align 8
  %_10 = load i32, ptr %1, align 8
  %_9 = sext i32 %_10 to i64
  %_0.i = mul i64 %_9, 8
  %_7 = call ptr @malloc(i64 %_0.i) #7
  %_55 = load ptr, ptr %H, align 8
  %_56 = ptrtoint ptr %_55 to i64
  %_59 = and i64 %_56, 7
  %_60 = icmp eq i64 %_59, 0
  br i1 %_60, label %bb17, label %panic4

panic3:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2be66f708afb6c9c7afef10e3ef8e1cd) #6
  unreachable

bb17:                                             ; preds = %bb21
  %_87 = load ptr, ptr %H, align 8
  %_88 = ptrtoint ptr %_87 to i64
  %_91 = icmp eq i64 %_88, 0
  %_92 = and i1 %_91, true
  %_93 = xor i1 %_92, true
  br i1 %_93, label %bb22, label %panic5

panic4:                                           ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_56, ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #6
  unreachable

bb22:                                             ; preds = %bb17
  %2 = load ptr, ptr %H, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %_7, ptr %3, align 8
  store i32 0, ptr %i, align 4
  br label %bb7

panic5:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #6
  unreachable

bb7:                                              ; preds = %bb27, %bb22
  %_15 = load i32, ptr %i, align 4
  %_49 = load ptr, ptr %H, align 8
  %_50 = ptrtoint ptr %_49 to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb16, label %panic6

bb16:                                             ; preds = %bb7
  %_94 = load ptr, ptr %H, align 8
  %_95 = ptrtoint ptr %_94 to i64
  %_98 = icmp eq i64 %_95, 0
  %_99 = and i1 %_98, true
  %_100 = xor i1 %_99, true
  br i1 %_100, label %bb23, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_f9a67bec99a265e1c517b42633a964bb) #6
  unreachable

bb23:                                             ; preds = %bb16
  %4 = load ptr, ptr %H, align 8
  %_16 = load i32, ptr %4, align 8
  %_14 = icmp slt i32 %_15, %_16
  br i1 %_14, label %bb8, label %bb11

panic7:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f9a67bec99a265e1c517b42633a964bb) #6
  unreachable

bb11:                                             ; preds = %bb23
  %_0 = load ptr, ptr %H, align 8
  ret ptr %_0

bb8:                                              ; preds = %bb23
  %_43 = load ptr, ptr %H, align 8
  %_44 = ptrtoint ptr %_43 to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb15, label %panic8

bb15:                                             ; preds = %bb8
  %_101 = load ptr, ptr %H, align 8
  %_102 = ptrtoint ptr %_101 to i64
  %_105 = icmp eq i64 %_102, 0
  %_106 = and i1 %_105, true
  %_107 = xor i1 %_106, true
  br i1 %_107, label %bb24, label %panic9

panic8:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_c2969f50405a3de605e3c0d93ac28257) #6
  unreachable

bb24:                                             ; preds = %bb15
  %5 = load ptr, ptr %H, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %_18 = load ptr, ptr %6, align 8
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_18, i64 %_19, i64 8) #7
  %_0.i17 = getelementptr inbounds %Cell, ptr %_18, i64 %_19
  %_38 = ptrtoint ptr %_0.i17 to i64
  %_41 = and i64 %_38, 3
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb14, label %panic10

panic9:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c2969f50405a3de605e3c0d93ac28257) #6
  unreachable

bb14:                                             ; preds = %bb24
  %_109 = ptrtoint ptr %_0.i17 to i64
  %_112 = icmp eq i64 %_109, 0
  %_113 = and i1 %_112, true
  %_114 = xor i1 %_113, true
  br i1 %_114, label %bb25, label %panic11

panic10:                                          ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_38, ptr align 8 @alloc_2fa07e5c5a985409f8dbc948d52d22b5) #6
  unreachable

bb25:                                             ; preds = %bb14
  store i32 0, ptr %_0.i17, align 4
  %_31 = load ptr, ptr %H, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb13, label %panic12

panic11:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2fa07e5c5a985409f8dbc948d52d22b5) #6
  unreachable

bb13:                                             ; preds = %bb25
  %_115 = load ptr, ptr %H, align 8
  %_116 = ptrtoint ptr %_115 to i64
  %_119 = icmp eq i64 %_116, 0
  %_120 = and i1 %_119, true
  %_121 = xor i1 %_120, true
  br i1 %_121, label %bb26, label %panic13

panic12:                                          ; preds = %bb25
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_46f2aeb6d78f6c51a01f5660a1d7acb7) #6
  unreachable

bb26:                                             ; preds = %bb13
  %7 = load ptr, ptr %H, align 8
  %8 = getelementptr inbounds i8, ptr %7, i64 8
  %_22 = load ptr, ptr %8, align 8
  %_24 = load i32, ptr %i, align 4
  %_23 = sext i32 %_24 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_22, i64 %_23, i64 8) #7
  %_0.i16 = getelementptr inbounds %Cell, ptr %_22, i64 %_23
  %_26 = ptrtoint ptr %_0.i16 to i64
  %_29 = and i64 %_26, 3
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb12, label %panic14

panic13:                                          ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_46f2aeb6d78f6c51a01f5660a1d7acb7) #6
  unreachable

bb12:                                             ; preds = %bb26
  %_123 = ptrtoint ptr %_0.i16 to i64
  %_126 = icmp eq i64 %_123, 0
  %_127 = and i1 %_126, true
  %_128 = xor i1 %_127, true
  br i1 %_128, label %bb27, label %panic15

panic14:                                          ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_26, ptr align 8 @alloc_4c87074e4774261940ae0e22a5ad4c08) #6
  unreachable

bb27:                                             ; preds = %bb12
  %9 = getelementptr inbounds i8, ptr %_0.i16, i64 4
  store i32 1, ptr %9, align 4
  %10 = load i32, ptr %i, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %i, align 4
  br label %bb7

panic15:                                          ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4c87074e4774261940ae0e22a5ad4c08) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @Hash(ptr %H, i32 %Key) unnamed_addr #2 {
start:
  %_9 = ptrtoint ptr %H to i64
  %_12 = and i64 %_9, 7
  %_13 = icmp eq i64 %_12, 0
  br i1 %_13, label %bb3, label %panic

bb3:                                              ; preds = %start
  %_15 = ptrtoint ptr %H to i64
  %_18 = icmp eq i64 %_15, 0
  %_19 = and i1 %_18, true
  %_20 = xor i1 %_19, true
  br i1 %_20, label %bb4, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_9, ptr align 8 @alloc_2edf5a438efb7b6fa4677b2a9b7668ae) #6
  unreachable

bb4:                                              ; preds = %bb3
  %_3 = load i32, ptr %H, align 8
  %_4 = icmp eq i32 %_3, 0
  br i1 %_4, label %panic2, label %bb1

panic1:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2edf5a438efb7b6fa4677b2a9b7668ae) #6
  unreachable

bb1:                                              ; preds = %bb4
  %_5 = icmp eq i32 %_3, -1
  %_6 = icmp eq i32 %Key, -2147483648
  %_7 = and i1 %_5, %_6
  br i1 %_7, label %panic3, label %bb2

panic2:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_1e4c8ffa703b1cce26c51c095987f271) #6
  unreachable

bb2:                                              ; preds = %bb1
  %_0 = srem i32 %Key, %_3
  ret i32 %_0

panic3:                                           ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_1e4c8ffa703b1cce26c51c095987f271) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @Find(ptr %H, i32 %Key) unnamed_addr #2 {
start:
  %CNum = alloca [4 x i8], align 4
  %NewPos = alloca [4 x i8], align 4
  %CurrentPos = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  store i32 0, ptr %CurrentPos, align 4
  store i32 0, ptr %NewPos, align 4
  store i32 0, ptr %CNum, align 4
  %_6 = call i32 @Hash(ptr %H, i32 %Key) #7
  store i32 %_6, ptr %NewPos, align 4
  %_7 = load i32, ptr %NewPos, align 4
  store i32 %_7, ptr %CurrentPos, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %bb28, %start
  %_85 = ptrtoint ptr %H to i64
  %_88 = and i64 %_85, 7
  %_89 = icmp eq i64 %_88, 0
  br i1 %_89, label %bb22, label %panic

bb22:                                             ; preds = %bb2
  %_91 = ptrtoint ptr %H to i64
  %_94 = icmp eq i64 %_91, 0
  %_95 = and i1 %_94, true
  %_96 = xor i1 %_95, true
  br i1 %_96, label %bb23, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_85, ptr align 8 @alloc_88d35e2688e20d58b2364e2e9f502ca3) #6
  unreachable

bb23:                                             ; preds = %bb22
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_11 = load ptr, ptr %0, align 8
  %_13 = load i32, ptr %NewPos, align 4
  %_12 = sext i32 %_13 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_11, i64 %_12, i64 8) #7
  %_0.i18 = getelementptr inbounds %Cell, ptr %_11, i64 %_12
  %_79 = ptrtoint ptr %_0.i18 to i64
  %_82 = and i64 %_79, 3
  %_83 = icmp eq i64 %_82, 0
  br i1 %_83, label %bb21, label %panic2

panic1:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_88d35e2688e20d58b2364e2e9f502ca3) #6
  unreachable

bb21:                                             ; preds = %bb23
  %_98 = ptrtoint ptr %_0.i18 to i64
  %_101 = icmp eq i64 %_98, 0
  %_102 = and i1 %_101, true
  %_103 = xor i1 %_102, true
  br i1 %_103, label %bb24, label %panic3

panic2:                                           ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_79, ptr align 8 @alloc_95f3932edbdc6e4003beba81c677cc87) #6
  unreachable

bb24:                                             ; preds = %bb21
  %1 = getelementptr inbounds i8, ptr %_0.i18, i64 4
  %_9 = load i32, ptr %1, align 4
  %_8 = icmp ne i32 %_9, 1
  br i1 %_8, label %bb4, label %bb11

panic3:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_95f3932edbdc6e4003beba81c677cc87) #6
  unreachable

bb11:                                             ; preds = %bb27, %bb25, %bb24
  %_39 = load i32, ptr %CNum, align 4
  %_43 = ptrtoint ptr %H to i64
  %_46 = and i64 %_43, 7
  %_47 = icmp eq i64 %_46, 0
  br i1 %_47, label %bb15, label %panic10

bb4:                                              ; preds = %bb24
  %_17 = load i32, ptr %CNum, align 4
  %_73 = ptrtoint ptr %H to i64
  %_76 = and i64 %_73, 7
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb20, label %panic4

bb20:                                             ; preds = %bb4
  %_105 = ptrtoint ptr %H to i64
  %_108 = icmp eq i64 %_105, 0
  %_109 = and i1 %_108, true
  %_110 = xor i1 %_109, true
  br i1 %_110, label %bb25, label %panic5

panic4:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_73, ptr align 8 @alloc_69deb300f34fc98f5220167dff590a53) #6
  unreachable

bb25:                                             ; preds = %bb20
  %_19 = load i32, ptr %H, align 8
  %_18 = mul i32 2, %_19
  %_16 = icmp slt i32 %_17, %_18
  br i1 %_16, label %bb5, label %bb11

panic5:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_69deb300f34fc98f5220167dff590a53) #6
  unreachable

bb5:                                              ; preds = %bb25
  %_67 = ptrtoint ptr %H to i64
  %_70 = and i64 %_67, 7
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %bb19, label %panic6

bb19:                                             ; preds = %bb5
  %_112 = ptrtoint ptr %H to i64
  %_115 = icmp eq i64 %_112, 0
  %_116 = and i1 %_115, true
  %_117 = xor i1 %_116, true
  br i1 %_117, label %bb26, label %panic7

panic6:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_67, ptr align 8 @alloc_f4814cca99c3b16614bec750b995568e) #6
  unreachable

bb26:                                             ; preds = %bb19
  %2 = getelementptr inbounds i8, ptr %H, i64 8
  %_23 = load ptr, ptr %2, align 8
  %_25 = load i32, ptr %NewPos, align 4
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_23, i64 %_24, i64 8) #7
  %_0.i = getelementptr inbounds %Cell, ptr %_23, i64 %_24
  %_61 = ptrtoint ptr %_0.i to i64
  %_64 = and i64 %_61, 3
  %_65 = icmp eq i64 %_64, 0
  br i1 %_65, label %bb18, label %panic8

panic7:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f4814cca99c3b16614bec750b995568e) #6
  unreachable

bb18:                                             ; preds = %bb26
  %_119 = ptrtoint ptr %_0.i to i64
  %_122 = icmp eq i64 %_119, 0
  %_123 = and i1 %_122, true
  %_124 = xor i1 %_123, true
  br i1 %_124, label %bb27, label %panic9

panic8:                                           ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_61, ptr align 8 @alloc_1dd7d828d60f48f87bf51ed9e01db9ff) #6
  unreachable

bb27:                                             ; preds = %bb18
  %_21 = load i32, ptr %_0.i, align 4
  %_20 = icmp ne i32 %_21, %Key
  br i1 %_20, label %bb7, label %bb11

panic9:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1dd7d828d60f48f87bf51ed9e01db9ff) #6
  unreachable

bb7:                                              ; preds = %bb27
  %3 = load i32, ptr %CNum, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %CNum, align 4
  %_26 = load i32, ptr %CurrentPos, align 4
  %_28 = load i32, ptr %CNum, align 4
  %_29 = load i32, ptr %CNum, align 4
  %_27 = mul i32 %_28, %_29
  %5 = add i32 %_26, %_27
  store i32 %5, ptr %NewPos, align 4
  %_31 = load i32, ptr %NewPos, align 4
  %_55 = ptrtoint ptr %H to i64
  %_58 = and i64 %_55, 7
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %bb17, label %panic12

bb15:                                             ; preds = %bb11
  %_140 = ptrtoint ptr %H to i64
  %_143 = icmp eq i64 %_140, 0
  %_144 = and i1 %_143, true
  %_145 = xor i1 %_144, true
  br i1 %_145, label %bb30, label %panic11

panic10:                                          ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_43, ptr align 8 @alloc_afdd9b3563cc7c683eb33ee249dd2ebf) #6
  unreachable

bb30:                                             ; preds = %bb15
  %_41 = load i32, ptr %H, align 8
  %_40 = mul i32 2, %_41
  %_38 = icmp slt i32 %_39, %_40
  br i1 %_38, label %bb12, label %bb13

panic11:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_afdd9b3563cc7c683eb33ee249dd2ebf) #6
  unreachable

bb13:                                             ; preds = %bb30
  store i32 -1, ptr %_0, align 4
  br label %bb14

bb12:                                             ; preds = %bb30
  %6 = load i32, ptr %NewPos, align 4
  store i32 %6, ptr %_0, align 4
  br label %bb14

bb14:                                             ; preds = %bb12, %bb13
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb17:                                             ; preds = %bb7
  %_126 = ptrtoint ptr %H to i64
  %_129 = icmp eq i64 %_126, 0
  %_130 = and i1 %_129, true
  %_131 = xor i1 %_130, true
  br i1 %_131, label %bb28, label %panic13

panic12:                                          ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_55, ptr align 8 @alloc_e3fa67539eaa9b6f831f6d0c28f99470) #6
  unreachable

bb28:                                             ; preds = %bb17
  %_32 = load i32, ptr %H, align 8
  %_30 = icmp sgt i32 %_31, %_32
  br i1 %_30, label %bb8, label %bb2

panic13:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e3fa67539eaa9b6f831f6d0c28f99470) #6
  unreachable

bb8:                                              ; preds = %bb28
  %_49 = ptrtoint ptr %H to i64
  %_52 = and i64 %_49, 7
  %_53 = icmp eq i64 %_52, 0
  br i1 %_53, label %bb16, label %panic14

bb16:                                             ; preds = %bb8
  %_133 = ptrtoint ptr %H to i64
  %_136 = icmp eq i64 %_133, 0
  %_137 = and i1 %_136, true
  %_138 = xor i1 %_137, true
  br i1 %_138, label %bb29, label %panic15

panic14:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_49, ptr align 8 @alloc_f509ee40e6a6cde97404b60b02d20ecd) #6
  unreachable

bb29:                                             ; preds = %bb16
  %_33 = load i32, ptr %H, align 8
  %_34 = icmp eq i32 %_33, 0
  br i1 %_34, label %panic16, label %bb9

panic15:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f509ee40e6a6cde97404b60b02d20ecd) #6
  unreachable

bb9:                                              ; preds = %bb29
  %_35 = icmp eq i32 %_33, -1
  %8 = load i32, ptr %NewPos, align 4
  %_36 = icmp eq i32 %8, -2147483648
  %_37 = and i1 %_35, %_36
  br i1 %_37, label %panic17, label %bb10

panic16:                                          ; preds = %bb29
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_8f226039eb518008340a7477715fa328) #6
  unreachable

bb10:                                             ; preds = %bb9
  %9 = load i32, ptr %NewPos, align 4
  %10 = srem i32 %9, %_33
  store i32 %10, ptr %NewPos, align 4
  br label %bb2

panic17:                                          ; preds = %bb9
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_8f226039eb518008340a7477715fa328) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @Insert(ptr %H, i32 %Key) unnamed_addr #2 {
start:
  %pos = call i32 @Find(ptr %H, i32 %Key) #7
  %_3 = icmp ne i32 %pos, -1
  br i1 %_3, label %bb2, label %bb7

bb7:                                              ; preds = %bb19, %bb15, %start
  ret i32 %pos

bb2:                                              ; preds = %start
  %_49 = ptrtoint ptr %H to i64
  %_52 = and i64 %_49, 7
  %_53 = icmp eq i64 %_52, 0
  br i1 %_53, label %bb13, label %panic

bb13:                                             ; preds = %bb2
  %_55 = ptrtoint ptr %H to i64
  %_58 = icmp eq i64 %_55, 0
  %_59 = and i1 %_58, true
  %_60 = xor i1 %_59, true
  br i1 %_60, label %bb14, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_49, ptr align 8 @alloc_73c46b1328fe2bebe1924c8abc01d4ff) #6
  unreachable

bb14:                                             ; preds = %bb13
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_8 = load ptr, ptr %0, align 8
  %_9 = sext i32 %pos to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_8, i64 %_9, i64 8) #7
  %_0.i13 = getelementptr inbounds %Cell, ptr %_8, i64 %_9
  %_43 = ptrtoint ptr %_0.i13 to i64
  %_46 = and i64 %_43, 3
  %_47 = icmp eq i64 %_46, 0
  br i1 %_47, label %bb12, label %panic2

panic1:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_73c46b1328fe2bebe1924c8abc01d4ff) #6
  unreachable

bb12:                                             ; preds = %bb14
  %_62 = ptrtoint ptr %_0.i13 to i64
  %_65 = icmp eq i64 %_62, 0
  %_66 = and i1 %_65, true
  %_67 = xor i1 %_66, true
  br i1 %_67, label %bb15, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_43, ptr align 8 @alloc_8b4ce467755e6c88b0dcd9b649e6cbbd) #6
  unreachable

bb15:                                             ; preds = %bb12
  %1 = getelementptr inbounds i8, ptr %_0.i13, i64 4
  %_6 = load i32, ptr %1, align 4
  %_5 = icmp ne i32 %_6, 0
  br i1 %_5, label %bb4, label %bb7

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8b4ce467755e6c88b0dcd9b649e6cbbd) #6
  unreachable

bb4:                                              ; preds = %bb15
  %_37 = ptrtoint ptr %H to i64
  %_40 = and i64 %_37, 7
  %_41 = icmp eq i64 %_40, 0
  br i1 %_41, label %bb11, label %panic4

bb11:                                             ; preds = %bb4
  %_69 = ptrtoint ptr %H to i64
  %_72 = icmp eq i64 %_69, 0
  %_73 = and i1 %_72, true
  %_74 = xor i1 %_73, true
  br i1 %_74, label %bb16, label %panic5

panic4:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_37, ptr align 8 @alloc_74c5aee057f6a6d15e806701ad54d84c) #6
  unreachable

bb16:                                             ; preds = %bb11
  %2 = getelementptr inbounds i8, ptr %H, i64 8
  %_13 = load ptr, ptr %2, align 8
  %_14 = sext i32 %pos to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_13, i64 %_14, i64 8) #7
  %_0.i12 = getelementptr inbounds %Cell, ptr %_13, i64 %_14
  %_31 = ptrtoint ptr %_0.i12 to i64
  %_34 = and i64 %_31, 3
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb10, label %panic6

panic5:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_74c5aee057f6a6d15e806701ad54d84c) #6
  unreachable

bb10:                                             ; preds = %bb16
  %_76 = ptrtoint ptr %_0.i12 to i64
  %_79 = icmp eq i64 %_76, 0
  %_80 = and i1 %_79, true
  %_81 = xor i1 %_80, true
  br i1 %_81, label %bb17, label %panic7

panic6:                                           ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_31, ptr align 8 @alloc_5185148b11bc8d5d8860d9c8af74a0a3) #6
  unreachable

bb17:                                             ; preds = %bb10
  %3 = getelementptr inbounds i8, ptr %_0.i12, i64 4
  store i32 0, ptr %3, align 4
  %_25 = ptrtoint ptr %H to i64
  %_28 = and i64 %_25, 7
  %_29 = icmp eq i64 %_28, 0
  br i1 %_29, label %bb9, label %panic8

panic7:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5185148b11bc8d5d8860d9c8af74a0a3) #6
  unreachable

bb9:                                              ; preds = %bb17
  %_83 = ptrtoint ptr %H to i64
  %_86 = icmp eq i64 %_83, 0
  %_87 = and i1 %_86, true
  %_88 = xor i1 %_87, true
  br i1 %_88, label %bb18, label %panic9

panic8:                                           ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_25, ptr align 8 @alloc_1b9e4dcc03c398f38899d58ffd4a5373) #6
  unreachable

bb18:                                             ; preds = %bb9
  %4 = getelementptr inbounds i8, ptr %H, i64 8
  %_16 = load ptr, ptr %4, align 8
  %_17 = sext i32 %pos to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h75bdc97a901c23f2E"(ptr %_16, i64 %_17, i64 8) #7
  %_0.i = getelementptr inbounds %Cell, ptr %_16, i64 %_17
  %_19 = ptrtoint ptr %_0.i to i64
  %_22 = and i64 %_19, 3
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb8, label %panic10

panic9:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1b9e4dcc03c398f38899d58ffd4a5373) #6
  unreachable

bb8:                                              ; preds = %bb18
  %_90 = ptrtoint ptr %_0.i to i64
  %_93 = icmp eq i64 %_90, 0
  %_94 = and i1 %_93, true
  %_95 = xor i1 %_94, true
  br i1 %_95, label %bb19, label %panic11

panic10:                                          ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_19, ptr align 8 @alloc_30b20f89bd11fc1dca03a3f743b59ee6) #6
  unreachable

bb19:                                             ; preds = %bb8
  store i32 %Key, ptr %_0.i, align 4
  br label %bb7

panic11:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_30b20f89bd11fc1dca03a3f743b59ee6) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare double @sqrt(double) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #3

; core::panicking::panic_const::panic_const_rem_by_zero
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

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
