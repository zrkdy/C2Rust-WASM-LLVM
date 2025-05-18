; ModuleID = '3s1nblwvq0pjrsiwyk2ktgz9g'
source_filename = "3s1nblwvq0pjrsiwyk2ktgz9g"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Edge = type { i32, i32, i32 }
%subset = type { i32, i32 }

@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_df5fc3cbad4d193cc4be84b72422bceb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00\08\00\00\00" }>, align 8
@alloc_11dcede9d8ddaf9f32e321205904742e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\00%\00\00\00" }>, align 8
@alloc_34601f51cf681dbfdafdf6e10cdc20f3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\00\00\00\09\00\00\00" }>, align 8
@alloc_1442133444eb479de740e379d4981f5f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\0C\00\00\00" }>, align 8
@alloc_c745085256c7667fee1fc5525b1b0b33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\00\00\00\08\00\00\00" }>, align 8
@alloc_27bc4ed00d13d75b69176ba3ffb041e3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\00\00\001\00\00\00" }>, align 8
@alloc_251668794411f0c3b483d850a250e701 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\0F\00\00\00" }>, align 8
@alloc_015fcc378750221c1c1ce1afa69ff14b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\0B\00\00\00" }>, align 8
@alloc_0c74900cf5508cb257b35e43e47bf9eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\09\00\00\00" }>, align 8
@alloc_eb53ace45a12e4e333b3a63eb7279569 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\00\00\00\0D\00\00\00" }>, align 8
@alloc_628e37eba0fc498b7c3dd45f913fbea3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\09\00\00\00" }>, align 8
@alloc_4004ba243031fd1d73000d22f195907d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\09\00\00\00" }>, align 8
@alloc_33f96b070acaa16551d0774a9669f79e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00[\00\00\00\0D\00\00\00" }>, align 8
@alloc_0277dfc44218e56a37cae940318a1547 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00[\00\00\00\1C\00\00\00" }>, align 8
@alloc_a7719f03fef2466a9c2c85bc9a7335b9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00d\00\00\00\05\00\00\00" }>, align 8
@alloc_450171e86de59dbae00fbb1e9c5a45bc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00e\00\00\00\05\00\00\00" }>, align 8
@alloc_ed842d3a2a3e93c7ae0fc91ef014b45f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00f\00\00\00\05\00\00\00" }>, align 8
@alloc_6dd2f1a4e73e63f27caabb0706e08eb0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\00\1E\00\00\00" }>, align 8
@alloc_557b5aedc015f640ed97ce8fe4f74c2a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00#\00\00\00" }>, align 8
@alloc_a988a53895c5e8cd3f2b29e497141d75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00x\00\00\00\09\00\00\00" }>, align 8
@alloc_0dd16aee46f951f9f6b160990237c72e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00y\00\00\00\09\00\00\00" }>, align 8
@alloc_915faf156c7480c3289aab017e72b3c5 = private unnamed_addr constant [35 x i8] c"Following edges are there in MST \0A\00", align 1
@alloc_51158789deaebdbd840916be4b5d5335 = private unnamed_addr constant [18 x i8] c"src--dest=weight\0A\00", align 1
@alloc_9f5dffaa3b4c2c814bda8c0b3bcb8857 = private unnamed_addr constant [11 x i8] c"%d--%d=%d\0A\00", align 1
@alloc_992b06fa07cace76d46ff4eb8d878986 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\00\00\00\0D\00\00\00" }>, align 8
@alloc_629790809c13ca5c3cae1f75eaa98b98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\0D\00\00\00" }>, align 8
@alloc_5583b1fe7ed4d6de90c9037234d6da82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\00\0D\00\00\00" }>, align 8
@alloc_07df7d276e84638ee083082bf36d6df4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\00 \00\00\00" }>, align 8
@alloc_ebee6abd7071626205c1912fb87438b9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\92\00\00\00\1F\00\00\00" }>, align 8
@alloc_c090ea4dcad52cd9bc3f5f80b1234d4b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\98\00\00\00\0D\00\00\00" }>, align 8
@alloc_6e8a19f73b06021a33cf11f3b2d48238 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\89\00\00\00\09\00\00\00" }>, align 8
@alloc_4a6eda898bdde920aeb6902aaba4aae6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h621579d455c06eb9E() unnamed_addr #0 {
start:
  ret void
}

; core::num::<impl usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8c564b7206c6b747E"(i64 %lhs, i64 %rhs) unnamed_addr #1 {
start:
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %lhs, i64 %rhs)
  %_5.0 = extractvalue { i64, i1 } %0, 0
  %_5.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_5.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_3e1ebac14318b612ab4efabc52799932, i64 186) #8
  unreachable
}

