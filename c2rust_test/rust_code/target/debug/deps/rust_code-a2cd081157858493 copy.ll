; ModuleID = '8wxvlwevkphe0ri05dxrs28vj'
source_filename = "8wxvlwevkphe0ri05dxrs28vj"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h78cec5278c94de19E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE" }>, align 8, !dbg !0
@alloc_47a9fcc54a70f4138700e5e5389aa60e = private unnamed_addr constant <{ [93 x i8] }> <{ [93 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow" }>, align 1
@alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"src/main.rs" }>, align 1
@alloc_7d1a1a3ccaf819f2de39f3947c0aa46e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\19\00\00\00\12\00\00\00" }>, align 8
@alloc_93570e0488583f2edd4c602a10a275b2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\19\00\00\00\09\00\00\00" }>, align 8
@alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\1A\00\00\00\09\00\00\00" }>, align 8
@alloc_7531e9f9ea67100bdffc1edd7a36686d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00%\00\00\00\0A\00\00\00" }>, align 8
@alloc_1a038ec713a85eeb377062d9bdf6b9cc = private unnamed_addr constant <{ [18 x i8] }> <{ [18 x i8] c"Sum of array: %d\0A\00" }>, align 1
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h59d13dcc3be5a64bE(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 !dbg !33 {
start:
  %v.dbg.spill = alloca [8 x i8], align 8
  %sigpipe.dbg.spill = alloca [1 x i8], align 1
  %argv.dbg.spill = alloca [8 x i8], align 8
  %argc.dbg.spill = alloca [8 x i8], align 8
  %main.dbg.spill = alloca [8 x i8], align 8
  %_8 = alloca [8 x i8], align 8
  %_5 = alloca [8 x i8], align 8
  store ptr %main, ptr %main.dbg.spill, align 8
  store i64 %argc, ptr %argc.dbg.spill, align 8
  store ptr %argv, ptr %argv.dbg.spill, align 8
  store i8 %sigpipe, ptr %sigpipe.dbg.spill, align 1
  store ptr %main, ptr %_8, align 8, !dbg !54
; call std::rt::lang_start_internal
  %0 = call i64 @_ZN3std2rt19lang_start_internal17h712a1d4742291d0cE(ptr align 1 %_8, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !55
  store i64 %0, ptr %_5, align 8, !dbg !55
  %v = load i64, ptr %_5, align 8, !dbg !56
  store i64 %v, ptr %v.dbg.spill, align 8, !dbg !56
  ret i64 %v, !dbg !58
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE"(ptr align 8 %_1) unnamed_addr #1 !dbg !59 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  %_1.dbg.spill = alloca [8 x i8], align 8
  %self = alloca [1 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %_4 = load ptr, ptr %_1, align 8, !dbg !88
; call std::sys::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E(ptr %_4), !dbg !89
; call <() as std::process::Termination>::report
  %0 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E"(), !dbg !89
  store i8 %0, ptr %self, align 1, !dbg !89
  store ptr %self, ptr %self.dbg.spill, align 8, !dbg !90
  %_6 = load i8, ptr %self, align 1, !dbg !101
  %_0 = zext i8 %_6 to i32, !dbg !101
  ret i32 %_0, !dbg !102
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E(ptr %f) unnamed_addr #2 !dbg !103 {
start:
  %dummy.dbg.spill = alloca [0 x i8], align 1
  %f.dbg.spill = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [0 x i8], align 1
  store ptr %f, ptr %f.dbg.spill, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E(ptr %f), !dbg !126
  call void asm sideeffect "", "~{memory}"(), !dbg !127, !srcloc !128
  ret void, !dbg !129
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17ha3ad5afd057d2087E() unnamed_addr #3 !dbg !130 {
start:
  ret void, !dbg !133
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h78cec5278c94de19E"(ptr %_1) unnamed_addr #1 !dbg !134 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %0 = load ptr, ptr %_1, align 8, !dbg !148
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE(ptr %0), !dbg !148
  ret i32 %_0, !dbg !148
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E(ptr %_1) unnamed_addr #1 !dbg !149 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  call void %_1(), !dbg !155
  ret void, !dbg !155
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !156 {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup, !dbg !162

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !162
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !162
  %4 = load i32, ptr %3, align 8, !dbg !162
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !162
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !162
  resume { ptr, i32 } %6, !dbg !162

cleanup:                                          ; preds = %start
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  store ptr %8, ptr %1, align 8
  %10 = getelementptr inbounds i8, ptr %1, i64 8
  store i32 %9, ptr %10, align 8
  br label %bb3

bb1:                                              ; preds = %start
  ret i32 %_0, !dbg !162
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE"(ptr %this, i64 %count, i64 %size) unnamed_addr #4 !dbg !163 {
start:
  %overflow.dbg.spill = alloca [1 x i8], align 1
  %res.dbg.spill = alloca [8 x i8], align 8
  %overflowed.dbg.spill = alloca [1 x i8], align 1
  %a.dbg.spill2 = alloca [8 x i8], align 8
  %rhs.dbg.spill1 = alloca [8 x i8], align 8
  %self.dbg.spill = alloca [8 x i8], align 8
  %byte_offset.dbg.spill = alloca [8 x i8], align 8
  %b.dbg.spill = alloca [1 x i8], align 1
  %a.dbg.spill = alloca [8 x i8], align 8
  %rhs.dbg.spill = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [8 x i8], align 8
  %count.dbg.spill = alloca [8 x i8], align 8
  %this.dbg.spill = alloca [8 x i8], align 8
  store ptr %this, ptr %this.dbg.spill, align 8
  store i64 %count, ptr %count.dbg.spill, align 8
  store i64 %size, ptr %size.dbg.spill, align 8
  store i64 %size, ptr %rhs.dbg.spill, align 8, !dbg !268
  %0 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %count, i64 %size), !dbg !271
  %_10.0 = extractvalue { i64, i1 } %0, 0, !dbg !271
  %_10.1 = extractvalue { i64, i1 } %0, 1, !dbg !271
  store i64 %_10.0, ptr %a.dbg.spill, align 8, !dbg !272
  %1 = zext i1 %_10.1 to i8, !dbg !274
  store i8 %1, ptr %b.dbg.spill, align 1, !dbg !274
  store i64 %_10.0, ptr %byte_offset.dbg.spill, align 8, !dbg !284
  br i1 %_10.1, label %bb3, label %bb5, !dbg !304

bb5:                                              ; preds = %start
  %self = ptrtoint ptr %this to i64, !dbg !305
  store i64 %self, ptr %self.dbg.spill, align 8, !dbg !305
  store i64 %_10.0, ptr %rhs.dbg.spill1, align 8, !dbg !318
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %_10.0), !dbg !320
  %_20.0 = extractvalue { i64, i1 } %2, 0, !dbg !320
  %_20.1 = extractvalue { i64, i1 } %2, 1, !dbg !320
  store i64 %_20.0, ptr %a.dbg.spill2, align 8, !dbg !321
  %3 = zext i1 %_20.1 to i8, !dbg !323
  store i8 %3, ptr %overflowed.dbg.spill, align 1, !dbg !323
  store i64 %_20.0, ptr %res.dbg.spill, align 8, !dbg !326
  %_17 = icmp slt i64 %_10.0, 0, !dbg !328
  %overflow = xor i1 %_20.1, %_17, !dbg !329
  %4 = zext i1 %overflow to i8, !dbg !329
  store i8 %4, ptr %overflow.dbg.spill, align 1, !dbg !329
  %_4 = xor i1 %overflow, true, !dbg !331
  br i1 %_4, label %bb1, label %bb2, !dbg !186

bb3:                                              ; preds = %start
  br label %bb2, !dbg !186

bb2:                                              ; preds = %bb3, %bb5
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h10b530ef2064232aE(ptr align 1 @alloc_47a9fcc54a70f4138700e5e5389aa60e, i64 93) #12, !dbg !332
  unreachable, !dbg !332

bb1:                                              ; preds = %bb5
  ret void, !dbg !333
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb5fbc8c1962ac4d4E"(ptr align 8 %_1) unnamed_addr #1 !dbg !334 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  ret void, !dbg !342
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E"() unnamed_addr #1 !dbg !343 {
start:
  %self.dbg.spill = alloca [0 x i8], align 1
  %_1.dbg.spill = alloca [0 x i8], align 1
  ret i8 0, !dbg !351
}

; Function Attrs: nounwind nonlazybind uwtable
define dso_local i32 @sum(ptr %arr, i32 %size) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !352 {
start:
  %count.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [4 x i8], align 4
  %arr.dbg.spill = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  %total = alloca [4 x i8], align 4
  store ptr %arr, ptr %arr.dbg.spill, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  store i32 0, ptr %total, align 4, !dbg !369
  store i32 0, ptr %i, align 4, !dbg !370
  br label %bb1, !dbg !371

bb1:                                              ; preds = %bb5, %start
  %_6 = load i32, ptr %i, align 4, !dbg !372
  %_5 = icmp slt i32 %_6, %size, !dbg !372
  br i1 %_5, label %bb2, label %bb6, !dbg !372

bb6:                                              ; preds = %bb1
  %_0 = load i32, ptr %total, align 4, !dbg !373
  ret i32 %_0, !dbg !374

bb2:                                              ; preds = %bb1
  %_10 = load i32, ptr %i, align 4, !dbg !375
  %_9 = sext i32 %_10 to i64, !dbg !375
  store ptr %arr, ptr %self.dbg.spill.i, align 8
  store i64 %_9, ptr %count.dbg.spill.i, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE"(ptr %arr, i64 %_9, i64 4) #13, !dbg !387
  %_0.i = getelementptr inbounds i32, ptr %arr, i64 %_9, !dbg !389
  br label %bb3, !dbg !390

terminate:                                        ; preds = %panic2, %panic1
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
; call core::panicking::panic_cannot_unwind
  call void @_ZN4core9panicking19panic_cannot_unwind17h9e6fc13f1a787f17E() #14, !dbg !391
  unreachable, !dbg !391

bb3:                                              ; preds = %bb2
  %_14 = ptrtoint ptr %_0.i to i64, !dbg !392
  %_17 = and i64 %_14, 3, !dbg !392
  %_18 = icmp eq i64 %_17, 0, !dbg !392
  br i1 %_18, label %bb7, label %panic, !dbg !392

bb7:                                              ; preds = %bb3
  %_7 = load i32, ptr %_0.i, align 4, !dbg !392
  %3 = load i32, ptr %total, align 4, !dbg !393
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_7), !dbg !393
  %_11.0 = extractvalue { i32, i1 } %4, 0, !dbg !393
  %_11.1 = extractvalue { i32, i1 } %4, 1, !dbg !393
  br i1 %_11.1, label %panic1, label %bb4, !dbg !393

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h10d9de3e7496b9abE(i64 4, i64 %_14, ptr align 8 @alloc_7d1a1a3ccaf819f2de39f3947c0aa46e) #12, !dbg !392
  unreachable, !dbg !392

bb4:                                              ; preds = %bb7
  store i32 %_11.0, ptr %total, align 4, !dbg !393
  %5 = load i32, ptr %i, align 4, !dbg !394
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1), !dbg !394
  %_12.0 = extractvalue { i32, i1 } %6, 0, !dbg !394
  %_12.1 = extractvalue { i32, i1 } %6, 1, !dbg !394
  br i1 %_12.1, label %panic2, label %bb5, !dbg !394

panic1:                                           ; preds = %bb7
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8 @alloc_93570e0488583f2edd4c602a10a275b2) #15
          to label %unreachable unwind label %terminate, !dbg !393

unreachable:                                      ; preds = %panic2, %panic1
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_12.0, ptr %i, align 4, !dbg !394
  br label %bb1, !dbg !371

panic2:                                           ; preds = %bb4
; invoke core::panicking::panic_const::panic_const_add_overflow
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8 @alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd) #15
          to label %unreachable unwind label %terminate, !dbg !394
}

