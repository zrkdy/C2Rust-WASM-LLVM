; ModuleID = 'afx9mlau7ap9diuhl2v815kvn'
source_filename = "afx9mlau7ap9diuhl2v815kvn"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%LNode = type { [12 x i8], i32, ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_b8be6eb86fd9623fb408e35f24e98bd5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00!\00\00\00" }>, align 8
@alloc_fbe2054581c632a134ad158374782b5c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00\10\00\00\00" }>, align 8
@alloc_2efa6fb076c65f88b785c700efd47dae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00\05\00\00\00" }>, align 8
@alloc_2be66f708afb6c9c7afef10e3ef8e1cd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\0A\00\00\00" }>, align 8
@alloc_1ed964aab6d6c3d3f78f16bf85f3fad7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\05\00\00\00" }>, align 8
@alloc_f9a67bec99a265e1c517b42633a964bb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00R\00\00\00\0F\00\00\00" }>, align 8
@alloc_c2969f50405a3de605e3c0d93ac28257 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\0B\00\00\00" }>, align 8
@alloc_2fa07e5c5a985409f8dbc948d52d22b5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\09\00\00\00" }>, align 8
@alloc_e3c4edfeb1506fd63ac56ba5357f2eed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00U\00\00\00 \00\00\00" }>, align 8
@alloc_93f1e9a19bfe3e76887cdb03b10371f1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00U\00\00\00\0D\00\00\00" }>, align 8
@alloc_1639b3c4492d8db31ef499810969efcc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\00\00\00\0B\00\00\00" }>, align 8
@alloc_2116a9496aa5eec09b74b7fb982edea0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\00\00\00\09\00\00\00" }>, align 8
@alloc_36682ef10136f47a787d8b36c8950e08 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\0C\00\00\00" }>, align 8
@alloc_8f073d651096f738ddde9ab11c23cf95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00\15\00\00\00" }>, align 8
@alloc_1a91262cb014a58a71e2df99019abffe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\0B\00\00\00" }>, align 8
@alloc_f60bb59bae9fdbf37b53969edd55058a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00l\00\00\00\09\00\00\00" }>, align 8
@alloc_8a1ce6bbcdc14a0cb78528c1de84e2c7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00n\00\00\00\13\00\00\00" }>, align 8
@alloc_e388ee5d31727c0c17beb126dd9d5d23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\0D\00\00\00" }>, align 8
@alloc_24b91c732873032889156a0bc504f73e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\83\00\00\00\09\00\00\00" }>, align 8
@alloc_9d2ddb5b6f6721ff4e9bffc51cea228b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\84\00\00\00\09\00\00\00" }>, align 8
@alloc_3068570ef887b91ccb990f2f4d9d5bb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\19\00\00\00" }>, align 8
@alloc_93228e45d6e47a78352fb9b586e8ebff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00}\00\00\00\10\00\00\00" }>, align 8
@alloc_a36005e6c8643271d28bd8edf2a6f760 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\09\00\00\00" }>, align 8
@alloc_c63c97bef62f1287c04a1f1f78d75088 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\1D\00\00\00" }>, align 8
@alloc_b6b05efdf379e3d226c1425357c1e8ca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\1B\00\00\00" }>, align 8
@alloc_be7452df8c180fa1736a845b90103292 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\09\00\00\00" }>, align 8
@alloc_a88a5b27fde2ba3c43fa56d11a973605 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00 \00\00\00" }>, align 8
@alloc_cb3a21038d5fcaedde6ce3041cf1e00d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00\0D\00\00\00" }>, align 8
@alloc_f98ae8efed8d67a31cf67da941a5f791 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\00\00\00\0F\00\00\00" }>, align 8
@alloc_e129d8559517761533460ddc0920a23e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\97\00\00\00\0A\00\00\00" }>, align 8
@alloc_8336a2edefba1cb597c6b8af646696b0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\0F\00\00\00" }>, align 8
@alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\0D\00\00\00" }>, align 8
@alloc_e9b2ecf1515ff1d497372f6555110c76 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\13\00\00\00" }>, align 8
@alloc_864aee62fdb6873ecc9312fa4f984d25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\00\00\00\0F\00\00\00" }>, align 8
@alloc_d64b3b5fa40500ba3e13993c0a259cf4 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@alloc_f3588b28b94f0809fcc8d717033d3e48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@alloc_22823d154a0f00ce9fc307c445b1d1d2 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@alloc_d958bd5eb7d0e2ce03633e2a3ce46aa2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\0F\00\00\00" }>, align 8
@alloc_629790809c13ca5c3cae1f75eaa98b98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\0D\00\00\00" }>, align 8
@alloc_47a15cbfbb61285bf9c8a3ba25c73ae5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A5\00\00\00\10\00\00\00" }>, align 8
@alloc_79f222751f7549ebf4423654e87cbc6b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A9\00\00\00\17\00\00\00" }>, align 8
@alloc_07ac31832a885a4bbe0995a5e3258e10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AA\00\00\00\1B\00\00\00" }>, align 8
@alloc_a0bb624259394eccc55e1931a736c452 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AD\00\00\003\00\00\00" }>, align 8
@alloc_b92d87e8a0e1c51eb4a9a7fabca3a603 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\1A\00\00\00" }>, align 8
@alloc_a8f5a83592aa4bb7b08c560a3de1974d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A7\00\00\00/\00\00\00" }>, align 8
@alloc_cbea45295cd04667ba212820a0b5b111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\00\00\00\11\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h632d22101a0ea3d7E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h91b832c3aab66bf7E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define i32 @GetPrime(i32 %N) unnamed_addr #2 {
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
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_b8be6eb86fd9623fb408e35f24e98bd5) #7
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
  %_10 = icmp slt i32 %_11, 100000
  br i1 %_10, label %bb6, label %bb15

