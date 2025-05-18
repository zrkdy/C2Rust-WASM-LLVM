; ModuleID = './c_code/temp_compile/hillclimb.c'
source_filename = "./c_code/temp_compile/hillclimb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { [3 x [3 x i32]], i32, i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@sp = dso_local global i32 -1, align 4
@stack = dso_local global [10000 x ptr] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"************\0A\00", align 1
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
define dso_local i32 @calc_weight(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %52, %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  store i32 0, ptr %7, align 4
  br label %12

12:                                               ; preds = %48, %11
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], ptr %16, i64 %18
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %48

26:                                               ; preds = %15
  %27 = load ptr, ptr %4, align 8
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x i32], ptr %27, i64 %29
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], ptr %30, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], ptr %35, i64 %37
  %39 = load i32, ptr %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i32], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp ne i32 %34, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32, ptr %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %5, align 4
  br label %47

47:                                               ; preds = %44, %26
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, ptr %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %7, align 4
  br label %12

51:                                               ; preds = %12
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %6, align 4
  br label %8

55:                                               ; preds = %8
  %56 = load i32, ptr %5, align 4
  ret i32 %56
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
  %7 = getelementptr inbounds [10000 x ptr], ptr @stack, i64 0, i64 %6
  store ptr %3, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @pop() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [10000 x ptr], ptr @stack, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @top() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [10000 x ptr], ptr @stack, i64 0, i64 %2
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
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 4
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
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %3, align 8
  br label %6

