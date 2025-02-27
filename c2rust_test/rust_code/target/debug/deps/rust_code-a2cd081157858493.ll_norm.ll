; ModuleID = './rust_code/target/debug/deps/rust_code-a2cd081157858493.ll'
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
  store ptr %main, ptr %_8, align 8, !dbg !50
  %0 = call i64 @_ZN3std2rt19lang_start_internal17h712a1d4742291d0cE(ptr align 1 %_8, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !51
  store i64 %0, ptr %_5, align 8, !dbg !51
  %v = load i64, ptr %_5, align 8, !dbg !52
  store i64 %v, ptr %v.dbg.spill, align 8, !dbg !52
  ret i64 %v, !dbg !53
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE"(ptr align 8 %_1) unnamed_addr #1 !dbg !54 {
start:
  %self.dbg.spill = alloca [8 x i8], align 8
  %_1.dbg.spill = alloca [8 x i8], align 8
  %self = alloca [1 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %_4 = load ptr, ptr %_1, align 8, !dbg !61
  call void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E(ptr %_4), !dbg !62
  %0 = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E"(), !dbg !62
  store i8 %0, ptr %self, align 1, !dbg !62
  store ptr %self, ptr %self.dbg.spill, align 8, !dbg !63
  %_6 = load i8, ptr %self, align 1, !dbg !84
  %_0 = zext i8 %_6 to i32, !dbg !84
  ret i32 %_0, !dbg !94
}

; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E(ptr %f) unnamed_addr #2 !dbg !95 {
start:
  %dummy.dbg.spill = alloca [0 x i8], align 1
  %f.dbg.spill = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [0 x i8], align 1
  store ptr %f, ptr %f.dbg.spill, align 8
  call void @_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E(ptr %f), !dbg !106
  call void asm sideeffect "", "~{memory}"(), !dbg !107, !srcloc !117
  ret void, !dbg !118
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal void @_ZN4core10intrinsics9cold_path17ha3ad5afd057d2087E() unnamed_addr #3 !dbg !119 {
start:
  ret void, !dbg !122
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h78cec5278c94de19E"(ptr %_1) unnamed_addr #1 !dbg !123 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  %0 = load ptr, ptr %_1, align 8, !dbg !137
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE(ptr %0), !dbg !137
  ret i32 %_0, !dbg !137
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E(ptr %_1) unnamed_addr #1 !dbg !138 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
  call void %_1(), !dbg !144
  ret void, !dbg !144
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !145 {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup, !dbg !151

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !151
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !151
  %4 = load i32, ptr %3, align 8, !dbg !151
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !151
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !151
  resume { ptr, i32 } %6, !dbg !151

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
  ret i32 %_0, !dbg !151
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE"(ptr %this, i64 %count, i64 %size) unnamed_addr #4 !dbg !152 {
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
  store i64 %size, ptr %rhs.dbg.spill, align 8, !dbg !164
  %0 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %count, i64 %size), !dbg !189
  %_10.0 = extractvalue { i64, i1 } %0, 0, !dbg !189
  %_10.1 = extractvalue { i64, i1 } %0, 1, !dbg !189
  store i64 %_10.0, ptr %a.dbg.spill, align 8, !dbg !233
  %1 = zext i1 %_10.1 to i8, !dbg !234
  store i8 %1, ptr %b.dbg.spill, align 1, !dbg !234
  store i64 %_10.0, ptr %byte_offset.dbg.spill, align 8, !dbg !235
  br i1 %_10.1, label %bb3, label %bb5, !dbg !236

bb5:                                              ; preds = %start
  %self = ptrtoint ptr %this to i64, !dbg !243
  store i64 %self, ptr %self.dbg.spill, align 8, !dbg !243
  store i64 %_10.0, ptr %rhs.dbg.spill1, align 8, !dbg !253
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %_10.0), !dbg !270
  %_20.0 = extractvalue { i64, i1 } %2, 0, !dbg !270
  %_20.1 = extractvalue { i64, i1 } %2, 1, !dbg !270
  store i64 %_20.0, ptr %a.dbg.spill2, align 8, !dbg !281
  %3 = zext i1 %_20.1 to i8, !dbg !282
  store i8 %3, ptr %overflowed.dbg.spill, align 1, !dbg !282
  store i64 %_20.0, ptr %res.dbg.spill, align 8, !dbg !283
  %_17 = icmp slt i64 %_10.0, 0, !dbg !284
  %overflow = xor i1 %_20.1, %_17, !dbg !285
  %4 = zext i1 %overflow to i8, !dbg !285
  store i8 %4, ptr %overflow.dbg.spill, align 1, !dbg !285
  %_4 = xor i1 %overflow, true, !dbg !286
  br i1 %_4, label %bb1, label %bb2, !dbg !187

