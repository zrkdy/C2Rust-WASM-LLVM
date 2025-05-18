; ModuleID = '3381t9m0fu2084860k0ncz2s3'
source_filename = "3381t9m0fu2084860k0ncz2s3"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h22f1ecd2d981a16fE", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6af9a7ad54b9a182E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6af9a7ad54b9a182E" }>, align 8, !dbg !0
@x = global [4 x i8] c"\01\00\00\00", align 4, !dbg !24
@alloc_a967da144c412553967dff3400b9763f = private unnamed_addr constant [16 x i8] c"Value of x: %d\0A\00", align 1
@alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d = private unnamed_addr constant [11 x i8] c"src/main.rs", align 1
@alloc_4ed7c55170d4f83480792ee742a8891b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_3ba7eeeabd3d9c4a56f56d0cfe62277d, [16 x i8] c"\0B\00\00\00\00\00\00\00\10\00\00\00G\00\00\00" }>, align 8
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17h0d73b781e6f05feaE(ptr %main, i64 %argc, ptr %argv, i8 %sigpipe) unnamed_addr #0 !dbg !38 {
start:
  %sigpipe.dbg.spill = alloca [1 x i8], align 1
  %argv.dbg.spill = alloca [8 x i8], align 8
  %argc.dbg.spill = alloca [8 x i8], align 8
  %main.dbg.spill = alloca [8 x i8], align 8
  %_7 = alloca [8 x i8], align 8
  store ptr %main, ptr %main.dbg.spill, align 8
    #dbg_declare(ptr %main.dbg.spill, !47, !DIExpression(), !53)
  store i64 %argc, ptr %argc.dbg.spill, align 8
    #dbg_declare(ptr %argc.dbg.spill, !48, !DIExpression(), !54)
  store ptr %argv, ptr %argv.dbg.spill, align 8
    #dbg_declare(ptr %argv.dbg.spill, !49, !DIExpression(), !55)
  store i8 %sigpipe, ptr %sigpipe.dbg.spill, align 1
    #dbg_declare(ptr %sigpipe.dbg.spill, !50, !DIExpression(), !56)
  store ptr %main, ptr %_7, align 8, !dbg !57
; call std::rt::lang_start_internal
  %_0 = call i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr align 1 %_7, ptr align 8 @vtable.0, i64 %argc, ptr %argv, i8 %sigpipe), !dbg !58
  ret i64 %_0, !dbg !59
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6af9a7ad54b9a182E"(ptr align 8 %_1) unnamed_addr #1 !dbg !60 {
start:
  %self.dbg.spill = alloca [1 x i8], align 1
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !65, !DIExpression(DW_OP_deref), !66)
  %_4 = load ptr, ptr %_1, align 8, !dbg !67
; call std::sys::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h2c32616fb95f5b84E(ptr %_4), !dbg !68
; call <() as std::process::Termination>::report
  %self = call i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd465e2b3ce5edf0aE"(), !dbg !68
  store i8 %self, ptr %self.dbg.spill, align 1, !dbg !68
    #dbg_declare(ptr %self.dbg.spill, !69, !DIExpression(), !87)
  %_0 = zext i8 %self to i32, !dbg !89
  ret i32 %_0, !dbg !97
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h2c32616fb95f5b84E(ptr %f) unnamed_addr #2 !dbg !98 {
start:
  %dummy.dbg.spill = alloca [0 x i8], align 1
  %f.dbg.spill = alloca [8 x i8], align 8
  %result.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %result.dbg.spill, !105, !DIExpression(), !109)
  store ptr %f, ptr %f.dbg.spill, align 8
    #dbg_declare(ptr %f.dbg.spill, !104, !DIExpression(), !110)
    #dbg_declare(ptr %dummy.dbg.spill, !111, !DIExpression(), !119)
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17hfb94346b061791f7E(ptr %f), !dbg !121
  call void asm sideeffect "", "~{memory}"(), !dbg !122, !srcloc !123
  ret void, !dbg !124
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h22f1ecd2d981a16fE"(ptr %_1) unnamed_addr #1 !dbg !125 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !134, !DIExpression(), !139)
    #dbg_declare(ptr %_2, !135, !DIExpression(), !139)
  %0 = load ptr, ptr %_1, align 8, !dbg !139
