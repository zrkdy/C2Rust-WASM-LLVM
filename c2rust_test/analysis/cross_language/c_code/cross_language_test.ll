; ModuleID = 'cross_language_test.c'
source_filename = "cross_language_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"C\E5\87\BD\E6\95\B0\E5\A4\84\E7\90\86\E6\95\B0\E6\8D\AE: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"C\E5\87\BD\E6\95\B0\E8\B0\83\E7\94\A8Rust\E5\87\BD\E6\95\B0\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\E4\BB\8EC\E8\B0\83\E7\94\A8Rust\E5\87\BD\E6\95\B0\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Rust\E5\88\9B\E5\BB\BA\E7\9A\84\E5\AD\97\E7\AC\A6\E4\B8\B2\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"C\E5\87\BD\E6\95\B0\E6\94\B6\E5\88\B0: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Rust\E5\87\BD\E6\95\B0\E6\89\93\E5\8D\B0: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Rust\E5\87\BD\E6\95\B0\E8\B0\83\E7\94\A8C\E5\87\BD\E6\95\B0\0A\00", align 1
@__const.rust_call_c.data = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@.str.9 = private unnamed_addr constant [37 x i8] c"=== \E8\B7\A8\E8\AF\AD\E8\A8\80\E8\B0\83\E7\94\A8\E6\B5\8B\E8\AF\95\E5\BC\80\E5\A7\8B ===\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"=== \E8\B7\A8\E8\AF\AD\E8\A8\80\E8\B0\83\E7\94\A8\E6\B5\8B\E8\AF\95\E7\BB\93\E6\9D\9F ===\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_process_data(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i32, ptr %5, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %5, align 4
  br label %7, !llvm.loop !6

21:                                               ; preds = %7
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_call_rust() #0 {
  %1 = alloca ptr, align 8
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @rust_print_string(ptr noundef @.str.4)
  %3 = call ptr @rust_create_string(ptr noundef @.str.5)
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %4)
  %6 = load ptr, ptr %1, align 8
  call void @rust_free_string(ptr noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rust_print_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @rust_create_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i64 @strlen(ptr noundef %4) #6
  %6 = add i64 %5, 1
  %7 = call noalias ptr @malloc(i64 noundef %6) #7
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = call ptr @strcpy(ptr noundef %8, ptr noundef %9) #8
  %11 = load ptr, ptr %3, align 8
  ret ptr %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rust_free_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rust_call_c() #0 {
  %1 = alloca [5 x i32], align 16
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1, ptr align 16 @__const.rust_call_c.data, i64 20, i1 false)
  %3 = getelementptr inbounds [5 x i32], ptr %1, i64 0, i64 0
  call void @c_process_data(ptr noundef %3, i32 noundef 5)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  call void @c_call_rust()
  call void @rust_call_c()
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 17.0.6 (++20231208085846+6009708b4367-1~exp1~20231208085949.74)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