; core::ptr::drop_in_place<alloc::vec::Vec<program_041::Edge>>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$program_041..Edge$GT$$GT$17h97e6944caa207283E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h415e55ee4c5a8378E"(ptr align 8 %_1) #9
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<program_041::Edge>>
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..raw_vec..RawVec$LT$program_041..Edge$GT$$GT$17hd19f93becacfe017E"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h22ca49ec3d8a5ee1E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::vec::set_len_on_drop::SetLenOnDrop as core::ops::drop::Drop>::drop
  call void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2fe95b1768dbbc54E"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<program_041::Edge>>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr68drop_in_place$LT$alloc..raw_vec..RawVec$LT$program_041..Edge$GT$$GT$17hd19f93becacfe017E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a306d3c3e0b8cb3E"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17ha7c0815d47dda845E(i1 zeroext %cond) unnamed_addr #1 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_64e308ef4babfeb8b6220184de794a17, i64 221) #8
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nounwind nonlazybind
define internal ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h17771e89098511dbE"(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_2 = load ptr, ptr %0, align 8
  ret ptr %_2
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h1fa31b2a167bac18E"(ptr align 8 %self, i64 %n, ptr align 4 %value, ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_23 = alloca [1 x i8], align 1
  %src1 = alloca [12 x i8], align 4
  %src = alloca [12 x i8], align 4
  %iter = alloca [16 x i8], align 8
  %local_len = alloca [16 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  store i8 1, ptr %_23, align 1
; call alloc::vec::Vec<T,A>::reserve
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h13a154f282e9f088E"(ptr align 8 %self, i64 %n, ptr align 8 %0) #9
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %self, i64 8
  %_24 = load ptr, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %3, align 8
  %_25 = icmp ule i64 %count, 768614336404564650
  %4 = getelementptr inbounds nuw %Edge, ptr %_24, i64 %count
  store ptr %4, ptr %ptr, align 8
  %len = getelementptr inbounds i8, ptr %self, i64 16
  %_26 = load i64, ptr %len, align 8
  store ptr %len, ptr %local_len, align 8
  %5 = getelementptr inbounds i8, ptr %local_len, i64 8
  store i64 %_26, ptr %5, align 8
  store i64 1, ptr %iter, align 8
  %6 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %n, ptr %6, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb1
  %other = getelementptr inbounds i8, ptr %iter, i64 8
  %_32 = load i64, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  %_33 = load i64, ptr %7, align 8
  %_27 = icmp ult i64 %_32, %_33
  br i1 %_27, label %bb13, label %bb14

bb14:                                             ; preds = %bb2
  %_19 = icmp ugt i64 %n, 0
  br i1 %_19, label %bb4, label %bb5

bb13:                                             ; preds = %bb2
  %old = load i64, ptr %iter, align 8
  br label %bb15

bb5:                                              ; preds = %bb14
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h22ca49ec3d8a5ee1E"(ptr align 8 %local_len) #9
  br label %bb6

bb4:                                              ; preds = %bb14
  %dst = load ptr, ptr %ptr, align 8
  store i8 0, ptr %_23, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %src1, ptr align 4 %value, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst, ptr align 4 %src1, i64 12, i1 false)
  %8 = getelementptr inbounds i8, ptr %local_len, i64 8
  %9 = getelementptr inbounds i8, ptr %local_len, i64 8
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, 1
  store i64 %11, ptr %8, align 8
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h22ca49ec3d8a5ee1E"(ptr align 8 %local_len) #9
  br label %bb17

bb6:                                              ; preds = %bb5
  %12 = load i8, ptr %_23, align 1
  %13 = trunc nuw i8 %12 to i1
  br i1 %13, label %bb10, label %bb7

bb7:                                              ; preds = %bb17, %bb10, %bb6
  ret void

bb10:                                             ; preds = %bb6
  br label %bb7

bb17:                                             ; preds = %bb4
  br label %bb7

bb15:                                             ; preds = %bb13
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8c564b7206c6b747E"(i64 %old, i64 1) #9
  br label %bb16

bb16:                                             ; preds = %bb15
  %_31 = add nuw i64 %old, 1
  store i64 %_31, ptr %iter, align 8
  %dst2 = load ptr, ptr %ptr, align 8
; call <program_041::Edge as core::clone::Clone>::clone
  call void @"_ZN56_$LT$program_041..Edge$u20$as$u20$core..clone..Clone$GT$5clone17h82a044624a57eba9E"(ptr sret([12 x i8]) align 4 %src, ptr align 4 %value) #9
  br label %bb3

bb3:                                              ; preds = %bb16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %dst2, ptr align 4 %src, i64 12, i1 false)
  %self3 = load ptr, ptr %ptr, align 8
  %_16 = getelementptr inbounds nuw %Edge, ptr %self3, i64 1
  store ptr %_16, ptr %ptr, align 8
  %14 = getelementptr inbounds i8, ptr %local_len, i64 8
  %15 = getelementptr inbounds i8, ptr %local_len, i64 8
  %16 = load i64, ptr %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, ptr %14, align 8
  br label %bb2

bb8:                                              ; No predecessors!
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17h22ca49ec3d8a5ee1E"(ptr align 8 %local_len) #10
  br label %bb12

bb12:                                             ; preds = %bb8
  %18 = load i8, ptr %_23, align 1
  %19 = trunc nuw i8 %18 to i1
  br i1 %19, label %bb11, label %bb9

bb9:                                              ; preds = %bb11, %bb12
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i32, ptr %21, align 8
  %23 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %24 = insertvalue { ptr, i32 } %23, i32 %22, 1
  resume { ptr, i32 } %24

bb11:                                             ; preds = %bb12
  br label %bb9
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h13a154f282e9f088E"(ptr align 8 %self, i64 %additional, ptr align 8 %0) unnamed_addr #2 {
start:
  %self1 = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  store i64 4, ptr %elem_layout, align 8
  %2 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 12, ptr %2, align 8
  br label %bb6

bb6:                                              ; preds = %start
  %self2 = load i64, ptr %self, align 8
  store i64 %self2, ptr %self1, align 8
  br label %bb4

bb5:                                              ; No predecessors!
  store i64 -1, ptr %self1, align 8
  br label %bb4

bb4:                                              ; preds = %bb6, %bb5
  %3 = load i64, ptr %self1, align 8
  %_10 = sub i64 %3, %len
  %_7 = icmp ugt i64 %additional, %_10
  br i1 %_7, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  br label %bb3

bb1:                                              ; preds = %bb4
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h85f3c31270bc2f64E"(ptr align 8 %self, i64 %len, i64 %additional, i64 4, i64 12) #9
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; alloc::vec::from_elem
; Function Attrs: nounwind nonlazybind
define internal void @_ZN5alloc3vec9from_elem17h3ce015d6e815d90aE(ptr sret([24 x i8]) align 8 %_0, ptr align 4 %elem, i64 %n, ptr align 8 %0) unnamed_addr #2 {
start:
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ede6222bf4929a1E"(ptr sret([24 x i8]) align 8 %_0, ptr align 4 %elem, i64 %n, ptr align 8 %0) #9
  ret void
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint nounwind nonlazybind
define internal { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb7c56fa96eb10df4E"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %this = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hedaf02873af8e39fE"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1) #9
  %_5 = load i64, ptr %_4, align 8
  %1 = trunc nuw i64 %_5 to i1
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  %err.1 = load i64, ptr %3, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17hf618f8e5cff958fbE(i64 %err.0, i64 %err.1, ptr align 8 %0) #8
  unreachable

