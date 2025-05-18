; ModuleID = 'bnme5nrbucefn45mzwx8bt60g'
source_filename = "bnme5nrbucefn45mzwx8bt60g"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%AdjList = type { ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@stack = global [8 x i8] zeroinitializer, align 8
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_7d7ab95b13c510530cf54a9652d01b8f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\08\00\00\00" }>, align 8
@alloc_92415777aedcfa0918967983b3e0e800 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\00\00\00\0C\00\00\00" }>, align 8
@alloc_df5fc3cbad4d193cc4be84b72422bceb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00\08\00\00\00" }>, align 8
@alloc_d33e3087acb03b27049f061ddb04bf9b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\00\00\00 \00\00\00" }>, align 8
@alloc_143b2744d111380641628c34d59209bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\0D\00\00\00" }>, align 8
@alloc_5084ab4427ad12819a58c085604b37aa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\05\00\00\00" }>, align 8
@alloc_6c5ab4d2d6962b77629c9486ebe04bf1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\08\00\00\00" }>, align 8
@alloc_df86e900c94cc1f649585c8cd53247f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@alloc_c23fcbb7a5c3d7c6954c53f5d0d798f8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\14\00\00\00" }>, align 8
@alloc_5e508f8b25e8846369e349f2be531966 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\05\00\00\00" }>, align 8
@alloc_2b741aa80e9bacc62157d48afd5adfbd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\05\00\00\00" }>, align 8
@alloc_bb689b693e85b438ed3fcda2b087a10d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00R\00\00\00\05\00\00\00" }>, align 8
@alloc_7b3cfcd865bbaf9aa55e165bfbe8d2ee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00S\00\00\00\05\00\00\00" }>, align 8
@alloc_3760f15f8483aca1641dde6406c98d48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Y\00\00\00\0F\00\00\00" }>, align 8
@alloc_0eaedf70876f24f4ad585a9b1a38cd91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00 \00\00\00" }>, align 8
@alloc_c64bddf0b2fab2ccbb763e675481782f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Z\00\00\00\0D\00\00\00" }>, align 8
@alloc_2153802c5595b840fcc4fd9827334d22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00i\00\00\00\05\00\00\00" }>, align 8
@alloc_6d4ebc32d3f5f3e6fc24d0a1c5e3bb9f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00j\00\00\00\19\00\00\00" }>, align 8
@alloc_9731ae733a0e921fea755ae51970bc06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00j\00\00\00\17\00\00\00" }>, align 8
@alloc_87be4bd70ef7ec324f548c5100f1b329 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00j\00\00\00\05\00\00\00" }>, align 8
@alloc_23e5628d1aede0de7bea01106e72db42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00\1C\00\00\00" }>, align 8
@alloc_0e4817f84c4ba2f42b24589c33fcfeb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00k\00\00\00\09\00\00\00" }>, align 8
@alloc_9039abfd486d7c5486e1236ee12dad58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00.\00\00\00" }>, align 8
@alloc_407561b11479a121bdd158a13c534a3b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\0F\00\00\00" }>, align 8
@alloc_49c070c11d8fdda2843df214ab9955c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\13\00\00\00" }>, align 8
@alloc_231d18bf0f47a31ca567f10458b2bad3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\11\00\00\00" }>, align 8
@alloc_7ed355707147a2ae12a104f88a7d5cda = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00y\00\00\00\0D\00\00\00" }>, align 8
@alloc_ae042758fdf0d5b69ff7766806a8ed7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00!\00\00\00" }>, align 8
@alloc_f25fc2e979d88172237461ba1cce2145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00:\00\00\00" }>, align 8
@alloc_7ff5b6cfa11d63390c984855bebc62ae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00\1F\00\00\00" }>, align 8
@alloc_bff15e2da34384152598015c9eba106b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00\0D\00\00\00" }>, align 8
@alloc_d51dd01356bcbb6a4dba9edffb0aeaa6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00$\00\00\00" }>, align 8
@alloc_08823d3391a0d9ef6ce1552a18bd4bab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00=\00\00\00" }>, align 8
@alloc_48a867b8fdae198014738ac0fbbe20e0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\11\00\00\00" }>, align 8
@alloc_5f1e9f403ddf13ef23eab0ec5a21f071 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\15\00\00\00" }>, align 8
@alloc_8c61e494a7bb2e44e38e55aee768bf8f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8B\00\00\00\05\00\00\00" }>, align 8
@alloc_b929c71616281bfd1be2bd4038d3ddf1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@alloc_8336a2edefba1cb597c6b8af646696b0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\0F\00\00\00" }>, align 8
@alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\0D\00\00\00" }>, align 8
@alloc_14a7ef341ea09355f8a8e5674d3085ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\1C\00\00\00" }>, align 8
@alloc_b6e752db4cb221efde049d5dc47995f8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\0C\00\00\00" }>, align 8
@alloc_3192037f45773f0c44be640c81dcdaa6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\1C\00\00\00" }>, align 8
@alloc_a924c5f5056e53437e970619bd591c5c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\93\00\00\00\11\00\00\00" }>, align 8
@alloc_f88205a714ed6919a3746509c0cdaa28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9C\00\00\00\05\00\00\00" }>, align 8
@alloc_25747f775242d0e1d76ae5bb3c5e0065 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9E\00\00\00\0F\00\00\00" }>, align 8
@alloc_5e88a564efe89fa976e17472fd1277a4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9E\00\00\00\0D\00\00\00" }>, align 8
@alloc_00db8943cedb592c17dc25b606d685de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A0\00\00\00\1D\00\00\00" }>, align 8
@alloc_d144144cfc97ee14c3953f180f987756 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A0\00\00\00\0C\00\00\00" }>, align 8
@alloc_41c8da9436cc88722d7eb9a770df617c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A1\00\00\00\1E\00\00\00" }>, align 8
@alloc_b4de1deadbc7394533c305a1e46a67e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\11\00\00\00" }>, align 8
@alloc_6542cd9e805cfec6541b2101a61df9bb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A9\00\00\00\05\00\00\00" }>, align 8
@alloc_8e1f4cabf752d656bac5b6c53cf277e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AD\00\00\00\1B\00\00\00" }>, align 8
@alloc_f839de8b0e90d77b771df84a0f5bc87b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B0\00\00\00\0F\00\00\00" }>, align 8
@alloc_e2c8b37104c9ebfd5e481eaf73da326c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B6\00\00\00\0F\00\00\00" }>, align 8
@alloc_ec4657c2de1a4e573e35b151ba80d89c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BF\00\00\00\0F\00\00\00" }>, align 8
@alloc_a4c6386d3d5c55db5093a1d49f1067e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C7\00\00\00\0C\00\00\00" }>, align 8
@alloc_f3588b28b94f0809fcc8d717033d3e48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@alloc_79a916b740684800c6a2a63d3c54e954 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\00\00\00\09\00\00\00" }>, align 8
@alloc_92cde2db5874e04af425970cfc8727bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B7\00\00\00\0C\00\00\00" }>, align 8
@alloc_e7c58ec216dd789e817b86ec135417eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B1\00\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h08b5efd3d65fcca8E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1a21b56fb0dce05fE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h752af2a72ca83f20E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define i32 @top() unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_22 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_23 = and i1 %_22, true
  %_24 = xor i1 %_23, true
  br i1 %_24, label %bb7, label %panic

bb7:                                              ; preds = %start
  %_2 = load ptr, ptr @stack, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_1 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1a21b56fb0dce05fE"(ptr %_2) #7
  br i1 %_1, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7d7ab95b13c510530cf54a9652d01b8f) #6
  unreachable

