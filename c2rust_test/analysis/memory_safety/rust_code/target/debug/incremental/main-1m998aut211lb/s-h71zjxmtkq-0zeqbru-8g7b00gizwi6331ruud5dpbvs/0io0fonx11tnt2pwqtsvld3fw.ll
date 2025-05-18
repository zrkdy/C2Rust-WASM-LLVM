; ModuleID = '0io0fonx11tnt2pwqtsvld3fw'
source_filename = "0io0fonx11tnt2pwqtsvld3fw"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h72fbbbfefbaf2f1cE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1c2a97650b85d8f7E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1c2a97650b85d8f7E" }>, align 8, !dbg !0
@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_8d726b73ca3f8040f055f37eafa27c18 = private unnamed_addr constant [11 x i8] c"Value: %d\0A\00", align 1
@alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d = private unnamed_addr constant [11 x i8] c"src/main.rs", align 1
@alloc_12ff718ba42a117549892d82aedc2ba3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\11\00\00\00B\00\00\00" }>, align 8
@alloc_d1031da57a0e3a8e3709fdfbf3e49da9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\16\00\00\00\05\00\00\00" }>, align 8
@alloc_c2ad43c5be89bbab55a4f90e62a4ccba = private unnamed_addr constant [22 x i8] c"Value after free: %d\0A\00", align 1
@alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\1A\00\00\00\09\00\00\00" }>, align 8
@alloc_42616f744b0cb85570ab7b345fdf73f3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00$\00\00\00+\00\00\00" }>, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::rt::lang_start
; Function Attrs: nounwind nonlazybind
define hidden i64 @_ZN3std2rt10lang_start17h672d57e740d8f31fE(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 !dbg !33 {
start:
  %sigpipe.dbg.spill = alloca [1 x i8], align 1
  %argv.dbg.spill = alloca [8 x i8], align 8
  %argc.dbg.spill = alloca [8 x i8], align 8
  %main.dbg.spill = alloca [8 x i8], align 8
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %main.dbg.spill, align 8
    #dbg_declare(ptr %main.dbg.spill, !42, !DIExpression(), !48)
  store i64 %argc, ptr %argc.dbg.spill, align 8
    #dbg_declare(ptr %argc.dbg.spill, !43, !DIExpression(), !49)
  store ptr %argv, ptr %argv.dbg.spill, align 8
    #dbg_declare(ptr %argv.dbg.spill, !44, !DIExpression(), !50)
  store i8 %sigpipe, ptr %sigpipe.dbg.spill, align 1
    #dbg_declare(ptr %sigpipe.dbg.spill, !45, !DIExpression(), !51)
  store ptr %main, ptr %_7, align 8, !dbg !52
; call std::rt::lang_start_internal
  %_0 = call i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr align 1 %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe) #9, !dbg !53
  ret i64 %_0, !dbg !54
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nounwind nonlazybind
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1c2a97650b85d8f7E"(ptr align 8 %_1) unnamed_addr #1 !dbg !55 {
start:
  %self.dbg.spill = alloca [1 x i8], align 1
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !61, !DIExpression(DW_OP_deref), !62)
  %_4 = load ptr, ptr %_1, align 8, !dbg !63
; call std::sys::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h91e1b5ffd5c2b732E(ptr %_4) #9, !dbg !64
; call <() as std::process::Termination>::report
  %self = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbaee9c711cd7ae78E"() #9, !dbg !64
  store i8 %self, ptr %self.dbg.spill, align 1, !dbg !64
    #dbg_declare(ptr %self.dbg.spill, !65, !DIExpression(), !83)
  %_0 = zext i8 %self to i32, !dbg !85
  ret i32 %_0, !dbg !93
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nounwind nonlazybind
define internal void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h91e1b5ffd5c2b732E(ptr %f) unnamed_addr #2 !dbg !94 {
start:
  %dummy.dbg.spill = alloca [0 x i8], align 1
  %f.dbg.spill = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %result.dbg.spill, !101, !DIExpression(), !105)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !100, !DIExpression(), !106)
    #dbg_declare(ptr %dummy.dbg.spill, !107, !DIExpression(), !115)
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17hd6f1ed0e56eca52eE(ptr %f) #9, !dbg !117
  call void asm sideeffect "", "~{memory}"(), !dbg !118, !srcloc !119
  ret void, !dbg !120
}

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17hf87a9f3bad773b50E() unnamed_addr #3 !dbg !121 {
start:
  ret void, !dbg !124
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nounwind nonlazybind
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h72fbbbfefbaf2f1cE"(ptr %_1) unnamed_addr #1 !dbg !125 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !134, !DIExpression(), !139)
    #dbg_declare(ptr %_2, !135, !DIExpression(), !139)
  %0 = load ptr, ptr %_1, align 8, !dbg !139
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h798d8fa3d1e3b097E(ptr %0) #9, !dbg !139
  ret i32 %_0, !dbg !139
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind nonlazybind
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h798d8fa3d1e3b097E(ptr %0) unnamed_addr #1 !dbg !140 {
start:
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
    #dbg_declare(ptr %_1, !144, !DIExpression(), !146)
    #dbg_declare(ptr %_2, !145, !DIExpression(), !146)
