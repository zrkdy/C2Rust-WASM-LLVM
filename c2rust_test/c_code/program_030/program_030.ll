; ModuleID = './c_code/temp_compile/bfs.c'
source_filename = "./c_code/temp_compile/bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { [3 x [3 x i32]], i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@head = dso_local global i32 0, align 4
@rear = dso_local global i32 0, align 4
@queue = dso_local global [10000 x ptr] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [18 x i8] c"One method .....\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Total %d methods\0A\00", align 1
@__const.main.origin = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 2, i32 3, i32 -1], [3 x i32] [i32 1, i32 8, i32 5], [3 x i32] [i32 7, i32 4, i32 6]], align 16
@__const.main.target = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 8, i32 -1, i32 4], [3 x i32] [i32 7, i32 6, i32 5]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cube_equal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 1, ptr %7, align 4
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %49, %2
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, ptr %7, align 4
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %52

16:                                               ; preds = %14
  store i32 0, ptr %6, align 4
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i32, ptr %6, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, ptr %7, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %48

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 8
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i32], ptr %26, i64 %28
  %30 = load i32, ptr %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], ptr %34, i64 %36
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], ptr %37, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp ne i32 %33, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  store i32 0, ptr %7, align 4
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %6, align 4
  br label %17

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %5, align 4
  br label %8

52:                                               ; preds = %14
  %53 = load i32, ptr %7, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cube_copy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %7
  store i32 0, ptr %6, align 4
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], ptr %15, i64 %17
  %19 = load i32, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], ptr %18, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i32], ptr %26, i64 0, i64 %28
  store i32 %22, ptr %29, align 4
  br label %30

30:                                               ; preds = %14
  %31 = load i32, ptr %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %6, align 4
  br label %11

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %5, align 4
  br label %7

37:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cube_display(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  store i32 0, ptr %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], ptr %13, i64 %15
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, ptr %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4
  br label %9

25:                                               ; preds = %9
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %3, align 4
  br label %5