bb15:                                             ; preds = %bb13, %bb5
  %_0 = load i32, ptr %p, align 4
  ret i32 %_0

bb6:                                              ; preds = %bb5
  %_14 = load i32, ptr %p, align 4
  %_13 = sitofp i32 %_14 to double
  %_12 = call double @sqrt(double %_13) #8
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
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_fbe2054581c632a134ad158374782b5c) #7
  unreachable

bb11:                                             ; preds = %bb10
  %_17 = srem i32 %_18, %_19
  %5 = icmp eq i32 %_17, 0
  br i1 %5, label %bb13, label %bb12

panic2:                                           ; preds = %bb10
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_fbe2054581c632a134ad158374782b5c) #7
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
  %_4 = call ptr @malloc(i64 16) #8
  store ptr %_4, ptr %H, align 8
  %_7 = call i32 @GetPrime(i32 %TableSize) #8
  %_81 = load ptr, ptr %H, align 8
  %_82 = ptrtoint ptr %_81 to i64
  %_85 = and i64 %_82, 7
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %bb22, label %panic

bb22:                                             ; preds = %start
  %_87 = load ptr, ptr %H, align 8
  %_88 = ptrtoint ptr %_87 to i64
  %_91 = icmp eq i64 %_88, 0
  %_92 = and i1 %_91, true
  %_93 = xor i1 %_92, true
  br i1 %_93, label %bb23, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_82, ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #7
  unreachable

bb23:                                             ; preds = %bb22
  %0 = load ptr, ptr %H, align 8
  store i32 %_7, ptr %0, align 8
  %_75 = load ptr, ptr %H, align 8
  %_76 = ptrtoint ptr %_75 to i64
  %_79 = and i64 %_76, 7
  %_80 = icmp eq i64 %_79, 0
  br i1 %_80, label %bb21, label %panic2

panic1:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2efa6fb076c65f88b785c700efd47dae) #7
  unreachable

bb21:                                             ; preds = %bb23
  %_94 = load ptr, ptr %H, align 8
  %_95 = ptrtoint ptr %_94 to i64
  %_98 = icmp eq i64 %_95, 0
  %_99 = and i1 %_98, true
  %_100 = xor i1 %_99, true
  br i1 %_100, label %bb24, label %panic3

panic2:                                           ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_76, ptr align 8 @alloc_2be66f708afb6c9c7afef10e3ef8e1cd) #7
  unreachable

bb24:                                             ; preds = %bb21
  %1 = load ptr, ptr %H, align 8
  %_11 = load i32, ptr %1, align 8
  %_10 = sext i32 %_11 to i64
  %_0.i = mul i64 %_10, 24
  %_8 = call ptr @malloc(i64 %_0.i) #8
  %_69 = load ptr, ptr %H, align 8
  %_70 = ptrtoint ptr %_69 to i64
  %_73 = and i64 %_70, 7
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %bb20, label %panic4

panic3:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2be66f708afb6c9c7afef10e3ef8e1cd) #7
  unreachable

bb20:                                             ; preds = %bb24
  %_101 = load ptr, ptr %H, align 8
  %_102 = ptrtoint ptr %_101 to i64
  %_105 = icmp eq i64 %_102, 0
  %_106 = and i1 %_105, true
  %_107 = xor i1 %_106, true
  br i1 %_107, label %bb25, label %panic5

panic4:                                           ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_70, ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #7
  unreachable

bb25:                                             ; preds = %bb20
  %2 = load ptr, ptr %H, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %_8, ptr %3, align 8
  store i32 0, ptr %i, align 4
  br label %bb7

panic5:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1ed964aab6d6c3d3f78f16bf85f3fad7) #7
  unreachable

bb7:                                              ; preds = %bb31, %bb25
  %_15 = load i32, ptr %i, align 4
  %_63 = load ptr, ptr %H, align 8
  %_64 = ptrtoint ptr %_63 to i64
  %_67 = and i64 %_64, 7
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb19, label %panic6

bb19:                                             ; preds = %bb7
  %_108 = load ptr, ptr %H, align 8
  %_109 = ptrtoint ptr %_108 to i64
  %_112 = icmp eq i64 %_109, 0
  %_113 = and i1 %_112, true
  %_114 = xor i1 %_113, true
  br i1 %_114, label %bb26, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_64, ptr align 8 @alloc_f9a67bec99a265e1c517b42633a964bb) #7
  unreachable

bb26:                                             ; preds = %bb19
  %4 = load ptr, ptr %H, align 8
  %_16 = load i32, ptr %4, align 8
  %_14 = icmp slt i32 %_15, %_16
  br i1 %_14, label %bb8, label %bb13

panic7:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f9a67bec99a265e1c517b42633a964bb) #7
  unreachable

bb13:                                             ; preds = %bb26
  %_0 = load ptr, ptr %H, align 8
  ret ptr %_0

bb8:                                              ; preds = %bb26
  %_57 = load ptr, ptr %H, align 8
  %_58 = ptrtoint ptr %_57 to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb18, label %panic8

bb18:                                             ; preds = %bb8
  %_115 = load ptr, ptr %H, align 8
  %_116 = ptrtoint ptr %_115 to i64
  %_119 = icmp eq i64 %_116, 0
  %_120 = and i1 %_119, true
  %_121 = xor i1 %_120, true
  br i1 %_121, label %bb27, label %panic9