; call std::rt::lang_start::{{closure}}
  %_0 = call i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1c2a97650b85d8f7E"(ptr align 8 %_1) #9, !dbg !146
  ret i32 %_0, !dbg !146
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @_ZN4core3ops8function6FnOnce9call_once17hd6f1ed0e56eca52eE(ptr %_1) unnamed_addr #1 !dbg !147 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !149, !DIExpression(), !153)
    #dbg_declare(ptr %_2, !150, !DIExpression(), !153)
  call void %_1() #9, !dbg !153
  ret void, !dbg !153
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h0ab4114bbee7119cE"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 !dbg !154 {
start:
  %overflow.dbg.spill = alloca [1 x i8], align 1
  %self.dbg.spill = alloca [8 x i8], align 8
  %byte_offset.dbg.spill = alloca [8 x i8], align 8
  %b.dbg.spill = alloca [1 x i8], align 1
  %rhs.dbg.spill = alloca [8 x i8], align 8
  %size.dbg.spill = alloca [8 x i8], align 8
  %count.dbg.spill = alloca [8 x i8], align 8
  %this.dbg.spill = alloca [8 x i8], align 8
  store ptr %this, ptr %this.dbg.spill, align 8
    #dbg_declare(ptr %this.dbg.spill, !163, !DIExpression(), !166)
    #dbg_declare(ptr %this.dbg.spill, !167, !DIExpression(), !176)
    #dbg_declare(ptr %this.dbg.spill, !179, !DIExpression(), !189)
    #dbg_declare(ptr %this.dbg.spill, !192, !DIExpression(), !200)
    #dbg_declare(ptr %this.dbg.spill, !202, !DIExpression(), !209)
  store i64 %count, ptr %count.dbg.spill, align 8
    #dbg_declare(ptr %count.dbg.spill, !164, !DIExpression(), !166)
    #dbg_declare(ptr %count.dbg.spill, !174, !DIExpression(), !211)
    #dbg_declare(ptr %count.dbg.spill, !183, !DIExpression(), !189)
    #dbg_declare(ptr %count.dbg.spill, !212, !DIExpression(), !239)
    #dbg_declare(ptr %count.dbg.spill, !242, !DIExpression(), !252)
  store i64 %size, ptr %size.dbg.spill, align 8
    #dbg_declare(ptr %size.dbg.spill, !165, !DIExpression(), !166)
    #dbg_declare(ptr %size.dbg.spill, !175, !DIExpression(), !254)
    #dbg_declare(ptr %size.dbg.spill, !184, !DIExpression(), !189)
  store i64 %size, ptr %rhs.dbg.spill, align 8, !dbg !255
    #dbg_declare(ptr %rhs.dbg.spill, !235, !DIExpression(), !256)
    #dbg_declare(ptr %rhs.dbg.spill, !251, !DIExpression(), !257)
  %0 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %count, i64 %size), !dbg !258
  %_10.0 = extractvalue { i64, i1 } %0, 0, !dbg !258
  %_10.1 = extractvalue { i64, i1 } %0, 1, !dbg !258
  %1 = zext i1 %_10.1 to i8, !dbg !259
  store i8 %1, ptr %b.dbg.spill, align 1, !dbg !259
    #dbg_declare(ptr %b.dbg.spill, !238, !DIExpression(), !260)
    #dbg_declare(ptr %b.dbg.spill, !261, !DIExpression(), !266)
  store i64 %_10.0, ptr %byte_offset.dbg.spill, align 8, !dbg !268
    #dbg_declare(ptr %byte_offset.dbg.spill, !185, !DIExpression(), !269)
    #dbg_declare(ptr %byte_offset.dbg.spill, !236, !DIExpression(), !270)
    #dbg_declare(ptr %byte_offset.dbg.spill, !271, !DIExpression(), !283)
  br i1 %_10.1, label %bb3, label %bb5, !dbg !285

bb5:                                              ; preds = %start
  %self = ptrtoint ptr %this to i64, !dbg !286
  store i64 %self, ptr %self.dbg.spill, align 8, !dbg !286
    #dbg_declare(ptr %self.dbg.spill, !282, !DIExpression(), !287)
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %_10.0), !dbg !288
  %_19.0 = extractvalue { i64, i1 } %2, 0, !dbg !288
  %_19.1 = extractvalue { i64, i1 } %2, 1, !dbg !288
  %_17 = icmp slt i64 %_10.0, 0, !dbg !293
  %overflow = xor i1 %_19.1, %_17, !dbg !294
  %3 = zext i1 %overflow to i8, !dbg !294
  store i8 %3, ptr %overflow.dbg.spill, align 1, !dbg !294
    #dbg_declare(ptr %overflow.dbg.spill, !187, !DIExpression(), !295)
  %_4 = xor i1 %overflow, true, !dbg !296
  br i1 %_4, label %bb1, label %bb2, !dbg !177

bb3:                                              ; preds = %start
  br label %bb2, !dbg !177

bb2:                                              ; preds = %bb3, %bb5
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #10, !dbg !297
  unreachable, !dbg !297

bb1:                                              ; preds = %bb5
  ret void, !dbg !298
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc62b344c84ce95b6E"(ptr align 8 %_1) unnamed_addr #1 !dbg !299 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !304, !DIExpression(), !307)
  ret void, !dbg !307
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nounwind nonlazybind
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbaee9c711cd7ae78E"() unnamed_addr #1 !dbg !308 {
start:
  %_1.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %_1.dbg.spill, !313, !DIExpression(), !314)
  ret i8 0, !dbg !315
}

; main::main_0
; Function Attrs: nounwind nonlazybind
define internal i32 @_ZN4main6main_017h04d45d9c33920ff8E() unnamed_addr #0 !dbg !316 {
start:
  %count.dbg.spill.i7 = alloca [8 x i8], align 8
  %self.dbg.spill.i8 = alloca [8 x i8], align 8
  %count.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i6 = alloca [8 x i8], align 8
  %rhs.dbg.spill.i = alloca [8 x i8], align 8
  %self.dbg.spill.i = alloca [8 x i8], align 8
  %negative_index.dbg.spill = alloca [4 x i8], align 4
  %dynamic_arr.dbg.spill = alloca [8 x i8], align 8
  %null_ptr.dbg.spill = alloca [8 x i8], align 8
  %buffer = alloca [20 x i8], align 4
    #dbg_declare(ptr %buffer, !327, !DIExpression(), !334)
  store ptr null, ptr %null_ptr.dbg.spill, align 8, !dbg !335
    #dbg_declare(ptr %null_ptr.dbg.spill, !322, !DIExpression(), !336)
  br i1 false, label %bb14, label %panic, !dbg !337