bb3:                                              ; preds = %start
  br label %bb2, !dbg !187

bb2:                                              ; preds = %bb3, %bb5
  call void @_ZN4core9panicking14panic_nounwind17h10b530ef2064232aE(ptr align 1 @alloc_47a9fcc54a70f4138700e5e5389aa60e, i64 93) #12, !dbg !287
  unreachable, !dbg !287

bb1:                                              ; preds = %bb5
  ret void, !dbg !288
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb5fbc8c1962ac4d4E"(ptr align 8 %_1) unnamed_addr #1 !dbg !289 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
  ret void, !dbg !297
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E"() unnamed_addr #1 !dbg !298 {
start:
  %self.dbg.spill = alloca [0 x i8], align 1
  %_1.dbg.spill = alloca [0 x i8], align 1
  ret i8 0, !dbg !305
}

; Function Attrs: nounwind nonlazybind uwtable
define dso_local i32 @sum(ptr %arr, i32 %size) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !306 {
start:
  %count.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [4 x i8], align 4
  %arr.dbg.spill = alloca [8 x i8], align 8
  %i = alloca [4 x i8], align 4
  %total = alloca [4 x i8], align 4
  store ptr %arr, ptr %arr.dbg.spill, align 8
  store i32 %size, ptr %size.dbg.spill, align 4
  store i32 0, ptr %total, align 4, !dbg !319
  store i32 0, ptr %i, align 4, !dbg !320
  br label %bb1, !dbg !321

bb1:                                              ; preds = %bb5, %start
  %_6 = load i32, ptr %i, align 4, !dbg !322
  %_5 = icmp slt i32 %_6, %size, !dbg !322
  br i1 %_5, label %bb2, label %bb6, !dbg !322

bb6:                                              ; preds = %bb1
  %_0 = load i32, ptr %total, align 4, !dbg !323
  ret i32 %_0, !dbg !324

bb2:                                              ; preds = %bb1
  %_10 = load i32, ptr %i, align 4, !dbg !325
  %_9 = sext i32 %_10 to i64, !dbg !325
  store ptr %arr, ptr %self.dbg.spill.i, align 8
  store i64 %_9, ptr %count.dbg.spill.i, align 8
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE"(ptr %arr, i64 %_9, i64 4) #13, !dbg !326
  %_0.i = getelementptr inbounds i32, ptr %arr, i64 %_9, !dbg !337
  br label %bb3, !dbg !338

terminate:                                        ; preds = %panic2, %panic1
  %0 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZN4core9panicking19panic_cannot_unwind17h9e6fc13f1a787f17E() #14, !dbg !339
  unreachable, !dbg !339

bb3:                                              ; preds = %bb2
  %_14 = ptrtoint ptr %_0.i to i64, !dbg !340
  %_17 = and i64 %_14, 3, !dbg !340
  %_18 = icmp eq i64 %_17, 0, !dbg !340
  br i1 %_18, label %bb7, label %panic, !dbg !340

bb7:                                              ; preds = %bb3
  %_7 = load i32, ptr %_0.i, align 4, !dbg !340
  %3 = load i32, ptr %total, align 4, !dbg !341
  %4 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %3, i32 %_7), !dbg !341
  %_11.0 = extractvalue { i32, i1 } %4, 0, !dbg !341
  %_11.1 = extractvalue { i32, i1 } %4, 1, !dbg !341
  br i1 %_11.1, label %panic1, label %bb4, !dbg !341

panic:                                            ; preds = %bb3
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h10d9de3e7496b9abE(i64 4, i64 %_14, ptr align 8 @alloc_7d1a1a3ccaf819f2de39f3947c0aa46e) #12, !dbg !340
  unreachable, !dbg !340

bb4:                                              ; preds = %bb7
  store i32 %_11.0, ptr %total, align 4, !dbg !341
  %5 = load i32, ptr %i, align 4, !dbg !342
  %6 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %5, i32 1), !dbg !342
  %_12.0 = extractvalue { i32, i1 } %6, 0, !dbg !342
  %_12.1 = extractvalue { i32, i1 } %6, 1, !dbg !342
  br i1 %_12.1, label %panic2, label %bb5, !dbg !342

panic1:                                           ; preds = %bb7
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8 @alloc_93570e0488583f2edd4c602a10a275b2) #15
          to label %unreachable unwind label %terminate, !dbg !341

unreachable:                                      ; preds = %panic2, %panic1
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %_12.0, ptr %i, align 4, !dbg !342
  br label %bb1, !dbg !321