panic8:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_c2969f50405a3de605e3c0d93ac28257) #7
  unreachable

bb27:                                             ; preds = %bb18
  %5 = load ptr, ptr %H, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %_19 = load ptr, ptr %6, align 8
  %_21 = load i32, ptr %i, align 4
  %_20 = sext i32 %_21 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_19, i64 %_20, i64 24) #8
  %_0.i21 = getelementptr inbounds %LNode, ptr %_19, i64 %_20
  %_52 = ptrtoint ptr %_0.i21 to i64
  %_55 = and i64 %_52, 7
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb17, label %panic10

panic9:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c2969f50405a3de605e3c0d93ac28257) #7
  unreachable

bb17:                                             ; preds = %bb27
  %_123 = ptrtoint ptr %_0.i21 to i64
  %_126 = icmp eq i64 %_123, 0
  %_127 = and i1 %_126, true
  %_128 = xor i1 %_127, true
  br i1 %_128, label %bb28, label %panic11

panic10:                                          ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_52, ptr align 8 @alloc_2fa07e5c5a985409f8dbc948d52d22b5) #7
  unreachable

bb28:                                             ; preds = %bb17
  %7 = getelementptr inbounds nuw i8, ptr %_0.i21, i64 0
  store i8 0, ptr %7, align 8
  %_45 = load ptr, ptr %H, align 8
  %_46 = ptrtoint ptr %_45 to i64
  %_49 = and i64 %_46, 7
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb16, label %panic12

panic11:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2fa07e5c5a985409f8dbc948d52d22b5) #7
  unreachable

bb16:                                             ; preds = %bb28
  %_129 = load ptr, ptr %H, align 8
  %_130 = ptrtoint ptr %_129 to i64
  %_133 = icmp eq i64 %_130, 0
  %_134 = and i1 %_133, true
  %_135 = xor i1 %_134, true
  br i1 %_135, label %bb29, label %panic13

panic12:                                          ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_46, ptr align 8 @alloc_e3c4edfeb1506fd63ac56ba5357f2eed) #7
  unreachable

bb29:                                             ; preds = %bb16
  %8 = load ptr, ptr %H, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %_26 = load ptr, ptr %9, align 8
  %_28 = load i32, ptr %i, align 4
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_26, i64 %_27, i64 24) #8
  %_0.i20 = getelementptr inbounds %LNode, ptr %_26, i64 %_27
  %_151 = ptrtoint ptr %_0.i20 to i64
  %_152 = icmp eq i64 %_151, 0
  %_153 = and i1 %_152, true
  %_154 = xor i1 %_153, true
  br i1 %_154, label %bb32, label %panic14

panic13:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e3c4edfeb1506fd63ac56ba5357f2eed) #7
  unreachable

bb32:                                             ; preds = %bb29
  %fresh0 = getelementptr inbounds i8, ptr %_0.i20, i64 16
  store ptr null, ptr %fresh0, align 8
  %_39 = load ptr, ptr %H, align 8
  %_40 = ptrtoint ptr %_39 to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb15, label %panic15

panic14:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_93f1e9a19bfe3e76887cdb03b10371f1) #7
  unreachable

bb15:                                             ; preds = %bb32
  %_136 = load ptr, ptr %H, align 8
  %_137 = ptrtoint ptr %_136 to i64
  %_140 = icmp eq i64 %_137, 0
  %_141 = and i1 %_140, true
  %_142 = xor i1 %_141, true
  br i1 %_142, label %bb30, label %panic16

panic15:                                          ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_1639b3c4492d8db31ef499810969efcc) #7
  unreachable

bb30:                                             ; preds = %bb15
  %10 = load ptr, ptr %H, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  %_30 = load ptr, ptr %11, align 8
  %_32 = load i32, ptr %i, align 4
  %_31 = sext i32 %_32 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_30, i64 %_31, i64 24) #8
  %_0.i19 = getelementptr inbounds %LNode, ptr %_30, i64 %_31
  %_34 = ptrtoint ptr %_0.i19 to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb14, label %panic17

panic16:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1639b3c4492d8db31ef499810969efcc) #7
  unreachable

bb14:                                             ; preds = %bb30
  %_144 = ptrtoint ptr %_0.i19 to i64
  %_147 = icmp eq i64 %_144, 0
  %_148 = and i1 %_147, true
  %_149 = xor i1 %_148, true
  br i1 %_149, label %bb31, label %panic18

panic17:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_2116a9496aa5eec09b74b7fb982edea0) #7
  unreachable

bb31:                                             ; preds = %bb14
  %12 = getelementptr inbounds i8, ptr %_0.i19, i64 12
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %i, align 4
  br label %bb7

panic18:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2116a9496aa5eec09b74b7fb982edea0) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @Hash(ptr %Key, i32 %TableSize) unnamed_addr #2 {
start:
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %Key, i64 11, i64 1) #8
  %_0.i2 = getelementptr inbounds i8, ptr %Key, i64 11
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_0.i2, i64 -5, i64 1) #8
  %_0.i = getelementptr inbounds i8, ptr %_0.i2, i64 -5
  %_3 = call i32 @atoi(ptr %_0.i) #8
  %_10 = icmp eq i32 %TableSize, 0
  br i1 %_10, label %panic, label %bb4

bb4:                                              ; preds = %start
  %_11 = icmp eq i32 %TableSize, -1
  %_12 = icmp eq i32 %_3, -2147483648
  %_13 = and i1 %_11, %_12
  br i1 %_13, label %panic1, label %bb5

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_36682ef10136f47a787d8b36c8950e08) #7
  unreachable