30:                                               ; preds = %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_up(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i32], ptr %7, i64 %10
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %21
  store i32 %15, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], ptr %23, i64 %26
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], ptr %27, i64 0, i64 %29
  store i32 -1, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_down(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x i32], ptr %7, i64 %10
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %21
  store i32 %15, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], ptr %23, i64 %26
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], ptr %27, i64 0, i64 %29
  store i32 -1, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_left(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x i32], ptr %7, i64 %9
  %11 = load i32, ptr %6, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %21
  store i32 %15, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], ptr %26, i64 0, i64 %29
  store i32 -1, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_right(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x i32], ptr %7, i64 %9
  %11 = load i32, ptr %6, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %21
  store i32 %15, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32], ptr %23, i64 %25
  %27 = load i32, ptr %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], ptr %26, i64 0, i64 %29
  store i32 -1, ptr %30, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayoutcome(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %6, %1
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 0
  %9 = getelementptr inbounds [3 x [3 x i32]], ptr %8, i64 0, i64 0
  call void @cube_display(ptr noundef %9)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %2, align 8
  br label %3

16:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inme(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %23, %2
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
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds [3 x [3 x i32]], ptr %17, i64 0, i64 0
  %19 = load ptr, ptr %4, align 8
  %20 = call i32 @cube_equal(ptr noundef %18, ptr noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, ptr %5, align 4
  br label %23

23:                                               ; preds = %22, %15
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %3, align 8
  br label %6

27:                                               ; preds = %13
  %28 = load i32, ptr %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @queue_empty() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = load i32, ptr @rear, align 4
  %3 = icmp eq i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @full() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = load i32, ptr @rear, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 10000
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
  %6 = getelementptr inbounds [10000 x ptr], ptr @queue, i64 0, i64 %5
  store ptr %3, ptr %6, align 8
  %7 = load i32, ptr @rear, align 4
  %8 = add nsw i32 %7, 1
  %9 = srem i32 %8, 10000
  store i32 %9, ptr @rear, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @dequeue() #0 {
  %1 = alloca ptr, align 8
  %2 = load i32, ptr @head, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [10000 x ptr], ptr @queue, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @head, align 4
  %7 = add nsw i32 %6, 1
  %8 = srem i32 %7, 10000
  store i32 %8, ptr @head, align 4
  %9 = load ptr, ptr %1, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @queue_top() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [10000 x ptr], ptr @queue, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfs_search(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [3 x [3 x i32]], align 16
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %13 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %13, ptr %9, align 8
  %14 = load i32, ptr %6, align 4
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 1
  store i32 %14, ptr %16, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 2
  store i32 %17, ptr %19, align 8
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 3
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds [3 x [3 x i32]], ptr %24, i64 0, i64 0
  call void @cube_copy(ptr noundef %22, ptr noundef %25)
  %26 = load ptr, ptr %9, align 8
  call void @enqueue(ptr noundef %26)
  store i32 0, ptr %12, align 4
  br label %27

27:                                               ; preds = %217, %4
  %28 = call i32 @queue_empty()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %218

31:                                               ; preds = %27
  %32 = call ptr @queue_top()
  store ptr %32, ptr %9, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds [3 x [3 x i32]], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr %8, align 8
  %37 = call i32 @cube_equal(ptr noundef %35, ptr noundef %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %41 = load ptr, ptr %9, align 8
  call void @displayoutcome(ptr noundef %41)
  %42 = load i32, ptr %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %12, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = call ptr @dequeue()
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds nuw %struct.Node, ptr %46, i32 0, i32 0
  %48 = getelementptr inbounds [3 x [3 x i32]], ptr %47, i64 0, i64 0
  %49 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %9, align 8
  %51 = getelementptr inbounds nuw %struct.Node, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %44
  %55 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %56 = load ptr, ptr %9, align 8
  %57 = getelementptr inbounds nuw %struct.Node, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds nuw %struct.Node, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  call void @move_up(ptr noundef %55, i32 noundef %58, i32 noundef %61)
  %62 = load ptr, ptr %9, align 8
  %63 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %64 = call i32 @inme(ptr noundef %62, ptr noundef %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %54
  %67 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %67, ptr %10, align 8
  %68 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %69 = load ptr, ptr %10, align 8
  %70 = getelementptr inbounds nuw %struct.Node, ptr %69, i32 0, i32 0
  %71 = getelementptr inbounds [3 x [3 x i32]], ptr %70, i64 0, i64 0
  call void @cube_copy(ptr noundef %68, ptr noundef %71)
  %72 = load ptr, ptr %9, align 8
  %73 = getelementptr inbounds nuw %struct.Node, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load ptr, ptr %10, align 8
  %77 = getelementptr inbounds nuw %struct.Node, ptr %76, i32 0, i32 1
  store i32 %75, ptr %77, align 4
  %78 = load ptr, ptr %9, align 8
  %79 = getelementptr inbounds nuw %struct.Node, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds nuw %struct.Node, ptr %81, i32 0, i32 2
  store i32 %80, ptr %82, align 8
  %83 = load ptr, ptr %9, align 8
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds nuw %struct.Node, ptr %84, i32 0, i32 3
  store ptr %83, ptr %85, align 8
  %86 = load ptr, ptr %10, align 8
  call void @enqueue(ptr noundef %86)
  br label %87

87:                                               ; preds = %66, %54
  br label %88

88:                                               ; preds = %87, %44
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr inbounds nuw %struct.Node, ptr %89, i32 0, i32 0
  %91 = getelementptr inbounds [3 x [3 x i32]], ptr %90, i64 0, i64 0
  %92 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %9, align 8
  %94 = getelementptr inbounds nuw %struct.Node, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp slt i32 %95, 2
  br i1 %96, label %97, label %131

97:                                               ; preds = %88
  %98 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %99 = load ptr, ptr %9, align 8
  %100 = getelementptr inbounds nuw %struct.Node, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load ptr, ptr %9, align 8
  %103 = getelementptr inbounds nuw %struct.Node, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  call void @move_down(ptr noundef %98, i32 noundef %101, i32 noundef %104)
  %105 = load ptr, ptr %9, align 8
  %106 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %107 = call i32 @inme(ptr noundef %105, ptr noundef %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %97
  %110 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %110, ptr %10, align 8
  %111 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %112 = load ptr, ptr %10, align 8
  %113 = getelementptr inbounds nuw %struct.Node, ptr %112, i32 0, i32 0
  %114 = getelementptr inbounds [3 x [3 x i32]], ptr %113, i64 0, i64 0
  call void @cube_copy(ptr noundef %111, ptr noundef %114)
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds nuw %struct.Node, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = load ptr, ptr %10, align 8
  %120 = getelementptr inbounds nuw %struct.Node, ptr %119, i32 0, i32 1
  store i32 %118, ptr %120, align 4
  %121 = load ptr, ptr %9, align 8
  %122 = getelementptr inbounds nuw %struct.Node, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = load ptr, ptr %10, align 8
  %125 = getelementptr inbounds nuw %struct.Node, ptr %124, i32 0, i32 2
  store i32 %123, ptr %125, align 8
  %126 = load ptr, ptr %9, align 8
  %127 = load ptr, ptr %10, align 8
  %128 = getelementptr inbounds nuw %struct.Node, ptr %127, i32 0, i32 3
  store ptr %126, ptr %128, align 8
  %129 = load ptr, ptr %10, align 8
  call void @enqueue(ptr noundef %129)
  br label %130

130:                                              ; preds = %109, %97
  br label %131

131:                                              ; preds = %130, %88
  %132 = load ptr, ptr %9, align 8
  %133 = getelementptr inbounds nuw %struct.Node, ptr %132, i32 0, i32 0
  %134 = getelementptr inbounds [3 x [3 x i32]], ptr %133, i64 0, i64 0
  %135 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %134, ptr noundef %135)
  %136 = load ptr, ptr %9, align 8
  %137 = getelementptr inbounds nuw %struct.Node, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %174

140:                                              ; preds = %131
  %141 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %142 = load ptr, ptr %9, align 8
  %143 = getelementptr inbounds nuw %struct.Node, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %9, align 8
  %146 = getelementptr inbounds nuw %struct.Node, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 8
  call void @move_left(ptr noundef %141, i32 noundef %144, i32 noundef %147)
  %148 = load ptr, ptr %9, align 8
  %149 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %150 = call i32 @inme(ptr noundef %148, ptr noundef %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %173, label %152

152:                                              ; preds = %140
  %153 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %153, ptr %10, align 8
  %154 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %155 = load ptr, ptr %10, align 8
  %156 = getelementptr inbounds nuw %struct.Node, ptr %155, i32 0, i32 0
  %157 = getelementptr inbounds [3 x [3 x i32]], ptr %156, i64 0, i64 0
  call void @cube_copy(ptr noundef %154, ptr noundef %157)
  %158 = load ptr, ptr %9, align 8
  %159 = getelementptr inbounds nuw %struct.Node, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %10, align 8
  %162 = getelementptr inbounds nuw %struct.Node, ptr %161, i32 0, i32 1
  store i32 %160, ptr %162, align 4
  %163 = load ptr, ptr %9, align 8
  %164 = getelementptr inbounds nuw %struct.Node, ptr %163, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = load ptr, ptr %10, align 8
  %168 = getelementptr inbounds nuw %struct.Node, ptr %167, i32 0, i32 2
  store i32 %166, ptr %168, align 8
  %169 = load ptr, ptr %9, align 8
  %170 = load ptr, ptr %10, align 8
  %171 = getelementptr inbounds nuw %struct.Node, ptr %170, i32 0, i32 3
  store ptr %169, ptr %171, align 8
  %172 = load ptr, ptr %10, align 8
  call void @enqueue(ptr noundef %172)
  br label %173

173:                                              ; preds = %152, %140
  br label %174

174:                                              ; preds = %173, %131
  %175 = load ptr, ptr %9, align 8
  %176 = getelementptr inbounds nuw %struct.Node, ptr %175, i32 0, i32 0
  %177 = getelementptr inbounds [3 x [3 x i32]], ptr %176, i64 0, i64 0
  %178 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %177, ptr noundef %178)
  %179 = load ptr, ptr %9, align 8
  %180 = getelementptr inbounds nuw %struct.Node, ptr %179, i32 0, i32 2
  %181 = load i32, ptr %180, align 8
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %183, label %217

183:                                              ; preds = %174
  %184 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %185 = load ptr, ptr %9, align 8
  %186 = getelementptr inbounds nuw %struct.Node, ptr %185, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = load ptr, ptr %9, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  call void @move_right(ptr noundef %184, i32 noundef %187, i32 noundef %190)
  %191 = load ptr, ptr %9, align 8
  %192 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %193 = call i32 @inme(ptr noundef %191, ptr noundef %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %216, label %195

195:                                              ; preds = %183
  %196 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %196, ptr %10, align 8
  %197 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %198 = load ptr, ptr %10, align 8
  %199 = getelementptr inbounds nuw %struct.Node, ptr %198, i32 0, i32 0
  %200 = getelementptr inbounds [3 x [3 x i32]], ptr %199, i64 0, i64 0
  call void @cube_copy(ptr noundef %197, ptr noundef %200)
  %201 = load ptr, ptr %9, align 8
  %202 = getelementptr inbounds nuw %struct.Node, ptr %201, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = load ptr, ptr %10, align 8
  %205 = getelementptr inbounds nuw %struct.Node, ptr %204, i32 0, i32 1
  store i32 %203, ptr %205, align 4
  %206 = load ptr, ptr %9, align 8
  %207 = getelementptr inbounds nuw %struct.Node, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  %209 = add nsw i32 %208, 1
  %210 = load ptr, ptr %10, align 8
  %211 = getelementptr inbounds nuw %struct.Node, ptr %210, i32 0, i32 2
  store i32 %209, ptr %211, align 8
  %212 = load ptr, ptr %9, align 8
  %213 = load ptr, ptr %10, align 8
  %214 = getelementptr inbounds nuw %struct.Node, ptr %213, i32 0, i32 3
  store ptr %212, ptr %214, align 8
  %215 = load ptr, ptr %10, align 8
  call void @enqueue(ptr noundef %215)
  br label %216

216:                                              ; preds = %195, %183
  br label %217

217:                                              ; preds = %216, %174
  br label %27

218:                                              ; preds = %27
  %219 = load i32, ptr %12, align 4
  %220 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %219)
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [3 x [3 x i32]], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x [3 x i32]], align 16
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const.main.origin, i64 36, i1 false)
  store i32 0, ptr %7, align 4
  store i32 2, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %9, ptr align 16 @__const.main.target, i64 36, i1 false)
  %10 = getelementptr inbounds [3 x [3 x i32]], ptr %6, i64 0, i64 0
  %11 = load i32, ptr %7, align 4
  %12 = load i32, ptr %8, align 4
  %13 = getelementptr inbounds [3 x [3 x i32]], ptr %9, i64 0, i64 0
  call void @bfs_search(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