; call core::ops::function::FnOnce::call_once
  %_0 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h0c456d4a0047e8beE(ptr %0), !dbg !139
  ret i32 %_0, !dbg !139
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h0c456d4a0047e8beE(ptr %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !140 {
start:
  %1 = alloca [16 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  %_1 = alloca [8 x i8], align 8
  store ptr %0, ptr %_1, align 8
    #dbg_declare(ptr %_1, !144, !DIExpression(), !146)
    #dbg_declare(ptr %_2, !145, !DIExpression(), !146)
; invoke std::rt::lang_start::{{closure}}
  %_0 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6af9a7ad54b9a182E"(ptr align 8 %_1)
          to label %bb1 unwind label %cleanup, !dbg !146

bb3:                                              ; preds = %cleanup
  %2 = load ptr, ptr %1, align 8, !dbg !146
  %3 = getelementptr inbounds i8, ptr %1, i64 8, !dbg !146
  %4 = load i32, ptr %3, align 8, !dbg !146
  %5 = insertvalue { ptr, i32 } poison, ptr %2, 0, !dbg !146
  %6 = insertvalue { ptr, i32 } %5, i32 %4, 1, !dbg !146
  resume { ptr, i32 } %6, !dbg !146

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
  ret i32 %_0, !dbg !146
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hfb94346b061791f7E(ptr %_1) unnamed_addr #1 !dbg !147 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  %_2 = alloca [0 x i8], align 1
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !149, !DIExpression(), !153)
    #dbg_declare(ptr %_2, !150, !DIExpression(), !153)
  call void %_1(), !dbg !153
  ret void, !dbg !153
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4cbb2aeca31d87e8E"(ptr align 8 %_1) unnamed_addr #1 !dbg !154 {
start:
  %_1.dbg.spill = alloca [8 x i8], align 8
  store ptr %_1, ptr %_1.dbg.spill, align 8
    #dbg_declare(ptr %_1.dbg.spill, !160, !DIExpression(), !163)
  ret void, !dbg !163
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd465e2b3ce5edf0aE"() unnamed_addr #1 !dbg !164 {
start:
  %_1.dbg.spill = alloca [0 x i8], align 1
    #dbg_declare(ptr %_1.dbg.spill, !169, !DIExpression(), !170)
  ret i8 0, !dbg !171
}

; test1::main_0
; Function Attrs: nonlazybind uwtable
define internal i32 @_ZN5test16main_017h52106eb795fab62aE() unnamed_addr #0 !dbg !172 {
start:
  %_18 = icmp eq i64 ptrtoint (ptr @x to i64), 0, !dbg !175
  %_19 = and i1 %_18, true, !dbg !175
  %_20 = xor i1 %_19, true, !dbg !175
  br i1 %_20, label %bb3, label %panic, !dbg !175

bb3:                                              ; preds = %start
  %_6 = load i32, ptr @x, align 4, !dbg !175
  %_1 = call i32 (ptr, ...) @printf(ptr @alloc_a967da144c412553967dff3400b9763f, i32 %_6) #7, !dbg !176
  ret i32 0, !dbg !177

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4ed7c55170d4f83480792ee742a8891b) #8, !dbg !175
  unreachable, !dbg !175
}

; test1::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN5test14main17h14f545668d989260E() unnamed_addr #0 !dbg !178 {
start:
; call test1::main_0
  %_2 = call i32 @_ZN5test16main_017h52106eb795fab62aE(), !dbg !179
; call std::process::exit
  call void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32 %_2) #9, !dbg !180
  unreachable, !dbg !180
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr align 1, ptr align 8, i64, ptr, i8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #3

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @printf(ptr, ...) unnamed_addr #3

; std::process::exit
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32) unnamed_addr #5

; Function Attrs: nonlazybind
define i32 @main(i32 %0, ptr %1) unnamed_addr #6 {
top:
  %2 = load volatile i8, ptr @__rustc_debug_gdb_scripts_section__, align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start
  %4 = call i64 @_ZN3std2rt10lang_start17h0d73b781e6f05feaE(ptr @_ZN5test14main17h14f545668d989260E, i64 %3, ptr %1, i8 0)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nonlazybind "target-cpu"="x86-64" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!29, !30, !31, !32, !33}