bb5:                                              ; preds = %bb4
  %_0 = srem i32 %_3, %TableSize
  ret i32 %_0

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_36682ef10136f47a787d8b36c8950e08) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @Find(ptr %H, ptr %key) unnamed_addr #2 {
start:
  %p = alloca [8 x i8], align 8
  %pos = alloca [4 x i8], align 4
  store i32 0, ptr %pos, align 4
  store ptr null, ptr %p, align 8
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_8f073d651096f738ddde9ab11c23cf95) #7
  unreachable

bb14:                                             ; preds = %bb13
  %_6 = load i32, ptr %H, align 8
  %_5 = call i32 @Hash(ptr %key, i32 %_6) #8
  store i32 %_5, ptr %pos, align 4
  %_34 = ptrtoint ptr %H to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb12, label %panic2

panic1:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8f073d651096f738ddde9ab11c23cf95) #7
  unreachable

bb12:                                             ; preds = %bb14
  %_53 = ptrtoint ptr %H to i64
  %_56 = icmp eq i64 %_53, 0
  %_57 = and i1 %_56, true
  %_58 = xor i1 %_57, true
  br i1 %_58, label %bb15, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_1a91262cb014a58a71e2df99019abffe) #7
  unreachable

bb15:                                             ; preds = %bb12
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_9 = load ptr, ptr %0, align 8
  %_11 = load i32, ptr %pos, align 4
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_9, i64 %_10, i64 24) #8
  %_0.i = getelementptr inbounds %LNode, ptr %_9, i64 %_10
  %_28 = ptrtoint ptr %_0.i to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb11, label %panic4

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1a91262cb014a58a71e2df99019abffe) #7
  unreachable

bb11:                                             ; preds = %bb15
  %_60 = ptrtoint ptr %_0.i to i64
  %_63 = icmp eq i64 %_60, 0
  %_64 = and i1 %_63, true
  %_65 = xor i1 %_64, true
  br i1 %_65, label %bb16, label %panic5

panic4:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_f60bb59bae9fdbf37b53969edd55058a) #7
  unreachable

bb16:                                             ; preds = %bb11
  %1 = getelementptr inbounds i8, ptr %_0.i, i64 16
  %_7 = load ptr, ptr %1, align 8
  store ptr %_7, ptr %p, align 8
  br label %bb3

panic5:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f60bb59bae9fdbf37b53969edd55058a) #7
  unreachable

bb3:                                              ; preds = %bb17, %bb16
  %_13 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_12 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h91b832c3aab66bf7E"(ptr %_13) #8
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
  %_14 = call i32 @strcmp(ptr %_18, ptr %key) #8
  %2 = icmp eq i32 %_14, 0
  br i1 %2, label %bb9, label %bb8

panic6:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8a1ce6bbcdc14a0cb78528c1de84e2c7) #7
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_e388ee5d31727c0c17beb126dd9d5d23) #7
  unreachable

bb17:                                             ; preds = %bb10
  %3 = load ptr, ptr %p, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %_20 = load ptr, ptr %4, align 8
  store ptr %_20, ptr %p, align 8
  br label %bb3

panic8:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e388ee5d31727c0c17beb126dd9d5d23) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Insert(ptr %H, ptr %Key) unnamed_addr #2 {
start:
  %pos = alloca [4 x i8], align 4
  %NewNode = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %NewNode, align 8
  store i32 0, ptr %pos, align 4
  %_6 = call ptr @Find(ptr %H, ptr %Key) #8
  store ptr %_6, ptr %p, align 8
  %_8 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_7 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h91b832c3aab66bf7E"(ptr %_8) #8
  br i1 %_7, label %bb3, label %bb11

bb11:                                             ; preds = %start
  %_42 = load ptr, ptr %p, align 8
  %_43 = ptrtoint ptr %_42 to i64
  %_46 = and i64 %_43, 7
  %_47 = icmp eq i64 %_46, 0
  br i1 %_47, label %bb15, label %panic

bb3:                                              ; preds = %start
  %_79 = ptrtoint ptr %H to i64
  %_82 = and i64 %_79, 7
  %_83 = icmp eq i64 %_82, 0
  br i1 %_83, label %bb21, label %panic6

bb15:                                             ; preds = %bb11
  %_36 = load ptr, ptr %p, align 8
  %_37 = ptrtoint ptr %_36 to i64
  %_40 = and i64 %_37, 7
  %_41 = icmp eq i64 %_40, 0
  br i1 %_41, label %bb14, label %panic1

panic:                                            ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_43, ptr align 8 @alloc_24b91c732873032889156a0bc504f73e) #7
  unreachable

bb14:                                             ; preds = %bb15
  %_133 = load ptr, ptr %p, align 8
  %_134 = ptrtoint ptr %_133 to i64
  %_137 = icmp eq i64 %_134, 0
  %_138 = and i1 %_137, true
  %_139 = xor i1 %_138, true
  br i1 %_139, label %bb29, label %panic2

panic1:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_37, ptr align 8 @alloc_24b91c732873032889156a0bc504f73e) #7
  unreachable

bb29:                                             ; preds = %bb14
  %_126 = load ptr, ptr %p, align 8
  %_127 = ptrtoint ptr %_126 to i64
  %_130 = icmp eq i64 %_127, 0
  %_131 = and i1 %_130, true
  %_132 = xor i1 %_131, true
  br i1 %_132, label %bb28, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_24b91c732873032889156a0bc504f73e) #7
  unreachable

