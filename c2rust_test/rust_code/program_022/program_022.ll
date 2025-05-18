; ModuleID = '42iqg7ur3k6jcctq0rdnkmugj'
source_filename = "42iqg7ur3k6jcctq0rdnkmugj"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Student = global [440220 x i8] zeroinitializer, align 4
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_df5fc3cbad4d193cc4be84b72422bceb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00\08\00\00\00" }>, align 8
@alloc_5a141befa1495734e48be0eb32769ecc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\00\00\00.\00\00\00" }>, align 8
@alloc_92cf776f9c5df48307869921e50cbe6a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\00\0F\00\00\00" }>, align 8
@alloc_b8035594110a98ab1789b77922765f04 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00;\00\00\005\00\00\00" }>, align 8
@alloc_c5a6aab7f7b41ad8d832fc61ac38d1b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\00\0F\00\00\00" }>, align 8
@alloc_ba8cb1015306f58a51b959e067632952 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\00\00\001\00\00\00" }>, align 8
@alloc_befe91106f887a888d99892551a1a0a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\00\0F\00\00\00" }>, align 8
@alloc_a43b4a89d71bd7d50abd9691ddc6c615 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\001\00\00\00" }>, align 8
@alloc_f77e4ca413fd413b8d0dbfaac50e1b0d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00A\00\00\00\0F\00\00\00" }>, align 8
@alloc_f25921d95859b9a7ec6d192dd794bc9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00A\00\00\00,\00\00\00" }>, align 8
@alloc_a3ec9be7e117f4309e0a429974ad2022 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\0F\00\00\00" }>, align 8
@alloc_160e618b9fadf162976c0d8f0f75c0c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00,\00\00\00" }>, align 8

; Function Attrs: nounwind nonlazybind
define i32 @compare3keys(ptr %a, ptr %b) unnamed_addr #0 {
start:
  %k = alloca [4 x i8], align 4
  store i32 0, ptr %k, align 4
  %_101 = ptrtoint ptr %a to i64
  %_104 = and i64 %_101, 3
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb25, label %panic

bb25:                                             ; preds = %start
  %_107 = ptrtoint ptr %a to i64
  %_110 = icmp eq i64 %_107, 0
  %_111 = and i1 %_110, true
  %_112 = xor i1 %_111, true
  br i1 %_112, label %bb26, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_101, ptr align 8 @alloc_df5fc3cbad4d193cc4be84b72422bceb) #2
  unreachable

bb26:                                             ; preds = %bb25
  %0 = getelementptr inbounds i8, ptr %a, i64 28
  %_5 = load i32, ptr %0, align 4
  %_95 = ptrtoint ptr %b to i64
  %_98 = and i64 %_95, 3
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %bb24, label %panic2

panic1:                                           ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df5fc3cbad4d193cc4be84b72422bceb) #2
  unreachable

bb24:                                             ; preds = %bb26
  %_114 = ptrtoint ptr %b to i64
  %_117 = icmp eq i64 %_114, 0
  %_118 = and i1 %_117, true
  %_119 = xor i1 %_118, true
  br i1 %_119, label %bb27, label %panic3

panic2:                                           ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_95, ptr align 8 @alloc_5a141befa1495734e48be0eb32769ecc) #2
  unreachable

bb27:                                             ; preds = %bb24
  %1 = getelementptr inbounds i8, ptr %b, i64 28
  %_7 = load i32, ptr %1, align 4
  %_4 = icmp slt i32 %_5, %_7
  br i1 %_4, label %bb1, label %bb2

panic3:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5a141befa1495734e48be0eb32769ecc) #2
  unreachable

bb2:                                              ; preds = %bb27
  %_89 = ptrtoint ptr %a to i64
  %_92 = and i64 %_89, 3
  %_93 = icmp eq i64 %_92, 0
  br i1 %_93, label %bb23, label %panic4

bb1:                                              ; preds = %bb27
  store i32 1, ptr %k, align 4
  br label %bb13

bb23:                                             ; preds = %bb2
  %_121 = ptrtoint ptr %a to i64
  %_124 = icmp eq i64 %_121, 0
  %_125 = and i1 %_124, true
  %_126 = xor i1 %_125, true
  br i1 %_126, label %bb28, label %panic5

panic4:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_89, ptr align 8 @alloc_92cf776f9c5df48307869921e50cbe6a) #2
  unreachable