!llvm.ident = !{!34}
!llvm.dbg.cu = !{!35}

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
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "x", scope: !26, file: !27, line: 14, type: !28, isLocal: false, isDefinition: true, align: 32)
!26 = !DINamespace(name: "test1", scope: null)
!27 = !DIFile(filename: "src/main.rs", directory: "/home/xiaoan/c2rust_project/c2rust_test/test/test2/rust_code", checksumkind: CSK_MD5, checksum: "e708e952f1be9111a3342246fbff8961")
!28 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 2, !"RtLibUseGOT", i32 1}
!32 = !{i32 7, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
!35 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !36, producer: "clang LLVM (rustc version 1.88.0-nightly (0b45675cf 2025-03-31))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !37, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "src/main.rs/@/3381t9m0fu2084860k0ncz2s3", directory: "/home/xiaoan/c2rust_project/c2rust_test/test/test2/rust_code")
!37 = !{!0, !24}
!38 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17h0d73b781e6f05feaE", scope: !16, file: !39, line: 192, type: !40, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !51, retainedNodes: !46)
!39 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/rt.rs", directory: "", checksumkind: CSK_MD5, checksum: "5ed61ab28987f8860d5842313c6741b3")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !20, !42, !43, !45}
!42 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !44, size: 64, align: 64, dwarfAddressSpace: 0)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!45 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: "main", arg: 1, scope: !38, file: !39, line: 193, type: !20)
!48 = !DILocalVariable(name: "argc", arg: 2, scope: !38, file: !39, line: 194, type: !42)
!49 = !DILocalVariable(name: "argv", arg: 3, scope: !38, file: !39, line: 195, type: !43)
!50 = !DILocalVariable(name: "sigpipe", arg: 4, scope: !38, file: !39, line: 196, type: !45)
!51 = !{!52}
!52 = !DITemplateTypeParameter(name: "T", type: !7)
!53 = !DILocation(line: 193, column: 5, scope: !38)
!54 = !DILocation(line: 194, column: 5, scope: !38)
!55 = !DILocation(line: 195, column: 5, scope: !38)
!56 = !DILocation(line: 196, column: 5, scope: !38)
!57 = !DILocation(line: 199, column: 10, scope: !38)
!58 = !DILocation(line: 198, column: 5, scope: !38)
!59 = !DILocation(line: 204, column: 2, scope: !38)
!60 = distinct !DISubprogram(name: "{closure#0}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h6af9a7ad54b9a182E", scope: !15, file: !39, line: 199, type: !61, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !51, retainedNodes: !64)
!61 = !DISubroutineType(types: !62)
!62 = !{!28, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!64 = !{!65}
!65 = !DILocalVariable(name: "main", scope: !60, file: !39, line: 193, type: !20, align: 64)
!66 = !DILocation(line: 193, column: 5, scope: !60)
!67 = !DILocation(line: 199, column: 70, scope: !60)
!68 = !DILocation(line: 199, column: 18, scope: !60)
!69 = !DILocalVariable(name: "self", arg: 1, scope: !70, file: !71, line: 2076, type: !72)
!70 = distinct !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h539ea04edec88b0eE", scope: !72, file: !71, line: 2076, type: !83, scopeLine: 2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !23, declaration: !85, retainedNodes: !86)
!71 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/process.rs", directory: "", checksumkind: CSK_MD5, checksum: "7a9a43ad6df231bde6d3cbe2be38a178")
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !73, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !74, templateParams: !23, identifier: "b5eb3adf9b99c8716bd1b42508344848")
!73 = !DINamespace(name: "process", scope: !17)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !72, file: !2, baseType: !76, size: 8, align: 8, flags: DIFlagPrivate)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !77, file: !2, size: 8, align: 8, flags: DIFlagPublic, elements: !81, templateParams: !23, identifier: "32bd0fdc51c6607a57e19ca8c66d52af")
!77 = !DINamespace(name: "common", scope: !78)
!78 = !DINamespace(name: "unix", scope: !79)
!79 = !DINamespace(name: "process", scope: !80)
!80 = !DINamespace(name: "sys", scope: !17)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !76, file: !2, baseType: !45, size: 8, align: 8, flags: DIFlagPrivate)
!83 = !DISubroutineType(types: !84)
!84 = !{!28, !72}
!85 = !DISubprogram(name: "to_i32", linkageName: "_ZN3std7process8ExitCode6to_i3217h539ea04edec88b0eE", scope: !72, file: !71, line: 2076, type: !83, scopeLine: 2076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!86 = !{!69}
!87 = !DILocation(line: 2076, column: 19, scope: !70, inlinedAt: !88)
!88 = !DILocation(line: 199, column: 85, scope: !60)
!89 = !DILocation(line: 637, column: 9, scope: !90, inlinedAt: !96)
!90 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys7process4unix6common8ExitCode6as_i3217h4b996763ea9e4ad2E", scope: !76, file: !91, line: 636, type: !92, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !23, declaration: !95)
!91 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/process/unix/common.rs", directory: "", checksumkind: CSK_MD5, checksum: "ed7cfe922d1d76836f0319ed27177b75")
!92 = !DISubroutineType(types: !93)
!93 = !{!28, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::process::unix::common::ExitCode", baseType: !76, size: 64, align: 64, dwarfAddressSpace: 0)
!95 = !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys7process4unix6common8ExitCode6as_i3217h4b996763ea9e4ad2E", scope: !76, file: !91, line: 636, type: !92, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit, templateParams: !23)
!96 = !DILocation(line: 2077, column: 16, scope: !70, inlinedAt: !88)
!97 = !DILocation(line: 199, column: 93, scope: !60)
!98 = distinct !DISubprogram(name: "__rust_begin_short_backtrace<fn(), ()>", linkageName: "_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h2c32616fb95f5b84E", scope: !100, file: !99, line: 148, type: !101, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !107, retainedNodes: !103)
!99 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/sys/backtrace.rs", directory: "", checksumkind: CSK_MD5, checksum: "9e30c70624c3cf40238860e740bd696f")
!100 = !DINamespace(name: "backtrace", scope: !80)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !20}
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "f", arg: 1, scope: !98, file: !99, line: 148, type: !20)
!105 = !DILocalVariable(name: "result", scope: !106, file: !99, line: 152, type: !7, align: 8)
!106 = distinct !DILexicalBlock(scope: !98, file: !99, line: 152, column: 5)
!107 = !{!108, !52}
!108 = !DITemplateTypeParameter(name: "F", type: !20)
!109 = !DILocation(line: 152, column: 9, scope: !106)
!110 = !DILocation(line: 148, column: 43, scope: !98)
!111 = !DILocalVariable(name: "dummy", scope: !112, file: !113, line: 476, type: !7, align: 8)
!112 = distinct !DISubprogram(name: "black_box<()>", linkageName: "_ZN4core4hint9black_box17he76983fdda365cdeE", scope: !114, file: !113, line: 476, type: !116, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !51, retainedNodes: !118)
!113 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/hint.rs", directory: "", checksumkind: CSK_MD5, checksum: "53e417654697d2a6fdb3b165cec3a4bf")
!114 = !DINamespace(name: "hint", scope: !115)
!115 = !DINamespace(name: "core", scope: null)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !7}
!118 = !{!111}
!119 = !DILocation(line: 476, column: 27, scope: !112, inlinedAt: !120)
!120 = !DILocation(line: 155, column: 5, scope: !106)
!121 = !DILocation(line: 152, column: 18, scope: !98)
!122 = !DILocation(line: 477, column: 5, scope: !112, inlinedAt: !120)
!123 = !{i64 8032069881727229}
!124 = !DILocation(line: 158, column: 2, scope: !98)
!125 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h22f1ecd2d981a16fE", scope: !127, file: !126, line: 250, type: !130, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !136, retainedNodes: !133)
!126 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ops/function.rs", directory: "", checksumkind: CSK_MD5, checksum: "27f40bbdeb6cc525c0d0d7cf434d92c4")
!127 = !DINamespace(name: "FnOnce", scope: !128)
!128 = !DINamespace(name: "function", scope: !129)
!129 = !DINamespace(name: "ops", scope: !115)
!130 = !DISubroutineType(types: !131)
!131 = !{!28, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut std::rt::lang_start::{closure_env#0}<()>", baseType: !14, size: 64, align: 64, dwarfAddressSpace: 0)
!133 = !{!134, !135}
!134 = !DILocalVariable(arg: 1, scope: !125, file: !126, line: 250, type: !132)
!135 = !DILocalVariable(arg: 2, scope: !125, file: !126, line: 250, type: !7)
!136 = !{!137, !138}
!137 = !DITemplateTypeParameter(name: "Self", type: !14)
!138 = !DITemplateTypeParameter(name: "Args", type: !7)
!139 = !DILocation(line: 250, column: 5, scope: !125)
!140 = distinct !DISubprogram(name: "call_once<std::rt::lang_start::{closure_env#0}<()>, ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17h0c456d4a0047e8beE", scope: !127, file: !126, line: 250, type: !141, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !136, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!28, !14}
!143 = !{!144, !145}
!144 = !DILocalVariable(arg: 1, scope: !140, file: !126, line: 250, type: !14)
!145 = !DILocalVariable(arg: 2, scope: !140, file: !126, line: 250, type: !7)
!146 = !DILocation(line: 250, column: 5, scope: !140)
!147 = distinct !DISubprogram(name: "call_once<fn(), ()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hfb94346b061791f7E", scope: !127, file: !126, line: 250, type: !101, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !151, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(arg: 1, scope: !147, file: !126, line: 250, type: !20)
!150 = !DILocalVariable(arg: 2, scope: !147, file: !126, line: 250, type: !7)
!151 = !{!152, !138}
!152 = !DITemplateTypeParameter(name: "Self", type: !20)
!153 = !DILocation(line: 250, column: 5, scope: !147)
!154 = distinct !DISubprogram(name: "drop_in_place<std::rt::lang_start::{closure_env#0}<()>>", linkageName: "_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h4cbb2aeca31d87e8E", scope: !156, file: !155, line: 523, type: !157, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !161, retainedNodes: !159)
!155 = !DIFile(filename: "/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "a5cb8c8d2ea510166b9e600d925000e6")
!156 = !DINamespace(name: "ptr", scope: !115)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !132}
!159 = !{!160}
!160 = !DILocalVariable(arg: 1, scope: !154, file: !155, line: 523, type: !132)
!161 = !{!162}
!162 = !DITemplateTypeParameter(name: "T", type: !14)
!163 = !DILocation(line: 523, column: 1, scope: !154)
!164 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hd465e2b3ce5edf0aE", scope: !165, file: !71, line: 2473, type: !166, scopeLine: 2473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !23, retainedNodes: !168)
!165 = !DINamespace(name: "{impl#59}", scope: !73)
!166 = !DISubroutineType(types: !167)
!167 = !{!72, !7}
!168 = !{!169}
!169 = !DILocalVariable(arg: 1, scope: !164, file: !71, line: 2473, type: !7)
!170 = !DILocation(line: 2473, column: 15, scope: !164)
!171 = !DILocation(line: 2475, column: 6, scope: !164)
!172 = distinct !DISubprogram(name: "main_0", linkageName: "_ZN5test16main_017h52106eb795fab62aE", scope: !26, file: !27, line: 15, type: !173, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, templateParams: !23)
!173 = !DISubroutineType(types: !174)
!174 = !{!28}
!175 = !DILocation(line: 16, column: 71, scope: !172)
!176 = !DILocation(line: 16, column: 5, scope: !172)
!177 = !DILocation(line: 18, column: 2, scope: !172)
!178 = distinct !DISubprogram(name: "main", linkageName: "_ZN5test14main17h14f545668d989260E", scope: !26, file: !27, line: 19, type: !21, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagMainSubprogram, unit: !35, templateParams: !23)
!179 = !DILocation(line: 20, column: 35, scope: !178)
!180 = !DILocation(line: 20, column: 14, scope: !178)