bb28:                                             ; preds = %bb29
  %0 = load ptr, ptr %p, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 12
  %2 = load ptr, ptr %p, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 12
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %1, align 4
  %_30 = load ptr, ptr %p, align 8
  %_31 = ptrtoint ptr %_30 to i64
  %_34 = and i64 %_31, 7
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb13, label %panic4

panic3:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_24b91c732873032889156a0bc504f73e) #7
  unreachable

bb13:                                             ; preds = %bb28
  %_140 = load ptr, ptr %p, align 8
  %_141 = ptrtoint ptr %_140 to i64
  %_144 = icmp eq i64 %_141, 0
  %_145 = and i1 %_144, true
  %_146 = xor i1 %_145, true
  br i1 %_146, label %bb12, label %panic5

panic4:                                           ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_31, ptr align 8 @alloc_9d2ddb5b6f6721ff4e9bffc51cea228b) #7
  unreachable

bb12:                                             ; preds = %bb30, %bb13
  ret void

panic5:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d2ddb5b6f6721ff4e9bffc51cea228b) #7
  unreachable

bb21:                                             ; preds = %bb3
  %_85 = ptrtoint ptr %H to i64
  %_88 = icmp eq i64 %_85, 0
  %_89 = and i1 %_88, true
  %_90 = xor i1 %_89, true
  br i1 %_90, label %bb22, label %panic7

panic6:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_79, ptr align 8 @alloc_3068570ef887b91ccb990f2f4d9d5bb7) #7
  unreachable

bb22:                                             ; preds = %bb21
  %_10 = load i32, ptr %H, align 8
  %_9 = call i32 @Hash(ptr %Key, i32 %_10) #8
  store i32 %_9, ptr %pos, align 4
  %_11 = call ptr @malloc(i64 24) #8
  store ptr %_11, ptr %NewNode, align 8
  %_152 = load ptr, ptr %NewNode, align 8
  %_153 = ptrtoint ptr %_152 to i64
  %_154 = icmp eq i64 %_153, 0
  %_155 = and i1 %_154, true
  %_156 = xor i1 %_155, true
  br i1 %_156, label %bb31, label %panic8

panic7:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3068570ef887b91ccb990f2f4d9d5bb7) #7
  unreachable

bb31:                                             ; preds = %bb22
  %_17 = load ptr, ptr %NewNode, align 8
  %_14 = call ptr @strcpy(ptr %_17, ptr %Key) #8
  %_72 = load ptr, ptr %NewNode, align 8
  %_73 = ptrtoint ptr %_72 to i64
  %_76 = and i64 %_73, 7
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb20, label %panic9

panic8:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_93228e45d6e47a78352fb9b586e8ebff) #7
  unreachable

bb20:                                             ; preds = %bb31
  %_91 = load ptr, ptr %NewNode, align 8
  %_92 = ptrtoint ptr %_91 to i64
  %_95 = icmp eq i64 %_92, 0
  %_96 = and i1 %_95, true
  %_97 = xor i1 %_96, true
  br i1 %_97, label %bb23, label %panic10

panic9:                                           ; preds = %bb31
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_73, ptr align 8 @alloc_a36005e6c8643271d28bd8edf2a6f760) #7
  unreachable

bb23:                                             ; preds = %bb20
  %6 = load ptr, ptr %NewNode, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 12
  store i32 1, ptr %7, align 4
  %_67 = ptrtoint ptr %H to i64
  %_70 = and i64 %_67, 7
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %bb19, label %panic11

panic10:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a36005e6c8643271d28bd8edf2a6f760) #7
  unreachable

bb19:                                             ; preds = %bb23
  %_99 = ptrtoint ptr %H to i64
  %_102 = icmp eq i64 %_99, 0
  %_103 = and i1 %_102, true
  %_104 = xor i1 %_103, true
  br i1 %_104, label %bb24, label %panic12

panic11:                                          ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_67, ptr align 8 @alloc_c63c97bef62f1287c04a1f1f78d75088) #7
  unreachable

bb24:                                             ; preds = %bb19
  %8 = getelementptr inbounds i8, ptr %H, i64 8
  %_21 = load ptr, ptr %8, align 8
  %_23 = load i32, ptr %pos, align 4
  %_22 = sext i32 %_23 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_21, i64 %_22, i64 24) #8
  %_0.i20 = getelementptr inbounds %LNode, ptr %_21, i64 %_22
  %_61 = ptrtoint ptr %_0.i20 to i64
  %_64 = and i64 %_61, 7
  %_65 = icmp eq i64 %_64, 0
  br i1 %_65, label %bb18, label %panic13

panic12:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c63c97bef62f1287c04a1f1f78d75088) #7
  unreachable

bb18:                                             ; preds = %bb24
  %_106 = ptrtoint ptr %_0.i20 to i64
  %_109 = icmp eq i64 %_106, 0
  %_110 = and i1 %_109, true
  %_111 = xor i1 %_110, true
  br i1 %_111, label %bb25, label %panic14

panic13:                                          ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_61, ptr align 8 @alloc_b6b05efdf379e3d226c1425357c1e8ca) #7
  unreachable

bb25:                                             ; preds = %bb18
  %9 = getelementptr inbounds i8, ptr %_0.i20, i64 16
  %_19 = load ptr, ptr %9, align 8
  %_54 = load ptr, ptr %NewNode, align 8
  %_55 = ptrtoint ptr %_54 to i64
  %_58 = and i64 %_55, 7
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %bb17, label %panic15

panic14:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b6b05efdf379e3d226c1425357c1e8ca) #7
  unreachable