bb4:                                              ; preds = %start
  %4 = getelementptr inbounds i8, ptr %_4, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8
  store i64 %5, ptr %this, align 8
  %8 = getelementptr inbounds i8, ptr %this, i64 8
  store ptr %7, ptr %8, align 8
  store i64 %elem_layout.0, ptr %elem_layout, align 8
  %9 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %elem_layout.1, ptr %9, align 8
  %10 = icmp eq i64 %elem_layout.1, 0
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  %self1 = load i64, ptr %this, align 8
  store i64 %self1, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %11 = load i64, ptr %self, align 8
  %_13 = sub i64 %11, 0
  %_8 = icmp ugt i64 %capacity, %_13
  %cond = xor i1 %_8, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17ha7c0815d47dda845E(i1 zeroext %cond) #9
  br label %bb9

bb9:                                              ; preds = %bb8
  %_0.0 = load i64, ptr %this, align 8
  %12 = getelementptr inbounds i8, ptr %this, i64 8
  %_0.1 = load ptr, ptr %12, align 8
  %13 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %14 = insertvalue { i64, ptr } %13, ptr %_0.1, 1
  ret { i64, ptr } %14

bb2:                                              ; No predecessors!
  unreachable
}

; <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h9ede6222bf4929a1E"(ptr sret([24 x i8]) align 8 %_0, ptr align 4 %elem, i64 %n, ptr align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %1 = alloca [16 x i8], align 8
  %_8 = alloca [1 x i8], align 1
  %_7 = alloca [12 x i8], align 4
  %v = alloca [24 x i8], align 8
  store i8 1, ptr %_8, align 1
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %2 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hb7c56fa96eb10df4E"(i64 %n, i64 4, i64 12, ptr align 8 %0) #9
  %_10.0 = extractvalue { i64, ptr } %2, 0
  %_10.1 = extractvalue { i64, ptr } %2, 1
  br label %bb6

bb6:                                              ; preds = %start
  store i64 %_10.0, ptr %v, align 8
  %3 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_10.1, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %4, align 8
  store i8 0, ptr %_8, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_7, ptr align 4 %elem, i64 12, i1 false)
; call alloc::vec::Vec<T,A>::extend_with
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h1fa31b2a167bac18E"(ptr align 8 %v, i64 %n, ptr align 4 %_7, ptr align 8 %0) #9
  br label %bb1

bb1:                                              ; preds = %bb6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  ret void

bb2:                                              ; No predecessors!
; call core::ptr::drop_in_place<alloc::vec::Vec<program_041::Edge>>
  call void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$program_041..Edge$GT$$GT$17h97e6944caa207283E"(ptr align 8 %v) #10
  br label %bb5

bb5:                                              ; preds = %bb2
  %5 = load i8, ptr %_8, align 1
  %6 = trunc nuw i8 %5 to i1
  br i1 %6, label %bb4, label %bb3

bb3:                                              ; preds = %bb4, %bb5
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 8
  %9 = load i32, ptr %8, align 8
  %10 = insertvalue { ptr, i32 } poison, ptr %7, 0
  %11 = insertvalue { ptr, i32 } %10, i32 %9, 1
  resume { ptr, i32 } %11

bb4:                                              ; preds = %bb5
  br label %bb3
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h415e55ee4c5a8378E"(ptr align 8 %self) unnamed_addr #2 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a306d3c3e0b8cb3E"(ptr align 8 %self) unnamed_addr #2 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h51d2d8ddbed32564E"(ptr align 8 %self, i64 4, i64 12) #9
  ret void
}

; <alloc::vec::set_len_on_drop::SetLenOnDrop as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2fe95b1768dbbc54E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_2 = load i64, ptr %0, align 8
  %_3 = load ptr, ptr %self, align 8
  store i64 %_2, ptr %_3, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind
define i32 @find(ptr %subsets, i32 %i) unnamed_addr #2 {
start:
  %_6 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_6, i64 8) #9
  %_0.i10 = getelementptr inbounds %subset, ptr %subsets, i64 %_6
  %_34 = ptrtoint ptr %_0.i10 to i64
  %_37 = and i64 %_34, 3
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb11, label %panic

bb11:                                             ; preds = %start
  %_40 = ptrtoint ptr %_0.i10 to i64
  %_43 = icmp eq i64 %_40, 0
  %_44 = and i1 %_43, true
  %_45 = xor i1 %_44, true
  br i1 %_45, label %bb12, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_34, ptr align 8 @alloc_df5fc3cbad4d193cc4be84b72422bceb) #8
  unreachable

bb12:                                             ; preds = %bb11
  %_4 = load i32, ptr %_0.i10, align 4
  %_3 = icmp ne i32 %_4, %i
  br i1 %_3, label %bb2, label %bb6

panic1:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df5fc3cbad4d193cc4be84b72422bceb) #8
  unreachable

bb6:                                              ; preds = %bb14, %bb12
  %_14 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_14, i64 8) #9
  %_0.i = getelementptr inbounds %subset, ptr %subsets, i64 %_14
  %_16 = ptrtoint ptr %_0.i to i64
  %_19 = and i64 %_16, 3
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb8, label %panic6

bb2:                                              ; preds = %bb12
  %_10 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_10, i64 8) #9
  %_0.i9 = getelementptr inbounds %subset, ptr %subsets, i64 %_10
  %_28 = ptrtoint ptr %_0.i9 to i64
  %_31 = and i64 %_28, 3
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb10, label %panic2

bb10:                                             ; preds = %bb2
  %_47 = ptrtoint ptr %_0.i9 to i64
  %_50 = icmp eq i64 %_47, 0
  %_51 = and i1 %_50, true
  %_52 = xor i1 %_51, true
  br i1 %_52, label %bb13, label %panic3

panic2:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_28, ptr align 8 @alloc_11dcede9d8ddaf9f32e321205904742e) #8
  unreachable