bb3:                                              ; preds = %bb7
  %_5 = load ptr, ptr @stack, align 8
  %_7 = ptrtoint ptr %_5 to i64
  %_10 = and i64 %_7, 7
  %_11 = icmp eq i64 %_10, 0
  br i1 %_11, label %bb5, label %panic1

bb2:                                              ; preds = %bb7
  store i32 -1, ptr %_0, align 4
  br label %bb4

bb5:                                              ; preds = %bb3
  %_26 = ptrtoint ptr %_5 to i64
  %_29 = icmp eq i64 %_26, 0
  %_30 = and i1 %_29, true
  %_31 = xor i1 %_30, true
  br i1 %_31, label %bb8, label %panic2

panic1:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_7, ptr align 8 @alloc_92415777aedcfa0918967983b3e0e800) #6
  unreachable

bb8:                                              ; preds = %bb5
  %0 = load i32, ptr %_5, align 8
  store i32 %0, ptr %_0, align 4
  br label %bb4

panic2:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_92415777aedcfa0918967983b3e0e800) #6
  unreachable

bb4:                                              ; preds = %bb2, %bb8
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}

; Function Attrs: nounwind nonlazybind
define void @pop() unnamed_addr #2 {
start:
  %_40 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb8, label %panic

bb8:                                              ; preds = %start
  %_2 = load ptr, ptr @stack, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_1 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1a21b56fb0dce05fE"(ptr %_2) #7
  br i1 %_1, label %bb3, label %bb2

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df5fc3cbad4d193cc4be84b72422bceb) #6
  unreachable

bb2:                                              ; preds = %bb8
  %_47 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb9, label %panic1

bb3:                                              ; preds = %bb11, %bb8
  ret void

bb9:                                              ; preds = %bb2
  %node = load ptr, ptr @stack, align 8
  %_11 = load ptr, ptr @stack, align 8
  %_19 = ptrtoint ptr %_11 to i64
  %_22 = and i64 %_19, 7
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb5, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d33e3087acb03b27049f061ddb04bf9b) #6
  unreachable

bb5:                                              ; preds = %bb9
  %_51 = ptrtoint ptr %_11 to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb10, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_19, ptr align 8 @alloc_143b2744d111380641628c34d59209bd) #6
  unreachable

bb10:                                             ; preds = %bb5
  %0 = getelementptr inbounds i8, ptr %_11, i64 8
  %_6 = load ptr, ptr %0, align 8
  %_61 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_62 = and i1 %_61, true
  %_63 = xor i1 %_62, true
  br i1 %_63, label %bb11, label %panic4

panic3:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_143b2744d111380641628c34d59209bd) #6
  unreachable

bb11:                                             ; preds = %bb10
  store ptr %_6, ptr @stack, align 8
  call void @free(ptr %node) #7
  br label %bb3

panic4:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5084ab4427ad12819a58c085604b37aa) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @isEmpty() unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_14 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_15 = and i1 %_14, true
  %_16 = xor i1 %_15, true
  br i1 %_16, label %bb6, label %panic

bb6:                                              ; preds = %start
  %_2 = load ptr, ptr @stack, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_1 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h1a21b56fb0dce05fE"(ptr %_2) #7
  br i1 %_1, label %bb2, label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6c5ab4d2d6962b77629c9486ebe04bf1) #6
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_df86e900c94cc1f649585c8cd53247f2) #6
  unreachable

bb7:                                              ; preds = %bb6
  store i32 %data, ptr %_3, align 8
  %_44 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_45 = and i1 %_44, true
  %_46 = xor i1 %_45, true
  br i1 %_46, label %bb8, label %panic2

panic1:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df86e900c94cc1f649585c8cd53247f2) #6
  unreachable

bb8:                                              ; preds = %bb7
  %_6 = load ptr, ptr @stack, align 8
  %_16 = ptrtoint ptr %_3 to i64
  %_19 = and i64 %_16, 7
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb4, label %panic3

panic2:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c23fcbb7a5c3d7c6954c53f5d0d798f8) #6
  unreachable

bb4:                                              ; preds = %bb8
  %_48 = ptrtoint ptr %_3 to i64
  %_51 = icmp eq i64 %_48, 0
  %_52 = and i1 %_51, true
  %_53 = xor i1 %_52, true
  br i1 %_53, label %bb9, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_16, ptr align 8 @alloc_5e508f8b25e8846369e349f2be531966) #6
  unreachable

bb9:                                              ; preds = %bb4
  %0 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr %_6, ptr %0, align 8
  %_58 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_59 = and i1 %_58, true
  %_60 = xor i1 %_59, true
  br i1 %_60, label %bb10, label %panic5

panic4:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5e508f8b25e8846369e349f2be531966) #6
  unreachable

bb10:                                             ; preds = %bb9
  store ptr %_3, ptr @stack, align 8
  ret void

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2b741aa80e9bacc62157d48afd5adfbd) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @createGraph(i32 %v) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_6 = sext i32 %v to i64
  %_0.i9 = mul i64 16, %_6
  %_2 = call ptr @malloc(i64 %_0.i9) #7
  %_40 = ptrtoint ptr %_2 to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb14, label %panic

bb14:                                             ; preds = %start
  %_46 = ptrtoint ptr %_2 to i64
  %_49 = icmp eq i64 %_46, 0
  %_50 = and i1 %_49, true
  %_51 = xor i1 %_50, true
  br i1 %_51, label %bb15, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_bb689b693e85b438ed3fcda2b087a10d) #6
  unreachable

