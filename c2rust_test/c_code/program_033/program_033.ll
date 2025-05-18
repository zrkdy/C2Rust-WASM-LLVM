; ModuleID = './c_code/temp_compile/7.3_branchbound.c'
source_filename = "./c_code/temp_compile/7.3_branchbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TNode = type { i32, i32, ptr }
%struct.Node = type { i32, i32, ptr }

@sp = dso_local global i32 -1, align 4
@stack = dso_local global [100 x ptr] zeroinitializer, align 16
@min = dso_local global i32 2147483647, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d<==\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"cost=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @sp, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x ptr], ptr @stack, i64 0, i64 %6
  store ptr %3, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @pop() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x ptr], ptr @stack, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @top() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [100 x ptr], ptr @stack, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @empty() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertsort(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 1, ptr %6, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, ptr %6, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %5, align 8
  %18 = load i32, ptr %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, ptr %7, align 4
  br label %20

20:                                               ; preds = %48, %12
  %21 = load i32, ptr %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  %25 = load i32, ptr %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw %struct.TNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %struct.TNode, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8
  %34 = icmp slt i32 %30, %33
  br label %35

35:                                               ; preds = %23, %20
  %36 = phi i1 [ false, %20 ], [ %34, %23 ]
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load ptr, ptr %3, align 8
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  store ptr %42, ptr %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %7, align 4
  br label %20

51:                                               ; preds = %35
  %52 = load ptr, ptr %5, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %7, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  store ptr %52, ptr %57, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, ptr %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %6, align 4
  br label %8

61:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayoutcome(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.TNode, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  store i32 %5, ptr @min, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load ptr, ptr %2, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.TNode, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.TNode, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %2, align 8
  br label %6

17:                                               ; preds = %6
  %18 = load i32, ptr @min, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @branchbound(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [13 x ptr], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %9 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %9, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.TNode, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.TNode, ptr %12, i32 0, i32 0
  store i32 0, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct.TNode, ptr %14, i32 0, i32 2
  store ptr null, ptr %15, align 8
  %16 = load ptr, ptr %3, align 8
  call void @push(ptr noundef %16)
  br label %17

17:                                               ; preds = %96, %42, %1
  %18 = call i32 @empty()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = call ptr @top()
  store ptr %22, ptr %3, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.TNode, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 12
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds nuw %struct.TNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = load i32, ptr @min, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8
  call void @displayoutcome(ptr noundef %34)
  br label %35

35:                                               ; preds = %33, %27, %21
  %36 = call ptr @pop()
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds nuw %struct.TNode, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8
  %40 = load i32, ptr @min, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %17

43:                                               ; preds = %35
  %44 = load ptr, ptr %2, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds nuw %struct.TNode, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %44, i64 %48
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %4, align 8
  store i32 0, ptr %7, align 4
  br label %51

51:                                               ; preds = %54, %43
  %52 = load ptr, ptr %4, align 8
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %55, ptr %5, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds nuw %struct.Node, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw %struct.TNode, ptr %59, i32 0, i32 1
  store i32 %58, ptr %60, align 4
  %61 = load ptr, ptr %3, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds nuw %struct.TNode, ptr %62, i32 0, i32 2
  store ptr %61, ptr %63, align 8
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds nuw %struct.TNode, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds nuw %struct.Node, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = load ptr, ptr %5, align 8
  %72 = getelementptr inbounds nuw %struct.TNode, ptr %71, i32 0, i32 0
  store i32 %70, ptr %72, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = load i32, ptr %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %7, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 %76
  store ptr %73, ptr %77, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds nuw %struct.Node, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  store ptr %80, ptr %4, align 8
  br label %51

81:                                               ; preds = %51
  %82 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  %83 = load i32, ptr %7, align 4
  call void @insertsort(ptr noundef %82, i32 noundef %83)
  store i32 0, ptr %8, align 4
  br label %84

84:                                               ; preds = %93, %81
  %85 = load i32, ptr %8, align 4
  %86 = load i32, ptr %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32, ptr %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 %90
  %92 = load ptr, ptr %91, align 8
  call void @push(ptr noundef %92)
  br label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %8, align 4
  br label %84

96:                                               ; preds = %84
  br label %17

97:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertedge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %9, align 8
  %16 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %16, ptr %10, align 8
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 0
  store i32 %17, ptr %19, align 8
  %20 = load i32, ptr %8, align 4
  %21 = load ptr, ptr %10, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %21, i32 0, i32 1
  store i32 %20, ptr %22, align 4
  %23 = load ptr, ptr %9, align 8
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 2
  store ptr %23, ptr %25, align 8
  %26 = load ptr, ptr %10, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %26, ptr %30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [13 x ptr], align 16
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %6, i8 0, i64 104, i1 false)
  %7 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 2)
  %8 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %8, i32 noundef 0, i32 noundef 2, i32 noundef 5)
  %9 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  %10 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %10, i32 noundef 0, i32 noundef 4, i32 noundef 6)
  %11 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %11, i32 noundef 1, i32 noundef 5, i32 noundef 1)
  %12 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %12, i32 noundef 1, i32 noundef 5, i32 noundef 4)
  %13 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %13, i32 noundef 2, i32 noundef 5, i32 noundef 9)
  %14 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %14, i32 noundef 2, i32 noundef 7, i32 noundef 7)
  %15 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %15, i32 noundef 3, i32 noundef 5, i32 noundef 3)
  %16 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %16, i32 noundef 3, i32 noundef 7, i32 noundef 4)
  %17 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %17, i32 noundef 4, i32 noundef 6, i32 noundef 7)
  %18 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %18, i32 noundef 4, i32 noundef 7, i32 noundef 4)
  %19 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %19, i32 noundef 5, i32 noundef 8, i32 noundef 6)
  %20 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %20, i32 noundef 5, i32 noundef 10, i32 noundef 7)
  %21 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %21, i32 noundef 6, i32 noundef 8, i32 noundef 4)
  %22 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %22, i32 noundef 6, i32 noundef 9, i32 noundef 3)
  %23 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %23, i32 noundef 6, i32 noundef 11, i32 noundef 5)
  %24 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %24, i32 noundef 7, i32 noundef 9, i32 noundef 1)
  %25 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %25, i32 noundef 7, i32 noundef 10, i32 noundef 4)
  %26 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %26, i32 noundef 7, i32 noundef 11, i32 noundef 5)
  %27 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %27, i32 noundef 8, i32 noundef 12, i32 noundef 3)
  %28 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %28, i32 noundef 9, i32 noundef 12, i32 noundef 1)
  %29 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %29, i32 noundef 10, i32 noundef 12, i32 noundef 2)
  %30 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @insertedge(ptr noundef %30, i32 noundef 11, i32 noundef 12, i32 noundef 5)
  %31 = getelementptr inbounds [13 x ptr], ptr %6, i64 0, i64 0
  call void @branchbound(ptr noundef %31)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
