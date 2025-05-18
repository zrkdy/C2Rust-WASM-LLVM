; ModuleID = '3oi67k2bkngzow90yzha4n3ko'
source_filename = "3oi67k2bkngzow90yzha4n3ko"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%crocodile = type { i32, i32, i8, i8, [2 x i8] }
%Dist = type { [101 x i32] }
%Path = type { [101 x i32] }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_2cb114990ae2e4e2e128355ff24ccfc4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@alloc_fed22b540af341725ca93da381473a8d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\05\00\00\00" }>, align 8
@alloc_7d5d6eab2e8d5d28c744714208152a47 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00\12\00\00\00" }>, align 8
@alloc_f79f06b2094faf19c3841bf93ed5c883 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\00\00\00\05\00\00\00" }>, align 8
@alloc_2992717b1fbbb5fccf004109e2b6b4b3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\0C\00\00\00" }>, align 8
@alloc_fe85ef444d87605df3d56279a911a114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\00\00\00\1A\00\00\00" }>, align 8
@alloc_5dfbfd4a57af67d871e027cd2e7f1c9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\00\00\00\0D\00\00\00" }>, align 8
@alloc_66b811dd2337e9595912ea3bb8528467 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\00\00\00\0C\00\00\00" }>, align 8
@alloc_67353dc933acd8bf66ec87bec8aa6a06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\00\00\00C\00\00\00" }>, align 8
@alloc_aad1b153ad67dca377fd0f3c9944bfa6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00\09\00\00\00" }>, align 8
@alloc_178ad37ef2dbea5303860b66afd2dee8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00\08\00\00\00" }>, align 8
@alloc_be34596c400294dd4a418b1e85d76c11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\00\00\00B\00\00\00" }>, align 8
@alloc_41473790a4e4b16965e3922b089519a1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\00\00\00\15\00\00\00" }>, align 8
@alloc_7426f1940e5d15df190429ae5041c00c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\00\00\00\14\00\00\00" }>, align 8
@alloc_4dc9d9ad7a45d2b5b4b18d2f05142242 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\00\00\00\05\00\00\00" }>, align 8
@alloc_a01cb332465b0ada13969dde6ffe3307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\06\00\00\00" }>, align 8
@alloc_c543a806d72c5c8747fa2de75e912ce3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\1C\00\00\00" }>, align 8
@alloc_158cd7a8450781746e6b2baa76967723 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\05\00\00\00" }>, align 8
@alloc_2009d9393d2617ac855938e628f57034 = private unnamed_addr constant [10 x i8] c"\E9\98\9F\E5\88\97\E6\BB\A1\00", align 1
@alloc_7c4163814a21e3dd025f851c0d1bdd1e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\\\00\00\00\08\00\00\00" }>, align 8
@alloc_a5fdb93241515c0398cd53ba8c25f41f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\\\00\00\00\19\00\00\00" }>, align 8
@alloc_063f4c48070137657894ab3890c94de1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\1A\00\00\00" }>, align 8
@alloc_db04fdc1f8e539ffc89d37ae93679fab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\19\00\00\00" }>, align 8
@alloc_af5a6df1d54b8f0bccfde6f4beaa6593 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\09\00\00\00" }>, align 8
@alloc_f93553db956ce242ddcdc908ac43fc59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00\11\00\00\00" }>, align 8
@alloc_36307ccca59a1be773db37a62ca6e910 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00'\00\00\00" }>, align 8
@alloc_0d1a3b5a463bf59e964b356c724b8b57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00\10\00\00\00" }>, align 8
@alloc_fd2a26de74bdc71a3aae8a4dde96468a = private unnamed_addr constant [10 x i8] c"\E9\98\9F\E5\88\97\E7\A9\BA\00", align 1
@alloc_2153802c5595b840fcc4fd9827334d22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00i\00\00\00\05\00\00\00" }>, align 8
@alloc_83f5eb74f1253c6f571b01131205ddde = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00n\00\00\00\05\00\00\00" }>, align 8
@alloc_bcee72f2da48c031bf650c5a4a16bb5b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\00\08\00\00\00" }>, align 8
@alloc_0dd16aee46f951f9f6b160990237c72e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00y\00\00\00\09\00\00\00" }>, align 8
@alloc_a4de582edf390ab42a296425294c05eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00\0A\00\00\00" }>, align 8
@alloc_895efbad2db1396e235002dca0141b1a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00 \00\00\00" }>, align 8
@alloc_4fce098e5e503b6bfe31d308e01624d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00z\00\00\00\09\00\00\00" }>, align 8
@alloc_4696c21140d5525457c9015c7b76a3db = private unnamed_addr constant [10 x i8] c"\E5\A0\86\E6\A0\88\E6\BB\A1\00", align 1
@alloc_a6846b413f1c98a7cfb700f9d70f8998 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00\08\00\00\00" }>, align 8
@alloc_3a510d67ade589e9db515bc513ec25c4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8E\00\00\00\16\00\00\00" }>, align 8
@alloc_7f73a329a8efa1ef5e21f62a8c79192a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8F\00\00\00\17\00\00\00" }>, align 8
@alloc_697f95e5db9f6f0effe0bf5b076aa2b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8F\00\00\00\09\00\00\00" }>, align 8
@alloc_6c2c81a11003f3e2ac544ba98f416f52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\11\00\00\00" }>, align 8
@alloc_ca856bf7fdbfa147e5042acc8a9e7aa0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\90\00\00\00\10\00\00\00" }>, align 8
@alloc_9fe3483df8082a344287b8d9b02868b9 = private unnamed_addr constant [10 x i8] c"\E5\A0\86\E6\A0\88\E7\A9\BA\00", align 1
@c = global [1212 x i8] zeroinitializer, align 4
@Dist = global [40804 x i8] zeroinitializer, align 4
@Path = global [40804 x i8] zeroinitializer, align 4
@alloc_76d0137942b3b7f7203ba07d0297a007 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@alloc_c0994751a8723f59465d709d35d5c1e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D2\00\00\00\09\00\00\00" }>, align 8
@alloc_3be8fefbb53403a1321d68030b320fcb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D3\00\00\00\09\00\00\00" }>, align 8
@alloc_7455e906dfe6fb6e425a2da78636b368 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D4\00\00\00\09\00\00\00" }>, align 8
@alloc_b0b7f15f223ab5b9f460e3d364ac2b7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D5\00\00\00\09\00\00\00" }>, align 8
@alloc_61d4fb554f043745c2d4b631c1c22ada = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EE\00\00\00\05\00\00\00" }>, align 8
@alloc_342b507c9beb093c6b1574affdc2c9fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F5\00\00\00\11\00\00\00" }>, align 8
@alloc_7402d039b7728046ee7be7a8c6b35277 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F6\00\00\00\11\00\00\00" }>, align 8
@alloc_6ab57f3a32a89de97c5087df852d92c0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F7\00\00\00\11\00\00\00" }>, align 8
@alloc_1655b64de9612e1490124c629669414f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F8\00\00\00\11\00\00\00" }>, align 8
@alloc_397d2b10fbfb3d20951f682165f295b9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FA\00\00\00\10\00\00\00" }>, align 8
@alloc_79d2deb563836a39a950ea26a6a913d0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FE\00\00\00!\00\00\00" }>, align 8
@alloc_b19809ad192be0a94b35a2ef27a85b49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FC\00\00\00\11\00\00\00" }>, align 8
@alloc_d3b307f23560661f8e45b0497d5fd9d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FF\00\00\00\11\00\00\00" }>, align 8
@alloc_37c83d763511975033ce8b067b69e834 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E8\00\00\00\09\00\00\00" }>, align 8
@alloc_25c47c4e1c81df0f97dd1c11d624e605 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E9\00\00\00-\00\00\00" }>, align 8
@alloc_09a94ac4f007d12f6f736abde4ab7a7e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E9\00\00\00\09\00\00\00" }>, align 8
@alloc_f3588b28b94f0809fcc8d717033d3e48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@alloc_b929c71616281bfd1be2bd4038d3ddf1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@alloc_df44eab5a1240d8dcca3fc321b6c8992 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0B\01\00\00>\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17hfd7dd981e8bd4d74E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define ptr @CreateQueue() unnamed_addr #2 {
start:
  %_1 = call ptr @malloc(i64 16) #7
  %_4 = call ptr @malloc(i64 404) #7
  %_29 = ptrtoint ptr %_1 to i64
  %_32 = and i64 %_29, 7
  %_33 = icmp eq i64 %_32, 0
  br i1 %_33, label %bb9, label %panic