bb15:                                             ; preds = %bb14
  store i32 %v, ptr %_2, align 8
  %_11 = sext i32 %v to i64
  %_0.i = mul i64 8, %_11
  %_7 = call ptr @malloc(i64 %_0.i) #7
  %_34 = ptrtoint ptr %_2 to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb13, label %panic2

panic1:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bb689b693e85b438ed3fcda2b087a10d) #6
  unreachable

bb13:                                             ; preds = %bb15
  %_53 = ptrtoint ptr %_2 to i64
  %_56 = icmp eq i64 %_53, 0
  %_57 = and i1 %_56, true
  %_58 = xor i1 %_57, true
  br i1 %_58, label %bb16, label %panic3

panic2:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_7b3cfcd865bbaf9aa55e165bfbe8d2ee) #6
  unreachable

bb16:                                             ; preds = %bb13
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr %_7, ptr %0, align 8
  store i32 0, ptr %i, align 4
  br label %bb7

panic3:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7b3cfcd865bbaf9aa55e165bfbe8d2ee) #6
  unreachable

bb7:                                              ; preds = %bb19, %bb16
  %_14 = load i32, ptr %i, align 4
  %_28 = ptrtoint ptr %_2 to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb12, label %panic4

bb12:                                             ; preds = %bb7
  %_60 = ptrtoint ptr %_2 to i64
  %_63 = icmp eq i64 %_60, 0
  %_64 = and i1 %_63, true
  %_65 = xor i1 %_64, true
  br i1 %_65, label %bb17, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_3760f15f8483aca1641dde6406c98d48) #6
  unreachable

bb17:                                             ; preds = %bb12
  %_15 = load i32, ptr %_2, align 8
  %_13 = icmp slt i32 %_14, %_15
  br i1 %_13, label %bb8, label %bb10

panic5:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3760f15f8483aca1641dde6406c98d48) #6
  unreachable

bb10:                                             ; preds = %bb17
  ret ptr %_2

bb8:                                              ; preds = %bb17
  %_22 = ptrtoint ptr %_2 to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb11, label %panic6

bb11:                                             ; preds = %bb8
  %_67 = ptrtoint ptr %_2 to i64
  %_70 = icmp eq i64 %_67, 0
  %_71 = and i1 %_70, true
  %_72 = xor i1 %_71, true
  br i1 %_72, label %bb18, label %panic7

panic6:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_0eaedf70876f24f4ad585a9b1a38cd91) #6
  unreachable

bb18:                                             ; preds = %bb11
  %1 = getelementptr inbounds i8, ptr %_2, i64 8
  %_18 = load ptr, ptr %1, align 8
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_18, i64 %_19, i64 8) #7
  %_0.i10 = getelementptr inbounds %AdjList, ptr %_18, i64 %_19
  %_74 = ptrtoint ptr %_0.i10 to i64
  %_75 = icmp eq i64 %_74, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb19, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0eaedf70876f24f4ad585a9b1a38cd91) #6
  unreachable

bb19:                                             ; preds = %bb18
  store ptr null, ptr %_0.i10, align 8
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb7

panic8:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c64bddf0b2fab2ccbb763e675481782f) #6
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_41, ptr align 8 @alloc_2153802c5595b840fcc4fd9827334d22) #6
  unreachable

bb10:                                             ; preds = %bb9
  store i32 %dest, ptr %_5, align 8
  %_35 = ptrtoint ptr %graph to i64
  %_38 = and i64 %_35, 7
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb8, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2153802c5595b840fcc4fd9827334d22) #6
  unreachable

bb8:                                              ; preds = %bb10
  %_54 = ptrtoint ptr %graph to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb11, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_35, ptr align 8 @alloc_6d4ebc32d3f5f3e6fc24d0a1c5e3bb9f) #6
  unreachable

bb11:                                             ; preds = %bb8
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_10 = load ptr, ptr %0, align 8
  %_11 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_10, i64 %_11, i64 8) #7
  %_0.i11 = getelementptr inbounds %AdjList, ptr %_10, i64 %_11
  %_29 = ptrtoint ptr %_0.i11 to i64
  %_32 = and i64 %_29, 7
  %_33 = icmp eq i64 %_32, 0
  br i1 %_33, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6d4ebc32d3f5f3e6fc24d0a1c5e3bb9f) #6
  unreachable

bb7:                                              ; preds = %bb11
  %_61 = ptrtoint ptr %_0.i11 to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_29, ptr align 8 @alloc_9731ae733a0e921fea755ae51970bc06) #6
  unreachable

bb12:                                             ; preds = %bb7
  %_8 = load ptr, ptr %_0.i11, align 8
  %_23 = ptrtoint ptr %_5 to i64
  %_26 = and i64 %_23, 7
  %_27 = icmp eq i64 %_26, 0
  br i1 %_27, label %bb6, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9731ae733a0e921fea755ae51970bc06) #6
  unreachable

bb6:                                              ; preds = %bb12
  %_68 = ptrtoint ptr %_5 to i64
  %_71 = icmp eq i64 %_68, 0
  %_72 = and i1 %_71, true
  %_73 = xor i1 %_72, true
  br i1 %_73, label %bb13, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_23, ptr align 8 @alloc_87be4bd70ef7ec324f548c5100f1b329) #6
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
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_87be4bd70ef7ec324f548c5100f1b329) #6
  unreachable

bb5:                                              ; preds = %bb13
  %_75 = ptrtoint ptr %graph to i64
  %_78 = icmp eq i64 %_75, 0
  %_79 = and i1 %_78, true
  %_80 = xor i1 %_79, true
  br i1 %_80, label %bb14, label %panic9

panic8:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_17, ptr align 8 @alloc_23e5628d1aede0de7bea01106e72db42) #6
  unreachable

bb14:                                             ; preds = %bb5
  %2 = getelementptr inbounds i8, ptr %graph, i64 8
  %_14 = load ptr, ptr %2, align 8
  %_15 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_14, i64 %_15, i64 8) #7
  %_0.i = getelementptr inbounds %AdjList, ptr %_14, i64 %_15
  %_82 = ptrtoint ptr %_0.i to i64
  %_83 = icmp eq i64 %_82, 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb15, label %panic10

panic9:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_23e5628d1aede0de7bea01106e72db42) #6
  unreachable

bb15:                                             ; preds = %bb14
  store ptr %_5, ptr %_0.i, align 8
  ret void

