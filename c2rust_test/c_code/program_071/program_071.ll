; ModuleID = './c_code/temp_compile/Binary Search Tree [Insert-Search-Traverse] .c'
source_filename = "./c_code/temp_compile/Binary Search Tree [Insert-Search-Traverse] .c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree = type { i32, ptr, ptr }

@root = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0APre-Order Tree printing:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0AIn-Order Tree printing:\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0APost-Order Tree printing:\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A%d is found on Tree.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0A%d is not found on Tree.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @insertNode(i32 noundef 45)
  call void @insertNode(i32 noundef 54)
  call void @insertNode(i32 noundef 40)
  call void @insertNode(i32 noundef 49)
  call void @insertNode(i32 noundef 38)
  call void @insertNode(i32 noundef 70)
  call void @insertNode(i32 noundef 30)
  call void @insertNode(i32 noundef 39)
  call void @insertNode(i32 noundef 41)
  call void @insertNode(i32 noundef 45)
  call void @insertNode(i32 noundef 44)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %3 = load ptr, ptr @root, align 8
  call void @preOrderPrint(ptr noundef %3)
  %4 = call i32 @puts(ptr noundef @.str.1)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = load ptr, ptr @root, align 8
  call void @inOrderPrint(ptr noundef %6)
  %7 = call i32 @puts(ptr noundef @.str.1)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %9 = load ptr, ptr @root, align 8
  call void @postOrderPrint(ptr noundef %9)
  %10 = call i32 @puts(ptr noundef @.str.1)
  call void @searchOnTree(i32 noundef 70)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %6 = call noalias ptr @malloc(i64 noundef 24) #3
  store ptr %6, ptr %3, align 8
  %7 = load i32, ptr %2, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.tree, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.tree, ptr %10, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.tree, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr @root, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8
  store ptr %17, ptr @root, align 8
  br label %50

18:                                               ; preds = %1
  %19 = load ptr, ptr @root, align 8
  store ptr %19, ptr %4, align 8
  store ptr null, ptr %5, align 8
  br label %20

20:                                               ; preds = %18, %49
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %5, align 8
  %22 = load i32, ptr %2, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.tree, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.tree, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %4, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.tree, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 8
  br label %50

37:                                               ; preds = %27
  br label %49

38:                                               ; preds = %20
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds nuw %struct.tree, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %4, align 8
  %42 = load ptr, ptr %4, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw %struct.tree, ptr %46, i32 0, i32 2
  store ptr %45, ptr %47, align 8
  br label %50

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %37
  br label %20

50:                                               ; preds = %33, %44, %16
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrderPrint(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.tree, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.tree, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @preOrderPrint(ptr noundef %13)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.tree, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  call void @preOrderPrint(ptr noundef %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inOrderPrint(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.tree, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @inOrderPrint(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.tree, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %12)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.tree, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  call void @inOrderPrint(ptr noundef %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postOrderPrint(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.tree, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @postOrderPrint(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.tree, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @postOrderPrint(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.tree, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @searchOnTree(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load ptr, ptr @root, align 8
  store ptr %5, ptr %3, align 8
  store i32 0, ptr %4, align 4
  br label %6

6:                                                ; preds = %1, %32
  %7 = load i32, ptr %2, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.tree, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 1, ptr %4, align 4
  br label %33

13:                                               ; preds = %6
  %14 = load i32, ptr %2, align 4
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.tree, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.tree, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %3, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.tree, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %3, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %3, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %28
  br label %6

33:                                               ; preds = %31, %12
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds nuw %struct.tree, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %39)
  br label %44

41:                                               ; preds = %33
  %42 = load i32, ptr %2, align 4
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %42)
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