bb9:                                              ; preds = %start
  %_35 = ptrtoint ptr %_1 to i64
  %_38 = icmp eq i64 %_35, 0
  %_39 = and i1 %_38, true
  %_40 = xor i1 %_39, true
  br i1 %_40, label %bb10, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_29, ptr align 8 @alloc_2cb114990ae2e4e2e128355ff24ccfc4) #6
  unreachable

bb10:                                             ; preds = %bb9
  store ptr %_4, ptr %_1, align 8
  %_23 = ptrtoint ptr %_1 to i64
  %_26 = and i64 %_23, 7
  %_27 = icmp eq i64 %_26, 0
  br i1 %_27, label %bb8, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2cb114990ae2e4e2e128355ff24ccfc4) #6
  unreachable

bb8:                                              ; preds = %bb10
  %_42 = ptrtoint ptr %_1 to i64
  %_45 = icmp eq i64 %_42, 0
  %_46 = and i1 %_45, true
  %_47 = xor i1 %_46, true
  br i1 %_47, label %bb11, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_23, ptr align 8 @alloc_fed22b540af341725ca93da381473a8d) #6
  unreachable

bb11:                                             ; preds = %bb8
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  store i32 0, ptr %0, align 8
  %_17 = ptrtoint ptr %_1 to i64
  %_20 = and i64 %_17, 7
  %_21 = icmp eq i64 %_20, 0
  br i1 %_21, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fed22b540af341725ca93da381473a8d) #6
  unreachable

bb7:                                              ; preds = %bb11
  %_49 = ptrtoint ptr %_1 to i64
  %_52 = icmp eq i64 %_49, 0
  %_53 = and i1 %_52, true
  %_54 = xor i1 %_53, true
  br i1 %_54, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_17, ptr align 8 @alloc_7d5d6eab2e8d5d28c744714208152a47) #6
  unreachable

bb12:                                             ; preds = %bb7
  %1 = getelementptr inbounds i8, ptr %_1, i64 8
  %_9 = load i32, ptr %1, align 8
  %_11 = ptrtoint ptr %_1 to i64
  %_14 = and i64 %_11, 7
  %_15 = icmp eq i64 %_14, 0
  br i1 %_15, label %bb6, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7d5d6eab2e8d5d28c744714208152a47) #6
  unreachable

bb6:                                              ; preds = %bb12
  %_56 = ptrtoint ptr %_1 to i64
  %_59 = icmp eq i64 %_56, 0
  %_60 = and i1 %_59, true
  %_61 = xor i1 %_60, true
  br i1 %_61, label %bb13, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_11, ptr align 8 @alloc_f79f06b2094faf19c3841bf93ed5c883) #6
  unreachable

bb13:                                             ; preds = %bb6
  %2 = getelementptr inbounds i8, ptr %_1, i64 12
  store i32 %_9, ptr %2, align 4
  ret ptr %_1

panic7:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f79f06b2094faf19c3841bf93ed5c883) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @IsEmpty(ptr %Q) unnamed_addr #2 {
start:
  %_11 = ptrtoint ptr %Q to i64
  %_14 = and i64 %_11, 7
  %_15 = icmp eq i64 %_14, 0
  br i1 %_15, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_17 = ptrtoint ptr %Q to i64
  %_20 = icmp eq i64 %_17, 0
  %_21 = and i1 %_20, true
  %_22 = xor i1 %_21, true
  br i1 %_22, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_11, ptr align 8 @alloc_2992717b1fbbb5fccf004109e2b6b4b3) #6
  unreachable

bb3:                                              ; preds = %bb2
  %0 = getelementptr inbounds i8, ptr %Q, i64 12
  %_2 = load i32, ptr %0, align 4
  %_5 = ptrtoint ptr %Q to i64
  %_8 = and i64 %_5, 7
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %bb1, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2992717b1fbbb5fccf004109e2b6b4b3) #6
  unreachable

bb1:                                              ; preds = %bb3
  %_24 = ptrtoint ptr %Q to i64
  %_27 = icmp eq i64 %_24, 0
  %_28 = and i1 %_27, true
  %_29 = xor i1 %_28, true
  br i1 %_29, label %bb4, label %panic3

panic2:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_5, ptr align 8 @alloc_fe85ef444d87605df3d56279a911a114) #6
  unreachable

bb4:                                              ; preds = %bb1
  %1 = getelementptr inbounds i8, ptr %Q, i64 8
  %_3 = load i32, ptr %1, align 8
  %_0 = icmp eq i32 %_2, %_3
  ret i1 %_0

panic3:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fe85ef444d87605df3d56279a911a114) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @IsFull(ptr %Q) unnamed_addr #2 {
start:
  %_18 = ptrtoint ptr %Q to i64
  %_21 = and i64 %_18, 7
  %_22 = icmp eq i64 %_21, 0
  br i1 %_22, label %bb4, label %panic

bb4:                                              ; preds = %start
  %_24 = ptrtoint ptr %Q to i64
  %_27 = icmp eq i64 %_24, 0
  %_28 = and i1 %_27, true
  %_29 = xor i1 %_28, true
  br i1 %_29, label %bb5, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_18, ptr align 8 @alloc_5dfbfd4a57af67d871e027cd2e7f1c9c) #6
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds i8, ptr %Q, i64 8
  %_4 = load i32, ptr %0, align 8
  %_3 = add i32 %_4, 1
  %_8 = icmp eq i32 %_3, -2147483648
  %_9 = and i1 false, %_8
  br i1 %_9, label %panic2, label %bb2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5dfbfd4a57af67d871e027cd2e7f1c9c) #6
  unreachable

bb2:                                              ; preds = %bb5
  %_2 = srem i32 %_3, 101
  %_12 = ptrtoint ptr %Q to i64
  %_15 = and i64 %_12, 7
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %bb3, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_66b811dd2337e9595912ea3bb8528467) #6
  unreachable

bb3:                                              ; preds = %bb2
  %_31 = ptrtoint ptr %Q to i64
  %_34 = icmp eq i64 %_31, 0
  %_35 = and i1 %_34, true
  %_36 = xor i1 %_35, true
  br i1 %_36, label %bb6, label %panic4

panic3:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_12, ptr align 8 @alloc_67353dc933acd8bf66ec87bec8aa6a06) #6
  unreachable

bb6:                                              ; preds = %bb3
  %1 = getelementptr inbounds i8, ptr %Q, i64 12
  %_10 = load i32, ptr %1, align 4
  %_0 = icmp eq i32 %_2, %_10
  ret i1 %_0

panic4:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_67353dc933acd8bf66ec87bec8aa6a06) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @AddQ(ptr %PtrQ, i32 %item) unnamed_addr #2 {
start:
  %_66 = ptrtoint ptr %PtrQ to i64
  %_69 = and i64 %_66, 7
  %_70 = icmp eq i64 %_69, 0
  br i1 %_70, label %bb15, label %panic

bb15:                                             ; preds = %start
  %_72 = ptrtoint ptr %PtrQ to i64
  %_75 = icmp eq i64 %_72, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb16, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_66, ptr align 8 @alloc_aad1b153ad67dca377fd0f3c9944bfa6) #6
  unreachable

bb16:                                             ; preds = %bb15
  %0 = getelementptr inbounds i8, ptr %PtrQ, i64 8
  %_6 = load i32, ptr %0, align 8
  %_5 = add i32 %_6, 1
  %_10 = icmp eq i32 %_5, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic2, label %bb2

panic1:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_aad1b153ad67dca377fd0f3c9944bfa6) #6
  unreachable

bb2:                                              ; preds = %bb16
  %_4 = srem i32 %_5, 101
  %_60 = ptrtoint ptr %PtrQ to i64
  %_63 = and i64 %_60, 7
  %_64 = icmp eq i64 %_63, 0
  br i1 %_64, label %bb14, label %panic3