panic10:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0e4817f84c4ba2f42b24589c33fcfeb7) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @Transpose(ptr %graph) unnamed_addr #2 {
start:
  %crawl = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  %_98 = ptrtoint ptr %graph to i64
  %_101 = and i64 %_98, 7
  %_102 = icmp eq i64 %_101, 0
  br i1 %_102, label %bb25, label %panic

bb25:                                             ; preds = %start
  %_104 = ptrtoint ptr %graph to i64
  %_107 = icmp eq i64 %_104, 0
  %_108 = and i1 %_107, true
  %_109 = xor i1 %_108, true
  br i1 %_109, label %bb26, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_98, ptr align 8 @alloc_9039abfd486d7c5486e1236ee12dad58) #6
  unreachable

bb26:                                             ; preds = %bb25
  %_2 = load i32, ptr %graph, align 8
  %tgraph = call ptr @createGraph(i32 %_2) #7
  store i32 0, ptr %i, align 4
  br label %bb2

panic1:                                           ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9039abfd486d7c5486e1236ee12dad58) #6
  unreachable

bb2:                                              ; preds = %bb7, %bb26
  %_5 = load i32, ptr %i, align 4
  %_92 = ptrtoint ptr %graph to i64
  %_95 = and i64 %_92, 7
  %_96 = icmp eq i64 %_95, 0
  br i1 %_96, label %bb24, label %panic2

bb24:                                             ; preds = %bb2
  %_111 = ptrtoint ptr %graph to i64
  %_114 = icmp eq i64 %_111, 0
  %_115 = and i1 %_114, true
  %_116 = xor i1 %_115, true
  br i1 %_116, label %bb27, label %panic3

panic2:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_92, ptr align 8 @alloc_407561b11479a121bdd158a13c534a3b) #6
  unreachable

bb27:                                             ; preds = %bb24
  %_6 = load i32, ptr %graph, align 8
  %_4 = icmp slt i32 %_5, %_6
  br i1 %_4, label %bb3, label %bb13

panic3:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_407561b11479a121bdd158a13c534a3b) #6
  unreachable

bb13:                                             ; preds = %bb27
  ret ptr %tgraph

bb3:                                              ; preds = %bb27
  store ptr null, ptr %crawl, align 8
  %_86 = ptrtoint ptr %graph to i64
  %_89 = and i64 %_86, 7
  %_90 = icmp eq i64 %_89, 0
  br i1 %_90, label %bb23, label %panic4

bb23:                                             ; preds = %bb3
  %_118 = ptrtoint ptr %graph to i64
  %_121 = icmp eq i64 %_118, 0
  %_122 = and i1 %_121, true
  %_123 = xor i1 %_122, true
  br i1 %_123, label %bb28, label %panic5

panic4:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_86, ptr align 8 @alloc_49c070c11d8fdda2843df214ab9955c3) #6
  unreachable

bb28:                                             ; preds = %bb23
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_10 = load ptr, ptr %0, align 8
  %_12 = load i32, ptr %i, align 4
  %_11 = sext i32 %_12 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_10, i64 %_11, i64 8) #7
  %_0.i26 = getelementptr inbounds %AdjList, ptr %_10, i64 %_11
  %_80 = ptrtoint ptr %_0.i26 to i64
  %_83 = and i64 %_80, 7
  %_84 = icmp eq i64 %_83, 0
  br i1 %_84, label %bb22, label %panic6

panic5:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_49c070c11d8fdda2843df214ab9955c3) #6
  unreachable

bb22:                                             ; preds = %bb28
  %_125 = ptrtoint ptr %_0.i26 to i64
  %_128 = icmp eq i64 %_125, 0
  %_129 = and i1 %_128, true
  %_130 = xor i1 %_129, true
  br i1 %_130, label %bb29, label %panic7

panic6:                                           ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_80, ptr align 8 @alloc_231d18bf0f47a31ca567f10458b2bad3) #6
  unreachable

bb29:                                             ; preds = %bb22
  %_8 = load ptr, ptr %_0.i26, align 8
  store ptr %_8, ptr %crawl, align 8
  br label %bb5

panic7:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_231d18bf0f47a31ca567f10458b2bad3) #6
  unreachable

bb5:                                              ; preds = %bb37, %bb29
  %_14 = load ptr, ptr %crawl, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_13 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h752af2a72ca83f20E"(ptr %_14) #7
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb5
  %_16 = call ptr @malloc(i64 16) #7
  %_19 = load i32, ptr %i, align 4
  %_74 = ptrtoint ptr %_16 to i64
  %_77 = and i64 %_74, 7
  %_78 = icmp eq i64 %_77, 0
  br i1 %_78, label %bb21, label %panic8

bb7:                                              ; preds = %bb5
  %1 = load i32, ptr %i, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %i, align 4
  br label %bb2

bb21:                                             ; preds = %bb8
  %_132 = ptrtoint ptr %_16 to i64
  %_135 = icmp eq i64 %_132, 0
  %_136 = and i1 %_135, true
  %_137 = xor i1 %_136, true
  br i1 %_137, label %bb30, label %panic9

panic8:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_74, ptr align 8 @alloc_7ed355707147a2ae12a104f88a7d5cda) #6
  unreachable

bb30:                                             ; preds = %bb21
  store i32 %_19, ptr %_16, align 8
  %_68 = ptrtoint ptr %tgraph to i64
  %_71 = and i64 %_68, 7
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %bb20, label %panic10

panic9:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7ed355707147a2ae12a104f88a7d5cda) #6
  unreachable

bb20:                                             ; preds = %bb30
  %_139 = ptrtoint ptr %tgraph to i64
  %_142 = icmp eq i64 %_139, 0
  %_143 = and i1 %_142, true
  %_144 = xor i1 %_143, true
  br i1 %_144, label %bb31, label %panic11

panic10:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_68, ptr align 8 @alloc_ae042758fdf0d5b69ff7766806a8ed7b) #6
  unreachable

bb31:                                             ; preds = %bb20
  %3 = getelementptr inbounds i8, ptr %tgraph, i64 8
  %_22 = load ptr, ptr %3, align 8
  %_61 = load ptr, ptr %crawl, align 8
  %_62 = ptrtoint ptr %_61 to i64
  %_65 = and i64 %_62, 7
  %_66 = icmp eq i64 %_65, 0
  br i1 %_66, label %bb19, label %panic12

panic11:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ae042758fdf0d5b69ff7766806a8ed7b) #6
  unreachable

bb19:                                             ; preds = %bb31
  %_145 = load ptr, ptr %crawl, align 8
  %_146 = ptrtoint ptr %_145 to i64
  %_149 = icmp eq i64 %_146, 0
  %_150 = and i1 %_149, true
  %_151 = xor i1 %_150, true
  br i1 %_151, label %bb32, label %panic13