bb17:                                             ; preds = %bb25
  %_112 = load ptr, ptr %NewNode, align 8
  %_113 = ptrtoint ptr %_112 to i64
  %_116 = icmp eq i64 %_113, 0
  %_117 = and i1 %_116, true
  %_118 = xor i1 %_117, true
  br i1 %_118, label %bb26, label %panic16

panic15:                                          ; preds = %bb25
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_55, ptr align 8 @alloc_be7452df8c180fa1736a845b90103292) #7
  unreachable

bb26:                                             ; preds = %bb17
  %10 = load ptr, ptr %NewNode, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 16
  store ptr %_19, ptr %11, align 8
  %_49 = ptrtoint ptr %H to i64
  %_52 = and i64 %_49, 7
  %_53 = icmp eq i64 %_52, 0
  br i1 %_53, label %bb16, label %panic17

panic16:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_be7452df8c180fa1736a845b90103292) #7
  unreachable

bb16:                                             ; preds = %bb26
  %_120 = ptrtoint ptr %H to i64
  %_123 = icmp eq i64 %_120, 0
  %_124 = and i1 %_123, true
  %_125 = xor i1 %_124, true
  br i1 %_125, label %bb27, label %panic18

panic17:                                          ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_49, ptr align 8 @alloc_a88a5b27fde2ba3c43fa56d11a973605) #7
  unreachable

bb27:                                             ; preds = %bb16
  %12 = getelementptr inbounds i8, ptr %H, i64 8
  %_26 = load ptr, ptr %12, align 8
  %_28 = load i32, ptr %pos, align 4
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_26, i64 %_27, i64 24) #8
  %_0.i = getelementptr inbounds %LNode, ptr %_26, i64 %_27
  %_148 = ptrtoint ptr %_0.i to i64
  %_149 = icmp eq i64 %_148, 0
  %_150 = and i1 %_149, true
  %_151 = xor i1 %_150, true
  br i1 %_151, label %bb30, label %panic19

panic18:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a88a5b27fde2ba3c43fa56d11a973605) #7
  unreachable

bb30:                                             ; preds = %bb27
  %fresh1 = getelementptr inbounds i8, ptr %_0.i, i64 16
  %_29 = load ptr, ptr %NewNode, align 8
  store ptr %_29, ptr %fresh1, align 8
  br label %bb12

panic19:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cb3a21038d5fcaedde6ce3041cf1e00d) #7
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_f98ae8efed8d67a31cf67da941a5f791) #7
  unreachable

bb17:                                             ; preds = %bb16
  %_7 = load i32, ptr %H, align 8
  %_5 = icmp slt i32 %_6, %_7
  br i1 %_5, label %bb2, label %bb9

panic1:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f98ae8efed8d67a31cf67da941a5f791) #7
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_e129d8559517761533460ddc0920a23e) #7
  unreachable

bb21:                                             ; preds = %bb12
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_22 = load ptr, ptr %0, align 8
  call void @free(ptr %_22) #8
  call void @free(ptr %H) #8
  ret void

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e129d8559517761533460ddc0920a23e) #7
  unreachable

bb15:                                             ; preds = %bb2
  %_63 = ptrtoint ptr %H to i64
  %_66 = icmp eq i64 %_63, 0
  %_67 = and i1 %_66, true
  %_68 = xor i1 %_67, true
  br i1 %_68, label %bb18, label %panic5

panic4:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_8336a2edefba1cb597c6b8af646696b0) #7
  unreachable

bb18:                                             ; preds = %bb15
  %1 = getelementptr inbounds i8, ptr %H, i64 8
  %_10 = load ptr, ptr %1, align 8
  %_12 = load i32, ptr %i, align 4
  %_11 = sext i32 %_12 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_10, i64 %_11, i64 24) #8
  %_0.i = getelementptr inbounds %LNode, ptr %_10, i64 %_11
  %_38 = ptrtoint ptr %_0.i to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb14, label %panic6

panic5:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8336a2edefba1cb597c6b8af646696b0) #7
  unreachable

bb14:                                             ; preds = %bb18
  %_70 = ptrtoint ptr %_0.i to i64
  %_73 = icmp eq i64 %_70, 0
  %_74 = and i1 %_73, true
  %_75 = xor i1 %_74, true
  br i1 %_75, label %bb19, label %panic7

panic6:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #7
  unreachable

bb19:                                             ; preds = %bb14
  %2 = getelementptr inbounds i8, ptr %_0.i, i64 16
  %_8 = load ptr, ptr %2, align 8
  store ptr %_8, ptr %p, align 8
  br label %bb4

panic7:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #7
  unreachable

bb4:                                              ; preds = %bb20, %bb19
  %_14 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_13 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h91b832c3aab66bf7E"(ptr %_14) #8
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_e9b2ecf1515ff1d497372f6555110c76) #7
  unreachable

bb20:                                             ; preds = %bb13
  %5 = load ptr, ptr %p, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 16
  %_15 = load ptr, ptr %6, align 8
  store ptr %_15, ptr %tmp, align 8
  %_18 = load ptr, ptr %p, align 8
  call void @free(ptr %_18) #8
  %_19 = load ptr, ptr %tmp, align 8
  store ptr %_19, ptr %p, align 8
  br label %bb4

panic9:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e9b2ecf1515ff1d497372f6555110c76) #7
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @ScanAndOutput(ptr %H) unnamed_addr #2 {
start:
  %p = alloca [8 x i8], align 8
  %maxphone = alloca [12 x i8], align 1
  %repeat = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %maxnum = alloca [4 x i8], align 4
  store i32 0, ptr %maxnum, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %repeat, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %maxphone, i8 0, i64 12, i1 false)
  store ptr null, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_8 = load i32, ptr %i, align 4
  %_110 = ptrtoint ptr %H to i64
  %_113 = and i64 %_110, 7
  %_114 = icmp eq i64 %_113, 0
  br i1 %_114, label %bb34, label %panic