panic2:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_178ad37ef2dbea5303860b66afd2dee8) #6
  unreachable

bb14:                                             ; preds = %bb2
  %_79 = ptrtoint ptr %PtrQ to i64
  %_82 = icmp eq i64 %_79, 0
  %_83 = and i1 %_82, true
  %_84 = xor i1 %_83, true
  br i1 %_84, label %bb17, label %panic4

panic3:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_60, ptr align 8 @alloc_be34596c400294dd4a418b1e85d76c11) #6
  unreachable

bb17:                                             ; preds = %bb14
  %1 = getelementptr inbounds i8, ptr %PtrQ, i64 12
  %_12 = load i32, ptr %1, align 4
  %_3 = icmp eq i32 %_4, %_12
  br i1 %_3, label %bb3, label %bb4

panic4:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_be34596c400294dd4a418b1e85d76c11) #6
  unreachable

bb4:                                              ; preds = %bb17
  %_54 = ptrtoint ptr %PtrQ to i64
  %_57 = and i64 %_54, 7
  %_58 = icmp eq i64 %_57, 0
  br i1 %_58, label %bb13, label %panic5

bb3:                                              ; preds = %bb17
  %_13 = call i32 (ptr, ...) @printf(ptr @alloc_2009d9393d2617ac855938e628f57034) #7
  br label %bb8

bb13:                                             ; preds = %bb4
  %_86 = ptrtoint ptr %PtrQ to i64
  %_89 = icmp eq i64 %_86, 0
  %_90 = and i1 %_89, true
  %_91 = xor i1 %_90, true
  br i1 %_91, label %bb18, label %panic6

panic5:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_54, ptr align 8 @alloc_41473790a4e4b16965e3922b089519a1) #6
  unreachable

bb18:                                             ; preds = %bb13
  %2 = getelementptr inbounds i8, ptr %PtrQ, i64 8
  %_19 = load i32, ptr %2, align 8
  %_18 = add i32 %_19, 1
  %_23 = icmp eq i32 %_18, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic7, label %bb6

panic6:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_41473790a4e4b16965e3922b089519a1) #6
  unreachable

bb6:                                              ; preds = %bb18
  %_48 = ptrtoint ptr %PtrQ to i64
  %_51 = and i64 %_48, 7
  %_52 = icmp eq i64 %_51, 0
  br i1 %_52, label %bb12, label %panic8

panic7:                                           ; preds = %bb18
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_7426f1940e5d15df190429ae5041c00c) #6
  unreachable

bb12:                                             ; preds = %bb6
  %_93 = ptrtoint ptr %PtrQ to i64
  %_96 = icmp eq i64 %_93, 0
  %_97 = and i1 %_96, true
  %_98 = xor i1 %_97, true
  br i1 %_98, label %bb19, label %panic9

panic8:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_48, ptr align 8 @alloc_4dc9d9ad7a45d2b5b4b18d2f05142242) #6
  unreachable

bb19:                                             ; preds = %bb12
  %3 = getelementptr inbounds i8, ptr %PtrQ, i64 8
  %4 = srem i32 %_18, 101
  store i32 %4, ptr %3, align 8
  %_42 = ptrtoint ptr %PtrQ to i64
  %_45 = and i64 %_42, 7
  %_46 = icmp eq i64 %_45, 0
  br i1 %_46, label %bb11, label %panic10

panic9:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4dc9d9ad7a45d2b5b4b18d2f05142242) #6
  unreachable

bb11:                                             ; preds = %bb19
  %_100 = ptrtoint ptr %PtrQ to i64
  %_103 = icmp eq i64 %_100, 0
  %_104 = and i1 %_103, true
  %_105 = xor i1 %_104, true
  br i1 %_105, label %bb20, label %panic11

panic10:                                          ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_42, ptr align 8 @alloc_a01cb332465b0ada13969dde6ffe3307) #6
  unreachable

bb20:                                             ; preds = %bb11
  %_26 = load ptr, ptr %PtrQ, align 8
  %_36 = ptrtoint ptr %PtrQ to i64
  %_39 = and i64 %_36, 7
  %_40 = icmp eq i64 %_39, 0
  br i1 %_40, label %bb10, label %panic12

panic11:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a01cb332465b0ada13969dde6ffe3307) #6
  unreachable

bb10:                                             ; preds = %bb20
  %_107 = ptrtoint ptr %PtrQ to i64
  %_110 = icmp eq i64 %_107, 0
  %_111 = and i1 %_110, true
  %_112 = xor i1 %_111, true
  br i1 %_112, label %bb21, label %panic13

panic12:                                          ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_36, ptr align 8 @alloc_c543a806d72c5c8747fa2de75e912ce3) #6
  unreachable

bb21:                                             ; preds = %bb10
  %5 = getelementptr inbounds i8, ptr %PtrQ, i64 8
  %_28 = load i32, ptr %5, align 8
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %_26, i64 %_27, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %_26, i64 %_27
  %_30 = ptrtoint ptr %_0.i to i64
  %_33 = and i64 %_30, 3
  %_34 = icmp eq i64 %_33, 0
  br i1 %_34, label %bb9, label %panic14

panic13:                                          ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c543a806d72c5c8747fa2de75e912ce3) #6
  unreachable

bb9:                                              ; preds = %bb21
  %_114 = ptrtoint ptr %_0.i to i64
  %_117 = icmp eq i64 %_114, 0
  %_118 = and i1 %_117, true
  %_119 = xor i1 %_118, true
  br i1 %_119, label %bb22, label %panic15

panic14:                                          ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_30, ptr align 8 @alloc_158cd7a8450781746e6b2baa76967723) #6
  unreachable

bb22:                                             ; preds = %bb9
  store i32 %item, ptr %_0.i, align 4
  br label %bb8

panic15:                                          ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_158cd7a8450781746e6b2baa76967723) #6
  unreachable

bb8:                                              ; preds = %bb3, %bb22
  ret void
}

; Function Attrs: nounwind nonlazybind
define i32 @DeleteQ(ptr %PtrQ) unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_58 = ptrtoint ptr %PtrQ to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb14, label %panic

bb14:                                             ; preds = %start
  %_64 = ptrtoint ptr %PtrQ to i64
  %_67 = icmp eq i64 %_64, 0
  %_68 = and i1 %_67, true
  %_69 = xor i1 %_68, true
  br i1 %_69, label %bb15, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_7c4163814a21e3dd025f851c0d1bdd1e) #6
  unreachable

bb15:                                             ; preds = %bb14
  %0 = getelementptr inbounds i8, ptr %PtrQ, i64 12
  %_3 = load i32, ptr %0, align 4
  %_52 = ptrtoint ptr %PtrQ to i64
  %_55 = and i64 %_52, 7
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb13, label %panic2

panic1:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7c4163814a21e3dd025f851c0d1bdd1e) #6
  unreachable

bb13:                                             ; preds = %bb15
  %_71 = ptrtoint ptr %PtrQ to i64
  %_74 = icmp eq i64 %_71, 0
  %_75 = and i1 %_74, true
  %_76 = xor i1 %_75, true
  br i1 %_76, label %bb16, label %panic3

panic2:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_52, ptr align 8 @alloc_a5fdb93241515c0398cd53ba8c25f41f) #6
  unreachable

bb16:                                             ; preds = %bb13
  %1 = getelementptr inbounds i8, ptr %PtrQ, i64 8
  %_4 = load i32, ptr %1, align 8
  %_2 = icmp eq i32 %_3, %_4
  br i1 %_2, label %bb1, label %bb3

panic3:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a5fdb93241515c0398cd53ba8c25f41f) #6
  unreachable

bb3:                                              ; preds = %bb16
  %_46 = ptrtoint ptr %PtrQ to i64
  %_49 = and i64 %_46, 7
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb12, label %panic4

bb1:                                              ; preds = %bb16
  %_5 = call i32 (ptr, ...) @printf(ptr @alloc_fd2a26de74bdc71a3aae8a4dde96468a) #7
  store i32 999, ptr %_0, align 4
  br label %bb7