27:                                               ; preds = %13
  %28 = load i32, ptr %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertsort(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 1, ptr %5, align 4
  br label %8

8:                                                ; preds = %58, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %7, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, ptr %6, align 4
  br label %20

20:                                               ; preds = %48, %12
  %21 = load i32, ptr %6, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  %25 = load i32, ptr %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds nuw %struct.Node, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %30, %33
  br label %35

35:                                               ; preds = %23, %20
  %36 = phi i1 [ false, %20 ], [ %34, %23 ]
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load ptr, ptr %3, align 8
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = load i32, ptr %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  store ptr %42, ptr %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, ptr %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %6, align 4
  br label %20

51:                                               ; preds = %35
  %52 = load ptr, ptr %7, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  store ptr %52, ptr %57, align 8
  br label %58

58:                                               ; preds = %51
  %59 = load i32, ptr %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %5, align 4
  br label %8

61:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hillclimbing(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [3 x [3 x i32]], align 16
  %12 = alloca i32, align 4
  %13 = alloca [4 x ptr], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %16 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %16, ptr %9, align 8
  %17 = load i32, ptr %6, align 4
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %21, i32 0, i32 2
  store i32 %20, ptr %22, align 8
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 4
  store ptr null, ptr %24, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = call i32 @calc_weight(ptr noundef %25, ptr noundef %26)
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 3
  store i32 %27, ptr %29, align 4
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds nuw %struct.Node, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds [3 x [3 x i32]], ptr %32, i64 0, i64 0
  call void @cube_copy(ptr noundef %30, ptr noundef %33)
  %34 = load ptr, ptr %9, align 8
  call void @push(ptr noundef %34)
  store i32 0, ptr %12, align 4
  br label %35

35:                                               ; preds = %285, %4
  %36 = call i32 @empty()
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %286

39:                                               ; preds = %35
  %40 = load i32, ptr %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %12, align 4
  %42 = call ptr @top()
  store ptr %42, ptr %9, align 8
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 0
  %45 = getelementptr inbounds [3 x [3 x i32]], ptr %44, i64 0, i64 0
  call void @cube_display(ptr noundef %45)
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %47 = load ptr, ptr %9, align 8
  %48 = getelementptr inbounds nuw %struct.Node, ptr %47, i32 0, i32 0
  %49 = getelementptr inbounds [3 x [3 x i32]], ptr %48, i64 0, i64 0
  %50 = load ptr, ptr %8, align 8
  %51 = call i32 @cube_equal(ptr noundef %49, ptr noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load ptr, ptr %9, align 8
  call void @displayoutcome(ptr noundef %54)
  br label %286

55:                                               ; preds = %39
  %56 = call ptr @pop()
  store i32 0, ptr %14, align 4
  %57 = load ptr, ptr %9, align 8
  %58 = getelementptr inbounds nuw %struct.Node, ptr %57, i32 0, i32 0
  %59 = getelementptr inbounds [3 x [3 x i32]], ptr %58, i64 0, i64 0
  %60 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %59, ptr noundef %60)
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds nuw %struct.Node, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %110

65:                                               ; preds = %55
  %66 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds nuw %struct.Node, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = load ptr, ptr %9, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  call void @move_up(ptr noundef %66, i32 noundef %69, i32 noundef %72)
  %73 = load ptr, ptr %9, align 8
  %74 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %75 = call i32 @inme(ptr noundef %73, ptr noundef %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %109, label %77

77:                                               ; preds = %65
  %78 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %78, ptr %10, align 8
  %79 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %80 = load ptr, ptr %10, align 8
  %81 = getelementptr inbounds nuw %struct.Node, ptr %80, i32 0, i32 0
  %82 = getelementptr inbounds [3 x [3 x i32]], ptr %81, i64 0, i64 0
  call void @cube_copy(ptr noundef %79, ptr noundef %82)
  %83 = load ptr, ptr %9, align 8
  %84 = getelementptr inbounds nuw %struct.Node, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds nuw %struct.Node, ptr %87, i32 0, i32 1
  store i32 %86, ptr %88, align 4
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr inbounds nuw %struct.Node, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 2
  store i32 %91, ptr %93, align 8
  %94 = load ptr, ptr %9, align 8
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds nuw %struct.Node, ptr %95, i32 0, i32 4
  store ptr %94, ptr %96, align 8
  %97 = load ptr, ptr %8, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw %struct.Node, ptr %98, i32 0, i32 0
  %100 = getelementptr inbounds [3 x [3 x i32]], ptr %99, i64 0, i64 0
  %101 = call i32 @calc_weight(ptr noundef %97, ptr noundef %100)
  %102 = load ptr, ptr %10, align 8
  %103 = getelementptr inbounds nuw %struct.Node, ptr %102, i32 0, i32 3
  store i32 %101, ptr %103, align 4
  %104 = load ptr, ptr %10, align 8
  %105 = load i32, ptr %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %14, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %107
  store ptr %104, ptr %108, align 8
  br label %109

109:                                              ; preds = %77, %65
  br label %110

110:                                              ; preds = %109, %55
  %111 = load ptr, ptr %9, align 8
  %112 = getelementptr inbounds nuw %struct.Node, ptr %111, i32 0, i32 0
  %113 = getelementptr inbounds [3 x [3 x i32]], ptr %112, i64 0, i64 0
  %114 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %113, ptr noundef %114)
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds nuw %struct.Node, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %164

119:                                              ; preds = %110
  %120 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %121 = load ptr, ptr %9, align 8
  %122 = getelementptr inbounds nuw %struct.Node, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %9, align 8
  %125 = getelementptr inbounds nuw %struct.Node, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  call void @move_down(ptr noundef %120, i32 noundef %123, i32 noundef %126)
  %127 = load ptr, ptr %9, align 8
  %128 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %129 = call i32 @inme(ptr noundef %127, ptr noundef %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %119
  %132 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %132, ptr %10, align 8
  %133 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %134 = load ptr, ptr %10, align 8
  %135 = getelementptr inbounds nuw %struct.Node, ptr %134, i32 0, i32 0
  %136 = getelementptr inbounds [3 x [3 x i32]], ptr %135, i64 0, i64 0
  call void @cube_copy(ptr noundef %133, ptr noundef %136)
  %137 = load ptr, ptr %9, align 8
  %138 = getelementptr inbounds nuw %struct.Node, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = add nsw i32 %139, 1
  %141 = load ptr, ptr %10, align 8
  %142 = getelementptr inbounds nuw %struct.Node, ptr %141, i32 0, i32 1
  store i32 %140, ptr %142, align 4
  %143 = load ptr, ptr %9, align 8
  %144 = getelementptr inbounds nuw %struct.Node, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = load ptr, ptr %10, align 8
  %147 = getelementptr inbounds nuw %struct.Node, ptr %146, i32 0, i32 2
  store i32 %145, ptr %147, align 8
  %148 = load ptr, ptr %9, align 8
  %149 = load ptr, ptr %10, align 8
  %150 = getelementptr inbounds nuw %struct.Node, ptr %149, i32 0, i32 4
  store ptr %148, ptr %150, align 8
  %151 = load ptr, ptr %8, align 8
  %152 = load ptr, ptr %10, align 8
  %153 = getelementptr inbounds nuw %struct.Node, ptr %152, i32 0, i32 0
  %154 = getelementptr inbounds [3 x [3 x i32]], ptr %153, i64 0, i64 0
  %155 = call i32 @calc_weight(ptr noundef %151, ptr noundef %154)
  %156 = load ptr, ptr %10, align 8
  %157 = getelementptr inbounds nuw %struct.Node, ptr %156, i32 0, i32 3
  store i32 %155, ptr %157, align 4
  %158 = load ptr, ptr %10, align 8
  %159 = load i32, ptr %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %14, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %161
  store ptr %158, ptr %162, align 8
  br label %163

163:                                              ; preds = %131, %119
  br label %164

164:                                              ; preds = %163, %110
  %165 = load ptr, ptr %9, align 8
  %166 = getelementptr inbounds nuw %struct.Node, ptr %165, i32 0, i32 0
  %167 = getelementptr inbounds [3 x [3 x i32]], ptr %166, i64 0, i64 0
  %168 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %167, ptr noundef %168)
  %169 = load ptr, ptr %9, align 8
  %170 = getelementptr inbounds nuw %struct.Node, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %218

173:                                              ; preds = %164
  %174 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %175 = load ptr, ptr %9, align 8
  %176 = getelementptr inbounds nuw %struct.Node, ptr %175, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %9, align 8
  %179 = getelementptr inbounds nuw %struct.Node, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  call void @move_left(ptr noundef %174, i32 noundef %177, i32 noundef %180)
  %181 = load ptr, ptr %9, align 8
  %182 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %183 = call i32 @inme(ptr noundef %181, ptr noundef %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %217, label %185

185:                                              ; preds = %173
  %186 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %186, ptr %10, align 8
  %187 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %188 = load ptr, ptr %10, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 0
  %190 = getelementptr inbounds [3 x [3 x i32]], ptr %189, i64 0, i64 0
  call void @cube_copy(ptr noundef %187, ptr noundef %190)
  %191 = load ptr, ptr %9, align 8
  %192 = getelementptr inbounds nuw %struct.Node, ptr %191, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = load ptr, ptr %10, align 8
  %195 = getelementptr inbounds nuw %struct.Node, ptr %194, i32 0, i32 1
  store i32 %193, ptr %195, align 4
  %196 = load ptr, ptr %9, align 8
  %197 = getelementptr inbounds nuw %struct.Node, ptr %196, i32 0, i32 2
  %198 = load i32, ptr %197, align 8
  %199 = sub nsw i32 %198, 1
  %200 = load ptr, ptr %10, align 8
  %201 = getelementptr inbounds nuw %struct.Node, ptr %200, i32 0, i32 2
  store i32 %199, ptr %201, align 8
  %202 = load ptr, ptr %9, align 8
  %203 = load ptr, ptr %10, align 8
  %204 = getelementptr inbounds nuw %struct.Node, ptr %203, i32 0, i32 4
  store ptr %202, ptr %204, align 8
  %205 = load ptr, ptr %8, align 8
  %206 = load ptr, ptr %10, align 8
  %207 = getelementptr inbounds nuw %struct.Node, ptr %206, i32 0, i32 0
  %208 = getelementptr inbounds [3 x [3 x i32]], ptr %207, i64 0, i64 0
  %209 = call i32 @calc_weight(ptr noundef %205, ptr noundef %208)
  %210 = load ptr, ptr %10, align 8
  %211 = getelementptr inbounds nuw %struct.Node, ptr %210, i32 0, i32 3
  store i32 %209, ptr %211, align 4
  %212 = load ptr, ptr %10, align 8
  %213 = load i32, ptr %14, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %14, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %215
  store ptr %212, ptr %216, align 8
  br label %217

217:                                              ; preds = %185, %173
  br label %218

218:                                              ; preds = %217, %164
  %219 = load ptr, ptr %9, align 8
  %220 = getelementptr inbounds nuw %struct.Node, ptr %219, i32 0, i32 0
  %221 = getelementptr inbounds [3 x [3 x i32]], ptr %220, i64 0, i64 0
  %222 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  call void @cube_copy(ptr noundef %221, ptr noundef %222)
  %223 = load ptr, ptr %9, align 8
  %224 = getelementptr inbounds nuw %struct.Node, ptr %223, i32 0, i32 2
  %225 = load i32, ptr %224, align 8
  %226 = icmp slt i32 %225, 2
  br i1 %226, label %227, label %272

227:                                              ; preds = %218
  %228 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %229 = load ptr, ptr %9, align 8
  %230 = getelementptr inbounds nuw %struct.Node, ptr %229, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = load ptr, ptr %9, align 8
  %233 = getelementptr inbounds nuw %struct.Node, ptr %232, i32 0, i32 2
  %234 = load i32, ptr %233, align 8
  call void @move_right(ptr noundef %228, i32 noundef %231, i32 noundef %234)
  %235 = load ptr, ptr %9, align 8
  %236 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %237 = call i32 @inme(ptr noundef %235, ptr noundef %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %271, label %239

239:                                              ; preds = %227
  %240 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %240, ptr %10, align 8
  %241 = getelementptr inbounds [3 x [3 x i32]], ptr %11, i64 0, i64 0
  %242 = load ptr, ptr %10, align 8
  %243 = getelementptr inbounds nuw %struct.Node, ptr %242, i32 0, i32 0
  %244 = getelementptr inbounds [3 x [3 x i32]], ptr %243, i64 0, i64 0
  call void @cube_copy(ptr noundef %241, ptr noundef %244)
  %245 = load ptr, ptr %9, align 8
  %246 = getelementptr inbounds nuw %struct.Node, ptr %245, i32 0, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = load ptr, ptr %10, align 8
  %249 = getelementptr inbounds nuw %struct.Node, ptr %248, i32 0, i32 1
  store i32 %247, ptr %249, align 4
  %250 = load ptr, ptr %9, align 8
  %251 = getelementptr inbounds nuw %struct.Node, ptr %250, i32 0, i32 2
  %252 = load i32, ptr %251, align 8
  %253 = add nsw i32 %252, 1
  %254 = load ptr, ptr %10, align 8
  %255 = getelementptr inbounds nuw %struct.Node, ptr %254, i32 0, i32 2
  store i32 %253, ptr %255, align 8
  %256 = load ptr, ptr %9, align 8
  %257 = load ptr, ptr %10, align 8
  %258 = getelementptr inbounds nuw %struct.Node, ptr %257, i32 0, i32 4
  store ptr %256, ptr %258, align 8
  %259 = load ptr, ptr %8, align 8
  %260 = load ptr, ptr %10, align 8
  %261 = getelementptr inbounds nuw %struct.Node, ptr %260, i32 0, i32 0
  %262 = getelementptr inbounds [3 x [3 x i32]], ptr %261, i64 0, i64 0
  %263 = call i32 @calc_weight(ptr noundef %259, ptr noundef %262)
  %264 = load ptr, ptr %10, align 8
  %265 = getelementptr inbounds nuw %struct.Node, ptr %264, i32 0, i32 3
  store i32 %263, ptr %265, align 4
  %266 = load ptr, ptr %10, align 8
  %267 = load i32, ptr %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, ptr %14, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %269
  store ptr %266, ptr %270, align 8
  br label %271

271:                                              ; preds = %239, %227
  br label %272

272:                                              ; preds = %271, %218
  store i32 0, ptr %15, align 4
  br label %273

273:                                              ; preds = %282, %272
  %274 = load i32, ptr %15, align 4
  %275 = load i32, ptr %14, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = load i32, ptr %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 %279
  %281 = load ptr, ptr %280, align 8
  call void @push(ptr noundef %281)
  br label %282

282:                                              ; preds = %277
  %283 = load i32, ptr %15, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %15, align 4
  br label %273

285:                                              ; preds = %273
  br label %35

286:                                              ; preds = %53, %35
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
  call void @hillclimbing(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
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