bb34:                                             ; preds = %bb1
  %_116 = ptrtoint ptr %H to i64
  %_119 = icmp eq i64 %_116, 0
  %_120 = and i1 %_119, true
  %_121 = xor i1 %_120, true
  br i1 %_121, label %bb35, label %panic1

panic:                                            ; preds = %bb1
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_110, ptr align 8 @alloc_864aee62fdb6873ecc9312fa4f984d25) #7
  unreachable

bb35:                                             ; preds = %bb34
  %_9 = load i32, ptr %H, align 8
  %_7 = icmp slt i32 %_8, %_9
  br i1 %_7, label %bb2, label %bb22

panic1:                                           ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_864aee62fdb6873ecc9312fa4f984d25) #7
  unreachable

bb22:                                             ; preds = %bb35
  %_59 = load i32, ptr %maxnum, align 4
  %_51 = call i32 (ptr, ...) @printf(ptr @alloc_d64b3b5fa40500ba3e13993c0a259cf4, ptr %maxphone, i32 %_59) #8
  %_61 = load i32, ptr %repeat, align 4
  %_60 = icmp sgt i32 %_61, 1
  br i1 %_60, label %bb25, label %bb26

bb2:                                              ; preds = %bb35
  %_104 = ptrtoint ptr %H to i64
  %_107 = and i64 %_104, 7
  %_108 = icmp eq i64 %_107, 0
  br i1 %_108, label %bb33, label %panic2

bb26:                                             ; preds = %bb22
  %_68 = call i32 (ptr, ...) @printf(ptr @alloc_f3588b28b94f0809fcc8d717033d3e48) #8
  br label %bb27

bb25:                                             ; preds = %bb22
  %_67 = load i32, ptr %repeat, align 4
  %_62 = call i32 (ptr, ...) @printf(ptr @alloc_22823d154a0f00ce9fc307c445b1d1d2, i32 %_67) #8
  br label %bb27

bb27:                                             ; preds = %bb25, %bb26
  ret void

bb33:                                             ; preds = %bb2
  %_123 = ptrtoint ptr %H to i64
  %_126 = icmp eq i64 %_123, 0
  %_127 = and i1 %_126, true
  %_128 = xor i1 %_127, true
  br i1 %_128, label %bb36, label %panic3

panic2:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_104, ptr align 8 @alloc_d958bd5eb7d0e2ce03633e2a3ce46aa2) #7
  unreachable

bb36:                                             ; preds = %bb33
  %0 = getelementptr inbounds i8, ptr %H, i64 8
  %_12 = load ptr, ptr %0, align 8
  %_14 = load i32, ptr %i, align 4
  %_13 = sext i32 %_14 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h26e46b4933c2d5a2E"(ptr %_12, i64 %_13, i64 24) #8
  %_0.i = getelementptr inbounds %LNode, ptr %_12, i64 %_13
  %_98 = ptrtoint ptr %_0.i to i64
  %_101 = and i64 %_98, 7
  %_102 = icmp eq i64 %_101, 0
  br i1 %_102, label %bb32, label %panic4

panic3:                                           ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d958bd5eb7d0e2ce03633e2a3ce46aa2) #7
  unreachable

bb32:                                             ; preds = %bb36
  %_130 = ptrtoint ptr %_0.i to i64
  %_133 = icmp eq i64 %_130, 0
  %_134 = and i1 %_133, true
  %_135 = xor i1 %_134, true
  br i1 %_135, label %bb37, label %panic5

panic4:                                           ; preds = %bb36
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_98, ptr align 8 @alloc_629790809c13ca5c3cae1f75eaa98b98) #7
  unreachable

bb37:                                             ; preds = %bb32
  %1 = getelementptr inbounds i8, ptr %_0.i, i64 16
  %_10 = load ptr, ptr %1, align 8
  store ptr %_10, ptr %p, align 8
  br label %bb4

panic5:                                           ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_629790809c13ca5c3cae1f75eaa98b98) #7
  unreachable

bb4:                                              ; preds = %bb41, %bb37
  %_16 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_15 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h91b832c3aab66bf7E"(ptr %_16) #8
  br i1 %_15, label %bb6, label %bb7

bb7:                                              ; preds = %bb4
  %_91 = load ptr, ptr %p, align 8
  %_92 = ptrtoint ptr %_91 to i64
  %_95 = and i64 %_92, 7
  %_96 = icmp eq i64 %_95, 0
  br i1 %_96, label %bb31, label %panic6

bb6:                                              ; preds = %bb4
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb1

bb31:                                             ; preds = %bb7
  %_136 = load ptr, ptr %p, align 8
  %_137 = ptrtoint ptr %_136 to i64
  %_140 = icmp eq i64 %_137, 0
  %_141 = and i1 %_140, true
  %_142 = xor i1 %_141, true
  br i1 %_142, label %bb38, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_92, ptr align 8 @alloc_47a15cbfbb61285bf9c8a3ba25c73ae5) #7
  unreachable

bb38:                                             ; preds = %bb31
  %4 = load ptr, ptr %p, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 12
  %_18 = load i32, ptr %5, align 4
  %_19 = load i32, ptr %maxnum, align 4
  %_17 = icmp sgt i32 %_18, %_19
  br i1 %_17, label %bb8, label %bb12

panic7:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_47a15cbfbb61285bf9c8a3ba25c73ae5) #7
  unreachable