bb12:                                             ; preds = %bb3
  %_78 = ptrtoint ptr %PtrQ to i64
  %_81 = icmp eq i64 %_78, 0
  %_82 = and i1 %_81, true
  %_83 = xor i1 %_82, true
  br i1 %_83, label %bb17, label %panic5

panic4:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_46, ptr align 8 @alloc_063f4c48070137657894ab3890c94de1) #6
  unreachable

bb17:                                             ; preds = %bb12
  %2 = getelementptr inbounds i8, ptr %PtrQ, i64 12
  %_11 = load i32, ptr %2, align 4
  %_10 = add i32 %_11, 1
  %_15 = icmp eq i32 %_10, -2147483648
  %_16 = and i1 false, %_15
  br i1 %_16, label %panic6, label %bb5

panic5:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_063f4c48070137657894ab3890c94de1) #6
  unreachable

bb5:                                              ; preds = %bb17
  %_40 = ptrtoint ptr %PtrQ to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb11, label %panic7

panic6:                                           ; preds = %bb17
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_db04fdc1f8e539ffc89d37ae93679fab) #6
  unreachable

bb11:                                             ; preds = %bb5
  %_85 = ptrtoint ptr %PtrQ to i64
  %_88 = icmp eq i64 %_85, 0
  %_89 = and i1 %_88, true
  %_90 = xor i1 %_89, true
  br i1 %_90, label %bb18, label %panic8

panic7:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_af5a6df1d54b8f0bccfde6f4beaa6593) #6
  unreachable

bb18:                                             ; preds = %bb11
  %3 = getelementptr inbounds i8, ptr %PtrQ, i64 12
  %4 = srem i32 %_10, 101
  store i32 %4, ptr %3, align 4
  %_34 = ptrtoint ptr %PtrQ to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb10, label %panic9

panic8:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_af5a6df1d54b8f0bccfde6f4beaa6593) #6
  unreachable

bb10:                                             ; preds = %bb18
  %_92 = ptrtoint ptr %PtrQ to i64
  %_95 = icmp eq i64 %_92, 0
  %_96 = and i1 %_95, true
  %_97 = xor i1 %_96, true
  br i1 %_97, label %bb19, label %panic10

panic9:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_f93553db956ce242ddcdc908ac43fc59) #6
  unreachable

bb19:                                             ; preds = %bb10
  %_18 = load ptr, ptr %PtrQ, align 8
  %_28 = ptrtoint ptr %PtrQ to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb9, label %panic11

panic10:                                          ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f93553db956ce242ddcdc908ac43fc59) #6
  unreachable

bb9:                                              ; preds = %bb19
  %_99 = ptrtoint ptr %PtrQ to i64
  %_102 = icmp eq i64 %_99, 0
  %_103 = and i1 %_102, true
  %_104 = xor i1 %_103, true
  br i1 %_104, label %bb20, label %panic12

panic11:                                          ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_36307ccca59a1be773db37a62ca6e910) #6
  unreachable

bb20:                                             ; preds = %bb9
  %5 = getelementptr inbounds i8, ptr %PtrQ, i64 12
  %_20 = load i32, ptr %5, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %_18, i64 %_19, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %_18, i64 %_19
  %_22 = ptrtoint ptr %_0.i to i64
  %_25 = and i64 %_22, 3
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb8, label %panic13

panic12:                                          ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_36307ccca59a1be773db37a62ca6e910) #6
  unreachable

bb8:                                              ; preds = %bb20
  %_106 = ptrtoint ptr %_0.i to i64
  %_109 = icmp eq i64 %_106, 0
  %_110 = and i1 %_109, true
  %_111 = xor i1 %_110, true
  br i1 %_111, label %bb21, label %panic14

panic13:                                          ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_22, ptr align 8 @alloc_0d1a3b5a463bf59e964b356c724b8b57) #6
  unreachable

bb21:                                             ; preds = %bb8
  %6 = load i32, ptr %_0.i, align 4
  store i32 %6, ptr %_0, align 4
  br label %bb7

panic14:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0d1a3b5a463bf59e964b356c724b8b57) #6
  unreachable

bb7:                                              ; preds = %bb1, %bb21
  %7 = load i32, ptr %_0, align 4
  ret i32 %7
}

; Function Attrs: nounwind nonlazybind
define ptr @CreateStack() unnamed_addr #2 {
start:
  %_1 = call ptr @malloc(i64 16) #7
  %_4 = call ptr @malloc(i64 404) #7
  %_16 = ptrtoint ptr %_1 to i64
  %_19 = and i64 %_16, 7
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb7, label %panic

bb7:                                              ; preds = %start
  %_22 = ptrtoint ptr %_1 to i64
  %_25 = icmp eq i64 %_22, 0
  %_26 = and i1 %_25, true
  %_27 = xor i1 %_26, true
  br i1 %_27, label %bb8, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_16, ptr align 8 @alloc_2153802c5595b840fcc4fd9827334d22) #6
  unreachable

bb8:                                              ; preds = %bb7
  store ptr %_4, ptr %_1, align 8
  %_10 = ptrtoint ptr %_1 to i64
  %_13 = and i64 %_10, 7
  %_14 = icmp eq i64 %_13, 0
  br i1 %_14, label %bb6, label %panic2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2153802c5595b840fcc4fd9827334d22) #6
  unreachable

bb6:                                              ; preds = %bb8
  %_29 = ptrtoint ptr %_1 to i64
  %_32 = icmp eq i64 %_29, 0
  %_33 = and i1 %_32, true
  %_34 = xor i1 %_33, true
  br i1 %_34, label %bb9, label %panic3

panic2:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_10, ptr align 8 @alloc_83f5eb74f1253c6f571b01131205ddde) #6
  unreachable

bb9:                                              ; preds = %bb6
  %0 = getelementptr inbounds i8, ptr %_1, i64 8
  store i32 -1, ptr %0, align 8
  ret ptr %_1

panic3:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_83f5eb74f1253c6f571b01131205ddde) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Push(ptr %PtrS, i32 %item) unnamed_addr #2 {
start:
  %_46 = ptrtoint ptr %PtrS to i64
  %_49 = and i64 %_46, 7
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb10, label %panic

bb10:                                             ; preds = %start
  %_52 = ptrtoint ptr %PtrS to i64
  %_55 = icmp eq i64 %_52, 0
  %_56 = and i1 %_55, true
  %_57 = xor i1 %_56, true
  br i1 %_57, label %bb11, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_46, ptr align 8 @alloc_bcee72f2da48c031bf650c5a4a16bb5b) #6
  unreachable

bb11:                                             ; preds = %bb10
  %0 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %_4 = load i32, ptr %0, align 8
  %_3 = icmp eq i32 %_4, 100
  br i1 %_3, label %bb1, label %bb2

panic1:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bcee72f2da48c031bf650c5a4a16bb5b) #6
  unreachable

bb2:                                              ; preds = %bb11
  %_40 = ptrtoint ptr %PtrS to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb9, label %panic2

bb1:                                              ; preds = %bb11
  %_6 = call i32 (ptr, ...) @printf(ptr @alloc_4696c21140d5525457c9015c7b76a3db) #7
  br label %bb4

bb9:                                              ; preds = %bb2
  %_34 = ptrtoint ptr %PtrS to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb8, label %panic3

panic2:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #6
  unreachable

bb8:                                              ; preds = %bb9
  %_66 = ptrtoint ptr %PtrS to i64
  %_69 = icmp eq i64 %_66, 0
  %_70 = and i1 %_69, true
  %_71 = xor i1 %_70, true
  br i1 %_71, label %bb13, label %panic4

panic3:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #6
  unreachable

bb13:                                             ; preds = %bb8
  %_59 = ptrtoint ptr %PtrS to i64
  %_62 = icmp eq i64 %_59, 0
  %_63 = and i1 %_62, true
  %_64 = xor i1 %_63, true
  br i1 %_64, label %bb12, label %panic5

panic4:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #6
  unreachable

bb12:                                             ; preds = %bb13
  %1 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %2 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1
  store i32 %4, ptr %1, align 8
  %_28 = ptrtoint ptr %PtrS to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb7, label %panic6

panic5:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0dd16aee46f951f9f6b160990237c72e) #6
  unreachable