bb13:                                             ; preds = %bb10
  %_8 = load i32, ptr %_0.i9, align 4
  %_7 = call i32 @find(ptr %subsets, i32 %_8) #9
  %_12 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_12, i64 8) #9
  %_0.i8 = getelementptr inbounds %subset, ptr %subsets, i64 %_12
  %_22 = ptrtoint ptr %_0.i8 to i64
  %_25 = and i64 %_22, 3
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb9, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_11dcede9d8ddaf9f32e321205904742e) #8
  unreachable

bb9:                                              ; preds = %bb13
  %_54 = ptrtoint ptr %_0.i8 to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb14, label %panic5

panic4:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_22, ptr align 8 @alloc_34601f51cf681dbfdafdf6e10cdc20f3) #8
  unreachable

bb14:                                             ; preds = %bb9
  store i32 %_7, ptr %_0.i8, align 4
  br label %bb6

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_34601f51cf681dbfdafdf6e10cdc20f3) #8
  unreachable

bb8:                                              ; preds = %bb6
  %_61 = ptrtoint ptr %_0.i to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb15, label %panic7

panic6:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_16, ptr align 8 @alloc_1442133444eb479de740e379d4981f5f) #8
  unreachable

bb15:                                             ; preds = %bb8
  %_0 = load i32, ptr %_0.i, align 4
  ret i32 %_0

panic7:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1442133444eb479de740e379d4981f5f) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Union(ptr %subsets, i32 %x, i32 %y) unnamed_addr #2 {
start:
  %xroot = call i32 @find(ptr %subsets, i32 %x) #9
  %yroot = call i32 @find(ptr %subsets, i32 %y) #9
  %_9 = sext i32 %xroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_9, i64 8) #9
  %_0.i21 = getelementptr inbounds %subset, ptr %subsets, i64 %_9
  %_66 = ptrtoint ptr %_0.i21 to i64
  %_69 = and i64 %_66, 3
  %_70 = icmp eq i64 %_69, 0
  br i1 %_70, label %bb22, label %panic

bb22:                                             ; preds = %start
  %_72 = ptrtoint ptr %_0.i21 to i64
  %_75 = icmp eq i64 %_72, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb23, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_66, ptr align 8 @alloc_c745085256c7667fee1fc5525b1b0b33) #8
  unreachable

bb23:                                             ; preds = %bb22
  %0 = getelementptr inbounds i8, ptr %_0.i21, i64 4
  %_7 = load i32, ptr %0, align 4
  %_12 = sext i32 %yroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_12, i64 8) #9
  %_0.i20 = getelementptr inbounds %subset, ptr %subsets, i64 %_12
  %_60 = ptrtoint ptr %_0.i20 to i64
  %_63 = and i64 %_60, 3
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %bb21, label %panic2

panic1:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c745085256c7667fee1fc5525b1b0b33) #8
  unreachable

bb21:                                             ; preds = %bb23
  %_79 = ptrtoint ptr %_0.i20 to i64
  %_82 = icmp eq i64 %_79, 0
  %_83 = and i1 %_82, true
  %_84 = xor i1 %_83, true
  br i1 %_84, label %bb24, label %panic3

panic2:                                           ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_60, ptr align 8 @alloc_27bc4ed00d13d75b69176ba3ffb041e3) #8
  unreachable

bb24:                                             ; preds = %bb21
  %1 = getelementptr inbounds i8, ptr %_0.i20, i64 4
  %_10 = load i32, ptr %1, align 4
  %_6 = icmp slt i32 %_7, %_10
  br i1 %_6, label %bb5, label %bb7

panic3:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_27bc4ed00d13d75b69176ba3ffb041e3) #8
  unreachable

bb7:                                              ; preds = %bb24
  %_18 = sext i32 %xroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_18, i64 8) #9
  %_0.i19 = getelementptr inbounds %subset, ptr %subsets, i64 %_18
  %_48 = ptrtoint ptr %_0.i19 to i64
  %_51 = and i64 %_48, 3
  %_52 = icmp eq i64 %_51, 0
  br i1 %_52, label %bb19, label %panic4

bb5:                                              ; preds = %bb24
  %_14 = sext i32 %xroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_14, i64 8) #9
  %_0.i = getelementptr inbounds %subset, ptr %subsets, i64 %_14
  %_54 = ptrtoint ptr %_0.i to i64
  %_57 = and i64 %_54, 3
  %_58 = icmp eq i64 %_57, 0
  br i1 %_58, label %bb20, label %panic13

bb19:                                             ; preds = %bb7
  %_93 = ptrtoint ptr %_0.i19 to i64
  %_96 = icmp eq i64 %_93, 0
  %_97 = and i1 %_96, true
  %_98 = xor i1 %_97, true
  br i1 %_98, label %bb26, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_48, ptr align 8 @alloc_251668794411f0c3b483d850a250e701) #8
  unreachable

bb26:                                             ; preds = %bb19
  %2 = getelementptr inbounds i8, ptr %_0.i19, i64 4
  %_16 = load i32, ptr %2, align 4
  %_21 = sext i32 %yroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_21, i64 8) #9
  %_0.i18 = getelementptr inbounds %subset, ptr %subsets, i64 %_21
  %_42 = ptrtoint ptr %_0.i18 to i64
  %_45 = and i64 %_42, 3
  %_46 = icmp eq i64 %_45, 0
  br i1 %_46, label %bb18, label %panic6

panic5:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_251668794411f0c3b483d850a250e701) #8
  unreachable

bb18:                                             ; preds = %bb26
  %_100 = ptrtoint ptr %_0.i18 to i64
  %_103 = icmp eq i64 %_100, 0
  %_104 = and i1 %_103, true
  %_105 = xor i1 %_104, true
  br i1 %_105, label %bb27, label %panic7

panic6:                                           ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_42, ptr align 8 @alloc_015fcc378750221c1c1ce1afa69ff14b) #8
  unreachable

bb27:                                             ; preds = %bb18
  %3 = getelementptr inbounds i8, ptr %_0.i18, i64 4
  %_19 = load i32, ptr %3, align 4
  %_15 = icmp sgt i32 %_16, %_19
  br i1 %_15, label %bb10, label %bb12

panic7:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_015fcc378750221c1c1ce1afa69ff14b) #8
  unreachable

