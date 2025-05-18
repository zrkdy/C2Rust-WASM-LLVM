; ModuleID = './c_code/temp_compile/7.6.c'
source_filename = "./c_code/temp_compile/7.6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Heap = type { i32, i32, ptr }
%struct.Node = type { i32, i32, i32, i32, [3 x [3 x i32]], ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@__const.main.origin = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 2, i32 3, i32 -1], [3 x i32] [i32 1, i32 8, i32 5], [3 x i32] [i32 7, i32 4, i32 6]], align 16
@__const.main.target = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 8, i32 -1, i32 4], [3 x i32] [i32 7, i32 6, i32 5]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_empty(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.Heap, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_swap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds nuw %struct.Heap, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %7, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.Heap, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.Heap, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  store ptr %21, ptr %27, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds nuw %struct.Heap, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  store ptr %28, ptr %34, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_hold(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load i32, ptr %4, align 4
  %9 = mul nsw i32 2, %8
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %5, align 4
  %11 = load i32, ptr %4, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %12, 2
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %4, align 4
  store i32 %14, ptr %7, align 4
  %15 = load i32, ptr %6, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.Heap, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct.Heap, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.Heap, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct.Node, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp slt i32 %29, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %20
  %41 = load i32, ptr %6, align 4
  store i32 %41, ptr %7, align 4
  br label %42

42:                                               ; preds = %40, %20, %2
  %43 = load i32, ptr %5, align 4
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds nuw %struct.Heap, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds nuw %struct.Heap, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds nuw %struct.Heap, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %57, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, ptr %5, align 4
  store i32 %69, ptr %7, align 4
  br label %70

70:                                               ; preds = %68, %48, %42
  %71 = load i32, ptr %7, align 4
  %72 = load i32, ptr %4, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load ptr, ptr %3, align 8
  %76 = load i32, ptr %7, align 4
  %77 = load i32, ptr %4, align 4
  call void @heap_swap(ptr noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %3, align 8
  %79 = load i32, ptr %7, align 4
  call void @heap_hold(ptr noundef %78, i32 noundef %79)
  br label %80

80:                                               ; preds = %74, %70
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @init_heap() #0 {
  %1 = alloca ptr, align 8
  %2 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %2, ptr %1, align 8
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds nuw %struct.Heap, ptr %3, i32 0, i32 0
  store i32 0, ptr %4, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = getelementptr inbounds nuw %struct.Heap, ptr %5, i32 0, i32 1
  store i32 100, ptr %6, align 4
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds nuw %struct.Heap, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = call noalias ptr @malloc(i64 noundef %11) #4
  %13 = load ptr, ptr %1, align 8
  %14 = getelementptr inbounds nuw %struct.Heap, ptr %13, i32 0, i32 2
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %1, align 8
  ret ptr %15
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_heap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %struct.Heap, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  store i32 %9, ptr %5, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.Heap, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct.Heap, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds ptr, ptr %13, i64 %18
  store ptr %10, ptr %19, align 8
  br label %20

20:                                               ; preds = %46, %2
  %21 = load i32, ptr %5, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sdiv i32 %22, 2
  store i32 %23, ptr %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds nuw %struct.Heap, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.Heap, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct.Node, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp sge i32 %34, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %50

46:                                               ; preds = %25
  %47 = load ptr, ptr %3, align 8
  %48 = load i32, ptr %5, align 4
  %49 = load i32, ptr %6, align 4
  call void @heap_swap(ptr noundef %47, i32 noundef %48, i32 noundef %49)
  br label %20

50:                                               ; preds = %45, %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @delete_min(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @heap_empty(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.Heap, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 0
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.Heap, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.Heap, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %17, i64 %22
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.Heap, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds ptr, ptr %27, i64 0
  store ptr %24, ptr %28, align 8
  %29 = load ptr, ptr %3, align 8
  call void @heap_hold(ptr noundef %29, i32 noundef 0)
  %30 = load ptr, ptr %4, align 8
  store ptr %30, ptr %2, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load ptr, ptr %2, align 8
  ret ptr %32
}

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

declare i32 @printf(ptr noundef, ...) #2

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
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 4
  %9 = getelementptr inbounds [3 x [3 x i32]], ptr %8, i64 0, i64 0
  call void @cube_display(ptr noundef %9)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 5
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
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 4
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
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %3, align 8
  br label %6

27:                                               ; preds = %13
  %28 = load i32, ptr %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @astar(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [3 x [3 x i32]], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  %15 = call noalias ptr @malloc(i64 noundef 64) #4
  store ptr %15, ptr %9, align 8
  %16 = load i32, ptr %6, align 4
  %17 = load ptr, ptr %9, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 2
  store i32 %16, ptr %18, align 8
  %19 = load i32, ptr %7, align 4
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 3
  store i32 %19, ptr %21, align 4
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 5
  store ptr null, ptr %23, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 0
  store i32 0, ptr %25, align 8
  %26 = load ptr, ptr %9, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 4
  %31 = getelementptr inbounds [3 x [3 x i32]], ptr %30, i64 0, i64 0
  call void @cube_copy(ptr noundef %28, ptr noundef %31)
  %32 = call ptr @init_heap()
  store ptr %32, ptr %11, align 8
  %33 = load ptr, ptr %11, align 8
  %34 = load ptr, ptr %9, align 8
  call void @insert_heap(ptr noundef %33, ptr noundef %34)
  store i32 0, ptr %13, align 4
  br label %35

35:                                               ; preds = %301, %4
  %36 = load ptr, ptr %11, align 8
  %37 = call i32 @heap_empty(ptr noundef %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %302

40:                                               ; preds = %35
  %41 = load i32, ptr %13, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %13, align 4
  %43 = load ptr, ptr %11, align 8
  %44 = call ptr @delete_min(ptr noundef %43)
  store ptr %44, ptr %9, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds nuw %struct.Node, ptr %45, i32 0, i32 4
  %47 = getelementptr inbounds [3 x [3 x i32]], ptr %46, i64 0, i64 0
  %48 = load ptr, ptr %8, align 8
  %49 = call i32 @cube_equal(ptr noundef %47, ptr noundef %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load ptr, ptr %9, align 8
  call void @displayoutcome(ptr noundef %52)
  br label %302

53:                                               ; preds = %40
  %54 = load ptr, ptr %9, align 8
  %55 = getelementptr inbounds nuw %struct.Node, ptr %54, i32 0, i32 4
  %56 = getelementptr inbounds [3 x [3 x i32]], ptr %55, i64 0, i64 0
  %57 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds nuw %struct.Node, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %53
  %63 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds nuw %struct.Node, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  call void @move_up(ptr noundef %63, i32 noundef %66, i32 noundef %69)
  %70 = load ptr, ptr %9, align 8
  %71 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %72 = call i32 @inme(ptr noundef %70, ptr noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %62
  %75 = call noalias ptr @malloc(i64 noundef 64) #4
  store ptr %75, ptr %10, align 8
  %76 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %77 = load ptr, ptr %10, align 8
  %78 = getelementptr inbounds nuw %struct.Node, ptr %77, i32 0, i32 4
  %79 = getelementptr inbounds [3 x [3 x i32]], ptr %78, i64 0, i64 0
  call void @cube_copy(ptr noundef %76, ptr noundef %79)
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds nuw %struct.Node, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = load ptr, ptr %10, align 8
  %85 = getelementptr inbounds nuw %struct.Node, ptr %84, i32 0, i32 2
  store i32 %83, ptr %85, align 8
  %86 = load ptr, ptr %9, align 8
  %87 = getelementptr inbounds nuw %struct.Node, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds nuw %struct.Node, ptr %89, i32 0, i32 3
  store i32 %88, ptr %90, align 4
  %91 = load ptr, ptr %9, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 5
  store ptr %91, ptr %93, align 8
  %94 = load ptr, ptr %9, align 8
  %95 = getelementptr inbounds nuw %struct.Node, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw %struct.Node, ptr %98, i32 0, i32 0
  store i32 %97, ptr %99, align 8
  %100 = load ptr, ptr %8, align 8
  %101 = load ptr, ptr %10, align 8
  %102 = getelementptr inbounds nuw %struct.Node, ptr %101, i32 0, i32 4
  %103 = getelementptr inbounds [3 x [3 x i32]], ptr %102, i64 0, i64 0
  %104 = call i32 @calc_weight(ptr noundef %100, ptr noundef %103)
  store i32 %104, ptr %14, align 4
  %105 = load ptr, ptr %10, align 8
  %106 = getelementptr inbounds nuw %struct.Node, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8
  %108 = load i32, ptr %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = load ptr, ptr %10, align 8
  %111 = getelementptr inbounds nuw %struct.Node, ptr %110, i32 0, i32 1
  store i32 %109, ptr %111, align 4
  %112 = load ptr, ptr %11, align 8
  %113 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %112, ptr noundef %113)
  br label %114

114:                                              ; preds = %74, %62
  br label %115

115:                                              ; preds = %114, %53
  %116 = load ptr, ptr %9, align 8
  %117 = getelementptr inbounds nuw %struct.Node, ptr %116, i32 0, i32 4
  %118 = getelementptr inbounds [3 x [3 x i32]], ptr %117, i64 0, i64 0
  %119 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %118, ptr noundef %119)
  %120 = load ptr, ptr %9, align 8
  %121 = getelementptr inbounds nuw %struct.Node, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %121, align 8
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %177

124:                                              ; preds = %115
  %125 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %126 = load ptr, ptr %9, align 8
  %127 = getelementptr inbounds nuw %struct.Node, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = load ptr, ptr %9, align 8
  %130 = getelementptr inbounds nuw %struct.Node, ptr %129, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  call void @move_down(ptr noundef %125, i32 noundef %128, i32 noundef %131)
  %132 = load ptr, ptr %9, align 8
  %133 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %134 = call i32 @inme(ptr noundef %132, ptr noundef %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %176, label %136

136:                                              ; preds = %124
  %137 = call noalias ptr @malloc(i64 noundef 64) #4
  store ptr %137, ptr %10, align 8
  %138 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %139 = load ptr, ptr %10, align 8
  %140 = getelementptr inbounds nuw %struct.Node, ptr %139, i32 0, i32 4
  %141 = getelementptr inbounds [3 x [3 x i32]], ptr %140, i64 0, i64 0
  call void @cube_copy(ptr noundef %138, ptr noundef %141)
  %142 = load ptr, ptr %9, align 8
  %143 = getelementptr inbounds nuw %struct.Node, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 8
  %145 = add nsw i32 %144, 1
  %146 = load ptr, ptr %10, align 8
  %147 = getelementptr inbounds nuw %struct.Node, ptr %146, i32 0, i32 2
  store i32 %145, ptr %147, align 8
  %148 = load ptr, ptr %9, align 8
  %149 = getelementptr inbounds nuw %struct.Node, ptr %148, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %10, align 8
  %152 = getelementptr inbounds nuw %struct.Node, ptr %151, i32 0, i32 3
  store i32 %150, ptr %152, align 4
  %153 = load ptr, ptr %9, align 8
  %154 = load ptr, ptr %10, align 8
  %155 = getelementptr inbounds nuw %struct.Node, ptr %154, i32 0, i32 5
  store ptr %153, ptr %155, align 8
  %156 = load ptr, ptr %9, align 8
  %157 = getelementptr inbounds nuw %struct.Node, ptr %156, i32 0, i32 0
  %158 = load i32, ptr %157, align 8
  %159 = add nsw i32 %158, 1
  %160 = load ptr, ptr %10, align 8
  %161 = getelementptr inbounds nuw %struct.Node, ptr %160, i32 0, i32 0
  store i32 %159, ptr %161, align 8
  %162 = load ptr, ptr %8, align 8
  %163 = load ptr, ptr %10, align 8
  %164 = getelementptr inbounds nuw %struct.Node, ptr %163, i32 0, i32 4
  %165 = getelementptr inbounds [3 x [3 x i32]], ptr %164, i64 0, i64 0
  %166 = call i32 @calc_weight(ptr noundef %162, ptr noundef %165)
  store i32 %166, ptr %14, align 4
  %167 = load ptr, ptr %10, align 8
  %168 = getelementptr inbounds nuw %struct.Node, ptr %167, i32 0, i32 0
  %169 = load i32, ptr %168, align 8
  %170 = load i32, ptr %14, align 4
  %171 = add nsw i32 %169, %170
  %172 = load ptr, ptr %10, align 8
  %173 = getelementptr inbounds nuw %struct.Node, ptr %172, i32 0, i32 1
  store i32 %171, ptr %173, align 4
  %174 = load ptr, ptr %11, align 8
  %175 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %174, ptr noundef %175)
  br label %176

176:                                              ; preds = %136, %124
  br label %177

177:                                              ; preds = %176, %115
  %178 = load ptr, ptr %9, align 8
  %179 = getelementptr inbounds nuw %struct.Node, ptr %178, i32 0, i32 4
  %180 = getelementptr inbounds [3 x [3 x i32]], ptr %179, i64 0, i64 0
  %181 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %180, ptr noundef %181)
  %182 = load ptr, ptr %9, align 8
  %183 = getelementptr inbounds nuw %struct.Node, ptr %182, i32 0, i32 3
  %184 = load i32, ptr %183, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %239

186:                                              ; preds = %177
  %187 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %188 = load ptr, ptr %9, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = load ptr, ptr %9, align 8
  %192 = getelementptr inbounds nuw %struct.Node, ptr %191, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  call void @move_left(ptr noundef %187, i32 noundef %190, i32 noundef %193)
  %194 = load ptr, ptr %9, align 8
  %195 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %196 = call i32 @inme(ptr noundef %194, ptr noundef %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %238, label %198

198:                                              ; preds = %186
  %199 = call noalias ptr @malloc(i64 noundef 64) #4
  store ptr %199, ptr %10, align 8
  %200 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %201 = load ptr, ptr %10, align 8
  %202 = getelementptr inbounds nuw %struct.Node, ptr %201, i32 0, i32 4
  %203 = getelementptr inbounds [3 x [3 x i32]], ptr %202, i64 0, i64 0
  call void @cube_copy(ptr noundef %200, ptr noundef %203)
  %204 = load ptr, ptr %9, align 8
  %205 = getelementptr inbounds nuw %struct.Node, ptr %204, i32 0, i32 2
  %206 = load i32, ptr %205, align 8
  %207 = load ptr, ptr %10, align 8
  %208 = getelementptr inbounds nuw %struct.Node, ptr %207, i32 0, i32 2
  store i32 %206, ptr %208, align 8
  %209 = load ptr, ptr %9, align 8
  %210 = getelementptr inbounds nuw %struct.Node, ptr %209, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load ptr, ptr %10, align 8
  %214 = getelementptr inbounds nuw %struct.Node, ptr %213, i32 0, i32 3
  store i32 %212, ptr %214, align 4
  %215 = load ptr, ptr %9, align 8
  %216 = load ptr, ptr %10, align 8
  %217 = getelementptr inbounds nuw %struct.Node, ptr %216, i32 0, i32 5
  store ptr %215, ptr %217, align 8
  %218 = load ptr, ptr %9, align 8
  %219 = getelementptr inbounds nuw %struct.Node, ptr %218, i32 0, i32 0
  %220 = load i32, ptr %219, align 8
  %221 = add nsw i32 %220, 1
  %222 = load ptr, ptr %10, align 8
  %223 = getelementptr inbounds nuw %struct.Node, ptr %222, i32 0, i32 0
  store i32 %221, ptr %223, align 8
  %224 = load ptr, ptr %8, align 8
  %225 = load ptr, ptr %10, align 8
  %226 = getelementptr inbounds nuw %struct.Node, ptr %225, i32 0, i32 4
  %227 = getelementptr inbounds [3 x [3 x i32]], ptr %226, i64 0, i64 0
  %228 = call i32 @calc_weight(ptr noundef %224, ptr noundef %227)
  store i32 %228, ptr %14, align 4
  %229 = load ptr, ptr %10, align 8
  %230 = getelementptr inbounds nuw %struct.Node, ptr %229, i32 0, i32 0
  %231 = load i32, ptr %230, align 8
  %232 = load i32, ptr %14, align 4
  %233 = add nsw i32 %231, %232
  %234 = load ptr, ptr %10, align 8
  %235 = getelementptr inbounds nuw %struct.Node, ptr %234, i32 0, i32 1
  store i32 %233, ptr %235, align 4
  %236 = load ptr, ptr %11, align 8
  %237 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %236, ptr noundef %237)
  br label %238

238:                                              ; preds = %198, %186
  br label %239

239:                                              ; preds = %238, %177
  %240 = load ptr, ptr %9, align 8
  %241 = getelementptr inbounds nuw %struct.Node, ptr %240, i32 0, i32 4
  %242 = getelementptr inbounds [3 x [3 x i32]], ptr %241, i64 0, i64 0
  %243 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %242, ptr noundef %243)
  %244 = load ptr, ptr %9, align 8
  %245 = getelementptr inbounds nuw %struct.Node, ptr %244, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %248, label %301

248:                                              ; preds = %239
  %249 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %250 = load ptr, ptr %9, align 8
  %251 = getelementptr inbounds nuw %struct.Node, ptr %250, i32 0, i32 2
  %252 = load i32, ptr %251, align 8
  %253 = load ptr, ptr %9, align 8
  %254 = getelementptr inbounds nuw %struct.Node, ptr %253, i32 0, i32 3
  %255 = load i32, ptr %254, align 4
  call void @move_right(ptr noundef %249, i32 noundef %252, i32 noundef %255)
  %256 = load ptr, ptr %9, align 8
  %257 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %258 = call i32 @inme(ptr noundef %256, ptr noundef %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %300, label %260

260:                                              ; preds = %248
  %261 = call noalias ptr @malloc(i64 noundef 64) #4
  store ptr %261, ptr %10, align 8
  %262 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %263 = load ptr, ptr %10, align 8
  %264 = getelementptr inbounds nuw %struct.Node, ptr %263, i32 0, i32 4
  %265 = getelementptr inbounds [3 x [3 x i32]], ptr %264, i64 0, i64 0
  call void @cube_copy(ptr noundef %262, ptr noundef %265)
  %266 = load ptr, ptr %9, align 8
  %267 = getelementptr inbounds nuw %struct.Node, ptr %266, i32 0, i32 2
  %268 = load i32, ptr %267, align 8
  %269 = load ptr, ptr %10, align 8
  %270 = getelementptr inbounds nuw %struct.Node, ptr %269, i32 0, i32 2
  store i32 %268, ptr %270, align 8
  %271 = load ptr, ptr %9, align 8
  %272 = getelementptr inbounds nuw %struct.Node, ptr %271, i32 0, i32 3
  %273 = load i32, ptr %272, align 4
  %274 = add nsw i32 %273, 1
  %275 = load ptr, ptr %10, align 8
  %276 = getelementptr inbounds nuw %struct.Node, ptr %275, i32 0, i32 3
  store i32 %274, ptr %276, align 4
  %277 = load ptr, ptr %9, align 8
  %278 = load ptr, ptr %10, align 8
  %279 = getelementptr inbounds nuw %struct.Node, ptr %278, i32 0, i32 5
  store ptr %277, ptr %279, align 8
  %280 = load ptr, ptr %9, align 8
  %281 = getelementptr inbounds nuw %struct.Node, ptr %280, i32 0, i32 0
  %282 = load i32, ptr %281, align 8
  %283 = add nsw i32 %282, 1
  %284 = load ptr, ptr %10, align 8
  %285 = getelementptr inbounds nuw %struct.Node, ptr %284, i32 0, i32 0
  store i32 %283, ptr %285, align 8
  %286 = load ptr, ptr %8, align 8
  %287 = load ptr, ptr %10, align 8
  %288 = getelementptr inbounds nuw %struct.Node, ptr %287, i32 0, i32 4
  %289 = getelementptr inbounds [3 x [3 x i32]], ptr %288, i64 0, i64 0
  %290 = call i32 @calc_weight(ptr noundef %286, ptr noundef %289)
  store i32 %290, ptr %14, align 4
  %291 = load ptr, ptr %10, align 8
  %292 = getelementptr inbounds nuw %struct.Node, ptr %291, i32 0, i32 0
  %293 = load i32, ptr %292, align 8
  %294 = load i32, ptr %14, align 4
  %295 = add nsw i32 %293, %294
  %296 = load ptr, ptr %10, align 8
  %297 = getelementptr inbounds nuw %struct.Node, ptr %296, i32 0, i32 1
  store i32 %295, ptr %297, align 4
  %298 = load ptr, ptr %11, align 8
  %299 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %298, ptr noundef %299)
  br label %300

300:                                              ; preds = %260, %248
  br label %301

301:                                              ; preds = %300, %239
  br label %35

302:                                              ; preds = %51, %35
  ret void
}

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
  call void @astar(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