bb7:                                              ; preds = %bb12
  %_73 = ptrtoint ptr %PtrS to i64
  %_76 = icmp eq i64 %_73, 0
  %_77 = and i1 %_76, true
  %_78 = xor i1 %_77, true
  br i1 %_78, label %bb14, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_a4de582edf390ab42a296425294c05eb) #6
  unreachable

bb14:                                             ; preds = %bb7
  %_12 = load ptr, ptr %PtrS, align 8
  %_22 = ptrtoint ptr %PtrS to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb6, label %panic8

panic7:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a4de582edf390ab42a296425294c05eb) #6
  unreachable

bb6:                                              ; preds = %bb14
  %_80 = ptrtoint ptr %PtrS to i64
  %_83 = icmp eq i64 %_80, 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb15, label %panic9

panic8:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_895efbad2db1396e235002dca0141b1a) #6
  unreachable

bb15:                                             ; preds = %bb6
  %5 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %_14 = load i32, ptr %5, align 8
  %_13 = sext i32 %_14 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %_12, i64 %_13, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %_12, i64 %_13
  %_16 = ptrtoint ptr %_0.i to i64
  %_19 = and i64 %_16, 3
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb5, label %panic10

panic9:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_895efbad2db1396e235002dca0141b1a) #6
  unreachable

bb5:                                              ; preds = %bb15
  %_87 = ptrtoint ptr %_0.i to i64
  %_90 = icmp eq i64 %_87, 0
  %_91 = and i1 %_90, true
  %_92 = xor i1 %_91, true
  br i1 %_92, label %bb16, label %panic11

panic10:                                          ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_16, ptr align 8 @alloc_4fce098e5e503b6bfe31d308e01624d7) #6
  unreachable

bb16:                                             ; preds = %bb5
  store i32 %item, ptr %_0.i, align 4
  br label %bb4

panic11:                                          ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4fce098e5e503b6bfe31d308e01624d7) #6
  unreachable

bb4:                                              ; preds = %bb1, %bb16
  ret void
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @IsStackEmpty(ptr %PtrS) unnamed_addr #2 {
start:
  %_0 = alloca [1 x i8], align 1
  %_6 = ptrtoint ptr %PtrS to i64
  %_9 = and i64 %_6, 7
  %_10 = icmp eq i64 %_9, 0
  br i1 %_10, label %bb4, label %panic

bb4:                                              ; preds = %start
  %_12 = ptrtoint ptr %PtrS to i64
  %_15 = icmp eq i64 %_12, 0
  %_16 = and i1 %_15, true
  %_17 = xor i1 %_16, true
  br i1 %_17, label %bb5, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_6, ptr align 8 @alloc_a6846b413f1c98a7cfb700f9d70f8998) #6
  unreachable

bb5:                                              ; preds = %bb4
  %0 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %_3 = load i32, ptr %0, align 8
  %_2 = icmp eq i32 %_3, -1
  br i1 %_2, label %bb1, label %bb2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a6846b413f1c98a7cfb700f9d70f8998) #6
  unreachable

bb2:                                              ; preds = %bb5
  store i8 0, ptr %_0, align 1
  br label %bb3

bb1:                                              ; preds = %bb5
  store i8 1, ptr %_0, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %1 = load i8, ptr %_0, align 1
  %2 = trunc nuw i8 %1 to i1
  ret i1 %2
}

; Function Attrs: nounwind nonlazybind
define i32 @Pop(ptr %PtrS) unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_2 = call zeroext i1 @IsStackEmpty(ptr %PtrS) #7
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %start
  %_38 = ptrtoint ptr %PtrS to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb11, label %panic

bb2:                                              ; preds = %start
  %_3 = call i32 (ptr, ...) @printf(ptr @alloc_9fe3483df8082a344287b8d9b02868b9) #7
  store i32 999, ptr %_0, align 4
  br label %bb6

bb11:                                             ; preds = %bb4
  %_44 = ptrtoint ptr %PtrS to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb12, label %panic1

panic:                                            ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_3a510d67ade589e9db515bc513ec25c4) #6
  unreachable

bb12:                                             ; preds = %bb11
  %0 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %fresh0 = load i32, ptr %0, align 8
  %_32 = ptrtoint ptr %PtrS to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb10, label %panic2

panic1:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3a510d67ade589e9db515bc513ec25c4) #6
  unreachable

bb10:                                             ; preds = %bb12
  %_51 = ptrtoint ptr %PtrS to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb13, label %panic3

panic2:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_7f73a329a8efa1ef5e21f62a8c79192a) #6
  unreachable

bb13:                                             ; preds = %bb10
  %1 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %_9 = load i32, ptr %1, align 8
  %_26 = ptrtoint ptr %PtrS to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb9, label %panic4

panic3:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7f73a329a8efa1ef5e21f62a8c79192a) #6
  unreachable

bb9:                                              ; preds = %bb13
  %_58 = ptrtoint ptr %PtrS to i64
  %_61 = icmp eq i64 %_58, 0
  %_62 = and i1 %_61, true
  %_63 = xor i1 %_62, true
  br i1 %_63, label %bb14, label %panic5

panic4:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_697f95e5db9f6f0effe0bf5b076aa2b8) #6
  unreachable

bb14:                                             ; preds = %bb9
  %2 = getelementptr inbounds i8, ptr %PtrS, i64 8
  %3 = sub i32 %_9, 1
  store i32 %3, ptr %2, align 8
  %_20 = ptrtoint ptr %PtrS to i64
  %_23 = and i64 %_20, 7
  %_24 = icmp eq i64 %_23, 0
  br i1 %_24, label %bb8, label %panic6

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_697f95e5db9f6f0effe0bf5b076aa2b8) #6
  unreachable

bb8:                                              ; preds = %bb14
  %_65 = ptrtoint ptr %PtrS to i64
  %_68 = icmp eq i64 %_65, 0
  %_69 = and i1 %_68, true
  %_70 = xor i1 %_69, true
  br i1 %_70, label %bb15, label %panic7

panic6:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_20, ptr align 8 @alloc_6c2c81a11003f3e2ac544ba98f416f52) #6
  unreachable

bb15:                                             ; preds = %bb8
  %_11 = load ptr, ptr %PtrS, align 8
  %_12 = sext i32 %fresh0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %_11, i64 %_12, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %_11, i64 %_12
  %_14 = ptrtoint ptr %_0.i to i64
  %_17 = and i64 %_14, 3
  %_18 = icmp eq i64 %_17, 0
  br i1 %_18, label %bb7, label %panic8

panic7:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6c2c81a11003f3e2ac544ba98f416f52) #6
  unreachable

bb7:                                              ; preds = %bb15
  %_72 = ptrtoint ptr %_0.i to i64
  %_75 = icmp eq i64 %_72, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb16, label %panic9

panic8:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_14, ptr align 8 @alloc_ca856bf7fdbfa147e5042acc8a9e7aa0) #6
  unreachable

bb16:                                             ; preds = %bb7
  %4 = load i32, ptr %_0.i, align 4
  store i32 %4, ptr %_0, align 4
  br label %bb6

panic9:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ca856bf7fdbfa147e5042acc8a9e7aa0) #6
  unreachable

bb6:                                              ; preds = %bb2, %bb16
  %5 = load i32, ptr %_0, align 4
  ret i32 %5
}

; Function Attrs: nounwind nonlazybind
define i32 @Distance(i32 %x1, i32 %y1, i32 %x2, i32 %y2) unnamed_addr #2 {
start:
  %_9 = sub i32 %y2, %y1
  %_8 = sitofp i32 %_9 to double
  %_7 = call double @pow(double %_8, double 2.000000e+00) #7
  %_13 = sub i32 %x2, %x1
  %_12 = sitofp i32 %_13 to double
  %_11 = call double @pow(double %_12, double 2.000000e+00) #7
  %_6 = fadd double %_7, %_11
  %_5 = call double @sqrt(double %_6) #7
  %distance = call i32 @llvm.fptosi.sat.i32.f64(double %_5)
  ret i32 %distance
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @NearShore(i32 %x, i32 %y, i32 %D) unnamed_addr #2 {
start:
  %_0 = alloca [1 x i8], align 1
  %_6 = call i32 @abs(i32 %x) #7
  %_5 = sub i32 50, %_6
  %_4 = icmp sle i32 %_5, %D
  br i1 %_4, label %bb4, label %bb2