bb12:                                             ; preds = %bb27
  %_25 = sext i32 %yroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_25, i64 8) #9
  %_0.i17 = getelementptr inbounds %subset, ptr %subsets, i64 %_25
  %_30 = ptrtoint ptr %_0.i17 to i64
  %_33 = and i64 %_30, 3
  %_34 = icmp eq i64 %_33, 0
  br i1 %_34, label %bb16, label %panic8

bb10:                                             ; preds = %bb27
  %_23 = sext i32 %yroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_23, i64 8) #9
  %_0.i15 = getelementptr inbounds %subset, ptr %subsets, i64 %_23
  %_36 = ptrtoint ptr %_0.i15 to i64
  %_39 = and i64 %_36, 3
  %_40 = icmp eq i64 %_39, 0
  br i1 %_40, label %bb17, label %panic11

bb16:                                             ; preds = %bb12
  %_114 = ptrtoint ptr %_0.i17 to i64
  %_117 = icmp eq i64 %_114, 0
  %_118 = and i1 %_117, true
  %_119 = xor i1 %_118, true
  br i1 %_119, label %bb29, label %panic9

panic8:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_30, ptr align 8 @alloc_0c74900cf5508cb257b35e43e47bf9eb) #8
  unreachable

bb29:                                             ; preds = %bb16
  store i32 %xroot, ptr %_0.i17, align 4
  %_28 = sext i32 %xroot to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %subsets, i64 %_28, i64 8) #9
  %_0.i16 = getelementptr inbounds %subset, ptr %subsets, i64 %_28
  %_121 = ptrtoint ptr %_0.i16 to i64
  %_122 = icmp eq i64 %_121, 0
  %_123 = and i1 %_122, true
  %_124 = xor i1 %_123, true
  br i1 %_124, label %bb30, label %panic10

panic9:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0c74900cf5508cb257b35e43e47bf9eb) #8
  unreachable

bb30:                                             ; preds = %bb29
  %fresh0 = getelementptr inbounds i8, ptr %_0.i16, i64 4
  %4 = load i32, ptr %fresh0, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %fresh0, align 4
  br label %bb15

panic10:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_eb53ace45a12e4e333b3a63eb7279569) #8
  unreachable

bb15:                                             ; preds = %bb25, %bb28, %bb30
  ret void

bb17:                                             ; preds = %bb10
  %_107 = ptrtoint ptr %_0.i15 to i64
  %_110 = icmp eq i64 %_107, 0
  %_111 = and i1 %_110, true
  %_112 = xor i1 %_111, true
  br i1 %_112, label %bb28, label %panic12

panic11:                                          ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_36, ptr align 8 @alloc_628e37eba0fc498b7c3dd45f913fbea3) #8
  unreachable

bb28:                                             ; preds = %bb17
  store i32 %xroot, ptr %_0.i15, align 4
  br label %bb15

panic12:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_628e37eba0fc498b7c3dd45f913fbea3) #8
  unreachable

bb20:                                             ; preds = %bb5
  %_86 = ptrtoint ptr %_0.i to i64
  %_89 = icmp eq i64 %_86, 0
  %_90 = and i1 %_89, true
  %_91 = xor i1 %_90, true
  br i1 %_91, label %bb25, label %panic14

panic13:                                          ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_54, ptr align 8 @alloc_4004ba243031fd1d73000d22f195907d) #8
  unreachable

bb25:                                             ; preds = %bb20
  store i32 %yroot, ptr %_0.i, align 4
  br label %bb15

panic14:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4004ba243031fd1d73000d22f195907d) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @scompare(ptr %a, ptr %b) unnamed_addr #2 {
start:
  %_15 = ptrtoint ptr %a to i64
  %_18 = and i64 %_15, 3
  %_19 = icmp eq i64 %_18, 0
  br i1 %_19, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_21 = ptrtoint ptr %a to i64
  %_24 = icmp eq i64 %_21, 0
  %_25 = and i1 %_24, true
  %_26 = xor i1 %_25, true
  br i1 %_26, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_15, ptr align 8 @alloc_33f96b070acaa16551d0774a9669f79e) #8
  unreachable

bb3:                                              ; preds = %bb2
  %0 = getelementptr inbounds i8, ptr %a, i64 8
  %_6 = load i32, ptr %0, align 4
  %_9 = ptrtoint ptr %b to i64
  %_12 = and i64 %_9, 3
  %_13 = icmp eq i64 %_12, 0
  br i1 %_13, label %bb1, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_33f96b070acaa16551d0774a9669f79e) #8
  unreachable

bb1:                                              ; preds = %bb3
  %_28 = ptrtoint ptr %b to i64
  %_31 = icmp eq i64 %_28, 0
  %_32 = and i1 %_31, true
  %_33 = xor i1 %_32, true
  br i1 %_33, label %bb4, label %panic3

panic2:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_9, ptr align 8 @alloc_0277dfc44218e56a37cae940318a1547) #8
  unreachable

bb4:                                              ; preds = %bb1
  %1 = getelementptr inbounds i8, ptr %b, i64 8
  %_7 = load i32, ptr %1, align 4
  %_5 = icmp sgt i32 %_6, %_7
  %_0 = zext i1 %_5 to i32
  ret i32 %_0

panic3:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0277dfc44218e56a37cae940318a1547) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @creategraph(i32 %v, i32 %e) unnamed_addr #2 {
start:
  %_3 = call ptr @malloc(i64 16) #9
  %_24 = ptrtoint ptr %_3 to i64
  %_27 = and i64 %_24, 7
  %_28 = icmp eq i64 %_27, 0
  br i1 %_28, label %bb8, label %panic

bb8:                                              ; preds = %start
  %_30 = ptrtoint ptr %_3 to i64
  %_33 = icmp eq i64 %_30, 0
  %_34 = and i1 %_33, true
  %_35 = xor i1 %_34, true
  br i1 %_35, label %bb9, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_24, ptr align 8 @alloc_a7719f03fef2466a9c2c85bc9a7335b9) #8
  unreachable

