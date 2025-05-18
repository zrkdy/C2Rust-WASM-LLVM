; ModuleID = '../c_code/test_memory_issues.c'
source_filename = "../c_code/test_memory_issues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Value: %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"Value after free: %d\0A\00", align 1, !dbg !7
@__const.main.buffer = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [5 x i32], align 16
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !29, metadata !DIExpression()), !dbg !30
  store ptr null, ptr %2, align 8, !dbg !30
  %6 = load ptr, ptr %2, align 8, !dbg !31
  %7 = load i32, ptr %6, align 4, !dbg !32
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7), !dbg !33
  call void @llvm.dbg.declare(metadata ptr %3, metadata !34, metadata !DIExpression()), !dbg !35
  %9 = call noalias ptr @malloc(i64 noundef 20) #6, !dbg !36
  store ptr %9, ptr %3, align 8, !dbg !35
  %10 = load ptr, ptr %3, align 8, !dbg !37
  %11 = getelementptr inbounds i32, ptr %10, i64 0, !dbg !37
  store i32 10, ptr %11, align 4, !dbg !38
  %12 = load ptr, ptr %3, align 8, !dbg !39
  call void @free(ptr noundef %12) #7, !dbg !40
  %13 = load ptr, ptr %3, align 8, !dbg !41
  %14 = getelementptr inbounds i32, ptr %13, i64 0, !dbg !41
  %15 = load i32, ptr %14, align 4, !dbg !41
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15), !dbg !42
  %17 = load ptr, ptr %3, align 8, !dbg !43
  call void @free(ptr noundef %17) #7, !dbg !44
  call void @llvm.dbg.declare(metadata ptr %4, metadata !45, metadata !DIExpression()), !dbg !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %4, ptr align 16 @__const.main.buffer, i64 20, i1 false), !dbg !49
  call void @llvm.dbg.declare(metadata ptr %5, metadata !50, metadata !DIExpression()), !dbg !51
  %18 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 -1, !dbg !52
  %19 = load i32, ptr %18, align 4, !dbg !52
  store i32 %19, ptr %5, align 4, !dbg !51
  ret i32 0, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 7, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "../c_code/test_memory_issues.c", directory: "/home/xiaoan/c2rust_project/c2rust_test/analysis_separate/memory_safety/build", checksumkind: CSK_MD5, checksum: "059242ae6281772badeaf81a61c0bfcf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 11)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 13, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 22)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 17.0.6 (++20231208085846+6009708b4367-1~exp1~20231208085949.74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !16, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!0, !7}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 17.0.6 (++20231208085846+6009708b4367-1~exp1~20231208085949.74)"}
!25 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 4, type: !26, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!15}
!28 = !{}
!29 = !DILocalVariable(name: "null_ptr", scope: !25, file: !2, line: 6, type: !14)
!30 = !DILocation(line: 6, column: 10, scope: !25)
!31 = !DILocation(line: 7, column: 28, scope: !25)
!32 = !DILocation(line: 7, column: 27, scope: !25)
!33 = !DILocation(line: 7, column: 5, scope: !25)
!34 = !DILocalVariable(name: "dynamic_arr", scope: !25, file: !2, line: 10, type: !14)
!35 = !DILocation(line: 10, column: 10, scope: !25)
!36 = !DILocation(line: 10, column: 30, scope: !25)
!37 = !DILocation(line: 11, column: 5, scope: !25)
!38 = !DILocation(line: 11, column: 20, scope: !25)
!39 = !DILocation(line: 12, column: 10, scope: !25)
!40 = !DILocation(line: 12, column: 5, scope: !25)
!41 = !DILocation(line: 13, column: 38, scope: !25)
!42 = !DILocation(line: 13, column: 5, scope: !25)
!43 = !DILocation(line: 16, column: 10, scope: !25)
!44 = !DILocation(line: 16, column: 5, scope: !25)
!45 = !DILocalVariable(name: "buffer", scope: !25, file: !2, line: 19, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 5)
!49 = !DILocation(line: 19, column: 9, scope: !25)
!50 = !DILocalVariable(name: "negative_index", scope: !25, file: !2, line: 20, type: !15)
!51 = !DILocation(line: 20, column: 9, scope: !25)
!52 = !DILocation(line: 20, column: 26, scope: !25)
!53 = !DILocation(line: 22, column: 5, scope: !25)