panic12:                                          ; preds = %bb31
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_62, ptr align 8 @alloc_f25fc2e979d88172237461ba1cce2145) #6
  unreachable

bb32:                                             ; preds = %bb19
  %4 = load ptr, ptr %crawl, align 8
  %_24 = load i32, ptr %4, align 8
  %_23 = sext i32 %_24 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_22, i64 %_23, i64 8) #7
  %_0.i25 = getelementptr inbounds %AdjList, ptr %_22, i64 %_23
  %_56 = ptrtoint ptr %_0.i25 to i64
  %_59 = and i64 %_56, 7
  %_60 = icmp eq i64 %_59, 0
  br i1 %_60, label %bb18, label %panic14

panic13:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f25fc2e979d88172237461ba1cce2145) #6
  unreachable

bb18:                                             ; preds = %bb32
  %_153 = ptrtoint ptr %_0.i25 to i64
  %_156 = icmp eq i64 %_153, 0
  %_157 = and i1 %_156, true
  %_158 = xor i1 %_157, true
  br i1 %_158, label %bb33, label %panic15

panic14:                                          ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_56, ptr align 8 @alloc_7ff5b6cfa11d63390c984855bebc62ae) #6
  unreachable

bb33:                                             ; preds = %bb18
  %_20 = load ptr, ptr %_0.i25, align 8
  %_50 = ptrtoint ptr %_16 to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb17, label %panic16

panic15:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7ff5b6cfa11d63390c984855bebc62ae) #6
  unreachable

bb17:                                             ; preds = %bb33
  %_160 = ptrtoint ptr %_16 to i64
  %_163 = icmp eq i64 %_160, 0
  %_164 = and i1 %_163, true
  %_165 = xor i1 %_164, true
  br i1 %_165, label %bb34, label %panic17

panic16:                                          ; preds = %bb33
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_bff15e2da34384152598015c9eba106b) #6
  unreachable

bb34:                                             ; preds = %bb17
  %5 = getelementptr inbounds i8, ptr %_16, i64 8
  store ptr %_20, ptr %5, align 8
  %_44 = ptrtoint ptr %tgraph to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb16, label %panic18

panic17:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bff15e2da34384152598015c9eba106b) #6
  unreachable

bb16:                                             ; preds = %bb34
  %_167 = ptrtoint ptr %tgraph to i64
  %_170 = icmp eq i64 %_167, 0
  %_171 = and i1 %_170, true
  %_172 = xor i1 %_171, true
  br i1 %_172, label %bb35, label %panic19

panic18:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_d51dd01356bcbb6a4dba9edffb0aeaa6) #6
  unreachable

bb35:                                             ; preds = %bb16
  %6 = getelementptr inbounds i8, ptr %tgraph, i64 8
  %_27 = load ptr, ptr %6, align 8
  %_37 = load ptr, ptr %crawl, align 8
  %_38 = ptrtoint ptr %_37 to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb15, label %panic20

panic19:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d51dd01356bcbb6a4dba9edffb0aeaa6) #6
  unreachable

bb15:                                             ; preds = %bb35
  %_173 = load ptr, ptr %crawl, align 8
  %_174 = ptrtoint ptr %_173 to i64
  %_177 = icmp eq i64 %_174, 0
  %_178 = and i1 %_177, true
  %_179 = xor i1 %_178, true
  br i1 %_179, label %bb36, label %panic21

panic20:                                          ; preds = %bb35
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_08823d3391a0d9ef6ce1552a18bd4bab) #6
  unreachable

bb36:                                             ; preds = %bb15
  %7 = load ptr, ptr %crawl, align 8
  %_29 = load i32, ptr %7, align 8
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_27, i64 %_28, i64 8) #7
  %_0.i = getelementptr inbounds %AdjList, ptr %_27, i64 %_28
  %_188 = ptrtoint ptr %_0.i to i64
  %_189 = icmp eq i64 %_188, 0
  %_190 = and i1 %_189, true
  %_191 = xor i1 %_190, true
  br i1 %_191, label %bb38, label %panic22

panic21:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_08823d3391a0d9ef6ce1552a18bd4bab) #6
  unreachable

bb38:                                             ; preds = %bb36
  store ptr %_16, ptr %_0.i, align 8
  %_31 = load ptr, ptr %crawl, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb14, label %panic23

panic22:                                          ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_48a867b8fdae198014738ac0fbbe20e0) #6
  unreachable

bb14:                                             ; preds = %bb38
  %_180 = load ptr, ptr %crawl, align 8
  %_181 = ptrtoint ptr %_180 to i64
  %_184 = icmp eq i64 %_181, 0
  %_185 = and i1 %_184, true
  %_186 = xor i1 %_185, true
  br i1 %_186, label %bb37, label %panic24

panic23:                                          ; preds = %bb38
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_5f1e9f403ddf13ef23eab0ec5a21f071) #6
  unreachable

bb37:                                             ; preds = %bb14
  %8 = load ptr, ptr %crawl, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %_30 = load ptr, ptr %9, align 8
  store ptr %_30, ptr %crawl, align 8
  br label %bb5

panic24:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5f1e9f403ddf13ef23eab0ec5a21f071) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @DFSutil(ptr %graph, i32 %v, ptr %visited) unnamed_addr #2 {
start:
  %crawl = alloca [8 x i8], align 8
  %_5 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %visited, i64 %_5, i64 4) #7
  %_0.i14 = getelementptr inbounds i32, ptr %visited, i64 %_5
  %_62 = ptrtoint ptr %_0.i14 to i64
  %_65 = and i64 %_62, 3
  %_66 = icmp eq i64 %_65, 0
  br i1 %_66, label %bb17, label %panic

bb17:                                             ; preds = %start
  %_68 = ptrtoint ptr %_0.i14 to i64
  %_71 = icmp eq i64 %_68, 0
  %_72 = and i1 %_71, true
  %_73 = xor i1 %_72, true
  br i1 %_73, label %bb18, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_62, ptr align 8 @alloc_8c61e494a7bb2e44e38e55aee768bf8f) #6
  unreachable

bb18:                                             ; preds = %bb17
  store i32 1, ptr %_0.i14, align 4
  %_6 = call i32 (ptr, ...) @printf(ptr @alloc_b929c71616281bfd1be2bd4038d3ddf1, i32 %v) #7
  store ptr null, ptr %crawl, align 8
  %_56 = ptrtoint ptr %graph to i64
  %_59 = and i64 %_56, 7
  %_60 = icmp eq i64 %_59, 0
  br i1 %_60, label %bb16, label %panic2