panic2:                                           ; preds = %bb4
  invoke void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8 @alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd) #15
          to label %unreachable unwind label %terminate, !dbg !342
}

; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN9rust_code6main_017h869c82f57983e7b4E() unnamed_addr #0 !dbg !343 {
start:
  %self.dbg.spill.i1 = alloca [16 x i8], align 8
  %rhs.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [4 x i8], align 4
  %size.dbg.spill = alloca [4 x i8], align 4
  %arr = alloca [20 x i8], align 4
  %0 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 0, !dbg !356
  store i32 1, ptr %0, align 4, !dbg !356
  %1 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 1, !dbg !356
  store i32 2, ptr %1, align 4, !dbg !356
  %2 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 2, !dbg !356
  store i32 3, ptr %2, align 4, !dbg !356
  %3 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 3, !dbg !356
  store i32 4, ptr %3, align 4, !dbg !356
  %4 = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 4, !dbg !356
  store i32 5, ptr %4, align 4, !dbg !356
  store i64 20, ptr %self.dbg.spill.i, align 8
  store i64 4, ptr %rhs.dbg.spill.i, align 8
  %size = trunc i64 5 to i32, !dbg !357
  store i32 %size, ptr %size.dbg.spill, align 4, !dbg !357
  store ptr %arr, ptr %self.dbg.spill.i1, align 8
  %5 = getelementptr inbounds i8, ptr %self.dbg.spill.i1, i64 8
  store i64 5, ptr %5, align 8
  %result = call i32 @sum(ptr %arr, i32 %size) #13, !dbg !358
  store i32 %result, ptr %result.dbg.spill, align 4, !dbg !358
  %_12 = call i32 (ptr, ...) @printf(ptr @alloc_1a038ec713a85eeb377062d9bdf6b9cc, i32 %result) #13, !dbg !359
  ret i32 0, !dbg !360
}

; Function Attrs: nonlazybind uwtable
define internal void @_ZN9rust_code4main17h6edb572be59cba9eE() unnamed_addr #0 !dbg !361 {
start:
  %_2 = call i32 @_ZN9rust_code6main_017h869c82f57983e7b4E(), !dbg !362
  call void @_ZN3std7process4exit17h67e9554d01ef42a5E(i32 %_2) #15, !dbg !363
  unreachable, !dbg !363
}

; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h712a1d4742291d0cE(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hde96baf263fa5ad4E(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking14panic_nounwind17h10b530ef2064232aE(ptr align 1, i64) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking19panic_cannot_unwind17h9e6fc13f1a787f17E() unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17h10d9de3e7496b9abE(i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const24panic_const_add_overflow17h97b97daaa7055ad6E(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @printf(ptr, ...) unnamed_addr #5

; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17h67e9554d01ef42a5E(i32) unnamed_addr #10

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #11 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
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
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !2, size: 384, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !14, templateParams: !23, identifier: "6cfa51c220fe7bc5918bbd016a4c2d3f")
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
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !15, file: !2, size: 64, align: 64, elements: !18, templateParams: !23, identifier: "ea57b0fe9d2c5cd3101eda7131ab95ed")
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
!50 = !DILocation(line: 195, column: 10, scope: !33)
!51 = !DILocation(line: 194, column: 17, scope: !33)
!52 = !DILocation(line: 194, column: 12, scope: !33)
!53 = !DILocation(line: 201, column: 2, scope: !33)
!54 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h64e6d834fe9a4f6cE", scope: !15, file: !34, line: 195, type: !55, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !59)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !58}
!57 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!59 = !{!60}
!60 = !DILocalVariable(name: "main", scope: !54, file: !34, line: 189, type: !20, align: 8)
!61 = !DILocation(line: 195, column: 70, scope: !54)
!62 = !DILocation(line: 195, column: 18, scope: !54)
!63 = !DILocation(line: 2053, column: 9, scope: !64, inlinedAt: !83)
!64 = distinct !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h82aaedd5067fcb63E", scope: !66, file: !65, line: 2052, type: !78, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !80, retainedNodes: !81)
!65 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/process.rs", directory: "", checksumkind: CSK_MD5, checksum: "7c2edf9c7a2c84e06b13ad428156c063")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !67, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !68, templateParams: !23, identifier: "80ab6305a1c88be8e359045f6332ace")
!67 = !DINamespace(name: "process", scope: !17)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !66, file: !2, baseType: !70, size: 8, align: 8, flags: DIFlagPrivate)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !71, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !76, templateParams: !23, identifier: "394e97062a6008f53f8d15071509850")
!71 = !DINamespace(name: "process_common", scope: !72)
!72 = !DINamespace(name: "process", scope: !73)
!73 = !DINamespace(name: "unix", scope: !74)
!74 = !DINamespace(name: "pal", scope: !75)
!75 = !DINamespace(name: "sys", scope: !17)
!76 = !{!77}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !70, file: !2, baseType: !40, size: 8, align: 8, flags: DIFlagPrivate)
!78 = !DISubroutineType(types: !79)
!79 = !{!57, !66}
!80 = !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h82aaedd5067fcb63E", scope: !66, file: !65, line: 2052, type: !78, scopeLine: 2052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!81 = !{!82}
!82 = !DILocalVariable(name: "self", arg: 1, scope: !64, file: !65, line: 2052, type: !66)
!83 = !DILocation(line: 195, column: 85, scope: !54)
!84 = !DILocation(line: 636, column: 9, scope: !85, inlinedAt: !93)
!85 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys3pal4unix7process14process_common8ExitCode6as_i3217hf0a75e7d451f3004E", scope: !70, file: !86, line: 635, type: !87, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !90, retainedNodes: !91)
!86 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/pal/unix/process/process_common.rs", directory: "", checksumkind: CSK_MD5, checksum: "c24616daddebe24e73c8d390f9a2c5b7")
!87 = !DISubroutineType(types: !88)
!88 = !{!57, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::pal::unix::process::process_common::ExitCode", baseType: !70, size: 64, align: 64, dwarfAddressSpace: 0)
!90 = !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys3pal4unix7process14process_common8ExitCode6as_i3217hf0a75e7d451f3004E", scope: !70, file: !86, line: 635, type: !87, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!91 = !{!92}
!92 = !DILocalVariable(name: "self", arg: 1, scope: !85, file: !86, line: 635, type: !89)
!93 = !DILocation(line: 2053, column: 16, scope: !64, inlinedAt: !83)
!94 = !DILocation(line: 195, column: 93, scope: !54)
!95 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h01df402115316fb8E", scope: !97, file: !96, line: 150, type: !98, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !104, retainedNodes: !100)
!96 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "f08630b35df57d53399ec9f081204be7")
!97 = !DINamespace(name: "backtrace", scope: !75)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !20}
!100 = !{!101, !102}
!101 = !DILocalVariable(name: "f", arg: 1, scope: !95, file: !96, line: 150, type: !20)
!102 = !DILocalVariable(name: "result", scope: !103, file: !96, line: 154, type: !7, align: 1)
!103 = distinct !DILexicalBlock(scope: !95, file: !96, line: 154, column: 5)
!104 = !{!105, !49}
!105 = !DITemplateTypeParameter(name: "F", type: !20)
!106 = !DILocation(line: 154, column: 18, scope: !95)
!107 = !DILocation(line: 389, column: 5, scope: !108, inlinedAt: !116)
!108 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17hb43f54297b2c44b4E", scope: !110, file: !109, line: 388, type: !112, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !114)
!109 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "12235ea9cded7e7cc8ee4855aaaba161")
!110 = !DINamespace(name: "hint", scope: !111)
!111 = !DINamespace(name: "core", scope: null)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !7}
!114 = !{!115}
!115 = !DILocalVariable(name: "dummy", scope: !108, file: !109, line: 388, type: !7, align: 1)
!116 = !DILocation(line: 157, column: 5, scope: !103)
!117 = !{i32 2709649}
!118 = !DILocation(line: 160, column: 2, scope: !95)
!119 = distinct !DISubprogram(name: "cold_path", linkageName: "_ZN4core10intrinsics9cold_path17ha3ad5afd057d2087E", scope: !121, file: !120, line: 1482, type: !21, scopeLine: 1482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23)
!120 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "0533986d273c4b4b3beb98ec3cb04cc4")
!121 = !DINamespace(name: "intrinsics", scope: !111)
!122 = !DILocation(line: 1482, column: 28, scope: !119)
!123 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h78cec5278c94de19E", scope: !125, file: !124, line: 250, type: !128, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !134, retainedNodes: !131)
!124 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "27f40bbdeb6cc525c0d0d7cf434d92c4")
!125 = !DINamespace(name: "FnOnce", scope: !126)
!126 = !DINamespace(name: "function", scope: !127)
!127 = !DINamespace(name: "ops", scope: !111)
!128 = !DISubroutineType(types: !129)
!129 = !{!57, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!131 = !{!132, !133}
!132 = !DILocalVariable(arg: 1, scope: !123, file: !124, line: 250, type: !130)
!133 = !DILocalVariable(arg: 2, scope: !123, file: !124, line: 250, type: !7)
!134 = !{!135, !136}
!135 = !DITemplateTypeParameter(name: "Self", type: !14)
!136 = !DITemplateTypeParameter(name: "Args", type: !7)
!137 = !DILocation(line: 250, column: 5, scope: !123)
!138 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17ha7853fdac932a5d0E", scope: !125, file: !124, line: 250, type: !98, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !142, retainedNodes: !139)
!139 = !{!140, !141}
!140 = !DILocalVariable(arg: 1, scope: !138, file: !124, line: 250, type: !20)
!141 = !DILocalVariable(arg: 2, scope: !138, file: !124, line: 250, type: !7)
!142 = !{!143, !136}
!143 = !DITemplateTypeParameter(name: "Self", type: !20)
!144 = !DILocation(line: 250, column: 5, scope: !138)
!145 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hc213c7e68db925aeE", scope: !125, file: !124, line: 250, type: !146, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !134, retainedNodes: !148)
!146 = !DISubroutineType(types: !147)
!147 = !{!57, !14}
!148 = !{!149, !150}
!149 = !DILocalVariable(arg: 1, scope: !145, file: !124, line: 250, type: !14)
!150 = !DILocalVariable(arg: 2, scope: !145, file: !124, line: 250, type: !7)
!151 = !DILocation(line: 250, column: 5, scope: !145)
!152 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17heb780e0915f369ddE", scope: !154, file: !153, line: 67, type: !158, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !160)
!153 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs", directory: "", checksumkind: CSK_MD5, checksum: "e87e63637319f8affdf4f29826d01063")
!154 = !DINamespace(name: "offset", scope: !155)
!155 = !DINamespace(name: "{impl#0}", scope: !156)
!156 = !DINamespace(name: "mut_ptr", scope: !157)
!157 = !DINamespace(name: "ptr", scope: !111)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !6, !37, !9}
!160 = !{!161, !162, !163}
!161 = !DILocalVariable(name: "this", arg: 1, scope: !152, file: !153, line: 67, type: !6)
!162 = !DILocalVariable(name: "count", arg: 2, scope: !152, file: !153, line: 67, type: !37)
!163 = !DILocalVariable(name: "size", arg: 3, scope: !152, file: !153, line: 67, type: !9)
!164 = !DILocation(line: 433, column: 63, scope: !165, inlinedAt: !180)
!165 = !DILexicalBlockFile(scope: !167, file: !166, discriminator: 0)
!166 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "69d94535e38aaa63c1d2dbc2e63c0958")
!167 = distinct !DISubprogram(name: "runtime", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap7runtime17h1ebe8363438ef5abE", scope: !168, file: !120, line: 3523, type: !169, scopeLine: 3523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !172)
!168 = !DINamespace(name: "runtime_offset_nowrap", scope: !154)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !6, !37, !9}
!171 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!172 = !{!173, !174, !175, !176, !178}
!173 = !DILocalVariable(name: "this", arg: 1, scope: !167, file: !120, line: 3523, type: !6)
!174 = !DILocalVariable(name: "count", arg: 2, scope: !167, file: !120, line: 3523, type: !37)
!175 = !DILocalVariable(name: "size", arg: 3, scope: !167, file: !120, line: 3523, type: !9)
!176 = !DILocalVariable(name: "byte_offset", scope: !177, file: !166, line: 433, type: !37, align: 8)
!177 = distinct !DILexicalBlock(scope: !167, file: !166, line: 433, column: 21)
!178 = !DILocalVariable(name: "overflow", scope: !179, file: !166, line: 436, type: !171, align: 1)
!179 = distinct !DILexicalBlock(scope: !177, file: !166, line: 436, column: 21)
!180 = !DILocation(line: 3535, column: 9, scope: !181, inlinedAt: !187)
!181 = !DILexicalBlockFile(scope: !182, file: !120, discriminator: 0)
!182 = distinct !DISubprogram(name: "runtime_offset_nowrap", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap17hbba3e8d41134e86cE", scope: !154, file: !166, line: 424, type: !169, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !183)
!183 = !{!184, !185, !186}
!184 = !DILocalVariable(name: "this", arg: 1, scope: !182, file: !166, line: 424, type: !6)
!185 = !DILocalVariable(name: "count", arg: 2, scope: !182, file: !166, line: 424, type: !37)
!186 = !DILocalVariable(name: "size", arg: 3, scope: !182, file: !166, line: 424, type: !9)
!187 = !DILocation(line: 449, column: 18, scope: !188)
!188 = !DILexicalBlockFile(scope: !152, file: !166, discriminator: 0)
!189 = !DILocation(line: 2517, column: 26, scope: !190, inlinedAt: !207)
!190 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$15overflowing_mul17h1e6eeb0ec39e8717E", scope: !192, file: !191, line: 2516, type: !194, scopeLine: 2516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !200)
!191 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/int_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "904086732587c5ca2a871284c2756455")
!192 = !DINamespace(name: "{impl#5}", scope: !193)
!193 = !DINamespace(name: "num", scope: !111)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !37, !37}
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(isize, bool)", file: !2, size: 128, align: 64, elements: !197, templateParams: !23, identifier: "d955539ca23604af71854ce75d6e7e9")
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !196, file: !2, baseType: !37, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !196, file: !2, baseType: !171, size: 8, align: 8, offset: 64)
!200 = !{!201, !202, !203, !206}
!201 = !DILocalVariable(name: "self", arg: 1, scope: !190, file: !191, line: 2516, type: !37)
!202 = !DILocalVariable(name: "rhs", arg: 2, scope: !190, file: !191, line: 2516, type: !37)
!203 = !DILocalVariable(name: "a", scope: !204, file: !191, line: 2517, type: !205, align: 8)
!204 = distinct !DILexicalBlock(scope: !190, file: !191, line: 2517, column: 13)
!205 = !DIBasicType(name: "i64", size: 64, encoding: DW_ATE_signed)
!206 = !DILocalVariable(name: "b", scope: !204, file: !191, line: 2517, type: !171, align: 1)
!207 = !DILocation(line: 751, column: 31, scope: !208, inlinedAt: !232)
!208 = distinct !DISubprogram(name: "checked_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$11checked_mul17h453d4ce5be709d83E", scope: !192, file: !191, line: 750, type: !209, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !226)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !37, !37}
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<isize>", scope: !212, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !213, templateParams: !23, identifier: "862d6c83ccb17c9d16ae424c94d91c98")
!212 = !DINamespace(name: "option", scope: !111)
!213 = !{!214}
!214 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !211, file: !2, size: 128, align: 64, elements: !215, templateParams: !23, identifier: "7c9663a722d8612b8fc02409443e094", discriminator: !224)
!215 = !{!216, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !214, file: !2, baseType: !217, size: 128, align: 64, extraData: i128 0)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !211, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !218, identifier: "d3e3c36cb600e7f4ce05c7c97cc6433")
!218 = !{!219}
!219 = !DITemplateTypeParameter(name: "T", type: !37)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !214, file: !2, baseType: !221, size: 128, align: 64, extraData: i128 1)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !211, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !222, templateParams: !218, identifier: "a911748879cdae6e8724476e6f21926f")
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !221, file: !2, baseType: !37, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !2, baseType: !225, size: 64, align: 64, flags: DIFlagArtificial)
!225 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!226 = !{!227, !228, !229, !231}
!227 = !DILocalVariable(name: "self", arg: 1, scope: !208, file: !191, line: 750, type: !37)
!228 = !DILocalVariable(name: "rhs", arg: 2, scope: !208, file: !191, line: 750, type: !37)
!229 = !DILocalVariable(name: "a", scope: !230, file: !191, line: 751, type: !37, align: 8)
!230 = distinct !DILexicalBlock(scope: !208, file: !191, line: 751, column: 13)
!231 = !DILocalVariable(name: "b", scope: !230, file: !191, line: 751, type: !171, align: 1)
!232 = !DILocation(line: 433, column: 51, scope: !165, inlinedAt: !180)
!233 = !DILocation(line: 2517, column: 18, scope: !190, inlinedAt: !207)
!234 = !DILocation(line: 2517, column: 21, scope: !190, inlinedAt: !207)
!235 = !DILocation(line: 2518, column: 14, scope: !204, inlinedAt: !207)
!236 = !DILocation(line: 1540, column: 8, scope: !237, inlinedAt: !242)
!237 = distinct !DISubprogram(name: "unlikely", linkageName: "_ZN4core10intrinsics8unlikely17h848f6bc4defd580fE", scope: !121, file: !120, line: 1534, type: !238, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!171, !171}
!240 = !{!241}
!241 = !DILocalVariable(name: "b", arg: 1, scope: !237, file: !120, line: 1534, type: !171)
!242 = !DILocation(line: 752, column: 16, scope: !230, inlinedAt: !232)
!243 = !DILocation(line: 172, column: 18, scope: !244, inlinedAt: !252)
!244 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17h731354200400f582E", scope: !246, file: !245, line: 166, type: !248, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !48, retainedNodes: !250)
!245 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "76c406888fd0a7c6e85f5f9e4e25e057")
!246 = !DINamespace(name: "{impl#0}", scope: !247)
!247 = !DINamespace(name: "const_ptr", scope: !157)
!248 = !DISubroutineType(types: !249)
!249 = !{!9, !6}
!250 = !{!251}
!251 = !DILocalVariable(name: "self", arg: 1, scope: !244, file: !245, line: 166, type: !6)
!252 = !DILocation(line: 436, column: 46, scope: !177, inlinedAt: !180)
!253 = !DILocation(line: 2387, column: 58, scope: !254, inlinedAt: !269)
!254 = distinct !DISubprogram(name: "overflowing_add_signed", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$22overflowing_add_signed17h1bf17c0185d66f8fE", scope: !256, file: !255, line: 2386, type: !257, scopeLine: 2386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !263)
!255 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "2f29a47467e0cb2f3c82b22ca33b1201")
!256 = !DINamespace(name: "{impl#11}", scope: !193)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !9, !37}
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !260, templateParams: !23, identifier: "27740540e143dfa26ed1fad06735e263")
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !259, file: !2, baseType: !9, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !259, file: !2, baseType: !171, size: 8, align: 8, offset: 64)
!263 = !{!264, !265, !266, !268}
!264 = !DILocalVariable(name: "self", arg: 1, scope: !254, file: !255, line: 2386, type: !9)
!265 = !DILocalVariable(name: "rhs", arg: 2, scope: !254, file: !255, line: 2386, type: !37)
!266 = !DILocalVariable(name: "res", scope: !267, file: !255, line: 2387, type: !9, align: 8)
!267 = distinct !DILexicalBlock(scope: !254, file: !255, line: 2387, column: 13)
!268 = !DILocalVariable(name: "overflowed", scope: !267, file: !255, line: 2387, type: !171, align: 1)
!269 = !DILocation(line: 436, column: 53, scope: !177, inlinedAt: !180)
!270 = !DILocation(line: 2313, column: 26, scope: !271, inlinedAt: !280)
!271 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h18adb5aebf039915E", scope: !256, file: !255, line: 2312, type: !272, scopeLine: 2312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !274)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !9, !9}
!274 = !{!275, !276, !277, !279}
!275 = !DILocalVariable(name: "self", arg: 1, scope: !271, file: !255, line: 2312, type: !9)
!276 = !DILocalVariable(name: "rhs", arg: 2, scope: !271, file: !255, line: 2312, type: !9)
!277 = !DILocalVariable(name: "a", scope: !278, file: !255, line: 2313, type: !225, align: 8)
!278 = distinct !DILexicalBlock(scope: !271, file: !255, line: 2313, column: 13)
!279 = !DILocalVariable(name: "b", scope: !278, file: !255, line: 2313, type: !171, align: 1)
!280 = !DILocation(line: 2387, column: 42, scope: !254, inlinedAt: !269)
!281 = !DILocation(line: 2313, column: 18, scope: !271, inlinedAt: !280)
!282 = !DILocation(line: 2313, column: 21, scope: !271, inlinedAt: !280)
!283 = !DILocation(line: 2314, column: 14, scope: !278, inlinedAt: !280)
!284 = !DILocation(line: 2388, column: 32, scope: !267, inlinedAt: !269)
!285 = !DILocation(line: 2388, column: 19, scope: !267, inlinedAt: !269)
!286 = !DILocation(line: 437, column: 21, scope: !179, inlinedAt: !180)
!287 = !DILocation(line: 69, column: 21, scope: !152)
!288 = !DILocation(line: 73, column: 14, scope: !152)
!289 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hb5fbc8c1962ac4d4E", scope: !157, file: !290, line: 521, type: !291, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !295, retainedNodes: !293)
!290 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "d34b9fe2226f4aaa9a3f3c0c33b3a61a")
!291 = !DISubroutineType(types: !292)
!292 = !{null, !130}
!293 = !{!294}
!294 = !DILocalVariable(arg: 1, scope: !289, file: !290, line: 521, type: !130)
!295 = !{!296}
!296 = !DITemplateTypeParameter(name: "T", type: !14)
!297 = !DILocation(line: 521, column: 1, scope: !289)
!298 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hf1e3f78e22b02215E", scope: !299, file: !65, line: 2422, type: !300, scopeLine: 2422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !302)
!299 = !DINamespace(name: "{impl#57}", scope: !67)
!300 = !DISubroutineType(types: !301)
!301 = !{!66, !7}
!302 = !{!303, !304}
!303 = !DILocalVariable(name: "self", scope: !298, file: !65, line: 2422, type: !7, align: 1)
!304 = !DILocalVariable(arg: 1, scope: !298, file: !65, line: 2422, type: !7)
!305 = !DILocation(line: 2424, column: 6, scope: !298)
!306 = distinct !DISubprogram(name: "sum", scope: !308, file: !307, line: 20, type: !309, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !312)
!307 = !DIFile(filename: "src/main.rs", directory: "/home/xiaoan/c2rust_project/c2rust_test/rust_code", checksumkind: CSK_MD5, checksum: "cb03f492a9384e3a4d44727fe41b7715")
!308 = !DINamespace(name: "rust_code", scope: null)
!309 = !DISubroutineType(types: !310)
!310 = !{!57, !311, !57}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i32", baseType: !57, size: 64, align: 64, dwarfAddressSpace: 0)
!312 = !{!313, !314, !315, !317}
!313 = !DILocalVariable(name: "arr", arg: 1, scope: !306, file: !307, line: 20, type: !311)
!314 = !DILocalVariable(name: "size", arg: 2, scope: !306, file: !307, line: 20, type: !57)
!315 = !DILocalVariable(name: "total", scope: !316, file: !307, line: 21, type: !57, align: 4)
!316 = distinct !DILexicalBlock(scope: !306, file: !307, line: 21, column: 5)
!317 = !DILocalVariable(name: "i", scope: !318, file: !307, line: 22, type: !57, align: 4)
!318 = distinct !DILexicalBlock(scope: !316, file: !307, line: 22, column: 5)
!319 = !DILocation(line: 21, column: 28, scope: !306)
!320 = !DILocation(line: 22, column: 24, scope: !316)
!321 = !DILocation(line: 24, column: 5, scope: !318)
!322 = !DILocation(line: 24, column: 11, scope: !318)
!323 = !DILocation(line: 29, column: 5, scope: !318)
!324 = !DILocation(line: 30, column: 2, scope: !306)
!325 = !DILocation(line: 25, column: 30, scope: !318)
!326 = !DILocation(line: 76, column: 17, scope: !327, inlinedAt: !336)
!327 = !DILexicalBlockFile(scope: !328, file: !153, discriminator: 0)
!328 = distinct !DISubprogram(name: "offset<i32>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h14676dd92259dc8aE", scope: !155, file: !166, line: 418, type: !329, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !334, retainedNodes: !331)
!329 = !DISubroutineType(types: !330)
!330 = !{!311, !311, !37}
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "self", arg: 1, scope: !328, file: !166, line: 418, type: !311)
!333 = !DILocalVariable(name: "count", arg: 2, scope: !328, file: !166, line: 418, type: !37)
!334 = !{!335}
!335 = !DITemplateTypeParameter(name: "T", type: !57)
!336 = distinct !DILocation(line: 25, column: 19, scope: !318)
!337 = !DILocation(line: 455, column: 18, scope: !328, inlinedAt: !336)
!338 = !DILocation(line: 456, column: 6, scope: !328, inlinedAt: !336)
!339 = !DILocation(line: 20, column: 1, scope: !306)
!340 = !DILocation(line: 25, column: 18, scope: !318)
!341 = !DILocation(line: 25, column: 9, scope: !318)
!342 = !DILocation(line: 26, column: 9, scope: !318)
!343 = distinct !DISubprogram(name: "main_0", linkageName: "_ZN9rust_code6main_017h869c82f57983e7b4E", scope: !308, file: !307, line: 32, type: !344, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!57}
!346 = !{!347, !352, !354}
!347 = !DILocalVariable(name: "arr", scope: !348, file: !307, line: 33, type: !349, align: 4)
!348 = distinct !DILexicalBlock(scope: !343, file: !307, line: 33, column: 5)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 160, align: 32, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 5, lowerBound: 0)
!352 = !DILocalVariable(name: "size", scope: !353, file: !307, line: 36, type: !57, align: 4)
!353 = distinct !DILexicalBlock(scope: !348, file: !307, line: 36, column: 5)
!354 = !DILocalVariable(name: "result", scope: !355, file: !307, line: 39, type: !57, align: 4)
!355 = distinct !DILexicalBlock(scope: !353, file: !307, line: 39, column: 5)
!356 = !DILocation(line: 33, column: 31, scope: !343)
!357 = !DILocation(line: 36, column: 27, scope: !348)
!358 = !DILocation(line: 39, column: 29, scope: !353)
!359 = !DILocation(line: 42, column: 5, scope: !355)
!360 = !DILocation(line: 45, column: 2, scope: !343)
!361 = distinct !DISubprogram(name: "main", linkageName: "_ZN9rust_code4main17h6edb572be59cba9eE", scope: !308, file: !307, line: 47, type: !21, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !30, templateParams: !23)
!362 = !DILocation(line: 49, column: 30, scope: !361)
!363 = !DILocation(line: 49, column: 9, scope: !361)