bb28:                                             ; preds = %bb23
  %2 = getelementptr inbounds i8, ptr %a, i64 28
  %_10 = load i32, ptr %2, align 4
  %_83 = ptrtoint ptr %b to i64
  %_86 = and i64 %_83, 3
  %_87 = icmp eq i64 %_86, 0
  br i1 %_87, label %bb22, label %panic6

panic5:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_92cf776f9c5df48307869921e50cbe6a) #2
  unreachable

bb22:                                             ; preds = %bb28
  %_128 = ptrtoint ptr %b to i64
  %_131 = icmp eq i64 %_128, 0
  %_132 = and i1 %_131, true
  %_133 = xor i1 %_132, true
  br i1 %_133, label %bb29, label %panic7

panic6:                                           ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_83, ptr align 8 @alloc_b8035594110a98ab1789b77922765f04) #2
  unreachable

bb29:                                             ; preds = %bb22
  %3 = getelementptr inbounds i8, ptr %b, i64 28
  %_12 = load i32, ptr %3, align 4
  %_9 = icmp sgt i32 %_10, %_12
  br i1 %_9, label %bb3, label %bb4

panic7:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b8035594110a98ab1789b77922765f04) #2
  unreachable

bb4:                                              ; preds = %bb29
  %_77 = ptrtoint ptr %a to i64
  %_80 = and i64 %_77, 3
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %bb21, label %panic8

bb3:                                              ; preds = %bb29
  store i32 -1, ptr %k, align 4
  br label %bb13

bb21:                                             ; preds = %bb4
  %_135 = ptrtoint ptr %a to i64
  %_138 = icmp eq i64 %_135, 0
  %_139 = and i1 %_138, true
  %_140 = xor i1 %_139, true
  br i1 %_140, label %bb30, label %panic9

panic8:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_77, ptr align 8 @alloc_c5a6aab7f7b41ad8d832fc61ac38d1b8) #2
  unreachable

bb30:                                             ; preds = %bb21
  %4 = getelementptr inbounds i8, ptr %a, i64 32
  %_15 = load i32, ptr %4, align 4
  %_71 = ptrtoint ptr %b to i64
  %_74 = and i64 %_71, 3
  %_75 = icmp eq i64 %_74, 0
  br i1 %_75, label %bb20, label %panic10

panic9:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c5a6aab7f7b41ad8d832fc61ac38d1b8) #2
  unreachable

bb20:                                             ; preds = %bb30
  %_142 = ptrtoint ptr %b to i64
  %_145 = icmp eq i64 %_142, 0
  %_146 = and i1 %_145, true
  %_147 = xor i1 %_146, true
  br i1 %_147, label %bb31, label %panic11

panic10:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_71, ptr align 8 @alloc_ba8cb1015306f58a51b959e067632952) #2
  unreachable

bb31:                                             ; preds = %bb20
  %5 = getelementptr inbounds i8, ptr %b, i64 32
  %_17 = load i32, ptr %5, align 4
  %_14 = icmp slt i32 %_15, %_17
  br i1 %_14, label %bb5, label %bb6

panic11:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ba8cb1015306f58a51b959e067632952) #2
  unreachable

bb6:                                              ; preds = %bb31
  %_65 = ptrtoint ptr %a to i64
  %_68 = and i64 %_65, 3
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %bb19, label %panic12

bb5:                                              ; preds = %bb31
  store i32 1, ptr %k, align 4
  br label %bb13

bb19:                                             ; preds = %bb6
  %_149 = ptrtoint ptr %a to i64
  %_152 = icmp eq i64 %_149, 0
  %_153 = and i1 %_152, true
  %_154 = xor i1 %_153, true
  br i1 %_154, label %bb32, label %panic13

panic12:                                          ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_65, ptr align 8 @alloc_befe91106f887a888d99892551a1a0a7) #2
  unreachable

bb32:                                             ; preds = %bb19
  %6 = getelementptr inbounds i8, ptr %a, i64 32
  %_20 = load i32, ptr %6, align 4
  %_59 = ptrtoint ptr %b to i64
  %_62 = and i64 %_59, 3
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb18, label %panic14

panic13:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_befe91106f887a888d99892551a1a0a7) #2
  unreachable

bb18:                                             ; preds = %bb32
  %_156 = ptrtoint ptr %b to i64
  %_159 = icmp eq i64 %_156, 0
  %_160 = and i1 %_159, true
  %_161 = xor i1 %_160, true
  br i1 %_161, label %bb33, label %panic15