panic1:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8c61e494a7bb2e44e38e55aee768bf8f) #6
  unreachable

bb16:                                             ; preds = %bb18
  %_75 = ptrtoint ptr %graph to i64
  %_78 = icmp eq i64 %_75, 0
  %_79 = and i1 %_78, true
  %_80 = xor i1 %_79, true
  br i1 %_80, label %bb19, label %panic3

panic2:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_56, ptr align 8 @alloc_8336a2edefba1cb597c6b8af646696b0) #6
  unreachable

bb19:                                             ; preds = %bb16
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_14 = load ptr, ptr %0, align 8
  %_15 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_14, i64 %_15, i64 8) #7
  %_0.i15 = getelementptr inbounds %AdjList, ptr %_14, i64 %_15
  %_50 = ptrtoint ptr %_0.i15 to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb15, label %panic4

panic3:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8336a2edefba1cb597c6b8af646696b0) #6
  unreachable

bb15:                                             ; preds = %bb19
  %_82 = ptrtoint ptr %_0.i15 to i64
  %_85 = icmp eq i64 %_82, 0
  %_86 = and i1 %_85, true
  %_87 = xor i1 %_86, true
  br i1 %_87, label %bb20, label %panic5

panic4:                                           ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #6
  unreachable

bb20:                                             ; preds = %bb15
  %_12 = load ptr, ptr %_0.i15, align 8
  store ptr %_12, ptr %crawl, align 8
  br label %bb4

panic5:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9b3efb0ac0fcae4b8e0bff7891c4f8e6) #6
  unreachable

bb4:                                              ; preds = %bb24, %bb20
  %_17 = load ptr, ptr %crawl, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_16 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h752af2a72ca83f20E"(ptr %_17) #7
  br i1 %_16, label %bb6, label %bb7

bb7:                                              ; preds = %bb4
  %_43 = load ptr, ptr %crawl, align 8
  %_44 = ptrtoint ptr %_43 to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb14, label %panic6

bb6:                                              ; preds = %bb4
  ret void

bb14:                                             ; preds = %bb7
  %_88 = load ptr, ptr %crawl, align 8
  %_89 = ptrtoint ptr %_88 to i64
  %_92 = icmp eq i64 %_89, 0
  %_93 = and i1 %_92, true
  %_94 = xor i1 %_93, true
  br i1 %_94, label %bb21, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_14a7ef341ea09355f8a8e5674d3085ba) #6
  unreachable

bb21:                                             ; preds = %bb14
  %1 = load ptr, ptr %crawl, align 8
  %_21 = load i32, ptr %1, align 8
  %_20 = sext i32 %_21 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %visited, i64 %_20, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %visited, i64 %_20
  %_38 = ptrtoint ptr %_0.i to i64
  %_41 = and i64 %_38, 3
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb13, label %panic8

panic7:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_14a7ef341ea09355f8a8e5674d3085ba) #6
  unreachable

bb13:                                             ; preds = %bb21
  %_96 = ptrtoint ptr %_0.i to i64
  %_99 = icmp eq i64 %_96, 0
  %_100 = and i1 %_99, true
  %_101 = xor i1 %_100, true
  br i1 %_101, label %bb22, label %panic9

panic8:                                           ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_38, ptr align 8 @alloc_b6e752db4cb221efde049d5dc47995f8) #6
  unreachable

bb22:                                             ; preds = %bb13
  %_18 = load i32, ptr %_0.i, align 4
  %2 = icmp eq i32 %_18, 0
  br i1 %2, label %bb9, label %bb10

panic9:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b6e752db4cb221efde049d5dc47995f8) #6
  unreachable

bb9:                                              ; preds = %bb22
  %_31 = load ptr, ptr %crawl, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb12, label %panic10

bb10:                                             ; preds = %bb23, %bb22
  %_25 = load ptr, ptr %crawl, align 8
  %_26 = ptrtoint ptr %_25 to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb11, label %panic12

bb12:                                             ; preds = %bb9
  %_102 = load ptr, ptr %crawl, align 8
  %_103 = ptrtoint ptr %_102 to i64
  %_106 = icmp eq i64 %_103, 0
  %_107 = and i1 %_106, true
  %_108 = xor i1 %_107, true
  br i1 %_108, label %bb23, label %panic11

panic10:                                          ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_3192037f45773f0c44be640c81dcdaa6) #6
  unreachable

bb23:                                             ; preds = %bb12
  %3 = load ptr, ptr %crawl, align 8
  %_23 = load i32, ptr %3, align 8
  call void @DFSutil(ptr %graph, i32 %_23, ptr %visited) #7
  br label %bb10

panic11:                                          ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3192037f45773f0c44be640c81dcdaa6) #6
  unreachable

bb11:                                             ; preds = %bb10
  %_109 = load ptr, ptr %crawl, align 8
  %_110 = ptrtoint ptr %_109 to i64
  %_113 = icmp eq i64 %_110, 0
  %_114 = and i1 %_113, true
  %_115 = xor i1 %_114, true
  br i1 %_115, label %bb24, label %panic13

panic12:                                          ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_a924c5f5056e53437e970619bd591c5c) #6
  unreachable

bb24:                                             ; preds = %bb11
  %4 = load ptr, ptr %crawl, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %_24 = load ptr, ptr %5, align 8
  store ptr %_24, ptr %crawl, align 8
  br label %bb4

panic13:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a924c5f5056e53437e970619bd591c5c) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @fillOrder(ptr %graph, i32 %v, ptr %visisted) unnamed_addr #2 {
start:
  %crawl = alloca [8 x i8], align 8
  %_5 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %visisted, i64 %_5, i64 4) #7
  %_0.i14 = getelementptr inbounds i32, ptr %visisted, i64 %_5
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_58, ptr align 8 @alloc_f88205a714ed6919a3746509c0cdaa28) #6
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
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f88205a714ed6919a3746509c0cdaa28) #6
  unreachable

bb16:                                             ; preds = %bb18
  %_71 = ptrtoint ptr %graph to i64
  %_74 = icmp eq i64 %_71, 0
  %_75 = and i1 %_74, true
  %_76 = xor i1 %_75, true
  br i1 %_76, label %bb19, label %panic3

panic2:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_52, ptr align 8 @alloc_25747f775242d0e1d76ae5bb3c5e0065) #6
  unreachable