bb12:                                             ; preds = %bb38
  %_79 = load ptr, ptr %p, align 8
  %_80 = ptrtoint ptr %_79 to i64
  %_83 = and i64 %_80, 7
  %_84 = icmp eq i64 %_83, 0
  br i1 %_84, label %bb29, label %panic8

bb8:                                              ; preds = %bb38
  %_85 = load ptr, ptr %p, align 8
  %_86 = ptrtoint ptr %_85 to i64
  %_89 = and i64 %_86, 7
  %_90 = icmp eq i64 %_89, 0
  br i1 %_90, label %bb30, label %panic12

bb29:                                             ; preds = %bb12
  %_150 = load ptr, ptr %p, align 8
  %_151 = ptrtoint ptr %_150 to i64
  %_154 = icmp eq i64 %_151, 0
  %_155 = and i1 %_154, true
  %_156 = xor i1 %_155, true
  br i1 %_156, label %bb40, label %panic9

panic8:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_80, ptr align 8 @alloc_79f222751f7549ebf4423654e87cbc6b) #7
  unreachable

bb40:                                             ; preds = %bb29
  %6 = load ptr, ptr %p, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 12
  %_30 = load i32, ptr %7, align 4
  %_31 = load i32, ptr %maxnum, align 4
  %_29 = icmp eq i32 %_30, %_31
  br i1 %_29, label %bb13, label %bb21

panic9:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_79f222751f7549ebf4423654e87cbc6b) #7
  unreachable

bb21:                                             ; preds = %bb44, %bb20, %bb40
  %_73 = load ptr, ptr %p, align 8
  %_74 = ptrtoint ptr %_73 to i64
  %_77 = and i64 %_74, 7
  %_78 = icmp eq i64 %_77, 0
  br i1 %_78, label %bb28, label %panic15

bb13:                                             ; preds = %bb40
  %_169 = load ptr, ptr %p, align 8
  %_170 = ptrtoint ptr %_169 to i64
  %_171 = icmp eq i64 %_170, 0
  %_172 = and i1 %_171, true
  %_173 = xor i1 %_172, true
  br i1 %_173, label %bb43, label %panic10

bb43:                                             ; preds = %bb13
  %_37 = load ptr, ptr %p, align 8
  %_33 = call i32 @strcmp(ptr %_37, ptr %maxphone) #8
  %_32 = icmp slt i32 %_33, 0
  br i1 %_32, label %bb17, label %bb20

panic10:                                          ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07ac31832a885a4bbe0995a5e3258e10) #7
  unreachable

bb20:                                             ; preds = %bb42, %bb43
  %8 = load i32, ptr %repeat, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %repeat, align 4
  br label %bb21

bb17:                                             ; preds = %bb43
  %_164 = load ptr, ptr %p, align 8
  %_165 = ptrtoint ptr %_164 to i64
  %_166 = icmp eq i64 %_165, 0
  %_167 = and i1 %_166, true
  %_168 = xor i1 %_167, true
  br i1 %_168, label %bb42, label %panic11

bb42:                                             ; preds = %bb17
  %_49 = load ptr, ptr %p, align 8
  %_42 = call ptr @strcpy(ptr %maxphone, ptr %_49) #8
  br label %bb20

panic11:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a0bb624259394eccc55e1931a736c452) #7
  unreachable

bb30:                                             ; preds = %bb8
  %_143 = load ptr, ptr %p, align 8
  %_144 = ptrtoint ptr %_143 to i64
  %_147 = icmp eq i64 %_144, 0
  %_148 = and i1 %_147, true
  %_149 = xor i1 %_148, true
  br i1 %_149, label %bb39, label %panic13

panic12:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_86, ptr align 8 @alloc_b92d87e8a0e1c51eb4a9a7fabca3a603) #7
  unreachable

bb39:                                             ; preds = %bb30
  %10 = load ptr, ptr %p, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 12
  %_20 = load i32, ptr %11, align 4
  store i32 %_20, ptr %maxnum, align 4
  %_174 = load ptr, ptr %p, align 8
  %_175 = ptrtoint ptr %_174 to i64
  %_176 = icmp eq i64 %_175, 0
  %_177 = and i1 %_176, true
  %_178 = xor i1 %_177, true
  br i1 %_178, label %bb44, label %panic14

panic13:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b92d87e8a0e1c51eb4a9a7fabca3a603) #7
  unreachable

bb44:                                             ; preds = %bb39
  %_28 = load ptr, ptr %p, align 8
  %_21 = call ptr @strcpy(ptr %maxphone, ptr %_28) #8
  store i32 1, ptr %repeat, align 4
  br label %bb21

panic14:                                          ; preds = %bb39
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a8f5a83592aa4bb7b08c560a3de1974d) #7
  unreachable

bb28:                                             ; preds = %bb21
  %_157 = load ptr, ptr %p, align 8
  %_158 = ptrtoint ptr %_157 to i64
  %_161 = icmp eq i64 %_158, 0
  %_162 = and i1 %_161, true
  %_163 = xor i1 %_162, true
  br i1 %_163, label %bb41, label %panic16

panic15:                                          ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_74, ptr align 8 @alloc_cbea45295cd04667ba212820a0b5b111) #7
  unreachable

bb41:                                             ; preds = %bb28
  %12 = load ptr, ptr %p, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 16
  %_50 = load ptr, ptr %13, align 8
  store ptr %_50, ptr %p, align 8
  br label %bb4

panic16:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cbea45295cd04667ba212820a0b5b111) #7
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

; Function Attrs: nounwind nonlazybind
declare i32 @atoi(ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @strcmp(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @strcpy(ptr, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

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