panic14:                                          ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_59, ptr align 8 @alloc_a43b4a89d71bd7d50abd9691ddc6c615) #2
  unreachable

bb33:                                             ; preds = %bb18
  %7 = getelementptr inbounds i8, ptr %b, i64 32
  %_22 = load i32, ptr %7, align 4
  %_19 = icmp sgt i32 %_20, %_22
  br i1 %_19, label %bb7, label %bb8

panic15:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a43b4a89d71bd7d50abd9691ddc6c615) #2
  unreachable

bb8:                                              ; preds = %bb33
  %_53 = ptrtoint ptr %a to i64
  %_56 = and i64 %_53, 3
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb17, label %panic16

bb7:                                              ; preds = %bb33
  store i32 -1, ptr %k, align 4
  br label %bb13

bb17:                                             ; preds = %bb8
  %_163 = ptrtoint ptr %a to i64
  %_166 = icmp eq i64 %_163, 0
  %_167 = and i1 %_166, true
  %_168 = xor i1 %_167, true
  br i1 %_168, label %bb34, label %panic17

panic16:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_53, ptr align 8 @alloc_f77e4ca413fd413b8d0dbfaac50e1b0d) #2
  unreachable

bb34:                                             ; preds = %bb17
  %_25 = load i32, ptr %a, align 4
  %_47 = ptrtoint ptr %b to i64
  %_50 = and i64 %_47, 3
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %bb16, label %panic18

panic17:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f77e4ca413fd413b8d0dbfaac50e1b0d) #2
  unreachable

bb16:                                             ; preds = %bb34
  %_170 = ptrtoint ptr %b to i64
  %_173 = icmp eq i64 %_170, 0
  %_174 = and i1 %_173, true
  %_175 = xor i1 %_174, true
  br i1 %_175, label %bb35, label %panic19

panic18:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_47, ptr align 8 @alloc_f25921d95859b9a7ec6d192dd794bc9c) #2
  unreachable

bb35:                                             ; preds = %bb16
  %_27 = load i32, ptr %b, align 4
  %_24 = icmp slt i32 %_25, %_27
  br i1 %_24, label %bb9, label %bb10

panic19:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f25921d95859b9a7ec6d192dd794bc9c) #2
  unreachable

bb10:                                             ; preds = %bb35
  %_41 = ptrtoint ptr %a to i64
  %_44 = and i64 %_41, 3
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb15, label %panic20

bb9:                                              ; preds = %bb35
  store i32 -1, ptr %k, align 4
  br label %bb13

bb15:                                             ; preds = %bb10
  %_177 = ptrtoint ptr %a to i64
  %_180 = icmp eq i64 %_177, 0
  %_181 = and i1 %_180, true
  %_182 = xor i1 %_181, true
  br i1 %_182, label %bb36, label %panic21

panic20:                                          ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_41, ptr align 8 @alloc_a3ec9be7e117f4309e0a429974ad2022) #2
  unreachable

bb36:                                             ; preds = %bb15
  %_30 = load i32, ptr %a, align 4
  %_35 = ptrtoint ptr %b to i64
  %_38 = and i64 %_35, 3
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb14, label %panic22

panic21:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a3ec9be7e117f4309e0a429974ad2022) #2
  unreachable

bb14:                                             ; preds = %bb36
  %_184 = ptrtoint ptr %b to i64
  %_187 = icmp eq i64 %_184, 0
  %_188 = and i1 %_187, true
  %_189 = xor i1 %_188, true
  br i1 %_189, label %bb37, label %panic23

panic22:                                          ; preds = %bb36
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_35, ptr align 8 @alloc_160e618b9fadf162976c0d8f0f75c0c3) #2
  unreachable

bb37:                                             ; preds = %bb14
  %_32 = load i32, ptr %b, align 4
  %_29 = icmp sgt i32 %_30, %_32
  br i1 %_29, label %bb11, label %bb12

panic23:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_160e618b9fadf162976c0d8f0f75c0c3) #2
  unreachable

bb12:                                             ; preds = %bb37
  store i32 0, ptr %k, align 4
  br label %bb13

bb11:                                             ; preds = %bb37
  store i32 1, ptr %k, align 4
  br label %bb13

bb13:                                             ; preds = %bb1, %bb3, %bb5, %bb7, %bb9, %bb11, %bb12
  %_0 = load i32, ptr %k, align 4
  ret i32 %_0
}

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #1

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #1

attributes #0 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