bb2:                                              ; preds = %start
  %_9 = call i32 @abs(i32 %y) #7
  %_8 = sub i32 50, %_9
  %_7 = icmp sle i32 %_8, %D
  br i1 %_7, label %bb4, label %bb5

bb4:                                              ; preds = %bb2, %start
  store i8 1, ptr %_0, align 1
  br label %bb6

bb5:                                              ; preds = %bb2
  store i8 0, ptr %_0, align 1
  br label %bb6

bb6:                                              ; preds = %bb4, %bb5
  %0 = load i8, ptr %_0, align 1
  %1 = trunc nuw i8 %0 to i1
  ret i1 %1
}

; Function Attrs: nounwind nonlazybind
define zeroext i1 @FirstJump(i32 %x, i32 %y, i32 %D) unnamed_addr #2 {
start:
  %_0 = alloca [1 x i8], align 1
  %_8 = sitofp i32 %x to double
  %_7 = call double @pow(double %_8, double 2.000000e+00) #7
  %_11 = sitofp i32 %y to double
  %_10 = call double @pow(double %_11, double 2.000000e+00) #7
  %_6 = fadd double %_7, %_10
  %_5 = call double @sqrt(double %_6) #7
  %distance = call i32 @llvm.fptosi.sat.i32.f64(double %_5)
  %_14 = add i32 %D, 7
  %_13 = icmp sle i32 %distance, %_14
  br i1 %_13, label %bb6, label %bb7

bb7:                                              ; preds = %start
  store i8 0, ptr %_0, align 1
  br label %bb8

bb6:                                              ; preds = %start
  store i8 1, ptr %_0, align 1
  br label %bb8

bb8:                                              ; preds = %bb6, %bb7
  %0 = load i8, ptr %_0, align 1
  %1 = trunc nuw i8 %0 to i1
  ret i1 %1
}

; Function Attrs: nounwind nonlazybind
define void @Initial(i32 %N, i32 %D) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %y = alloca [4 x i8], align 4
  %x = alloca [4 x i8], align 4
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb18, %start
  %_7 = load i32, ptr %i, align 4
  %_6 = icmp slt i32 %_7, %N
  br i1 %_6, label %bb2, label %bb10

bb10:                                             ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_8 = call i32 (ptr, ...) @scanf(ptr @alloc_76d0137942b3b7f7203ba07d0297a007, ptr %x, ptr %y) #7
  %_17 = load i32, ptr %x, align 4
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
  %_21 = icmp ult i64 %_19, 101
  br i1 %_21, label %bb4, label %panic

bb4:                                              ; preds = %bb2
  %_69 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_70 = and i1 %_69, true
  %_71 = xor i1 %_70, true
  br i1 %_71, label %bb15, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_19, i64 101, ptr align 8 @alloc_c0994751a8723f59465d709d35d5c1e2) #6
  unreachable

bb15:                                             ; preds = %bb4
  %0 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_19
  store i32 %_17, ptr %0, align 4
  %_22 = load i32, ptr %y, align 4
  %_25 = load i32, ptr %i, align 4
  %_24 = sext i32 %_25 to i64
  %_26 = icmp ult i64 %_24, 101
  br i1 %_26, label %bb5, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c0994751a8723f59465d709d35d5c1e2) #6
  unreachable

bb5:                                              ; preds = %bb15
  %_76 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_77 = and i1 %_76, true
  %_78 = xor i1 %_77, true
  br i1 %_78, label %bb16, label %panic3

panic2:                                           ; preds = %bb15
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_24, i64 101, ptr align 8 @alloc_3be8fefbb53403a1321d68030b320fcb) #6
  unreachable

bb16:                                             ; preds = %bb5
  %1 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_24
  %2 = getelementptr inbounds i8, ptr %1, i64 4
  store i32 %_22, ptr %2, align 4
  %_28 = load i32, ptr %x, align 4
  %_29 = load i32, ptr %y, align 4
  %_27 = call zeroext i1 @NearShore(i32 %_28, i32 %_29, i32 %D) #7
  %_32 = load i32, ptr %i, align 4
  %_31 = sext i32 %_32 to i64
  %_33 = icmp ult i64 %_31, 101
  br i1 %_33, label %bb7, label %panic4

panic3:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3be8fefbb53403a1321d68030b320fcb) #6
  unreachable

bb7:                                              ; preds = %bb16
  %_83 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb17, label %panic5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_31, i64 101, ptr align 8 @alloc_7455e906dfe6fb6e425a2da78636b368) #6
  unreachable

bb17:                                             ; preds = %bb7
  %3 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_31
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = zext i1 %_27 to i8
  store i8 %5, ptr %4, align 4
  %_35 = load i32, ptr %x, align 4
  %_36 = load i32, ptr %y, align 4
  %_34 = call zeroext i1 @FirstJump(i32 %_35, i32 %_36, i32 %D) #7
  %_39 = load i32, ptr %i, align 4
  %_38 = sext i32 %_39 to i64
  %_40 = icmp ult i64 %_38, 101
  br i1 %_40, label %bb9, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7455e906dfe6fb6e425a2da78636b368) #6
  unreachable

bb9:                                              ; preds = %bb17
  %_90 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_91 = and i1 %_90, true
  %_92 = xor i1 %_91, true
  br i1 %_92, label %bb18, label %panic7

panic6:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_38, i64 101, ptr align 8 @alloc_b0b7f15f223ab5b9f460e3d364ac2b7b) #6
  unreachable

bb18:                                             ; preds = %bb9
  %6 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_38
  %7 = getelementptr inbounds i8, ptr %6, i64 9
  %8 = zext i1 %_34 to i8
  store i8 %8, ptr %7, align 1
  %9 = load i32, ptr %i, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %i, align 4
  br label %bb1

panic7:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b0b7f15f223ab5b9f460e3d364ac2b7b) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Unweighted(i32 %S, i32 %N, i32 %D) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %distance = alloca [4 x i8], align 4
  %W = alloca [4 x i8], align 4
  %V = alloca [4 x i8], align 4
  %Q = alloca [8 x i8], align 8
  store ptr null, ptr %Q, align 8
  store i32 0, ptr %V, align 4
  store i32 0, ptr %W, align 4
  store i32 0, ptr %distance, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb50, %start
  %_10 = load i32, ptr %i, align 4
  %_9 = icmp slt i32 %_10, %N
  br i1 %_9, label %bb2, label %bb9

bb9:                                              ; preds = %bb1
  %_30 = call ptr @CreateQueue() #7
  store ptr %_30, ptr %Q, align 8
  %_32 = sext i32 %S to i64
  %_33 = icmp ult i64 %_32, 101
  br i1 %_33, label %bb11, label %panic

bb2:                                              ; preds = %bb1
  %_12 = sext i32 %S to i64
  %_13 = icmp ult i64 %_12, 101
  br i1 %_13, label %bb3, label %panic23

bb11:                                             ; preds = %bb9
  %_34 = sext i32 %S to i64
  %_35 = icmp ult i64 %_34, 101
  br i1 %_35, label %bb12, label %panic1

panic:                                            ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_32, i64 101, ptr align 8 @alloc_61d4fb554f043745c2d4b631c1c22ada) #6
  unreachable

bb12:                                             ; preds = %bb11
  %_196 = icmp eq i64 ptrtoint (ptr @Dist to i64), 0
  %_197 = and i1 %_196, true
  %_198 = xor i1 %_197, true
  br i1 %_198, label %bb51, label %panic2

panic1:                                           ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_34, i64 101, ptr align 8 @alloc_61d4fb554f043745c2d4b631c1c22ada) #6
  unreachable

bb51:                                             ; preds = %bb12
  %0 = getelementptr inbounds nuw %Dist, ptr @Dist, i64 %_32
  %1 = getelementptr inbounds nuw i32, ptr %0, i64 %_34
  store i32 0, ptr %1, align 4
  %_37 = load ptr, ptr %Q, align 8
  call void @AddQ(ptr %_37, i32 %S) #7
  br label %bb13