; rust_code::main_0
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN9rust_code6main_017h869c82f57983e7b4E() unnamed_addr #0 !dbg !395 {
start:
  %self.dbg.spill.i1 = alloca [16 x i8], align 8
  %rhs.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [4 x i8], align 4
  %size.dbg.spill = alloca [4 x i8], align 4
  %arr = alloca [20 x i8], align 4
  %0 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 0, !dbg !409
  store i32 1, ptr %0, align 4, !dbg !409
  %1 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 1, !dbg !409
  store i32 2, ptr %1, align 4, !dbg !409
  %2 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 2, !dbg !409
  store i32 3, ptr %2, align 4, !dbg !409
  %3 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 3, !dbg !409
  store i32 4, ptr %3, align 4, !dbg !409
  %4 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 4, !dbg !409
  store i32 5, ptr %4, align 4, !dbg !409
  store i64 20, ptr %self.dbg.spill.i, align 8
  store i64 4, ptr %rhs.dbg.spill.i, align 8
  %size = trunc i64 5 to i32, !dbg !434
  store i32 %size, ptr %size.dbg.spill, align 4, !dbg !434
  store ptr %arr, ptr %self.dbg.spill.i1, align 8
  %5 = getelementptr inbounds i8, ptr %self.dbg.spill.i1, i64 8
  store i64 5, ptr %5, align 8
  %result = call i32 @sum(ptr %arr, i32 %size) #13, !dbg !451
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !451
  %_12 = call i32 (ptr, ...) @printf(ptr @alloc_1a038ec713a85eeb377062d9bdf6b9cc, i32 %result) #13, !dbg !453
  ret i32 0, !dbg !454
}