bb19:                                             ; preds = %bb16
  %0 = getelementptr inbounds i8, ptr %graph, i64 8
  %_9 = load ptr, ptr %0, align 8
  %_10 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_9, i64 %_10, i64 8) #7
  %_0.i15 = getelementptr inbounds %AdjList, ptr %_9, i64 %_10
  %_46 = ptrtoint ptr %_0.i15 to i64
  %_49 = and i64 %_46, 7
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb15, label %panic4

panic3:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_25747f775242d0e1d76ae5bb3c5e0065) #6
  unreachable

bb15:                                             ; preds = %bb19
  %_78 = ptrtoint ptr %_0.i15 to i64
  %_81 = icmp eq i64 %_78, 0
  %_82 = and i1 %_81, true
  %_83 = xor i1 %_82, true
  br i1 %_83, label %bb20, label %panic5

panic4:                                           ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_46, ptr align 8 @alloc_5e88a564efe89fa976e17472fd1277a4) #6
  unreachable

bb20:                                             ; preds = %bb15
  %_7 = load ptr, ptr %_0.i15, align 8
  store ptr %_7, ptr %crawl, align 8
  br label %bb3

panic5:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5e88a564efe89fa976e17472fd1277a4) #6
  unreachable

bb3:                                              ; preds = %bb24, %bb20
  %_12 = load ptr, ptr %crawl, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_11 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h752af2a72ca83f20E"(ptr %_12) #7
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_00db8943cedb592c17dc25b606d685de) #6
  unreachable

bb21:                                             ; preds = %bb14
  %1 = load ptr, ptr %crawl, align 8
  %_16 = load i32, ptr %1, align 8
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %visisted, i64 %_15, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %visisted, i64 %_15
  %_34 = ptrtoint ptr %_0.i to i64
  %_37 = and i64 %_34, 3
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb13, label %panic8

panic7:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_00db8943cedb592c17dc25b606d685de) #6
  unreachable

bb13:                                             ; preds = %bb21
  %_92 = ptrtoint ptr %_0.i to i64
  %_95 = icmp eq i64 %_92, 0
  %_96 = and i1 %_95, true
  %_97 = xor i1 %_96, true
  br i1 %_97, label %bb22, label %panic9

panic8:                                           ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_34, ptr align 8 @alloc_d144144cfc97ee14c3953f180f987756) #6
  unreachable

bb22:                                             ; preds = %bb13
  %_13 = load i32, ptr %_0.i, align 4
  %2 = icmp eq i32 %_13, 0
  br i1 %2, label %bb8, label %bb9

panic9:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d144144cfc97ee14c3953f180f987756) #6
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_41c8da9436cc88722d7eb9a770df617c) #6
  unreachable

bb23:                                             ; preds = %bb12
  %3 = load ptr, ptr %crawl, align 8
  %_18 = load i32, ptr %3, align 8
  call void @fillOrder(ptr %graph, i32 %_18, ptr %visisted) #7
  br label %bb9

panic11:                                          ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_41c8da9436cc88722d7eb9a770df617c) #6
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
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_b4de1deadbc7394533c305a1e46a67e2) #6
  unreachable

bb24:                                             ; preds = %bb11
  %4 = load ptr, ptr %crawl, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  %_19 = load ptr, ptr %5, align 8
  store ptr %_19, ptr %crawl, align 8
  br label %bb3

panic13:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b4de1deadbc7394533c305a1e46a67e2) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @printSCC(ptr %graph) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_103 = icmp eq i64 ptrtoint (ptr @stack to i64), 0
  %_104 = and i1 %_103, true
  %_105 = xor i1 %_104, true
  br i1 %_105, label %bb36, label %panic

bb36:                                             ; preds = %start
  store ptr null, ptr @stack, align 8
  store i32 0, ptr %i, align 4
  %_88 = ptrtoint ptr %graph to i64
  %_91 = and i64 %_88, 7
  %_92 = icmp eq i64 %_91, 0
  br i1 %_92, label %bb34, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6542cd9e805cfec6541b2101a61df9bb) #6
  unreachable

bb34:                                             ; preds = %bb36
  %_107 = ptrtoint ptr %graph to i64
  %_110 = icmp eq i64 %_107, 0
  %_111 = and i1 %_110, true
  %_112 = xor i1 %_111, true
  br i1 %_112, label %bb37, label %panic2

panic1:                                           ; preds = %bb36
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_88, ptr align 8 @alloc_8e1f4cabf752d656bac5b6c53cf277e2) #6
  unreachable

bb37:                                             ; preds = %bb34
  %_10 = load i32, ptr %graph, align 8
  %_9 = sext i32 %_10 to i64
  %_0.i = mul i64 4, %_9
  %_5 = call ptr @malloc(i64 %_0.i) #7
  store i32 0, ptr %i, align 4
  br label %bb4

panic2:                                           ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8e1f4cabf752d656bac5b6c53cf277e2) #6
  unreachable

bb4:                                              ; preds = %bb39, %bb37
  %_12 = load i32, ptr %i, align 4
  %_82 = ptrtoint ptr %graph to i64
  %_85 = and i64 %_82, 7
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %bb33, label %panic3

bb33:                                             ; preds = %bb4
  %_114 = ptrtoint ptr %graph to i64
  %_117 = icmp eq i64 %_114, 0
  %_118 = and i1 %_117, true
  %_119 = xor i1 %_118, true
  br i1 %_119, label %bb38, label %panic4

panic3:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_82, ptr align 8 @alloc_f839de8b0e90d77b771df84a0f5bc87b) #6
  unreachable

bb38:                                             ; preds = %bb33
  %_13 = load i32, ptr %graph, align 8
  %_11 = icmp slt i32 %_12, %_13
  br i1 %_11, label %bb5, label %bb7

panic4:                                           ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f839de8b0e90d77b771df84a0f5bc87b) #6
  unreachable

bb7:                                              ; preds = %bb38
  store i32 0, ptr %i, align 4
  br label %bb8

bb5:                                              ; preds = %bb38
  %_16 = load i32, ptr %i, align 4
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_5, i64 %_15, i64 4) #7
  %_0.i17 = getelementptr inbounds i32, ptr %_5, i64 %_15
  %_76 = ptrtoint ptr %_0.i17 to i64
  %_79 = and i64 %_76, 3
  %_80 = icmp eq i64 %_79, 0
  br i1 %_80, label %bb32, label %panic15

bb8:                                              ; preds = %bb12, %bb7
  %_18 = load i32, ptr %i, align 4
  %_70 = ptrtoint ptr %graph to i64
  %_73 = and i64 %_70, 7
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %bb31, label %panic5