bb14:                                             ; preds = %start
  %_7 = load i32, ptr null, align 4, !dbg !337
  %_2 = call i32 (ptr, ...) @printf(ptr @alloc_8d726b73ca3f8040f055f37eafa27c18, i32 %_7) #9, !dbg !338
  store i64 4, ptr %self.dbg.spill.i, align 8
    #dbg_declare(ptr %self.dbg.spill.i, !339, !DIExpression(), !346)
  store i64 5, ptr %rhs.dbg.spill.i, align 8
    #dbg_declare(ptr %rhs.dbg.spill.i, !345, !DIExpression(), !348)
  %_9 = call ptr @malloc(i64 20) #9, !dbg !349
  store ptr %_9, ptr %dynamic_arr.dbg.spill, align 8, !dbg !349
    #dbg_declare(ptr %dynamic_arr.dbg.spill, !325, !DIExpression(), !350)
  store ptr %_9, ptr %self.dbg.spill.i8, align 8
    #dbg_declare(ptr %self.dbg.spill.i8, !351, !DIExpression(), !359)
  store i64 0, ptr %count.dbg.spill.i7, align 8
    #dbg_declare(ptr %count.dbg.spill.i7, !356, !DIExpression(), !361)
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h0ab4114bbee7119cE"(ptr %_9, i64 0, i64 4) #9, !dbg !362
  %_40 = ptrtoint ptr %_9 to i64, !dbg !364
  %_43 = and i64 %_40, 3, !dbg !364
  %_44 = icmp eq i64 %_43, 0, !dbg !364
  br i1 %_44, label %bb12, label %panic1, !dbg !364

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_12ff718ba42a117549892d82aedc2ba3) #10, !dbg !337
  unreachable, !dbg !337

bb12:                                             ; preds = %bb14
  %_59 = ptrtoint ptr %_9 to i64, !dbg !364
  %_62 = icmp eq i64 %_59, 0, !dbg !364
  %_63 = and i1 %_62, true, !dbg !364
  %_64 = xor i1 %_63, true, !dbg !364
  br i1 %_64, label %bb15, label %panic2, !dbg !364

panic1:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_40, ptr align 8 @alloc_d1031da57a0e3a8e3709fdfbf3e49da9) #10, !dbg !364
  unreachable, !dbg !364

bb15:                                             ; preds = %bb12
  store i32 10, ptr %_9, align 4, !dbg !364
  call void @free(ptr %_9) #9, !dbg !365
  store ptr %_9, ptr %self.dbg.spill.i6, align 8
    #dbg_declare(ptr %self.dbg.spill.i6, !351, !DIExpression(), !366)
  store i64 0, ptr %count.dbg.spill.i, align 8
    #dbg_declare(ptr %count.dbg.spill.i, !356, !DIExpression(), !368)
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h0ab4114bbee7119cE"(ptr %_9, i64 0, i64 4) #9, !dbg !369
  %_34 = ptrtoint ptr %_9 to i64, !dbg !370
  %_37 = and i64 %_34, 3, !dbg !370
  %_38 = icmp eq i64 %_37, 0, !dbg !370
  br i1 %_38, label %bb11, label %panic3, !dbg !370

panic2:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d1031da57a0e3a8e3709fdfbf3e49da9) #10, !dbg !364
  unreachable, !dbg !364

bb11:                                             ; preds = %bb15
  %_66 = ptrtoint ptr %_9 to i64, !dbg !370
  %_69 = icmp eq i64 %_66, 0, !dbg !370
  %_70 = and i1 %_69, true, !dbg !370
  %_71 = xor i1 %_70, true, !dbg !370
  br i1 %_71, label %bb16, label %panic4, !dbg !370

panic3:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_34, ptr align 8 @alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd) #10, !dbg !370
  unreachable, !dbg !370

bb16:                                             ; preds = %bb11
  %_23 = load i32, ptr %_9, align 4, !dbg !370
  %_18 = call i32 (ptr, ...) @printf(ptr @alloc_c2ad43c5be89bbab55a4f90e62a4ccba, i32 %_23) #9, !dbg !371
  call void @free(ptr %_9) #9, !dbg !372
  %0 = getelementptr inbounds nuw i32, ptr %buffer, i64 0, !dbg !373
  store i32 1, ptr %0, align 4, !dbg !373
  %1 = getelementptr inbounds nuw i32, ptr %buffer, i64 1, !dbg !373
  store i32 2, ptr %1, align 4, !dbg !373
  %2 = getelementptr inbounds nuw i32, ptr %buffer, i64 2, !dbg !373
  store i32 3, ptr %2, align 4, !dbg !373
  %3 = getelementptr inbounds nuw i32, ptr %buffer, i64 3, !dbg !373
  store i32 4, ptr %3, align 4, !dbg !373
  %4 = getelementptr inbounds nuw i32, ptr %buffer, i64 4, !dbg !373
  store i32 5, ptr %4, align 4, !dbg !373
  br i1 false, label %bb10, label %panic5, !dbg !374

panic4:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f46e8426e4fb6b3ea0ab9ebe7f6563fd) #10, !dbg !370
  unreachable, !dbg !370

bb10:                                             ; preds = %bb16
  %5 = getelementptr inbounds nuw i32, ptr %buffer, i64 -1, !dbg !374
  %negative_index = load i32, ptr %5, align 4, !dbg !374
  store i32 %negative_index, ptr %negative_index.dbg.spill, align 4, !dbg !374
    #dbg_declare(ptr %negative_index.dbg.spill, !332, !DIExpression(), !375)
  ret i32 0, !dbg !376

panic5:                                           ; preds = %bb16
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 -1, i64 5, ptr align 8 @alloc_42616f744b0cb85570ab7b345fdf73f3) #10, !dbg !374
  unreachable, !dbg !374
}