panic2:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_61d4fb554f043745c2d4b631c1c22ada) #6
  unreachable

bb13:                                             ; preds = %bb18, %bb51
  %_39 = load ptr, ptr %Q, align 8
  %_38 = call zeroext i1 @IsEmpty(ptr %_39) #7
  br i1 %_38, label %bb15, label %bb16

bb16:                                             ; preds = %bb13
  %_41 = load ptr, ptr %Q, align 8
  %_40 = call i32 @DeleteQ(ptr %_41) #7
  store i32 %_40, ptr %V, align 4
  store i32 0, ptr %W, align 4
  br label %bb18

bb15:                                             ; preds = %bb13
  ret void

bb18:                                             ; preds = %bb35, %bb16
  %_43 = load i32, ptr %W, align 4
  %_42 = icmp slt i32 %_43, %N
  br i1 %_42, label %bb19, label %bb13

bb19:                                             ; preds = %bb18
  %_48 = load i32, ptr %V, align 4
  %_47 = sext i32 %_48 to i64
  %_49 = icmp ult i64 %_47, 101
  br i1 %_49, label %bb20, label %panic3

bb20:                                             ; preds = %bb19
  %_203 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_204 = and i1 %_203, true
  %_205 = xor i1 %_204, true
  br i1 %_205, label %bb52, label %panic4

panic3:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_47, i64 101, ptr align 8 @alloc_342b507c9beb093c6b1574affdc2c9fd) #6
  unreachable

bb52:                                             ; preds = %bb20
  %2 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_47
  %_45 = load i32, ptr %2, align 4
  %_53 = load i32, ptr %V, align 4
  %_52 = sext i32 %_53 to i64
  %_54 = icmp ult i64 %_52, 101
  br i1 %_54, label %bb21, label %panic5

panic4:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_342b507c9beb093c6b1574affdc2c9fd) #6
  unreachable

bb21:                                             ; preds = %bb52
  %_210 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_211 = and i1 %_210, true
  %_212 = xor i1 %_211, true
  br i1 %_212, label %bb53, label %panic6

panic5:                                           ; preds = %bb52
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_52, i64 101, ptr align 8 @alloc_7402d039b7728046ee7be7a8c6b35277) #6
  unreachable

bb53:                                             ; preds = %bb21
  %3 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_52
  %4 = getelementptr inbounds i8, ptr %3, i64 4
  %_50 = load i32, ptr %4, align 4
  %_58 = load i32, ptr %W, align 4
  %_57 = sext i32 %_58 to i64
  %_59 = icmp ult i64 %_57, 101
  br i1 %_59, label %bb22, label %panic7

panic6:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7402d039b7728046ee7be7a8c6b35277) #6
  unreachable

bb22:                                             ; preds = %bb53
  %_217 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_218 = and i1 %_217, true
  %_219 = xor i1 %_218, true
  br i1 %_219, label %bb54, label %panic8

panic7:                                           ; preds = %bb53
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_57, i64 101, ptr align 8 @alloc_6ab57f3a32a89de97c5087df852d92c0) #6
  unreachable

bb54:                                             ; preds = %bb22
  %5 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_57
  %_55 = load i32, ptr %5, align 4
  %_63 = load i32, ptr %W, align 4
  %_62 = sext i32 %_63 to i64
  %_64 = icmp ult i64 %_62, 101
  br i1 %_64, label %bb23, label %panic9

panic8:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6ab57f3a32a89de97c5087df852d92c0) #6
  unreachable

bb23:                                             ; preds = %bb54
  %_224 = icmp eq i64 ptrtoint (ptr @c to i64), 0
  %_225 = and i1 %_224, true
  %_226 = xor i1 %_225, true
  br i1 %_226, label %bb55, label %panic10

panic9:                                           ; preds = %bb54
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_62, i64 101, ptr align 8 @alloc_1655b64de9612e1490124c629669414f) #6
  unreachable

bb55:                                             ; preds = %bb23
  %6 = getelementptr inbounds nuw %crocodile, ptr @c, i64 %_62
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %_60 = load i32, ptr %7, align 4
  %_44 = call i32 @Distance(i32 %_45, i32 %_50, i32 %_55, i32 %_60) #7
  store i32 %_44, ptr %distance, align 4
  %_68 = sext i32 %S to i64
  %_69 = icmp ult i64 %_68, 101
  br i1 %_69, label %bb25, label %panic11

panic10:                                          ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1655b64de9612e1490124c629669414f) #6
  unreachable

bb25:                                             ; preds = %bb55
  %_71 = load i32, ptr %W, align 4
  %_70 = sext i32 %_71 to i64
  %_72 = icmp ult i64 %_70, 101
  br i1 %_72, label %bb26, label %panic12

panic11:                                          ; preds = %bb55
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_68, i64 101, ptr align 8 @alloc_397d2b10fbfb3d20951f682165f295b9) #6
  unreachable

bb26:                                             ; preds = %bb25
  %_231 = icmp eq i64 ptrtoint (ptr @Dist to i64), 0
  %_232 = and i1 %_231, true
  %_233 = xor i1 %_232, true
  br i1 %_233, label %bb56, label %panic13

panic12:                                          ; preds = %bb25
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_70, i64 101, ptr align 8 @alloc_397d2b10fbfb3d20951f682165f295b9) #6
  unreachable

bb56:                                             ; preds = %bb26
  %8 = getelementptr inbounds nuw %Dist, ptr @Dist, i64 %_68
  %9 = getelementptr inbounds nuw i32, ptr %8, i64 %_70
  %_66 = load i32, ptr %9, align 4
  %_65 = icmp eq i32 %_66, -1
  br i1 %_65, label %bb27, label %bb35

panic13:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_397d2b10fbfb3d20951f682165f295b9) #6
  unreachable

bb35:                                             ; preds = %bb59, %bb27, %bb56
  %10 = load i32, ptr %W, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %W, align 4
  br label %bb18

bb27:                                             ; preds = %bb56
  %_75 = load i32, ptr %distance, align 4
  %_74 = icmp sle i32 %_75, %D
  br i1 %_74, label %bb28, label %bb35

bb28:                                             ; preds = %bb27
  %_78 = sext i32 %S to i64
  %_79 = icmp ult i64 %_78, 101
  br i1 %_79, label %bb29, label %panic14

bb29:                                             ; preds = %bb28
  %_81 = load i32, ptr %V, align 4
  %_80 = sext i32 %_81 to i64
  %_82 = icmp ult i64 %_80, 101
  br i1 %_82, label %bb30, label %panic15

panic14:                                          ; preds = %bb28
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_78, i64 101, ptr align 8 @alloc_79d2deb563836a39a950ea26a6a913d0) #6
  unreachable

bb30:                                             ; preds = %bb29
  %_238 = icmp eq i64 ptrtoint (ptr @Dist to i64), 0
  %_239 = and i1 %_238, true
  %_240 = xor i1 %_239, true
  br i1 %_240, label %bb57, label %panic16

panic15:                                          ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_80, i64 101, ptr align 8 @alloc_79d2deb563836a39a950ea26a6a913d0) #6
  unreachable

bb57:                                             ; preds = %bb30
  %12 = getelementptr inbounds nuw %Dist, ptr @Dist, i64 %_78
  %13 = getelementptr inbounds nuw i32, ptr %12, i64 %_80
  %_76 = load i32, ptr %13, align 4
  %_84 = sext i32 %S to i64
  %_85 = icmp ult i64 %_84, 101
  br i1 %_85, label %bb31, label %panic17

panic16:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_79d2deb563836a39a950ea26a6a913d0) #6
  unreachable

bb31:                                             ; preds = %bb57
  %_87 = load i32, ptr %W, align 4
  %_86 = sext i32 %_87 to i64
  %_88 = icmp ult i64 %_86, 101
  br i1 %_88, label %bb32, label %panic18

panic17:                                          ; preds = %bb57
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_84, i64 101, ptr align 8 @alloc_b19809ad192be0a94b35a2ef27a85b49) #6
  unreachable