bb9:                                              ; preds = %bb8
  store i32 %v, ptr %_3, align 8
  %_18 = ptrtoint ptr %_3 to i64
  %_21 = and i64 %_18, 7
  %_22 = icmp eq i64 %_21, 0
  br i1 %_22, label %bb7, label %panic2

panic1:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a7719f03fef2466a9c2c85bc9a7335b9) #8
  unreachable

bb7:                                              ; preds = %bb9
  %_37 = ptrtoint ptr %_3 to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb10, label %panic3

panic2:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_18, ptr align 8 @alloc_450171e86de59dbae00fbb1e9c5a45bc) #8
  unreachable

bb10:                                             ; preds = %bb7
  %0 = getelementptr inbounds i8, ptr %_3, i64 4
  store i32 %e, ptr %0, align 4
  %_10 = sext i32 %e to i64
  %_0.i = mul i64 12, %_10
  %_6 = call ptr @malloc(i64 %_0.i) #9
  %_12 = ptrtoint ptr %_3 to i64
  %_15 = and i64 %_12, 7
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %bb6, label %panic4

panic3:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_450171e86de59dbae00fbb1e9c5a45bc) #8
  unreachable

bb6:                                              ; preds = %bb10
  %_44 = ptrtoint ptr %_3 to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb11, label %panic5

panic4:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_12, ptr align 8 @alloc_ed842d3a2a3e93c7ae0fc91ef014b45f) #8
  unreachable

bb11:                                             ; preds = %bb6
  %1 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr %_6, ptr %1, align 8
  ret ptr %_3

panic5:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ed842d3a2a3e93c7ae0fc91ef014b45f) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @MST_kruskal(ptr %graph) unnamed_addr #2 {
start:
  %crawl = alloca [12 x i8], align 4
  %_15 = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  %e = alloca [4 x i8], align 4
  %_5 = alloca [12 x i8], align 4
  %result = alloca [24 x i8], align 8
  %_150 = ptrtoint ptr %graph to i64
  %_153 = and i64 %_150, 7
  %_154 = icmp eq i64 %_153, 0
  br i1 %_154, label %bb44, label %panic

bb44:                                             ; preds = %start
  %_156 = ptrtoint ptr %graph to i64
  %_159 = icmp eq i64 %_156, 0
  %_160 = and i1 %_159, true
  %_161 = xor i1 %_160, true
  br i1 %_161, label %bb45, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_150, ptr align 8 @alloc_6dd2f1a4e73e63f27caabb0706e08eb0) #8
  unreachable

bb45:                                             ; preds = %bb44
  %v = load i32, ptr %graph, align 8
  %vla = sext i32 %v to i64
  store i32 0, ptr %_5, align 4
  %0 = getelementptr inbounds i8, ptr %_5, i64 4
  store i32 0, ptr %0, align 4
  %1 = getelementptr inbounds i8, ptr %_5, i64 8
  store i32 0, ptr %1, align 4
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h3ce015d6e815d90aE(ptr sret([24 x i8]) align 8 %result, ptr align 4 %_5, i64 %vla, ptr align 8 @alloc_557b5aedc015f640ed97ce8fe4f74c2a) #9
  store i32 0, ptr %e, align 4
  store i32 0, ptr %i, align 4
  %_144 = ptrtoint ptr %graph to i64
  %_147 = and i64 %_144, 7
  %_148 = icmp eq i64 %_147, 0
  br i1 %_148, label %bb43, label %panic2

panic1:                                           ; preds = %bb44
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6dd2f1a4e73e63f27caabb0706e08eb0) #8
  unreachable

bb43:                                             ; preds = %bb45
  %_163 = ptrtoint ptr %graph to i64
  %_166 = icmp eq i64 %_163, 0
  %_167 = and i1 %_166, true
  %_168 = xor i1 %_167, true
  br i1 %_168, label %bb46, label %panic3

panic2:                                           ; preds = %bb45
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_144, ptr align 8 @alloc_a988a53895c5e8cd3f2b29e497141d75) #8
  unreachable

bb46:                                             ; preds = %bb43
  %2 = getelementptr inbounds i8, ptr %graph, i64 8
  %_10 = load ptr, ptr %2, align 8
  %_138 = ptrtoint ptr %graph to i64
  %_141 = and i64 %_138, 7
  %_142 = icmp eq i64 %_141, 0
  br i1 %_142, label %bb42, label %panic4

panic3:                                           ; preds = %bb43
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a988a53895c5e8cd3f2b29e497141d75) #8
  unreachable

bb42:                                             ; preds = %bb46
  %_170 = ptrtoint ptr %graph to i64
  %_173 = icmp eq i64 %_170, 0
  %_174 = and i1 %_173, true
  %_175 = xor i1 %_174, true
  br i1 %_175, label %bb47, label %panic5

panic4:                                           ; preds = %bb46
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_138, ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #8
  unreachable

bb47:                                             ; preds = %bb42
  %3 = getelementptr inbounds i8, ptr %graph, i64 4
  %_12 = load i32, ptr %3, align 4
  %_11 = sext i32 %_12 to i64
  store ptr @scompare, ptr %_15, align 8
  %4 = load ptr, ptr %_15, align 8
  call void @qsort(ptr %_10, i64 %_11, i64 12, ptr %4) #9
  %_22 = sext i32 %v to i64
  %_0.i = mul i64 8, %_22
  %_18 = call ptr @malloc(i64 %_0.i) #9
  store i32 0, ptr %i, align 4
  br label %bb7

panic5:                                           ; preds = %bb42
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #8
  unreachable

bb7:                                              ; preds = %bb49, %bb47
  %_24 = load i32, ptr %i, align 4
  %_23 = icmp slt i32 %_24, %v
  br i1 %_23, label %bb8, label %bb11

bb11:                                             ; preds = %bb7
  store i32 0, ptr %i, align 4
  br label %bb12

