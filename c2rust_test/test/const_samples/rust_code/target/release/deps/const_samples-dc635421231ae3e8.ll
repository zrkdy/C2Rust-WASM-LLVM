; ModuleID = 'const_samples.8624178fb1ac0186-cgu.0'
source_filename = "const_samples.8624178fb1ac0186-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_LITERAL = dso_local local_unnamed_addr global ptr @alloc_2533f304ceb96781ef8e3c0690e167a4, align 8
@POINTER_TO_CONST = dso_local local_unnamed_addr global ptr @ANOTHER_CONST, align 8
@POINTER_TO_MUTABLE = dso_local local_unnamed_addr global ptr @mutable_var, align 8
@vtable.0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h946a50a29643b203E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee9808bdd9479ae6E", ptr @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee9808bdd9479ae6E" }>, align 8
@alloc_2533f304ceb96781ef8e3c0690e167a4 = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@ANOTHER_CONST = constant [4 x i8] c"d\00\00\00", align 4
@mutable_var = global [4 x i8] c"\C8\00\00\00", align 4
@INTTOPTR_EXAMPLE = local_unnamed_addr global [8 x i8] c"\EF\BE\AD\DE\00\00\00\00", align 8
@SIMPLE_STRUCT = local_unnamed_addr global [8 x i8] c"\0A\00\00\00\14\00\00\00", align 4
@alloc_43d030876b2821c1bc0d70d733e01bef = private unnamed_addr constant [5 x i8] c"John\00", align 1
@STRUCT_WITH_CONST_PTR = local_unnamed_addr global <{ [4 x i8], [4 x i8], ptr }> <{ [4 x i8] c"\01\00\00\00", [4 x i8] undef, ptr @alloc_43d030876b2821c1bc0d70d733e01bef }>, align 8
@STRUCT_WITH_MUTABLE_PTR = local_unnamed_addr global <{ [4 x i8], [4 x i8], ptr }> <{ [4 x i8] c"\02\00\00\00", [4 x i8] undef, ptr @mutable_var }>, align 8
@INT_ARRAY = local_unnamed_addr global [12 x i8] c"\01\00\00\00\02\00\00\00\03\00\00\00", align 4
@alloc_55b04abf853045ff14fbe3cacf3aacfb = private unnamed_addr constant [6 x i8] c"First\00", align 1
@alloc_73156702f1258b1f6772270d1dcddf23 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@STRING_ARRAY = local_unnamed_addr global <{ ptr, ptr }> <{ ptr @alloc_55b04abf853045ff14fbe3cacf3aacfb, ptr @alloc_73156702f1258b1f6772270d1dcddf23 }>, align 8
@MUTABLE_PTR_ARRAY = local_unnamed_addr global <{ ptr, ptr }> <{ ptr @mutable_var, ptr @mutable_var }>, align 8
@NON_CONST_VAR = local_unnamed_addr global [4 x i8] c",\01\00\00", align 4
@COMPLEX_STRUCT = local_unnamed_addr global [16 x i8] c"\1E\00\00\00(\00\00\00\00\10\00\00\00\00\00\00", align 8

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_ZN3std2rt10lang_start17h2a9be83ac057f593E(ptr noundef nonnull %main, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe) unnamed_addr #0 {
start:
  %_7 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_7)
  store ptr %main, ptr %_7, align 8
; call std::rt::lang_start_internal
  %_0 = call noundef i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr noundef nonnull align 1 %_7, ptr noalias noundef nonnull readonly align 8 dereferenceable(48) @vtable.0, i64 noundef %argc, ptr noundef %argv, i8 noundef %sigpipe)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_7)
  ret i64 %_0
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee9808bdd9479ae6E"(ptr noalias nocapture noundef readonly align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  %_4 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h3d8f16889cc72001E(ptr noundef nonnull %_4)
  ret i32 0
}

; std::sys::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h3d8f16889cc72001E(ptr nocapture noundef nonnull readonly %f) unnamed_addr #2 {
start:
  tail call void %f()
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !5
  ret void
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h946a50a29643b203E"(ptr nocapture noundef readonly %_1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %0 = load ptr, ptr %_1, align 8, !nonnull !4, !noundef !4
; call std::sys::backtrace::__rust_begin_short_backtrace
  tail call fastcc void @_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h3d8f16889cc72001E(ptr noundef nonnull readonly %0), !noalias !6
  ret i32 0
}

; const_samples::main
; Function Attrs: noreturn nonlazybind uwtable
define internal void @_ZN13const_samples4main17hf1e71445f84f17caE() unnamed_addr #3 {
start:
; call std::process::exit
  tail call void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32 noundef 0) #8
  unreachable
}

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare noundef i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 dereferenceable(48), i64 noundef, ptr noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; std::process::exit
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN3std7process4exit17hd45c0fb701a690e1E(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #5 {
top:
  %_7.i = alloca [8 x i8], align 8
  %2 = sext i32 %0 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_7.i)
  store ptr @_ZN13const_samples4main17hf1e71445f84f17caE, ptr %_7.i, align 8
; call std::rt::lang_start_internal
  %_0.i = call noundef i64 @_ZN3std2rt19lang_start_internal17h6070930d3648b946E(ptr noundef nonnull align 1 %_7.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(48) @vtable.0, i64 noundef %2, ptr noundef %1, i8 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_7.i)
  %3 = trunc i64 %_0.i to i32
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
!4 = !{}
!5 = !{i64 9086587432355857}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee9808bdd9479ae6E: %_1"}
!8 = distinct !{!8, !"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hee9808bdd9479ae6E"}