bb31:                                             ; preds = %bb8
  %_128 = ptrtoint ptr %graph to i64
  %_131 = icmp eq i64 %_128, 0
  %_132 = and i1 %_131, true
  %_133 = xor i1 %_132, true
  br i1 %_133, label %bb40, label %panic6

panic5:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_70, ptr align 8 @alloc_e2c8b37104c9ebfd5e481eaf73da326c) #6
  unreachable

bb40:                                             ; preds = %bb31
  %_19 = load i32, ptr %graph, align 8
  %_17 = icmp slt i32 %_18, %_19
  br i1 %_17, label %bb9, label %bb13

panic6:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e2c8b37104c9ebfd5e481eaf73da326c) #6
  unreachable

bb13:                                             ; preds = %bb40
  %revgraph = call ptr @Transpose(ptr %graph) #7
  store i32 0, ptr %i, align 4
  br label %bb15

bb9:                                              ; preds = %bb40
  %_23 = load i32, ptr %i, align 4
  %_22 = sext i32 %_23 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_5, i64 %_22, i64 4) #7
  %_0.i18 = getelementptr inbounds i32, ptr %_5, i64 %_22
  %_64 = ptrtoint ptr %_0.i18 to i64
  %_67 = and i64 %_64, 3
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb30, label %panic13

bb15:                                             ; preds = %bb43, %bb13
  %_28 = load i32, ptr %i, align 4
  %_58 = ptrtoint ptr %graph to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb29, label %panic7

bb29:                                             ; preds = %bb15
  %_142 = ptrtoint ptr %graph to i64
  %_145 = icmp eq i64 %_142, 0
  %_146 = and i1 %_145, true
  %_147 = xor i1 %_146, true
  br i1 %_147, label %bb42, label %panic8

panic7:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_ec4657c2de1a4e573e35b151ba80d89c) #6
  unreachable

bb42:                                             ; preds = %bb29
  %_29 = load i32, ptr %graph, align 8
  %_27 = icmp slt i32 %_28, %_29
  br i1 %_27, label %bb16, label %bb18

panic8:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ec4657c2de1a4e573e35b151ba80d89c) #6
  unreachable

bb18:                                             ; preds = %bb24, %bb44, %bb42
  %_33 = call i32 @isEmpty() #7
  %0 = icmp eq i32 %_33, 0
  br i1 %0, label %bb20, label %bb26

bb16:                                             ; preds = %bb42
  %_32 = load i32, ptr %i, align 4
  %_31 = sext i32 %_32 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_5, i64 %_31, i64 4) #7
  %_0.i19 = getelementptr inbounds i32, ptr %_5, i64 %_31
  %_52 = ptrtoint ptr %_0.i19 to i64
  %_55 = and i64 %_52, 3
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb28, label %panic11

bb20:                                             ; preds = %bb18
  %v = call i32 @top() #7
  call void @pop() #7
  %_38 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hdea3b3afe29dff79E"(ptr %_5, i64 %_38, i64 4) #7
  %_0.i20 = getelementptr inbounds i32, ptr %_5, i64 %_38
  %_46 = ptrtoint ptr %_0.i20 to i64
  %_49 = and i64 %_46, 3
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb27, label %panic9

bb26:                                             ; preds = %bb18
  ret void

bb27:                                             ; preds = %bb20
  %_156 = ptrtoint ptr %_0.i20 to i64
  %_159 = icmp eq i64 %_156, 0
  %_160 = and i1 %_159, true
  %_161 = xor i1 %_160, true
  br i1 %_161, label %bb44, label %panic10

panic9:                                           ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_46, ptr align 8 @alloc_a4c6386d3d5c55db5093a1d49f1067e2) #6
  unreachable

bb44:                                             ; preds = %bb27
  %_36 = load i32, ptr %_0.i20, align 4
  %1 = icmp eq i32 %_36, 0
  br i1 %1, label %bb24, label %bb18

panic10:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a4c6386d3d5c55db5093a1d49f1067e2) #6
  unreachable

bb24:                                             ; preds = %bb44
  call void @DFSutil(ptr %revgraph, i32 %v, ptr %_5) #7
  %_40 = call i32 (ptr, ...) @printf(ptr @alloc_f3588b28b94f0809fcc8d717033d3e48) #7
  br label %bb18

bb28:                                             ; preds = %bb16
  %_149 = ptrtoint ptr %_0.i19 to i64
  %_152 = icmp eq i64 %_149, 0
  %_153 = and i1 %_152, true
  %_154 = xor i1 %_153, true
  br i1 %_154, label %bb43, label %panic12

panic11:                                          ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_52, ptr align 8 @alloc_79a916b740684800c6a2a63d3c54e954) #6
  unreachable

bb43:                                             ; preds = %bb28
  store i32 0, ptr %_0.i19, align 4
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb15

panic12:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_79a916b740684800c6a2a63d3c54e954) #6
  unreachable

bb30:                                             ; preds = %bb9
  %_135 = ptrtoint ptr %_0.i18 to i64
  %_138 = icmp eq i64 %_135, 0
  %_139 = and i1 %_138, true
  %_140 = xor i1 %_139, true
  br i1 %_140, label %bb41, label %panic14

panic13:                                          ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_64, ptr align 8 @alloc_92cde2db5874e04af425970cfc8727bd) #6
  unreachable

bb41:                                             ; preds = %bb30
  %_20 = load i32, ptr %_0.i18, align 4
  %4 = icmp eq i32 %_20, 0
  br i1 %4, label %bb11, label %bb12

panic14:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_92cde2db5874e04af425970cfc8727bd) #6
  unreachable

bb11:                                             ; preds = %bb41
  %_25 = load i32, ptr %i, align 4
  call void @fillOrder(ptr %graph, i32 %_25, ptr %_5) #7
  br label %bb12

bb12:                                             ; preds = %bb11, %bb41
  %5 = load i32, ptr %i, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %i, align 4
  br label %bb8

bb32:                                             ; preds = %bb5
  %_121 = ptrtoint ptr %_0.i17 to i64
  %_124 = icmp eq i64 %_121, 0
  %_125 = and i1 %_124, true
  %_126 = xor i1 %_125, true
  br i1 %_126, label %bb39, label %panic16

panic15:                                          ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_76, ptr align 8 @alloc_e7c58ec216dd789e817b86ec135417eb) #6
  unreachable

bb39:                                             ; preds = %bb32
  store i32 0, ptr %_0.i17, align 4
  %7 = load i32, ptr %i, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %i, align 4
  br label %bb4

panic16:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e7c58ec216dd789e817b86ec135417eb) #6
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

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

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