bb8:                                              ; preds = %bb7
  %_25 = load i32, ptr %i, align 4
  %_28 = load i32, ptr %i, align 4
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_18, i64 %_27, i64 8) #9
  %_0.i28 = getelementptr inbounds %subset, ptr %_18, i64 %_27
  %_132 = ptrtoint ptr %_0.i28 to i64
  %_135 = and i64 %_132, 3
  %_136 = icmp eq i64 %_135, 0
  br i1 %_136, label %bb41, label %panic18

bb12:                                             ; preds = %bb52, %bb51, %bb11
  %_33 = load i32, ptr %e, align 4
  %_34 = sub i32 %v, 1
  %_32 = icmp slt i32 %_33, %_34
  br i1 %_32, label %bb13, label %bb20

bb20:                                             ; preds = %bb12
  %_53 = call i32 (ptr, ...) @printf(ptr @alloc_915faf156c7480c3289aab017e72b3c5) #9
  %_58 = call i32 (ptr, ...) @printf(ptr @alloc_51158789deaebdbd840916be4b5d5335) #9
  store i32 0, ptr %i, align 4
  br label %bb23

bb13:                                             ; preds = %bb12
  %fresh1 = load i32, ptr %i, align 4
  %_36 = load i32, ptr %i, align 4
  %5 = add i32 %_36, 1
  store i32 %5, ptr %i, align 4
  %_120 = ptrtoint ptr %graph to i64
  %_123 = and i64 %_120, 7
  %_124 = icmp eq i64 %_123, 0
  br i1 %_124, label %bb39, label %panic12

bb23:                                             ; preds = %bb55, %bb20
  %_64 = load i32, ptr %i, align 4
  %_65 = load i32, ptr %e, align 4
  %_63 = icmp slt i32 %_64, %_65
  br i1 %_63, label %bb24, label %bb32

bb32:                                             ; preds = %bb23
; call core::ptr::drop_in_place<alloc::vec::Vec<program_041::Edge>>
  call void @"_ZN4core3ptr61drop_in_place$LT$alloc..vec..Vec$LT$program_041..Edge$GT$$GT$17h97e6944caa207283E"(ptr align 8 %result) #9
  ret void

bb24:                                             ; preds = %bb23
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_73 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h17771e89098511dbE"(ptr align 8 %result) #9
  %_76 = load i32, ptr %i, align 4
  %_75 = sext i32 %_76 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_73, i64 %_75, i64 12) #9
  %_0.i26 = getelementptr inbounds %Edge, ptr %_73, i64 %_75
  %_102 = ptrtoint ptr %_0.i26 to i64
  %_105 = and i64 %_102, 3
  %_106 = icmp eq i64 %_105, 0
  br i1 %_106, label %bb36, label %panic6

bb36:                                             ; preds = %bb24
  %_212 = ptrtoint ptr %_0.i26 to i64
  %_215 = icmp eq i64 %_212, 0
  %_216 = and i1 %_215, true
  %_217 = xor i1 %_216, true
  br i1 %_217, label %bb53, label %panic7

panic6:                                           ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_102, ptr align 8 @alloc_992b06fa07cace76d46ff4eb8d878986) #8
  unreachable

bb53:                                             ; preds = %bb36
  %_71 = load i32, ptr %_0.i26, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_79 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h17771e89098511dbE"(ptr align 8 %result) #9
  %_82 = load i32, ptr %i, align 4
  %_81 = sext i32 %_82 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_79, i64 %_81, i64 12) #9
  %_0.i25 = getelementptr inbounds %Edge, ptr %_79, i64 %_81
  %_96 = ptrtoint ptr %_0.i25 to i64
  %_99 = and i64 %_96, 3
  %_100 = icmp eq i64 %_99, 0
  br i1 %_100, label %bb35, label %panic8

panic7:                                           ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_992b06fa07cace76d46ff4eb8d878986) #8
  unreachable

bb35:                                             ; preds = %bb53
  %_219 = ptrtoint ptr %_0.i25 to i64
  %_222 = icmp eq i64 %_219, 0
  %_223 = and i1 %_222, true
  %_224 = xor i1 %_223, true
  br i1 %_224, label %bb54, label %panic9

panic8:                                           ; preds = %bb53
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_96, ptr align 8 @alloc_629790809c13ca5c3cae1f75eaa98b98) #8
  unreachable

bb54:                                             ; preds = %bb35
  %6 = getelementptr inbounds i8, ptr %_0.i25, i64 4
  %_77 = load i32, ptr %6, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_85 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h17771e89098511dbE"(ptr align 8 %result) #9
  %_88 = load i32, ptr %i, align 4
  %_87 = sext i32 %_88 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_85, i64 %_87, i64 12) #9
  %_0.i24 = getelementptr inbounds %Edge, ptr %_85, i64 %_87
  %_90 = ptrtoint ptr %_0.i24 to i64
  %_93 = and i64 %_90, 3
  %_94 = icmp eq i64 %_93, 0
  br i1 %_94, label %bb34, label %panic10

panic9:                                           ; preds = %bb35
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_629790809c13ca5c3cae1f75eaa98b98) #8
  unreachable

bb34:                                             ; preds = %bb54
  %_226 = ptrtoint ptr %_0.i24 to i64
  %_229 = icmp eq i64 %_226, 0
  %_230 = and i1 %_229, true
  %_231 = xor i1 %_230, true
  br i1 %_231, label %bb55, label %panic11

panic10:                                          ; preds = %bb54
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_90, ptr align 8 @alloc_5583b1fe7ed4d6de90c9037234d6da82) #8
  unreachable

bb55:                                             ; preds = %bb34
  %7 = getelementptr inbounds i8, ptr %_0.i24, i64 8
  %_83 = load i32, ptr %7, align 4
  %_66 = call i32 (ptr, ...) @printf(ptr @alloc_9f5dffaa3b4c2c814bda8c0b3bcb8857, i32 %_71, i32 %_77, i32 %_83) #9
  %8 = load i32, ptr %i, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %i, align 4
  br label %bb23

panic11:                                          ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5583b1fe7ed4d6de90c9037234d6da82) #8
  unreachable

bb39:                                             ; preds = %bb13
  %_191 = ptrtoint ptr %graph to i64
  %_194 = icmp eq i64 %_191, 0
  %_195 = and i1 %_194, true
  %_196 = xor i1 %_195, true
  br i1 %_196, label %bb50, label %panic13