; rust_code::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN9rust_code4main17h6edb572be59cba9eE() unnamed_addr #0 !dbg !455 {
start:
; call rust_code::main_0
  %_2 = call i32 @_ZN9rust_code6main_017h869c82f57983e7b4E(), !dbg !456
; call std::process::exit
  call void @_ZN3std7process4exit17h67e9554d01ef42a5E(i32 %_2) #15, !dbg !457
  unreachable, !dbg !457
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h712a1d4742291d0cE(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hde96baf263fa5ad4E(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h10b530ef2064232aE(ptr align 1, i64) unnamed_addr #8

; core::panicking::panic_cannot_unwind
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9e6fc13f1a787f17E() unnamed_addr #9

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h10d9de3e7496b9abE(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #7

; core::panicking::panic_const::panic_const_add_overflow
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @printf(ptr, ...) unnamed_addr #5

; std::process::exit
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17h67e9554d01ef42a5E(i32) unnamed_addr #10

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #11 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start
  %4 = call i64 @_ZN3std2rt10lang_start17h59d13dcc3be5a64bE(ptr @_ZN9rust_code4main17h6edb572be59cba9eE, i64 %3, ptr %1, i8 0)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nonlazybind "target-cpu"="x86-64" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}
!llvm.dbg.cu = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !2, size: 384, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !14, templateParams: !23, identifier: "6cfa51c220fe7bc5918bbd016a4c2d3f")
!4 = !{!5, !8, !10, !11, !12, !13}
!5 = !DIDerivedType(tag: DW_TAG_member, name: "drop_in_place", scope: !3, file: !2, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const ()", baseType: !7, size: 64, align: 64, dwarfAddressSpace: 0)
!7 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3, file: !2, baseType: !9, size: 64, align: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "__method3", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__method4", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__method5", scope: !3, file: !2, baseType: !6, size: 64, align: 64, offset: 320)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !15, file: !2, size: 64, align: 64, elements: !18, templateParams: !23, identifier: "ea57b0fe9d2c5cd3101eda7131ab95ed")
!15 = !DINamespace(name: "lang_start", scope: !16)
!16 = !DINamespace(name: "rt", scope: !17)
!17 = !DINamespace(name: "std", scope: null)
!18 = !{!19}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !14, file: !2, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !21, size: 64, align: 64, dwarfAddressSpace: 0)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{}
!24 = !{i32 8, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 2, !"RtLibUseGOT", i32 1}
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"rustc version 1.84.1 (e71f9a9a9 2025-01-27)"}
!30 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !31, producer: "clang LLVM (rustc version 1.84.1 (e71f9a9a9 2025-01-27))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !32, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "src/main.rs/@/8wxvlwevkphe0ri05dxrs28vj", directory: "/home/xiaoan/c2rust_project/c2rust_test/rust_code")
!32 = !{!0}
!33 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h59d13dcc3be5a64bE", scope: !16, file: !34, line: 188, type: !35, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !41)
!34 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "1f3acc0374c7f5dba2b7965889da591f")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !20, !37, !38, !40}
!37 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !39, size: 64, align: 64, dwarfAddressSpace: 0)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !40, size: 64, align: 64, dwarfAddressSpace: 0)
!40 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DILocalVariable(name: "main", arg: 1, scope: !33, file: !34, line: 189, type: !20)
!43 = !DILocalVariable(name: "argc", arg: 2, scope: !33, file: !34, line: 190, type: !37)
!44 = !DILocalVariable(name: "argv", arg: 3, scope: !33, file: !34, line: 191, type: !38)
!45 = !DILocalVariable(name: "sigpipe", arg: 4, scope: !33, file: !34, line: 192, type: !40)
!46 = !DILocalVariable(name: "v", scope: !47, file: !34, line: 194, type: !37, align: 8)
!47 = distinct !DILexicalBlock(scope: !33, file: !34, line: 194, column: 5)
!48 = !{!49}
!49 = !DITemplateTypeParameter(name: "T", type: !7)
!50 = !DILocation(line: 189, column: 5, scope: !33)
!51 = !DILocation(line: 190, column: 5, scope: !33)
!52 = !DILocation(line: 191, column: 5, scope: !33)
!53 = !DILocation(line: 192, column: 5, scope: !33)
!54 = !DILocation(line: 195, column: 10, scope: !33)
!55 = !DILocation(line: 194, column: 17, scope: !33)
!56 = !DILocation(line: 194, column: 12, scope: !33)
!57 = !DILocation(line: 194, column: 12, scope: !47)
!58 = !DILocation(line: 201, column: 2, scope: !33)
!59 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE", scope: !15, file: !34, line: 195, type: !60, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !63}
!62 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!64 = !{!65}
!65 = !DILocalVariable(name: "main", scope: !59, file: !34, line: 189, type: !20, align: 8)
!66 = !DILocation(line: 189, column: 5, scope: !59)
!67 = !DILocalVariable(name: "self", arg: 1, scope: !68, file: !69, line: 2052, type: !70)
!68 = distinct !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h82aaedd5067fcb63E", scope: !70, file: !69, line: 2052, type: !82, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !84, retainedNodes: !85)
!69 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/process.rs", directory: "", checksumkind: CSK_MD5, checksum: "7c2edf9c7a2c84e06b13ad428156c063")
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !71, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !72, templateParams: !23, identifier: "80ab6305a1c88be8e359045f6332ace")
!71 = !DINamespace(name: "process", scope: !17)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !70, file: !2, baseType: !74, size: 8, align: 8, flags: DIFlagPrivate)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !75, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !80, templateParams: !23, identifier: "394e97062a6008f53f8d15071509850")
!75 = !DINamespace(name: "process_common", scope: !76)
!76 = !DINamespace(name: "process", scope: !77)
!77 = !DINamespace(name: "unix", scope: !78)
!78 = !DINamespace(name: "pal", scope: !79)
!79 = !DINamespace(name: "sys", scope: !17)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !74, file: !2, baseType: !40, size: 8, align: 8, flags: DIFlagPrivate)
!82 = !DISubroutineType(types: !83)
!83 = !{!62, !70}
!84 = !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h82aaedd5067fcb63E", scope: !70, file: !69, line: 2052, type: !82, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!85 = !{!67}
!86 = !DILocation(line: 2052, column: 19, scope: !68, inlinedAt: !87)
!87 = !DILocation(line: 195, column: 85, scope: !59)
!88 = !DILocation(line: 195, column: 70, scope: !59)
!89 = !DILocation(line: 195, column: 18, scope: !59)
!90 = !DILocation(line: 2053, column: 9, scope: !68, inlinedAt: !87)
!91 = !DILocalVariable(name: "self", arg: 1, scope: !92, file: !93, line: 635, type: !96)
!92 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys3pal4unix7process14process_common8ExitCode6as_i3217hf0a75e7d451f3004E", scope: !74, file: !93, line: 635, type: !94, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !97, retainedNodes: !98)
!93 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/pal/unix/process/process_common.rs", directory: "", checksumkind: CSK_MD5, checksum: "c24616daddebe24e73c8d390f9a2c5b7")
!94 = !DISubroutineType(types: !95)
!95 = !{!62, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::pal::unix::process::process_common::ExitCode", baseType: !74, size: 64, align: 64, dwarfAddressSpace: 0)
!97 = !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys3pal4unix7process14process_common8ExitCode6as_i3217hf0a75e7d451f3004E", scope: !74, file: !93, line: 635, type: !94, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!98 = !{!91}
!99 = !DILocation(line: 635, column: 19, scope: !92, inlinedAt: !100)
!100 = !DILocation(line: 2053, column: 16, scope: !68, inlinedAt: !87)
!101 = !DILocation(line: 636, column: 9, scope: !92, inlinedAt: !100)
!102 = !DILocation(line: 195, column: 93, scope: !59)
!103 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E", scope: !105, file: !104, line: 150, type: !106, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !112, retainedNodes: !108)
!104 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "f08630b35df57d53399ec9f081204be7")
!105 = !DINamespace(name: "backtrace", scope: !79)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !20}
!108 = !{!109, !110}
!109 = !DILocalVariable(name: "f", arg: 1, scope: !103, file: !104, line: 150, type: !20)
!110 = !DILocalVariable(name: "result", scope: !111, file: !104, line: 154, type: !7, align: 1)
!111 = distinct !DILexicalBlock(scope: !103, file: !104, line: 154, column: 5)
!112 = !{!113, !49}
!113 = !DITemplateTypeParameter(name: "F", type: !20)
!114 = !DILocation(line: 154, column: 9, scope: !111)
!115 = !DILocation(line: 150, column: 43, scope: !103)
!116 = !DILocalVariable(name: "dummy", scope: !117, file: !118, line: 388, type: !7, align: 1)
!117 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hb43f54297b2c44b4E", scope: !119, file: !118, line: 388, type: !121, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !123)
!118 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "12235ea9cded7e7cc8ee4855aaaba161")
!119 = !DINamespace(name: "hint", scope: !120)
!120 = !DINamespace(name: "core", scope: null)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !7}
!123 = !{!116}
!124 = !DILocation(line: 388, column: 27, scope: !117, inlinedAt: !125)
!125 = !DILocation(line: 157, column: 5, scope: !111)
!126 = !DILocation(line: 154, column: 18, scope: !103)
!127 = !DILocation(line: 389, column: 5, scope: !117, inlinedAt: !125)
!128 = !{i32 2709649}
!129 = !DILocation(line: 160, column: 2, scope: !103)
!130 = distinct !DISubprogram(name: "cold_path", linkageName: "_ZN4core10intrinsics9cold_path17ha3ad5afd057d2087E", scope: !132, file: !131, line: 1482, type: !21, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23)
!131 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0533986d273c4b4b3beb98ec3cb04cc4")
!132 = !DINamespace(name: "intrinsics", scope: !120)
!133 = !DILocation(line: 1482, column: 28, scope: !130)
!134 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h78cec5278c94de19E", scope: !136, file: !135, line: 250, type: !139, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !145, retainedNodes: !142)
!135 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "27f40bbdeb6cc525c0d0d7cf434d92c4")
!136 = !DINamespace(name: "FnOnce", scope: !137)
!137 = !DINamespace(name: "function", scope: !138)
!138 = !DINamespace(name: "ops", scope: !120)
!139 = !DISubroutineType(types: !140)
!140 = !{!62, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!142 = !{!143, !144}
!143 = !DILocalVariable(arg: 1, scope: !134, file: !135, line: 250, type: !141)
!144 = !DILocalVariable(arg: 2, scope: !134, file: !135, line: 250, type: !7)
!145 = !{!146, !147}
!146 = !DITemplateTypeParameter(name: "Self", type: !14)
!147 = !DITemplateTypeParameter(name: "Args", type: !7)
!148 = !DILocation(line: 250, column: 5, scope: !134)
!149 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E", scope: !136, file: !135, line: 250, type: !106, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !153, retainedNodes: !150)
!150 = !{!151, !152}
!151 = !DILocalVariable(arg: 1, scope: !149, file: !135, line: 250, type: !20)
!152 = !DILocalVariable(arg: 2, scope: !149, file: !135, line: 250, type: !7)
!153 = !{!154, !147}
!154 = !DITemplateTypeParameter(name: "Self", type: !20)
!155 = !DILocation(line: 250, column: 5, scope: !149)
!156 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE", scope: !136, file: !135, line: 250, type: !157, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !145, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!62, !14}
!159 = !{!160, !161}
!160 = !DILocalVariable(arg: 1, scope: !156, file: !135, line: 250, type: !14)
!161 = !DILocalVariable(arg: 2, scope: !156, file: !135, line: 250, type: !7)
!162 = !DILocation(line: 250, column: 5, scope: !156)
!163 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE", scope: !165, file: !164, line: 67, type: !169, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !171)
!164 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs", directory: "", checksumkind: CSK_MD5, checksum: "e87e63637319f8affdf4f29826d01063")
!165 = !DINamespace(name: "offset", scope: !166)
!166 = !DINamespace(name: "{impl#0}", scope: !167)
!167 = !DINamespace(name: "mut_ptr", scope: !168)
!168 = !DINamespace(name: "ptr", scope: !120)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !6, !37, !9}
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: "this", arg: 1, scope: !163, file: !164, line: 67, type: !6)
!173 = !DILocalVariable(name: "count", arg: 2, scope: !163, file: !164, line: 67, type: !37)
!174 = !DILocalVariable(name: "size", arg: 3, scope: !163, file: !164, line: 67, type: !9)
!175 = !DILocation(line: 67, column: 43, scope: !163)
!176 = !DILocalVariable(name: "this", arg: 1, scope: !177, file: !178, line: 424, type: !6)
!177 = distinct !DISubprogram(name: "runtime_offset_nowrap", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap17hbba3e8d41134e86cE", scope: !165, file: !178, line: 424, type: !179, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !182)
!178 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "69d94535e38aaa63c1d2dbc2e63c0958")
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !6, !37, !9}
!181 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!182 = !{!176, !183, !184}
!183 = !DILocalVariable(name: "count", arg: 2, scope: !177, file: !178, line: 424, type: !37)
!184 = !DILocalVariable(name: "size", arg: 3, scope: !177, file: !178, line: 424, type: !9)
!185 = !DILocation(line: 424, column: 40, scope: !177, inlinedAt: !186)
!186 = !DILocation(line: 449, column: 18, scope: !187)
!187 = !DILexicalBlockFile(scope: !163, file: !178, discriminator: 0)
!188 = !DILocalVariable(name: "this", arg: 1, scope: !189, file: !131, line: 3523, type: !6)
!189 = distinct !DISubprogram(name: "runtime", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap7runtime17h1ebe8363438ef5abE", scope: !190, file: !131, line: 3523, type: !179, scopeLine: 3523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !191)
!190 = !DINamespace(name: "runtime_offset_nowrap", scope: !165)
!191 = !{!188, !192, !193, !194, !196}
!192 = !DILocalVariable(name: "count", arg: 2, scope: !189, file: !131, line: 3523, type: !37)
!193 = !DILocalVariable(name: "size", arg: 3, scope: !189, file: !131, line: 3523, type: !9)
!194 = !DILocalVariable(name: "byte_offset", scope: !195, file: !178, line: 433, type: !37, align: 8)
!195 = distinct !DILexicalBlock(scope: !189, file: !178, line: 433, column: 21)
!196 = !DILocalVariable(name: "overflow", scope: !197, file: !178, line: 436, type: !181, align: 1)
!197 = distinct !DILexicalBlock(scope: !195, file: !178, line: 436, column: 21)
!198 = !DILocation(line: 3523, column: 22, scope: !189, inlinedAt: !199)
!199 = !DILocation(line: 3535, column: 9, scope: !200, inlinedAt: !186)
!200 = !DILexicalBlockFile(scope: !177, file: !131, discriminator: 0)
!201 = !DILocalVariable(name: "self", arg: 1, scope: !202, file: !203, line: 166, type: !6)
!202 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h731354200400f582E", scope: !204, file: !203, line: 166, type: !206, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !208)
!203 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "76c406888fd0a7c6e85f5f9e4e25e057")
!204 = !DINamespace(name: "{impl#0}", scope: !205)
!205 = !DINamespace(name: "const_ptr", scope: !168)
!206 = !DISubroutineType(types: !207)
!207 = !{!9, !6}
!208 = !{!201}
!209 = !DILocation(line: 166, column: 17, scope: !202, inlinedAt: !210)
!210 = !DILocation(line: 436, column: 46, scope: !195, inlinedAt: !199)
!211 = !DILocalVariable(name: "self", arg: 1, scope: !212, file: !203, line: 65, type: !6)
!212 = distinct !DISubprogram(name: "cast<(), ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h5273bda629ec09daE", scope: !204, file: !203, line: 65, type: !213, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !216, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{!6, !6}
!215 = !{!211}
!216 = !{!49, !217}
!217 = !DITemplateTypeParameter(name: "U", type: !7)
!218 = !DILocation(line: 65, column: 26, scope: !212, inlinedAt: !219)
!219 = !DILocation(line: 172, column: 38, scope: !202, inlinedAt: !210)
!220 = !DILocation(line: 424, column: 57, scope: !177, inlinedAt: !186)
!221 = !DILocalVariable(name: "self", arg: 1, scope: !222, file: !223, line: 750, type: !37)
!222 = distinct !DISubprogram(name: "checked_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$11checked_mul17h453d4ce5be709d83E", scope: !224, file: !223, line: 750, type: !226, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !243)
!223 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/int_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "904086732587c5ca2a871284c2756455")
!224 = !DINamespace(name: "{impl#5}", scope: !225)
!225 = !DINamespace(name: "num", scope: !120)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !37, !37}
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<isize>", scope: !229, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !230, templateParams: !23, identifier: "862d6c83ccb17c9d16ae424c94d91c98")
!229 = !DINamespace(name: "option", scope: !120)
!230 = !{!231}
!231 = !DICompositeType(tag: DW_TAG_variant_part, scope: !228, file: !2, size: 128, align: 64, elements: !232, templateParams: !23, identifier: "7c9663a722d8612b8fc02409443e094", discriminator: !241)
!232 = !{!233, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !231, file: !2, baseType: !234, size: 128, align: 64, extraData: i128 0)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !228, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !235, identifier: "d3e3c36cb600e7f4ce05c7c97cc6433")
!235 = !{!236}
!236 = !DITemplateTypeParameter(name: "T", type: !37)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !231, file: !2, baseType: !238, size: 128, align: 64, extraData: i128 1)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !228, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !239, templateParams: !235, identifier: "a911748879cdae6e8724476e6f21926f")
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !238, file: !2, baseType: !37, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !228, file: !2, baseType: !242, size: 64, align: 64, flags: DIFlagArtificial)
!242 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!243 = !{!221, !244, !245, !247}
!244 = !DILocalVariable(name: "rhs", arg: 2, scope: !222, file: !223, line: 750, type: !37)
!245 = !DILocalVariable(name: "a", scope: !246, file: !223, line: 751, type: !37, align: 8)
!246 = distinct !DILexicalBlock(scope: !222, file: !223, line: 751, column: 13)
!247 = !DILocalVariable(name: "b", scope: !246, file: !223, line: 751, type: !181, align: 1)
!248 = !DILocation(line: 750, column: 34, scope: !222, inlinedAt: !249)
!249 = !DILocation(line: 433, column: 51, scope: !250, inlinedAt: !199)
!250 = !DILexicalBlockFile(scope: !189, file: !178, discriminator: 0)
!251 = !DILocalVariable(name: "self", arg: 1, scope: !252, file: !223, line: 2516, type: !37)
!252 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$15overflowing_mul17h1e6eeb0ec39e8717E", scope: !224, file: !223, line: 2516, type: !253, scopeLine: 2516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !259)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !37, !37}
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "(isize, bool)", file: !2, size: 128, align: 64, elements: !256, templateParams: !23, identifier: "d955539ca23604af71854ce75d6e7e9")
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !255, file: !2, baseType: !37, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !255, file: !2, baseType: !181, size: 8, align: 8, offset: 64)
!259 = !{!251, !260, !261, !264}
!260 = !DILocalVariable(name: "rhs", arg: 2, scope: !252, file: !223, line: 2516, type: !37)
!261 = !DILocalVariable(name: "a", scope: !262, file: !223, line: 2517, type: !263, align: 8)
!262 = distinct !DILexicalBlock(scope: !252, file: !223, line: 2517, column: 13)
!263 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!264 = !DILocalVariable(name: "b", scope: !262, file: !223, line: 2517, type: !181, align: 1)
!265 = !DILocation(line: 2516, column: 38, scope: !252, inlinedAt: !266)
!266 = !DILocation(line: 751, column: 31, scope: !222, inlinedAt: !249)
!267 = !DILocation(line: 424, column: 71, scope: !177, inlinedAt: !186)
!268 = !DILocation(line: 433, column: 63, scope: !250, inlinedAt: !199)
!269 = !DILocation(line: 750, column: 40, scope: !222, inlinedAt: !249)
!270 = !DILocation(line: 2516, column: 44, scope: !252, inlinedAt: !266)
!271 = !DILocation(line: 2517, column: 26, scope: !252, inlinedAt: !266)
!272 = !DILocation(line: 2517, column: 18, scope: !252, inlinedAt: !266)
!273 = !DILocation(line: 2517, column: 18, scope: !262, inlinedAt: !266)
!274 = !DILocation(line: 2517, column: 21, scope: !252, inlinedAt: !266)
!275 = !DILocation(line: 751, column: 21, scope: !246, inlinedAt: !249)
!276 = !DILocation(line: 2517, column: 21, scope: !262, inlinedAt: !266)
!277 = !DILocalVariable(name: "b", arg: 1, scope: !278, file: !131, line: 1534, type: !181)
!278 = distinct !DISubprogram(name: "unlikely", linkageName: "_ZN4core10intrinsics8unlikely17h848f6bc4defd580fE", scope: !132, file: !131, line: 1534, type: !279, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!181, !181}
!281 = !{!277}
!282 = !DILocation(line: 1534, column: 23, scope: !278, inlinedAt: !283)
!283 = !DILocation(line: 752, column: 16, scope: !246, inlinedAt: !249)
!284 = !DILocation(line: 2518, column: 14, scope: !262, inlinedAt: !266)
!285 = !DILocation(line: 433, column: 30, scope: !195, inlinedAt: !199)
!286 = !DILocation(line: 751, column: 18, scope: !246, inlinedAt: !249)
!287 = !DILocalVariable(name: "rhs", arg: 2, scope: !288, file: !289, line: 2386, type: !37)
!288 = distinct !DISubprogram(name: "overflowing_add_signed", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$22overflowing_add_signed17h1bf17c0185d66f8fE", scope: !290, file: !289, line: 2386, type: !291, scopeLine: 2386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !297)
!289 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "2f29a47467e0cb2f3c82b22ca33b1201")
!290 = !DINamespace(name: "{impl#11}", scope: !225)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !9, !37}
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !294, templateParams: !23, identifier: "27740540e143dfa26ed1fad06735e263")
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !293, file: !2, baseType: !9, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !293, file: !2, baseType: !181, size: 8, align: 8, offset: 64)
!297 = !{!298, !287, !299, !301}
!298 = !DILocalVariable(name: "self", arg: 1, scope: !288, file: !289, line: 2386, type: !9)
!299 = !DILocalVariable(name: "res", scope: !300, file: !289, line: 2387, type: !9, align: 8)
!300 = distinct !DILexicalBlock(scope: !288, file: !289, line: 2387, column: 13)
!301 = !DILocalVariable(name: "overflowed", scope: !300, file: !289, line: 2387, type: !181, align: 1)
!302 = !DILocation(line: 2386, column: 51, scope: !288, inlinedAt: !303)
!303 = !DILocation(line: 436, column: 53, scope: !195, inlinedAt: !199)
!304 = !DILocation(line: 1540, column: 8, scope: !278, inlinedAt: !283)
!305 = !DILocation(line: 172, column: 18, scope: !202, inlinedAt: !210)
!306 = !DILocation(line: 2386, column: 45, scope: !288, inlinedAt: !303)
!307 = !DILocalVariable(name: "self", arg: 1, scope: !308, file: !289, line: 2312, type: !9)
!308 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h18adb5aebf039915E", scope: !290, file: !289, line: 2312, type: !309, scopeLine: 2312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!293, !9, !9}
!311 = !{!307, !312, !313, !315}
!312 = !DILocalVariable(name: "rhs", arg: 2, scope: !308, file: !289, line: 2312, type: !9)
!313 = !DILocalVariable(name: "a", scope: !314, file: !289, line: 2313, type: !242, align: 8)
!314 = distinct !DILexicalBlock(scope: !308, file: !289, line: 2313, column: 13)
!315 = !DILocalVariable(name: "b", scope: !314, file: !289, line: 2313, type: !181, align: 1)
!316 = !DILocation(line: 2312, column: 38, scope: !308, inlinedAt: !317)
!317 = !DILocation(line: 2387, column: 42, scope: !288, inlinedAt: !303)
!318 = !DILocation(line: 2387, column: 58, scope: !288, inlinedAt: !303)
!319 = !DILocation(line: 2312, column: 44, scope: !308, inlinedAt: !317)
!320 = !DILocation(line: 2313, column: 26, scope: !308, inlinedAt: !317)
!321 = !DILocation(line: 2313, column: 18, scope: !308, inlinedAt: !317)
!322 = !DILocation(line: 2313, column: 18, scope: !314, inlinedAt: !317)
!323 = !DILocation(line: 2313, column: 21, scope: !308, inlinedAt: !317)
!324 = !DILocation(line: 2387, column: 23, scope: !300, inlinedAt: !303)
!325 = !DILocation(line: 2313, column: 21, scope: !314, inlinedAt: !317)
!326 = !DILocation(line: 2314, column: 14, scope: !314, inlinedAt: !317)
!327 = !DILocation(line: 2387, column: 18, scope: !300, inlinedAt: !303)
!328 = !DILocation(line: 2388, column: 32, scope: !300, inlinedAt: !303)
!329 = !DILocation(line: 2388, column: 19, scope: !300, inlinedAt: !303)
!330 = !DILocation(line: 436, column: 29, scope: !197, inlinedAt: !199)
!331 = !DILocation(line: 437, column: 21, scope: !197, inlinedAt: !199)
!332 = !DILocation(line: 69, column: 21, scope: !163)
!333 = !DILocation(line: 73, column: 14, scope: !163)
!334 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb5fbc8c1962ac4d4E", scope: !168, file: !335, line: 521, type: !336, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !340, retainedNodes: !338)
!335 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "d34b9fe2226f4aaa9a3f3c0c33b3a61a")
!336 = !DISubroutineType(types: !337)
!337 = !{null, !141}
!338 = !{!339}
!339 = !DILocalVariable(arg: 1, scope: !334, file: !335, line: 521, type: !141)
!340 = !{!341}
!341 = !DITemplateTypeParameter(name: "T", type: !14)
!342 = !DILocation(line: 521, column: 1, scope: !334)
!343 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E", scope: !344, file: !69, line: 2422, type: !345, scopeLine: 2422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !347)
!344 = !DINamespace(name: "{impl#57}", scope: !71)
!345 = !DISubroutineType(types: !346)
!346 = !{!70, !7}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "self", scope: !343, file: !69, line: 2422, type: !7, align: 1)
!349 = !DILocalVariable(arg: 1, scope: !343, file: !69, line: 2422, type: !7)
!350 = !DILocation(line: 2422, column: 15, scope: !343)
!351 = !DILocation(line: 2424, column: 6, scope: !343)
!352 = distinct !DISubprogram(name: "sum", scope: !354, file: !353, line: 20, type: !355, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !358)
!353 = !DIFile(filename: "src/main.rs", directory: "/home/xiaoan/c2rust_project/c2rust_test/rust_code", checksumkind: CSK_MD5, checksum: "cb03f492a9384e3a4d44727fe41b7715")
!354 = !DINamespace(name: "rust_code", scope: null)
!355 = !DISubroutineType(types: !356)
!356 = !{!62, !357, !62}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i32", baseType: !62, size: 64, align: 64, dwarfAddressSpace: 0)
!358 = !{!359, !360, !361, !363}
!359 = !DILocalVariable(name: "arr", arg: 1, scope: !352, file: !353, line: 20, type: !357)
!360 = !DILocalVariable(name: "size", arg: 2, scope: !352, file: !353, line: 20, type: !62)
!361 = !DILocalVariable(name: "total", scope: !362, file: !353, line: 21, type: !62, align: 4)
!362 = distinct !DILexicalBlock(scope: !352, file: !353, line: 21, column: 5)
!363 = !DILocalVariable(name: "i", scope: !364, file: !353, line: 22, type: !62, align: 4)
!364 = distinct !DILexicalBlock(scope: !362, file: !353, line: 22, column: 5)
!365 = !DILocation(line: 20, column: 30, scope: !352)
!366 = !DILocation(line: 20, column: 47, scope: !352)
!367 = !DILocation(line: 21, column: 9, scope: !362)
!368 = !DILocation(line: 22, column: 9, scope: !364)
!369 = !DILocation(line: 21, column: 28, scope: !352)
!370 = !DILocation(line: 22, column: 24, scope: !362)
!371 = !DILocation(line: 24, column: 5, scope: !364)
!372 = !DILocation(line: 24, column: 11, scope: !364)
!373 = !DILocation(line: 29, column: 5, scope: !364)
!374 = !DILocation(line: 30, column: 2, scope: !352)
!375 = !DILocation(line: 25, column: 30, scope: !364)
!376 = !DILocalVariable(name: "self", arg: 1, scope: !377, file: !178, line: 418, type: !357)
!377 = distinct !DISubprogram(name: "offset<i32>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h14676dd92259dc8aE", scope: !166, file: !178, line: 418, type: !378, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !382, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!357, !357, !37}
!380 = !{!376, !381}
!381 = !DILocalVariable(name: "count", arg: 2, scope: !377, file: !178, line: 418, type: !37)
!382 = !{!383}
!383 = !DITemplateTypeParameter(name: "T", type: !62)
!384 = !DILocation(line: 418, column: 32, scope: !377, inlinedAt: !385)
!385 = distinct !DILocation(line: 25, column: 19, scope: !364)
!386 = !DILocation(line: 418, column: 38, scope: !377, inlinedAt: !385)
!387 = !DILocation(line: 76, column: 17, scope: !388, inlinedAt: !385)
!388 = !DILexicalBlockFile(scope: !377, file: !164, discriminator: 0)
!389 = !DILocation(line: 455, column: 18, scope: !377, inlinedAt: !385)
!390 = !DILocation(line: 456, column: 6, scope: !377, inlinedAt: !385)
!391 = !DILocation(line: 20, column: 1, scope: !352)
!392 = !DILocation(line: 25, column: 18, scope: !364)
!393 = !DILocation(line: 25, column: 9, scope: !364)
!394 = !DILocation(line: 26, column: 9, scope: !364)
!395 = distinct !DISubprogram(name: "main_0", linkageName: "_ZN9rust_code6main_017h869c82f57983e7b4E", scope: !354, file: !353, line: 32, type: !396, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{!62}
!398 = !{!399, !404, !406}
!399 = !DILocalVariable(name: "arr", scope: !400, file: !353, line: 33, type: !401, align: 4)
!400 = distinct !DILexicalBlock(scope: !395, file: !353, line: 33, column: 5)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, align: 32, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 5, lowerBound: 0)
!404 = !DILocalVariable(name: "size", scope: !405, file: !353, line: 36, type: !62, align: 4)
!405 = distinct !DILexicalBlock(scope: !400, file: !353, line: 36, column: 5)
!406 = !DILocalVariable(name: "result", scope: !407, file: !353, line: 39, type: !62, align: 4)
!407 = distinct !DILexicalBlock(scope: !405, file: !353, line: 39, column: 5)
!408 = !DILocation(line: 33, column: 9, scope: !400)
!409 = !DILocation(line: 33, column: 31, scope: !395)
!410 = !DILocalVariable(name: "self", arg: 1, scope: !411, file: !289, line: 2052, type: !242)
!411 = distinct !DISubprogram(name: "wrapping_div", linkageName: "_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_div17he2a03d63e0a10b05E", scope: !412, file: !289, line: 2052, type: !413, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !429)
!412 = !DINamespace(name: "{impl#9}", scope: !225)
!413 = !DISubroutineType(types: !414)
!414 = !{!242, !242, !242, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::location::Location", baseType: !416, size: 64, align: 64, dwarfAddressSpace: 0)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !417, file: !2, size: 192, align: 64, flags: DIFlagPublic, elements: !419, templateParams: !23, identifier: "3a540de1ebc701a71136e8335d134525")
!417 = !DINamespace(name: "location", scope: !418)
!418 = !DINamespace(name: "panic", scope: !120)
!419 = !{!420, !426, !428}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !416, file: !2, baseType: !421, size: 128, align: 64, flags: DIFlagPrivate)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !2, size: 128, align: 64, elements: !422, templateParams: !23, identifier: "9277eecd40495f85161460476aacc992")
!422 = !{!423, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !421, file: !2, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64, dwarfAddressSpace: 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !421, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !416, file: !2, baseType: !427, size: 32, align: 32, offset: 128, flags: DIFlagPrivate)
!427 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !416, file: !2, baseType: !427, size: 32, align: 32, offset: 160, flags: DIFlagPrivate)
!429 = !{!410, !430}
!430 = !DILocalVariable(name: "rhs", arg: 2, scope: !411, file: !289, line: 2052, type: !242)
!431 = !DILocation(line: 2052, column: 35, scope: !411, inlinedAt: !432)
!432 = distinct !DILocation(line: 36, column: 27, scope: !400)
!433 = !DILocation(line: 2052, column: 41, scope: !411, inlinedAt: !432)
!434 = !DILocation(line: 36, column: 27, scope: !400)
!435 = !DILocation(line: 36, column: 9, scope: !405)
!436 = !DILocalVariable(name: "self", arg: 1, scope: !437, file: !438, line: 772, type: !443)
!437 = distinct !DISubprogram(name: "as_mut_ptr<i32>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h1ba4df4a2b141421E", scope: !439, file: !438, line: 772, type: !441, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !382, retainedNodes: !448)
!438 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "8e6fc6f00b2c01e293c56205242f9705")
!439 = !DINamespace(name: "{impl#0}", scope: !440)
!440 = !DINamespace(name: "slice", scope: !120)
!441 = !DISubroutineType(types: !442)
!442 = !{!357, !443}
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut [i32]", file: !2, size: 128, align: 64, elements: !444, templateParams: !23, identifier: "e3680fc31c9e27246d8bc16832876128")
!444 = !{!445, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !443, file: !2, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64, dwarfAddressSpace: 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !443, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!448 = !{!436}
!449 = !DILocation(line: 772, column: 29, scope: !437, inlinedAt: !450)
!450 = distinct !DILocation(line: 39, column: 33, scope: !405)
!451 = !DILocation(line: 39, column: 29, scope: !405)
!452 = !DILocation(line: 39, column: 9, scope: !407)
!453 = !DILocation(line: 42, column: 5, scope: !407)
!454 = !DILocation(line: 45, column: 2, scope: !395)
!455 = distinct !DISubprogram(name: "main", linkageName: "_ZN9rust_code4main17h6edb572be59cba9eE", scope: !354, file: !353, line: 47, type: !21, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !30, templateParams: !23)
!456 = !DILocation(line: 49, column: 30, scope: !455)
!457 = !DILocation(line: 49, column: 9, scope: !455)