; main::main
; Function Attrs: nounwind nonlazybind
define internal void @_ZN4main4main17h181ef59c5c917418E() unnamed_addr #0 !dbg !377 {
start:
; call main::main_0
  %_2 = call i32 @_ZN4main6main_017h04d45d9c33920ff8E() #9, !dbg !378
; call std::process::exit
  call void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32 %_2) #10, !dbg !379
  unreachable, !dbg !379
}

; std::rt::lang_start_internal
; Function Attrs: nounwind nonlazybind
declare i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #0

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #0

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #0

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64, i64, ptr align 8) unnamed_addr #6

; std::process::exit
; Function Attrs: noreturn nounwind nonlazybind
declare void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32) unnamed_addr #7

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #8 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start
  %4 = call i64 @_ZN3std2rt10lang_start17h672d57e740d8f31fE(ptr @_ZN4main4main17h181ef59c5c917418E, i64 %3, ptr %1, i8 0)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

attributes #0 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nonlazybind "target-cpu"="x86-64" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!24, !25, !26, !27, !28}
!llvm.ident = !{!29}
!llvm.dbg.cu = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable}", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "<std::rt::lang_start::{closure_env#0}<()> as core::ops::function::Fn<()>>::{vtable_type}", file: !2, size: 384, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !14, templateParams: !23, identifier: "35795ef257ef2c7843c5d9d8415dc9f")
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
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<()>", scope: !15, file: !2, size: 64, align: 64, elements: !18, templateParams: !23, identifier: "c60df9558d41d9babb925d2cce1f7793")
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
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
!30 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !31, producer: "clang LLVM (rustc version 1.88.0-nightly (0b45675cf 2025-03-31))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !32, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "src/main.rs/@/0io0fonx11tnt2pwqtsvld3fw", directory: "/home/xiaoan/c2rust_project/c2rust_test/analysis/memory_safety/rust_code")
!32 = !{!0}
!33 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h672d57e740d8f31fE", scope: !16, file: !34, line: 192, type: !35, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !46, retainedNodes: !41)
!34 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "5ed61ab28987f8860d5842313c6741b3")
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !20, !37, !38, !40}
!37 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !39, size: 64, align: 64, dwarfAddressSpace: 0)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !40, size: 64, align: 64, dwarfAddressSpace: 0)
!40 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(name: "main", arg: 1, scope: !33, file: !34, line: 193, type: !20)
!43 = !DILocalVariable(name: "argc", arg: 2, scope: !33, file: !34, line: 194, type: !37)
!44 = !DILocalVariable(name: "argv", arg: 3, scope: !33, file: !34, line: 195, type: !38)
!45 = !DILocalVariable(name: "sigpipe", arg: 4, scope: !33, file: !34, line: 196, type: !40)
!46 = !{!47}
!47 = !DITemplateTypeParameter(name: "T", type: !7)
!48 = !DILocation(line: 193, column: 5, scope: !33)
!49 = !DILocation(line: 194, column: 5, scope: !33)
!50 = !DILocation(line: 195, column: 5, scope: !33)
!51 = !DILocation(line: 196, column: 5, scope: !33)
!52 = !DILocation(line: 199, column: 10, scope: !33)
!53 = !DILocation(line: 198, column: 5, scope: !33)
!54 = !DILocation(line: 204, column: 2, scope: !33)
!55 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h1c2a97650b85d8f7E", scope: !15, file: !34, line: 199, type: !56, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !46, retainedNodes: !60)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59}
!58 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!60 = !{!61}
!61 = !DILocalVariable(name: "main", scope: !55, file: !34, line: 193, type: !20, align: 64)
!62 = !DILocation(line: 193, column: 5, scope: !55)
!63 = !DILocation(line: 199, column: 70, scope: !55)
!64 = !DILocation(line: 199, column: 18, scope: !55)
!65 = !DILocalVariable(name: "self", arg: 1, scope: !66, file: !67, line: 2076, type: !68)
!66 = distinct !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h5d9260b5a65502e7E", scope: !68, file: !67, line: 2076, type: !79, scopeLine: 2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !81, retainedNodes: !82)
!67 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/process.rs", directory: "", checksumkind: CSK_MD5, checksum: "7a9a43ad6df231bde6d3cbe2be38a178")
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !69, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !70, templateParams: !23, identifier: "b5eb3adf9b99c8716bd1b42508344848")
!69 = !DINamespace(name: "process", scope: !17)
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !68, file: !2, baseType: !72, size: 8, align: 8, flags: DIFlagPrivate)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !73, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !77, templateParams: !23, identifier: "32bd0fdc51c6607a57e19ca8c66d52af")
!73 = !DINamespace(name: "common", scope: !74)
!74 = !DINamespace(name: "unix", scope: !75)
!75 = !DINamespace(name: "process", scope: !76)
!76 = !DINamespace(name: "sys", scope: !17)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !72, file: !2, baseType: !40, size: 8, align: 8, flags: DIFlagPrivate)
!79 = !DISubroutineType(types: !80)
!80 = !{!58, !68}
!81 = !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h5d9260b5a65502e7E", scope: !68, file: !67, line: 2076, type: !79, scopeLine: 2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!82 = !{!65}
!83 = !DILocation(line: 2076, column: 19, scope: !66, inlinedAt: !84)
!84 = !DILocation(line: 199, column: 85, scope: !55)
!85 = !DILocation(line: 637, column: 9, scope: !86, inlinedAt: !92)
!86 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys7process4unix6common8ExitCode6as_i3217h4fa3837ee79d766bE", scope: !72, file: !87, line: 636, type: !88, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, declaration: !91)
!87 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/process/unix/common.rs", directory: "", checksumkind: CSK_MD5, checksum: "ed7cfe922d1d76836f0319ed27177b75")
!88 = !DISubroutineType(types: !89)
!89 = !{!58, !90}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::process::unix::common::ExitCode", baseType: !72, size: 64, align: 64, dwarfAddressSpace: 0)
!91 = !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys7process4unix6common8ExitCode6as_i3217h4fa3837ee79d766bE", scope: !72, file: !87, line: 636, type: !88, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!92 = !DILocation(line: 2077, column: 16, scope: !66, inlinedAt: !84)
!93 = !DILocation(line: 199, column: 93, scope: !55)
!94 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h91e1b5ffd5c2b732E", scope: !96, file: !95, line: 148, type: !97, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !103, retainedNodes: !99)
!95 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "9e30c70624c3cf40238860e740bd696f")
!96 = !DINamespace(name: "backtrace", scope: !76)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !20}
!99 = !{!100, !101}
!100 = !DILocalVariable(name: "f", arg: 1, scope: !94, file: !95, line: 148, type: !20)
!101 = !DILocalVariable(name: "result", scope: !102, file: !95, line: 152, type: !7, align: 8)
!102 = distinct !DILexicalBlock(scope: !94, file: !95, line: 152, column: 5)
!103 = !{!104, !47}
!104 = !DITemplateTypeParameter(name: "F", type: !20)
!105 = !DILocation(line: 152, column: 9, scope: !102)
!106 = !DILocation(line: 148, column: 43, scope: !94)
!107 = !DILocalVariable(name: "dummy", scope: !108, file: !109, line: 476, type: !7, align: 8)
!108 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17he1097d9861376da9E", scope: !110, file: !109, line: 476, type: !112, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !46, retainedNodes: !114)
!109 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "53e417654697d2a6fdb3b165cec3a4bf")
!110 = !DINamespace(name: "hint", scope: !111)
!111 = !DINamespace(name: "core", scope: null)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !7}
!114 = !{!107}
!115 = !DILocation(line: 476, column: 27, scope: !108, inlinedAt: !116)
!116 = !DILocation(line: 155, column: 5, scope: !102)
!117 = !DILocation(line: 152, column: 18, scope: !94)
!118 = !DILocation(line: 477, column: 5, scope: !108, inlinedAt: !116)
!119 = !{i64 12283859872490488}
!120 = !DILocation(line: 158, column: 2, scope: !94)
!121 = distinct !DISubprogram(name: "cold_path", linkageName: "_ZN4core10intrinsics9cold_path17hf87a9f3bad773b50E", scope: !123, file: !122, line: 1273, type: !21, scopeLine: 1273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23)
!122 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/intrinsics/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "25aa68e055424d5f1bc47c716b64978c")
!123 = !DINamespace(name: "intrinsics", scope: !111)
!124 = !DILocation(line: 1273, column: 28, scope: !121)
!125 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h72fbbbfefbaf2f1cE", scope: !127, file: !126, line: 250, type: !130, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !136, retainedNodes: !133)
!126 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "27f40bbdeb6cc525c0d0d7cf434d92c4")
!127 = !DINamespace(name: "FnOnce", scope: !128)
!128 = !DINamespace(name: "function", scope: !129)
!129 = !DINamespace(name: "ops", scope: !111)
!130 = !DISubroutineType(types: !131)
!131 = !{!58, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!133 = !{!134, !135}
!134 = !DILocalVariable(arg: 1, scope: !125, file: !126, line: 250, type: !132)
!135 = !DILocalVariable(arg: 2, scope: !125, file: !126, line: 250, type: !7)
!136 = !{!137, !138}
!137 = !DITemplateTypeParameter(name: "Self", type: !14)
!138 = !DITemplateTypeParameter(name: "Args", type: !7)
!139 = !DILocation(line: 250, column: 5, scope: !125)
!140 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h798d8fa3d1e3b097E", scope: !127, file: !126, line: 250, type: !141, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !136, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!58, !14}
!143 = !{!144, !145}
!144 = !DILocalVariable(arg: 1, scope: !140, file: !126, line: 250, type: !14)
!145 = !DILocalVariable(arg: 2, scope: !140, file: !126, line: 250, type: !7)
!146 = !DILocation(line: 250, column: 5, scope: !140)
!147 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hd6f1ed0e56eca52eE", scope: !127, file: !126, line: 250, type: !97, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !151, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(arg: 1, scope: !147, file: !126, line: 250, type: !20)
!150 = !DILocalVariable(arg: 2, scope: !147, file: !126, line: 250, type: !7)
!151 = !{!152, !138}
!152 = !DITemplateTypeParameter(name: "Self", type: !20)
!153 = !DILocation(line: 250, column: 5, scope: !147)
!154 = distinct !DISubprogram(name: "precondition_check", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17h0ab4114bbee7119cE", scope: !156, file: !155, line: 66, type: !160, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !162)
!155 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs", directory: "", checksumkind: CSK_MD5, checksum: "6ffce6e5ae865cd4e1a529f06e3329d2")
!156 = !DINamespace(name: "offset", scope: !157)
!157 = !DINamespace(name: "{impl#0}", scope: !158)
!158 = !DINamespace(name: "mut_ptr", scope: !159)
!159 = !DINamespace(name: "ptr", scope: !111)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !6, !37, !9}
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "this", arg: 1, scope: !154, file: !155, line: 66, type: !6)
!164 = !DILocalVariable(name: "count", arg: 2, scope: !154, file: !155, line: 66, type: !37)
!165 = !DILocalVariable(name: "size", arg: 3, scope: !154, file: !155, line: 66, type: !9)
!166 = !DILocation(line: 66, column: 43, scope: !154)
!167 = !DILocalVariable(name: "this", arg: 1, scope: !168, file: !169, line: 422, type: !6)
!168 = distinct !DISubprogram(name: "runtime_offset_nowrap", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap17ha649564a2e23ebfbE", scope: !156, file: !169, line: 422, type: !170, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !173)
!169 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mut_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "4920d505974c4fe831ee4cf2d06228b2")
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !6, !37, !9}
!172 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!173 = !{!167, !174, !175}
!174 = !DILocalVariable(name: "count", arg: 2, scope: !168, file: !169, line: 422, type: !37)
!175 = !DILocalVariable(name: "size", arg: 3, scope: !168, file: !169, line: 422, type: !9)
!176 = !DILocation(line: 422, column: 40, scope: !168, inlinedAt: !177)
!177 = !DILocation(line: 447, column: 18, scope: !178)
!178 = !DILexicalBlockFile(scope: !154, file: !169, discriminator: 0)
!179 = !DILocalVariable(name: "this", arg: 1, scope: !180, file: !122, line: 3229, type: !6)
!180 = distinct !DISubprogram(name: "runtime", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset21runtime_offset_nowrap7runtime17h991118cfc9b08a67E", scope: !181, file: !122, line: 3229, type: !170, scopeLine: 3229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !182)
!181 = !DINamespace(name: "runtime_offset_nowrap", scope: !156)
!182 = !{!179, !183, !184, !185, !187}
!183 = !DILocalVariable(name: "count", arg: 2, scope: !180, file: !122, line: 3229, type: !37)
!184 = !DILocalVariable(name: "size", arg: 3, scope: !180, file: !122, line: 3229, type: !9)
!185 = !DILocalVariable(name: "byte_offset", scope: !186, file: !169, line: 431, type: !37, align: 64)
!186 = distinct !DILexicalBlock(scope: !180, file: !169, line: 431, column: 21)
!187 = !DILocalVariable(name: "overflow", scope: !188, file: !169, line: 434, type: !172, align: 8)
!188 = distinct !DILexicalBlock(scope: !186, file: !169, line: 434, column: 21)
!189 = !DILocation(line: 3229, column: 40, scope: !180, inlinedAt: !190)
!190 = !DILocation(line: 3241, column: 9, scope: !191, inlinedAt: !177)
!191 = !DILexicalBlockFile(scope: !168, file: !122, discriminator: 0)
!192 = !DILocalVariable(name: "self", arg: 1, scope: !193, file: !194, line: 165, type: !6)
!193 = distinct !DISubprogram(name: "addr<()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4addr17hea4b2b50fd446882E", scope: !195, file: !194, line: 165, type: !197, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !46, retainedNodes: !199)
!194 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs", directory: "", checksumkind: CSK_MD5, checksum: "a57316bc087b24723fd399841bfde681")
!195 = !DINamespace(name: "{impl#0}", scope: !196)
!196 = !DINamespace(name: "const_ptr", scope: !159)
!197 = !DISubroutineType(types: !198)
!198 = !{!9, !6}
!199 = !{!192}
!200 = !DILocation(line: 165, column: 17, scope: !193, inlinedAt: !201)
!201 = !DILocation(line: 434, column: 46, scope: !186, inlinedAt: !190)
!202 = !DILocalVariable(name: "self", arg: 1, scope: !203, file: !194, line: 65, type: !6)
!203 = distinct !DISubprogram(name: "cast<(), ()>", linkageName: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h2c73ceadfc85f5b7E", scope: !195, file: !194, line: 65, type: !204, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !207, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!6, !6}
!206 = !{!202}
!207 = !{!47, !208}
!208 = !DITemplateTypeParameter(name: "U", type: !7)
!209 = !DILocation(line: 65, column: 26, scope: !203, inlinedAt: !210)
!210 = !DILocation(line: 171, column: 38, scope: !193, inlinedAt: !201)
!211 = !DILocation(line: 422, column: 57, scope: !168, inlinedAt: !177)
!212 = !DILocalVariable(name: "self", arg: 1, scope: !213, file: !214, line: 796, type: !37)
!213 = distinct !DISubprogram(name: "checked_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$11checked_mul17h5cdad4e28c4964f6E", scope: !215, file: !214, line: 796, type: !217, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !234)
!214 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/int_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "0045c859d2270531594a294211f5792d")
!215 = !DINamespace(name: "{impl#5}", scope: !216)
!216 = !DINamespace(name: "num", scope: !111)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !37, !37}
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<isize>", scope: !220, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !221, templateParams: !23, identifier: "75937146920a0275897bd9869e52380c")
!220 = !DINamespace(name: "option", scope: !111)
!221 = !{!222}
!222 = !DICompositeType(tag: DW_TAG_variant_part, scope: !219, file: !2, size: 128, align: 64, elements: !223, templateParams: !23, identifier: "3b606da708d969b1db9b6c55dc2de1e2", discriminator: !232)
!223 = !{!224, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !222, file: !2, baseType: !225, size: 128, align: 64, extraData: i64 0)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !23, templateParams: !226, identifier: "13827371f1998306c9b2131a8e7714c5")
!226 = !{!227}
!227 = !DITemplateTypeParameter(name: "T", type: !37)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !222, file: !2, baseType: !229, size: 128, align: 64, extraData: i64 1)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !219, file: !2, size: 128, align: 64, flags: DIFlagPublic, elements: !230, templateParams: !226, identifier: "85e121754d9cea9fc6dc8f0652f6d802")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !229, file: !2, baseType: !37, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !2, baseType: !233, size: 64, align: 64, flags: DIFlagArtificial)
!233 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!212, !235, !236, !238}
!235 = !DILocalVariable(name: "rhs", arg: 2, scope: !213, file: !214, line: 796, type: !37)
!236 = !DILocalVariable(name: "a", scope: !237, file: !214, line: 797, type: !37, align: 64)
!237 = distinct !DILexicalBlock(scope: !213, file: !214, line: 797, column: 13)
!238 = !DILocalVariable(name: "b", scope: !237, file: !214, line: 797, type: !172, align: 8)
!239 = !DILocation(line: 796, column: 34, scope: !213, inlinedAt: !240)
!240 = !DILocation(line: 431, column: 51, scope: !241, inlinedAt: !190)
!241 = !DILexicalBlockFile(scope: !180, file: !169, discriminator: 0)
!242 = !DILocalVariable(name: "self", arg: 1, scope: !243, file: !214, line: 2556, type: !37)
!243 = distinct !DISubprogram(name: "overflowing_mul", linkageName: "_ZN4core3num23_$LT$impl$u20$isize$GT$15overflowing_mul17h509b49b0b13202bcE", scope: !215, file: !214, line: 2556, type: !244, scopeLine: 2556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !250)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !37, !37}
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "(isize, bool)", file: !2, size: 128, align: 64, elements: !247, templateParams: !23, identifier: "d6b9240ffb172753384b727dac4aa51f")
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !246, file: !2, baseType: !37, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !246, file: !2, baseType: !172, size: 8, align: 8, offset: 64)
!250 = !{!242, !251}
!251 = !DILocalVariable(name: "rhs", arg: 2, scope: !243, file: !214, line: 2556, type: !37)
!252 = !DILocation(line: 2556, column: 38, scope: !243, inlinedAt: !253)
!253 = !DILocation(line: 797, column: 31, scope: !213, inlinedAt: !240)
!254 = !DILocation(line: 422, column: 71, scope: !168, inlinedAt: !177)
!255 = !DILocation(line: 431, column: 63, scope: !241, inlinedAt: !190)
!256 = !DILocation(line: 796, column: 40, scope: !213, inlinedAt: !240)
!257 = !DILocation(line: 2556, column: 44, scope: !243, inlinedAt: !253)
!258 = !DILocation(line: 2557, column: 26, scope: !243, inlinedAt: !253)
!259 = !DILocation(line: 2557, column: 21, scope: !243, inlinedAt: !253)
!260 = !DILocation(line: 797, column: 21, scope: !237, inlinedAt: !240)
!261 = !DILocalVariable(name: "b", arg: 1, scope: !262, file: !122, line: 1312, type: !172)
!262 = distinct !DISubprogram(name: "unlikely", linkageName: "_ZN4core10intrinsics8unlikely17h1038acc76a8031f3E", scope: !123, file: !122, line: 1312, type: !263, scopeLine: 1312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!172, !172}
!265 = !{!261}
!266 = !DILocation(line: 1312, column: 23, scope: !262, inlinedAt: !267)
!267 = !DILocation(line: 798, column: 16, scope: !237, inlinedAt: !240)
!268 = !DILocation(line: 2558, column: 14, scope: !243, inlinedAt: !253)
!269 = !DILocation(line: 431, column: 30, scope: !186, inlinedAt: !190)
!270 = !DILocation(line: 797, column: 18, scope: !237, inlinedAt: !240)
!271 = !DILocalVariable(name: "rhs", arg: 2, scope: !272, file: !273, line: 2476, type: !37)
!272 = distinct !DISubprogram(name: "overflowing_add_signed", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$22overflowing_add_signed17h4aab5c6b24d2f638E", scope: !274, file: !273, line: 2476, type: !275, scopeLine: 2476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !281)
!273 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/uint_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "10cb569da042ef801acea143a0c73ffd")
!274 = !DINamespace(name: "{impl#11}", scope: !216)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !9, !37}
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "(usize, bool)", file: !2, size: 128, align: 64, elements: !278, templateParams: !23, identifier: "d571287e27d8be874e95a2f698798cc6")
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !277, file: !2, baseType: !9, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !277, file: !2, baseType: !172, size: 8, align: 8, offset: 64)
!281 = !{!282, !271}
!282 = !DILocalVariable(name: "self", arg: 1, scope: !272, file: !273, line: 2476, type: !9)
!283 = !DILocation(line: 2476, column: 51, scope: !272, inlinedAt: !284)
!284 = !DILocation(line: 434, column: 53, scope: !186, inlinedAt: !190)
!285 = !DILocation(line: 1313, column: 8, scope: !262, inlinedAt: !267)
!286 = !DILocation(line: 171, column: 18, scope: !193, inlinedAt: !201)
!287 = !DILocation(line: 2476, column: 45, scope: !272, inlinedAt: !284)
!288 = !DILocation(line: 2396, column: 26, scope: !289, inlinedAt: !292)
!289 = distinct !DISubprogram(name: "overflowing_add", linkageName: "_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h7313917aefc0dd69E", scope: !274, file: !273, line: 2395, type: !290, scopeLine: 2395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23)
!290 = !DISubroutineType(types: !291)
!291 = !{!277, !9, !9}
!292 = !DILocation(line: 2477, column: 42, scope: !272, inlinedAt: !284)
!293 = !DILocation(line: 2478, column: 32, scope: !272, inlinedAt: !284)
!294 = !DILocation(line: 2478, column: 19, scope: !272, inlinedAt: !284)
!295 = !DILocation(line: 434, column: 29, scope: !188, inlinedAt: !190)
!296 = !DILocation(line: 435, column: 21, scope: !188, inlinedAt: !190)
!297 = !DILocation(line: 68, column: 21, scope: !154)
!298 = !DILocation(line: 72, column: 14, scope: !154)
!299 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hc62b344c84ce95b6E", scope: !159, file: !300, line: 523, type: !301, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !305, retainedNodes: !303)
!300 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a5cb8c8d2ea510166b9e600d925000e6")
!301 = !DISubroutineType(types: !302)
!302 = !{null, !132}
!303 = !{!304}
!304 = !DILocalVariable(arg: 1, scope: !299, file: !300, line: 523, type: !132)
!305 = !{!306}
!306 = !DITemplateTypeParameter(name: "T", type: !14)
!307 = !DILocation(line: 523, column: 1, scope: !299)
!308 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hbaee9c711cd7ae78E", scope: !309, file: !67, line: 2473, type: !310, scopeLine: 2473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !312)
!309 = !DINamespace(name: "{impl#59}", scope: !69)
!310 = !DISubroutineType(types: !311)
!311 = !{!68, !7}
!312 = !{!313}
!313 = !DILocalVariable(arg: 1, scope: !308, file: !67, line: 2473, type: !7)
!314 = !DILocation(line: 2473, column: 15, scope: !308)
!315 = !DILocation(line: 2475, column: 6, scope: !308)
!316 = distinct !DISubprogram(name: "main_0", linkageName: "_ZN4main6main_017h04d45d9c33920ff8E", scope: !318, file: !317, line: 15, type: !319, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !321)
!317 = !DIFile(filename: "src/main.rs", directory: "/home/xiaoan/c2rust_project/c2rust_test/analysis/memory_safety/rust_code", checksumkind: CSK_MD5, checksum: "45071773200882027e8e7a5400d41ccb")
!318 = !DINamespace(name: "main", scope: null)
!319 = !DISubroutineType(types: !320)
!320 = !{!58}
!321 = !{!322, !325, !327, !332}
!322 = !DILocalVariable(name: "null_ptr", scope: !323, file: !317, line: 16, type: !324, align: 64)
!323 = distinct !DILexicalBlock(scope: !316, file: !317, line: 16, column: 5)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut i32", baseType: !58, size: 64, align: 64, dwarfAddressSpace: 0)
!325 = !DILocalVariable(name: "dynamic_arr", scope: !326, file: !317, line: 18, type: !324, align: 64)
!326 = distinct !DILexicalBlock(scope: !323, file: !317, line: 18, column: 5)
!327 = !DILocalVariable(name: "buffer", scope: !328, file: !317, line: 29, type: !329, align: 32)
!328 = distinct !DILexicalBlock(scope: !326, file: !317, line: 29, column: 5)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, align: 32, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 5, lowerBound: 0)
!332 = !DILocalVariable(name: "negative_index", scope: !333, file: !317, line: 36, type: !58, align: 32)
!333 = distinct !DILexicalBlock(scope: !328, file: !317, line: 36, column: 5)
!334 = !DILocation(line: 29, column: 9, scope: !328)
!335 = !DILocation(line: 16, column: 42, scope: !316)
!336 = !DILocation(line: 16, column: 9, scope: !323)
!337 = !DILocation(line: 17, column: 66, scope: !323)
!338 = !DILocation(line: 17, column: 5, scope: !323)
!339 = !DILocalVariable(name: "self", arg: 1, scope: !340, file: !273, line: 2110, type: !233)
!340 = distinct !DISubprogram(name: "wrapping_mul", linkageName: "_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_mul17h1bb64592ca7e3efcE", scope: !341, file: !273, line: 2110, type: !342, scopeLine: 2110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !23, retainedNodes: !344)
!341 = !DINamespace(name: "{impl#9}", scope: !216)
!342 = !DISubroutineType(types: !343)
!343 = !{!233, !233, !233}
!344 = !{!339, !345}
!345 = !DILocalVariable(name: "rhs", arg: 2, scope: !340, file: !273, line: 2110, type: !233)
!346 = !DILocation(line: 2110, column: 35, scope: !340, inlinedAt: !347)
!347 = distinct !DILocation(line: 19, column: 9, scope: !323)
!348 = !DILocation(line: 2110, column: 41, scope: !340, inlinedAt: !347)
!349 = !DILocation(line: 18, column: 45, scope: !323)
!350 = !DILocation(line: 18, column: 9, scope: !326)
!351 = !DILocalVariable(name: "self", arg: 1, scope: !352, file: !169, line: 416, type: !324)
!352 = distinct !DISubprogram(name: "offset<i32>", linkageName: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h67cb9b006e820523E", scope: !157, file: !169, line: 416, type: !353, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, templateParams: !357, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{!324, !324, !37}
!355 = !{!351, !356}
!356 = !DILocalVariable(name: "count", arg: 2, scope: !352, file: !169, line: 416, type: !37)
!357 = !{!358}
!358 = !DITemplateTypeParameter(name: "T", type: !58)
!359 = !DILocation(line: 416, column: 32, scope: !352, inlinedAt: !360)
!360 = distinct !DILocation(line: 22, column: 6, scope: !326)
!361 = !DILocation(line: 416, column: 38, scope: !352, inlinedAt: !360)
!362 = !DILocation(line: 75, column: 17, scope: !363, inlinedAt: !360)
!363 = !DILexicalBlockFile(scope: !352, file: !155, discriminator: 0)
!364 = !DILocation(line: 22, column: 5, scope: !326)
!365 = !DILocation(line: 23, column: 5, scope: !326)
!366 = !DILocation(line: 416, column: 32, scope: !352, inlinedAt: !367)
!367 = distinct !DILocation(line: 26, column: 10, scope: !326)
!368 = !DILocation(line: 416, column: 38, scope: !352, inlinedAt: !367)
!369 = !DILocation(line: 75, column: 17, scope: !363, inlinedAt: !367)
!370 = !DILocation(line: 26, column: 9, scope: !326)
!371 = !DILocation(line: 24, column: 5, scope: !326)
!372 = !DILocation(line: 28, column: 5, scope: !326)
!373 = !DILocation(line: 29, column: 40, scope: !326)
!374 = !DILocation(line: 36, column: 43, scope: !328)
!375 = !DILocation(line: 36, column: 9, scope: !333)
!376 = !DILocation(line: 38, column: 2, scope: !316)
!377 = distinct !DISubprogram(name: "main", linkageName: "_ZN4main4main17h181ef59c5c917418E", scope: !318, file: !317, line: 39, type: !21, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !30, templateParams: !23)
!378 = !DILocation(line: 40, column: 35, scope: !377)
!379 = !DILocation(line: 40, column: 14, scope: !377)