panic12:                                          ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_120, ptr align 8 @alloc_07df7d276e84638ee083082bf36d6df4) #8
  unreachable

bb50:                                             ; preds = %bb39
  %10 = getelementptr inbounds i8, ptr %graph, i64 8
  %_39 = load ptr, ptr %10, align 8
  %_40 = sext i32 %fresh1 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_39, i64 %_40, i64 12) #9
  %_0.i23 = getelementptr inbounds %Edge, ptr %_39, i64 %_40
  %_114 = ptrtoint ptr %_0.i23 to i64
  %_117 = and i64 %_114, 3
  %_118 = icmp eq i64 %_117, 0
  br i1 %_118, label %bb38, label %panic14

panic13:                                          ; preds = %bb39
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07df7d276e84638ee083082bf36d6df4) #8
  unreachable

bb38:                                             ; preds = %bb50
  %_198 = ptrtoint ptr %_0.i23 to i64
  %_201 = icmp eq i64 %_198, 0
  %_202 = and i1 %_201, true
  %_203 = xor i1 %_202, true
  br i1 %_203, label %bb51, label %panic15

panic14:                                          ; preds = %bb50
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_114, ptr align 8 @alloc_ebee6abd7071626205c1912fb87438b9) #8
  unreachable

bb51:                                             ; preds = %bb38
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %crawl, ptr align 4 %_0.i23, i64 12, i1 false)
  %_42 = load i32, ptr %crawl, align 4
  %x = call i32 @find(ptr %_18, i32 %_42) #9
  %11 = getelementptr inbounds i8, ptr %crawl, i64 4
  %_44 = load i32, ptr %11, align 4
  %y = call i32 @find(ptr %_18, i32 %_44) #9
  %_45 = icmp ne i32 %x, %y
  br i1 %_45, label %bb17, label %bb12

panic15:                                          ; preds = %bb38
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ebee6abd7071626205c1912fb87438b9) #8
  unreachable

bb17:                                             ; preds = %bb51
  %fresh2 = load i32, ptr %e, align 4
  %_47 = load i32, ptr %e, align 4
  %12 = add i32 %_47, 1
  store i32 %12, ptr %e, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_49 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h17771e89098511dbE"(ptr align 8 %result) #9
  %_51 = sext i32 %fresh2 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_49, i64 %_51, i64 12) #9
  %_0.i22 = getelementptr inbounds %Edge, ptr %_49, i64 %_51
  %_108 = ptrtoint ptr %_0.i22 to i64
  %_111 = and i64 %_108, 3
  %_112 = icmp eq i64 %_111, 0
  br i1 %_112, label %bb37, label %panic16

bb37:                                             ; preds = %bb17
  %_205 = ptrtoint ptr %_0.i22 to i64
  %_208 = icmp eq i64 %_205, 0
  %_209 = and i1 %_208, true
  %_210 = xor i1 %_209, true
  br i1 %_210, label %bb52, label %panic17

panic16:                                          ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_108, ptr align 8 @alloc_c090ea4dcad52cd9bc3f5f80b1234d4b) #8
  unreachable

bb52:                                             ; preds = %bb37
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_0.i22, ptr align 4 %crawl, i64 12, i1 false)
  call void @Union(ptr %_18, i32 %x, i32 %y) #9
  br label %bb12

panic17:                                          ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c090ea4dcad52cd9bc3f5f80b1234d4b) #8
  unreachable

bb41:                                             ; preds = %bb8
  %_177 = ptrtoint ptr %_0.i28 to i64
  %_180 = icmp eq i64 %_177, 0
  %_181 = and i1 %_180, true
  %_182 = xor i1 %_181, true
  br i1 %_182, label %bb48, label %panic19

panic18:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_132, ptr align 8 @alloc_6e8a19f73b06021a33cf11f3b2d48238) #8
  unreachable

bb48:                                             ; preds = %bb41
  store i32 %_25, ptr %_0.i28, align 4
  %_31 = load i32, ptr %i, align 4
  %_30 = sext i32 %_31 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h7bdc6e444df53600E"(ptr %_18, i64 %_30, i64 8) #9
  %_0.i27 = getelementptr inbounds %subset, ptr %_18, i64 %_30
  %_126 = ptrtoint ptr %_0.i27 to i64
  %_129 = and i64 %_126, 3
  %_130 = icmp eq i64 %_129, 0
  br i1 %_130, label %bb40, label %panic20

panic19:                                          ; preds = %bb41
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6e8a19f73b06021a33cf11f3b2d48238) #8
  unreachable

bb40:                                             ; preds = %bb48
  %_184 = ptrtoint ptr %_0.i27 to i64
  %_187 = icmp eq i64 %_184, 0
  %_188 = and i1 %_187, true
  %_189 = xor i1 %_188, true
  br i1 %_189, label %bb49, label %panic21

panic20:                                          ; preds = %bb48
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_126, ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #8
  unreachable

bb49:                                             ; preds = %bb40
  %13 = getelementptr inbounds i8, ptr %_0.i27, i64 4
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr %i, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %i, align 4
  br label %bb7

panic21:                                          ; preds = %bb40
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4a6eda898bdde920aeb6902aaba4aae6) #8
  unreachable
}

; <program_041::Edge as core::clone::Clone>::clone
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN56_$LT$program_041..Edge$u20$as$u20$core..clone..Clone$GT$5clone17h82a044624a57eba9E"(ptr sret([12 x i8]) align 4 %_0, ptr align 4 %self) unnamed_addr #1 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %_0, ptr align 4 %self, i64 12, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind nonlazybind
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h85f3c31270bc2f64E"(ptr align 8, i64, i64, i64, i64) unnamed_addr #0

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hedaf02873af8e39fE"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc7raw_vec12handle_error17hf618f8e5cff958fbE(i64, i64, ptr align 8) unnamed_addr #6

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h51d2d8ddbed32564E"(ptr align 8, i64, i64) unnamed_addr #2

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #7

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #7

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @qsort(ptr, i64, i64, ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