bb32:                                             ; preds = %bb31
  %_245 = icmp eq i64 ptrtoint (ptr @Dist to i64), 0
  %_246 = and i1 %_245, true
  %_247 = xor i1 %_246, true
  br i1 %_247, label %bb58, label %panic19

panic18:                                          ; preds = %bb31
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_86, i64 101, ptr align 8 @alloc_b19809ad192be0a94b35a2ef27a85b49) #6
  unreachable

bb58:                                             ; preds = %bb32
  %14 = getelementptr inbounds nuw %Dist, ptr @Dist, i64 %_84
  %15 = getelementptr inbounds nuw i32, ptr %14, i64 %_86
  %16 = add i32 %_76, 1
  store i32 %16, ptr %15, align 4
  %_89 = load i32, ptr %V, align 4
  %_91 = sext i32 %S to i64
  %_92 = icmp ult i64 %_91, 101
  br i1 %_92, label %bb33, label %panic20

panic19:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b19809ad192be0a94b35a2ef27a85b49) #6
  unreachable

bb33:                                             ; preds = %bb58
  %_94 = load i32, ptr %W, align 4
  %_93 = sext i32 %_94 to i64
  %_95 = icmp ult i64 %_93, 101
  br i1 %_95, label %bb34, label %panic21

panic20:                                          ; preds = %bb58
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_91, i64 101, ptr align 8 @alloc_d3b307f23560661f8e45b0497d5fd9d3) #6
  unreachable

bb34:                                             ; preds = %bb33
  %_252 = icmp eq i64 ptrtoint (ptr @Path to i64), 0
  %_253 = and i1 %_252, true
  %_254 = xor i1 %_253, true
  br i1 %_254, label %bb59, label %panic22

panic21:                                          ; preds = %bb33
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_93, i64 101, ptr align 8 @alloc_d3b307f23560661f8e45b0497d5fd9d3) #6
  unreachable

bb59:                                             ; preds = %bb34
  %17 = getelementptr inbounds nuw %Path, ptr @Path, i64 %_91
  %18 = getelementptr inbounds nuw i32, ptr %17, i64 %_93
  store i32 %_89, ptr %18, align 4
  %_97 = load ptr, ptr %Q, align 8
  %_98 = load i32, ptr %W, align 4
  call void @AddQ(ptr %_97, i32 %_98) #7
  br label %bb35

panic22:                                          ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d3b307f23560661f8e45b0497d5fd9d3) #6
  unreachable

bb3:                                              ; preds = %bb2
  %_15 = load i32, ptr %i, align 4
  %_14 = sext i32 %_15 to i64
  %_16 = icmp ult i64 %_14, 101
  br i1 %_16, label %bb4, label %panic24

panic23:                                          ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_12, i64 101, ptr align 8 @alloc_37c83d763511975033ce8b067b69e834) #6
  unreachable

bb4:                                              ; preds = %bb3
  %_175 = icmp eq i64 ptrtoint (ptr @Path to i64), 0
  %_176 = and i1 %_175, true
  %_177 = xor i1 %_176, true
  br i1 %_177, label %bb48, label %panic25

panic24:                                          ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_14, i64 101, ptr align 8 @alloc_37c83d763511975033ce8b067b69e834) #6
  unreachable

bb48:                                             ; preds = %bb4
  %19 = getelementptr inbounds nuw %Path, ptr @Path, i64 %_12
  %20 = getelementptr inbounds nuw i32, ptr %19, i64 %_14
  store i32 -1, ptr %20, align 4
  %_19 = sext i32 %S to i64
  %_20 = icmp ult i64 %_19, 101
  br i1 %_20, label %bb5, label %panic26

panic25:                                          ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_37c83d763511975033ce8b067b69e834) #6
  unreachable

bb5:                                              ; preds = %bb48
  %_22 = load i32, ptr %i, align 4
  %_21 = sext i32 %_22 to i64
  %_23 = icmp ult i64 %_21, 101
  br i1 %_23, label %bb6, label %panic27

panic26:                                          ; preds = %bb48
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_19, i64 101, ptr align 8 @alloc_25c47c4e1c81df0f97dd1c11d624e605) #6
  unreachable

bb6:                                              ; preds = %bb5
  %_182 = icmp eq i64 ptrtoint (ptr @Path to i64), 0
  %_183 = and i1 %_182, true
  %_184 = xor i1 %_183, true
  br i1 %_184, label %bb49, label %panic28

panic27:                                          ; preds = %bb5
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_21, i64 101, ptr align 8 @alloc_25c47c4e1c81df0f97dd1c11d624e605) #6
  unreachable

bb49:                                             ; preds = %bb6
  %21 = getelementptr inbounds nuw %Path, ptr @Path, i64 %_19
  %22 = getelementptr inbounds nuw i32, ptr %21, i64 %_21
  %_17 = load i32, ptr %22, align 4
  %_25 = sext i32 %S to i64
  %_26 = icmp ult i64 %_25, 101
  br i1 %_26, label %bb7, label %panic29

panic28:                                          ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_25c47c4e1c81df0f97dd1c11d624e605) #6
  unreachable

bb7:                                              ; preds = %bb49
  %_28 = load i32, ptr %i, align 4
  %_27 = sext i32 %_28 to i64
  %_29 = icmp ult i64 %_27, 101
  br i1 %_29, label %bb8, label %panic30

panic29:                                          ; preds = %bb49
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_25, i64 101, ptr align 8 @alloc_09a94ac4f007d12f6f736abde4ab7a7e) #6
  unreachable

bb8:                                              ; preds = %bb7
  %_189 = icmp eq i64 ptrtoint (ptr @Dist to i64), 0
  %_190 = and i1 %_189, true
  %_191 = xor i1 %_190, true
  br i1 %_191, label %bb50, label %panic31

panic30:                                          ; preds = %bb7
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_27, i64 101, ptr align 8 @alloc_09a94ac4f007d12f6f736abde4ab7a7e) #6
  unreachable

bb50:                                             ; preds = %bb8
  %23 = getelementptr inbounds nuw %Dist, ptr @Dist, i64 %_25
  %24 = getelementptr inbounds nuw i32, ptr %23, i64 %_27
  store i32 %_17, ptr %24, align 4
  %25 = load i32, ptr %i, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %i, align 4
  br label %bb1

panic31:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_09a94ac4f007d12f6f736abde4ab7a7e) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @PrintList(ptr %L, i32 %N) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %_5 = load i32, ptr %i, align 4
  %_4 = icmp slt i32 %_5, %N
  br i1 %_4, label %bb2, label %bb5

bb5:                                              ; preds = %bb1
  %_15 = call i32 (ptr, ...) @printf(ptr @alloc_f3588b28b94f0809fcc8d717033d3e48) #7
  ret void

bb2:                                              ; preds = %bb1
  %_14 = load i32, ptr %i, align 4
  %_13 = sext i32 %_14 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h58d502bfc995bc42E"(ptr %L, i64 %_13, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %L, i64 %_13
  %_21 = ptrtoint ptr %_0.i to i64
  %_24 = and i64 %_21, 3
  %_25 = icmp eq i64 %_24, 0
  br i1 %_25, label %bb7, label %panic

bb7:                                              ; preds = %bb2
  %_27 = ptrtoint ptr %_0.i to i64
  %_30 = icmp eq i64 %_27, 0
  %_31 = and i1 %_30, true
  %_32 = xor i1 %_31, true
  br i1 %_32, label %bb8, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_21, ptr align 8 @alloc_df44eab5a1240d8dcca3fc321b6c8992) #6
  unreachable

bb8:                                              ; preds = %bb7
  %_11 = load i32, ptr %_0.i, align 4
  %_6 = call i32 (ptr, ...) @printf(ptr @alloc_b929c71616281bfd1be2bd4038d3ddf1, i32 %_11) #7
  %0 = load i32, ptr %i, align 4
  %1 = add i32 %0, 1
  store i32 %1, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df44eab5a1240d8dcca3fc321b6c8992) #6
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

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare double @pow(double, double) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare double @sqrt(double) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f64(double) #3

; Function Attrs: nounwind nonlazybind
declare i32 @abs(i32) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @scanf(ptr, ...) unnamed_addr #2

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64, i64, ptr align 8) unnamed_addr #5

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
