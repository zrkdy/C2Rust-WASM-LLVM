; ModuleID = './c_code/temp_compile/7.1.c'
source_filename = "./c_code/temp_compile/7.1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, i32, ptr }

@head = dso_local global i32 0, align 4
@rear = dso_local global i32 0, align 4
@queue = dso_local global [1000 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sp = dso_local global i32 -1, align 4
@stack = dso_local global [100 x ptr] zeroinitializer, align 16
@__const.main.map = private unnamed_addr constant [7 x [7 x i32]] [[7 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1], [7 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0], [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0], [7 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1], [7 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 0], [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0], [7 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0]], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"use backtrace:\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"use DFS:\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"use BFS:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qempty() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = load i32, ptr @rear, align 4
  %3 = icmp eq i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfull() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = load i32, ptr @rear, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 1000
  %5 = icmp eq i32 %1, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @rear, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1000 x ptr], ptr @queue, i64 0, i64 %5
  store ptr %3, ptr %6, align 8
  %7 = load i32, ptr @rear, align 4
  %8 = add nsw i32 %7, 1
  %9 = srem i32 %8, 1000
  store i32 %9, ptr @rear, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @dequeue() #0 {
  %1 = alloca ptr, align 8
  %2 = load i32, ptr @head, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [1000 x ptr], ptr @queue, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @head, align 4
  %7 = add nsw i32 %6, 1
  %8 = srem i32 %7, 1000
  store i32 %8, ptr @head, align 4
  %9 = load ptr, ptr %1, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isneibor(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [7 x i32], ptr %7, i64 %9
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i32], ptr %10, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getneibors(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %32, %4
  %12 = load i32, ptr %10, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 8
  %16 = load i32, ptr %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [7 x i32], ptr %15, i64 %17
  %19 = load i32, ptr %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [7 x i32], ptr %18, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load i32, ptr %10, align 4
  %26 = load ptr, ptr %7, align 8
  %27 = load i32, ptr %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %9, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, ptr %26, i64 %29
  store i32 %25, ptr %30, align 4
  br label %31

31:                                               ; preds = %24, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, ptr %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %10, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, ptr %9, align 4
  %37 = load ptr, ptr %8, align 8
  store i32 %36, ptr %37, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayoutcome(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 7
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 0)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inme(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, ptr %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %3, align 8
  br label %6

26:                                               ; preds = %13
  %27 = load i32, ptr %5, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayout_come(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 0)
  br label %4

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %2, align 8
  br label %4

15:                                               ; preds = %4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfs_search(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [7 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %9 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 0
  store i32 0, ptr %11, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %5, align 8
  call void @enqueue(ptr noundef %16)
  br label %17

17:                                               ; preds = %75, %1
  %18 = call i32 @qempty()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = call ptr @dequeue()
  store ptr %22, ptr %5, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %4, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load ptr, ptr %2, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw %struct.Node, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8
  %33 = call i32 @isneibor(ptr noundef %29, i32 noundef %32, i32 noundef 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load ptr, ptr %5, align 8
  call void @displayout_come(ptr noundef %36)
  br label %37

37:                                               ; preds = %35, %28, %21
  %38 = load ptr, ptr %2, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.Node, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds [7 x i32], ptr %6, i64 0, i64 0
  call void @getneibors(ptr noundef %38, i32 noundef %41, ptr noundef %42, ptr noundef %7)
  store i32 0, ptr %3, align 4
  br label %43

43:                                               ; preds = %72, %37
  %44 = load i32, ptr %3, align 4
  %45 = load i32, ptr %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [7 x i32], ptr %6, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = call i32 @inme(ptr noundef %48, i32 noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %47
  %56 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %56, ptr %8, align 8
  %57 = load i32, ptr %4, align 4
  %58 = add nsw i32 %57, 1
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds nuw %struct.Node, ptr %59, i32 0, i32 1
  store i32 %58, ptr %60, align 4
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 2
  store ptr %61, ptr %63, align 8
  %64 = load i32, ptr %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [7 x i32], ptr %6, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr inbounds nuw %struct.Node, ptr %68, i32 0, i32 0
  store i32 %67, ptr %69, align 8
  %70 = load ptr, ptr %8, align 8
  call void @enqueue(ptr noundef %70)
  br label %71

71:                                               ; preds = %55, %47
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %3, align 4
  br label %43

75:                                               ; preds = %43
  br label %17

76:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sempty() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

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
define dso_local void @dfs_search(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %8 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 0
  store i32 0, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 2
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  call void @push(ptr noundef %15)
  br label %16

16:                                               ; preds = %76, %1
  %17 = call i32 @sempty()
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = call ptr @top()
  store ptr %21, ptr %3, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = call i32 @isneibor(ptr noundef %27, i32 noundef %30, i32 noundef 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 8
  call void @displayout_come(ptr noundef %34)
  br label %35

35:                                               ; preds = %33, %26, %20
  %36 = call ptr @pop()
  %37 = load ptr, ptr %2, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds [7 x i32], ptr %5, i64 0, i64 0
  call void @getneibors(ptr noundef %37, i32 noundef %40, ptr noundef %41, ptr noundef %4)
  store i32 0, ptr %6, align 4
  br label %42

42:                                               ; preds = %73, %35
  %43 = load i32, ptr %6, align 4
  %44 = load i32, ptr %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load ptr, ptr %3, align 8
  %48 = load i32, ptr %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i32], ptr %5, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @inme(ptr noundef %47, i32 noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %46
  %55 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %55, ptr %7, align 8
  %56 = load i32, ptr %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [7 x i32], ptr %5, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw %struct.Node, ptr %60, i32 0, i32 0
  store i32 %59, ptr %61, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = load ptr, ptr %7, align 8
  %67 = getelementptr inbounds nuw %struct.Node, ptr %66, i32 0, i32 1
  store i32 %65, ptr %67, align 4
  %68 = load ptr, ptr %3, align 8
  %69 = load ptr, ptr %7, align 8
  %70 = getelementptr inbounds nuw %struct.Node, ptr %69, i32 0, i32 2
  store ptr %68, ptr %70, align 8
  %71 = load ptr, ptr %7, align 8
  call void @push(ptr noundef %71)
  br label %72

72:                                               ; preds = %54, %46
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %6, align 4
  br label %42

76:                                               ; preds = %42
  br label %16

77:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backtrace(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 7
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @isneibor(ptr noundef %16, i32 noundef %22, i32 noundef 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load ptr, ptr %6, align 8
  call void @displayoutcome(ptr noundef %26)
  br label %83

27:                                               ; preds = %15, %4
  %28 = load ptr, ptr %6, align 8
  %29 = load i32, ptr %7, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %28, i64 %31
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %11, align 4
  %34 = load ptr, ptr %5, align 8
  %35 = load i32, ptr %11, align 4
  %36 = getelementptr inbounds [7 x i32], ptr %9, i64 0, i64 0
  call void @getneibors(ptr noundef %34, i32 noundef %35, ptr noundef %36, ptr noundef %10)
  store i32 0, ptr %12, align 4
  br label %37

37:                                               ; preds = %80, %27
  %38 = load i32, ptr %12, align 4
  %39 = load i32, ptr %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = load ptr, ptr %8, align 8
  %43 = load i32, ptr %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x i32], ptr %9, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %42, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %41
  %52 = load i32, ptr %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i32], ptr %9, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 %55, ptr %59, align 4
  %60 = load ptr, ptr %8, align 8
  %61 = load i32, ptr %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [7 x i32], ptr %9, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %60, i64 %65
  store i32 1, ptr %66, align 4
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %6, align 8
  %69 = load i32, ptr %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = load ptr, ptr %8, align 8
  call void @backtrace(ptr noundef %67, ptr noundef %68, i32 noundef %70, ptr noundef %71)
  %72 = load ptr, ptr %8, align 8
  %73 = load i32, ptr %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [7 x i32], ptr %9, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %72, i64 %77
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %51, %41
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %12, align 4
  br label %37

83:                                               ; preds = %25, %37
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [7 x [7 x i32]], align 16
  %2 = alloca [7 x i32], align 16
  %3 = alloca [7 x i32], align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %1, ptr align 16 @__const.main.map, i64 196, i1 false)
  %4 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  store i32 0, ptr %4, align 16
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 28, i1 false)
  %5 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 0
  store i32 1, ptr %5, align 16
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %7 = getelementptr inbounds [7 x [7 x i32]], ptr %1, i64 0, i64 0
  %8 = getelementptr inbounds [7 x i32], ptr %2, i64 0, i64 0
  %9 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 0
  call void @backtrace(ptr noundef %7, ptr noundef %8, i32 noundef 1, ptr noundef %9)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %11 = getelementptr inbounds [7 x [7 x i32]], ptr %1, i64 0, i64 0
  call void @dfs_search(ptr noundef %11)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %13 = getelementptr inbounds [7 x [7 x i32]], ptr %1, i64 0, i64 0
  call void @bfs_search(ptr noundef %13)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
