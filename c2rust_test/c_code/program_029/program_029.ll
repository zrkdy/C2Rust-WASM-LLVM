; ModuleID = './c_code/temp_compile/best.c'
source_filename = "./c_code/temp_compile/best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Heap = type { i32, i32, ptr }
%struct.Node = type { [3 x [3 x i32]], i32, i32, i32, ptr }

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
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.Heap, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct.Node, ptr %36, i32 0, i32 3
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
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds nuw %struct.Heap, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 3
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
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.Heap, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct.Node, ptr %41, i32 0, i32 3
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
  %11 = alloca ptr, align 8
  %12 = alloca [3 x [3 x i32]], align 16
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
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 4
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %8, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = call i32 @calc_weight(ptr noundef %22, ptr noundef %23)
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %25, i32 0, i32 3
  store i32 %24, ptr %26, align 4
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds [3 x [3 x i32]], ptr %29, i64 0, i64 0
  call void @cube_copy(ptr noundef %27, ptr noundef %30)
  %31 = call ptr @init_heap()
  store ptr %31, ptr %11, align 8
  %32 = load ptr, ptr %11, align 8
  %33 = load ptr, ptr %9, align 8
  call void @insert_heap(ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %254, %4
  %35 = load ptr, ptr %11, align 8
  %36 = call i32 @heap_empty(ptr noundef %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %255

39:                                               ; preds = %34
  %40 = load ptr, ptr %11, align 8
  %41 = call ptr @delete_min(ptr noundef %40)
  store ptr %41, ptr %9, align 8
  %42 = load ptr, ptr %9, align 8
  %43 = getelementptr inbounds nuw %struct.Node, ptr %42, i32 0, i32 0
  %44 = getelementptr inbounds [3 x [3 x i32]], ptr %43, i64 0, i64 0
  %45 = load ptr, ptr %8, align 8
  %46 = call i32 @cube_equal(ptr noundef %44, ptr noundef %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr %9, align 8
  call void @displayoutcome(ptr noundef %49)
  br label %255

50:                                               ; preds = %39
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds nuw %struct.Node, ptr %51, i32 0, i32 0
  %53 = getelementptr inbounds [3 x [3 x i32]], ptr %52, i64 0, i64 0
  %54 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %9, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %50
  %60 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %61 = load ptr, ptr %9, align 8
  %62 = getelementptr inbounds nuw %struct.Node, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  call void @move_up(ptr noundef %60, i32 noundef %63, i32 noundef %66)
  %67 = load ptr, ptr %9, align 8
  %68 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %69 = call i32 @inme(ptr noundef %67, ptr noundef %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %59
  %72 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %72, ptr %10, align 8
  %73 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %74 = load ptr, ptr %10, align 8
  %75 = getelementptr inbounds nuw %struct.Node, ptr %74, i32 0, i32 0
  %76 = getelementptr inbounds [3 x [3 x i32]], ptr %75, i64 0, i64 0
  call void @cube_copy(ptr noundef %73, ptr noundef %76)
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr inbounds nuw %struct.Node, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = load ptr, ptr %10, align 8
  %82 = getelementptr inbounds nuw %struct.Node, ptr %81, i32 0, i32 1
  store i32 %80, ptr %82, align 4
  %83 = load ptr, ptr %9, align 8
  %84 = getelementptr inbounds nuw %struct.Node, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = load ptr, ptr %10, align 8
  %87 = getelementptr inbounds nuw %struct.Node, ptr %86, i32 0, i32 2
  store i32 %85, ptr %87, align 8
  %88 = load ptr, ptr %9, align 8
  %89 = load ptr, ptr %10, align 8
  %90 = getelementptr inbounds nuw %struct.Node, ptr %89, i32 0, i32 4
  store ptr %88, ptr %90, align 8
  %91 = load ptr, ptr %8, align 8
  %92 = load ptr, ptr %10, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 0
  %94 = getelementptr inbounds [3 x [3 x i32]], ptr %93, i64 0, i64 0
  %95 = call i32 @calc_weight(ptr noundef %91, ptr noundef %94)
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds nuw %struct.Node, ptr %96, i32 0, i32 3
  store i32 %95, ptr %97, align 4
  %98 = load ptr, ptr %11, align 8
  %99 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %98, ptr noundef %99)
  br label %100

100:                                              ; preds = %71, %59
  br label %101

101:                                              ; preds = %100, %50
  %102 = load ptr, ptr %9, align 8
  %103 = getelementptr inbounds nuw %struct.Node, ptr %102, i32 0, i32 0
  %104 = getelementptr inbounds [3 x [3 x i32]], ptr %103, i64 0, i64 0
  %105 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %104, ptr noundef %105)
  %106 = load ptr, ptr %9, align 8
  %107 = getelementptr inbounds nuw %struct.Node, ptr %106, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %152

110:                                              ; preds = %101
  %111 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds nuw %struct.Node, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %9, align 8
  %116 = getelementptr inbounds nuw %struct.Node, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  call void @move_down(ptr noundef %111, i32 noundef %114, i32 noundef %117)
  %118 = load ptr, ptr %9, align 8
  %119 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %120 = call i32 @inme(ptr noundef %118, ptr noundef %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %151, label %122

122:                                              ; preds = %110
  %123 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %123, ptr %10, align 8
  %124 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %125 = load ptr, ptr %10, align 8
  %126 = getelementptr inbounds nuw %struct.Node, ptr %125, i32 0, i32 0
  %127 = getelementptr inbounds [3 x [3 x i32]], ptr %126, i64 0, i64 0
  call void @cube_copy(ptr noundef %124, ptr noundef %127)
  %128 = load ptr, ptr %9, align 8
  %129 = getelementptr inbounds nuw %struct.Node, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = add nsw i32 %130, 1
  %132 = load ptr, ptr %10, align 8
  %133 = getelementptr inbounds nuw %struct.Node, ptr %132, i32 0, i32 1
  store i32 %131, ptr %133, align 4
  %134 = load ptr, ptr %9, align 8
  %135 = getelementptr inbounds nuw %struct.Node, ptr %134, i32 0, i32 2
  %136 = load i32, ptr %135, align 8
  %137 = load ptr, ptr %10, align 8
  %138 = getelementptr inbounds nuw %struct.Node, ptr %137, i32 0, i32 2
  store i32 %136, ptr %138, align 8
  %139 = load ptr, ptr %9, align 8
  %140 = load ptr, ptr %10, align 8
  %141 = getelementptr inbounds nuw %struct.Node, ptr %140, i32 0, i32 4
  store ptr %139, ptr %141, align 8
  %142 = load ptr, ptr %8, align 8
  %143 = load ptr, ptr %10, align 8
  %144 = getelementptr inbounds nuw %struct.Node, ptr %143, i32 0, i32 0
  %145 = getelementptr inbounds [3 x [3 x i32]], ptr %144, i64 0, i64 0
  %146 = call i32 @calc_weight(ptr noundef %142, ptr noundef %145)
  %147 = load ptr, ptr %10, align 8
  %148 = getelementptr inbounds nuw %struct.Node, ptr %147, i32 0, i32 3
  store i32 %146, ptr %148, align 4
  %149 = load ptr, ptr %11, align 8
  %150 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %149, ptr noundef %150)
  br label %151

151:                                              ; preds = %122, %110
  br label %152

152:                                              ; preds = %151, %101
  %153 = load ptr, ptr %9, align 8
  %154 = getelementptr inbounds nuw %struct.Node, ptr %153, i32 0, i32 0
  %155 = getelementptr inbounds [3 x [3 x i32]], ptr %154, i64 0, i64 0
  %156 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %155, ptr noundef %156)
  %157 = load ptr, ptr %9, align 8
  %158 = getelementptr inbounds nuw %struct.Node, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %203

161:                                              ; preds = %152
  %162 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %163 = load ptr, ptr %9, align 8
  %164 = getelementptr inbounds nuw %struct.Node, ptr %163, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = load ptr, ptr %9, align 8
  %167 = getelementptr inbounds nuw %struct.Node, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  call void @move_left(ptr noundef %162, i32 noundef %165, i32 noundef %168)
  %169 = load ptr, ptr %9, align 8
  %170 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %171 = call i32 @inme(ptr noundef %169, ptr noundef %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %202, label %173

173:                                              ; preds = %161
  %174 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %174, ptr %10, align 8
  %175 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %176 = load ptr, ptr %10, align 8
  %177 = getelementptr inbounds nuw %struct.Node, ptr %176, i32 0, i32 0
  %178 = getelementptr inbounds [3 x [3 x i32]], ptr %177, i64 0, i64 0
  call void @cube_copy(ptr noundef %175, ptr noundef %178)
  %179 = load ptr, ptr %9, align 8
  %180 = getelementptr inbounds nuw %struct.Node, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %10, align 8
  %183 = getelementptr inbounds nuw %struct.Node, ptr %182, i32 0, i32 1
  store i32 %181, ptr %183, align 4
  %184 = load ptr, ptr %9, align 8
  %185 = getelementptr inbounds nuw %struct.Node, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = load ptr, ptr %10, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 2
  store i32 %187, ptr %189, align 8
  %190 = load ptr, ptr %9, align 8
  %191 = load ptr, ptr %10, align 8
  %192 = getelementptr inbounds nuw %struct.Node, ptr %191, i32 0, i32 4
  store ptr %190, ptr %192, align 8
  %193 = load ptr, ptr %8, align 8
  %194 = load ptr, ptr %10, align 8
  %195 = getelementptr inbounds nuw %struct.Node, ptr %194, i32 0, i32 0
  %196 = getelementptr inbounds [3 x [3 x i32]], ptr %195, i64 0, i64 0
  %197 = call i32 @calc_weight(ptr noundef %193, ptr noundef %196)
  %198 = load ptr, ptr %10, align 8
  %199 = getelementptr inbounds nuw %struct.Node, ptr %198, i32 0, i32 3
  store i32 %197, ptr %199, align 4
  %200 = load ptr, ptr %11, align 8
  %201 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %200, ptr noundef %201)
  br label %202

202:                                              ; preds = %173, %161
  br label %203

203:                                              ; preds = %202, %152
  %204 = load ptr, ptr %9, align 8
  %205 = getelementptr inbounds nuw %struct.Node, ptr %204, i32 0, i32 0
  %206 = getelementptr inbounds [3 x [3 x i32]], ptr %205, i64 0, i64 0
  %207 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  call void @cube_copy(ptr noundef %206, ptr noundef %207)
  %208 = load ptr, ptr %9, align 8
  %209 = getelementptr inbounds nuw %struct.Node, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = icmp slt i32 %210, 2
  br i1 %211, label %212, label %254

212:                                              ; preds = %203
  %213 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %214 = load ptr, ptr %9, align 8
  %215 = getelementptr inbounds nuw %struct.Node, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = load ptr, ptr %9, align 8
  %218 = getelementptr inbounds nuw %struct.Node, ptr %217, i32 0, i32 2
  %219 = load i32, ptr %218, align 8
  call void @move_right(ptr noundef %213, i32 noundef %216, i32 noundef %219)
  %220 = load ptr, ptr %9, align 8
  %221 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %222 = call i32 @inme(ptr noundef %220, ptr noundef %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %253, label %224

224:                                              ; preds = %212
  %225 = call noalias ptr @malloc(i64 noundef 56) #4
  store ptr %225, ptr %10, align 8
  %226 = getelementptr inbounds [3 x [3 x i32]], ptr %12, i64 0, i64 0
  %227 = load ptr, ptr %10, align 8
  %228 = getelementptr inbounds nuw %struct.Node, ptr %227, i32 0, i32 0
  %229 = getelementptr inbounds [3 x [3 x i32]], ptr %228, i64 0, i64 0
  call void @cube_copy(ptr noundef %226, ptr noundef %229)
  %230 = load ptr, ptr %9, align 8
  %231 = getelementptr inbounds nuw %struct.Node, ptr %230, i32 0, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = load ptr, ptr %10, align 8
  %234 = getelementptr inbounds nuw %struct.Node, ptr %233, i32 0, i32 1
  store i32 %232, ptr %234, align 4
  %235 = load ptr, ptr %9, align 8
  %236 = getelementptr inbounds nuw %struct.Node, ptr %235, i32 0, i32 2
  %237 = load i32, ptr %236, align 8
  %238 = add nsw i32 %237, 1
  %239 = load ptr, ptr %10, align 8
  %240 = getelementptr inbounds nuw %struct.Node, ptr %239, i32 0, i32 2
  store i32 %238, ptr %240, align 8
  %241 = load ptr, ptr %9, align 8
  %242 = load ptr, ptr %10, align 8
  %243 = getelementptr inbounds nuw %struct.Node, ptr %242, i32 0, i32 4
  store ptr %241, ptr %243, align 8
  %244 = load ptr, ptr %8, align 8
  %245 = load ptr, ptr %10, align 8
  %246 = getelementptr inbounds nuw %struct.Node, ptr %245, i32 0, i32 0
  %247 = getelementptr inbounds [3 x [3 x i32]], ptr %246, i64 0, i64 0
  %248 = call i32 @calc_weight(ptr noundef %244, ptr noundef %247)
  %249 = load ptr, ptr %10, align 8
  %250 = getelementptr inbounds nuw %struct.Node, ptr %249, i32 0, i32 3
  store i32 %248, ptr %250, align 4
  %251 = load ptr, ptr %11, align 8
  %252 = load ptr, ptr %10, align 8
  call void @insert_heap(ptr noundef %251, ptr noundef %252)
  br label %253

253:                                              ; preds = %224, %212
  br label %254

254:                                              ; preds = %253, %203
  br label %34

255:                                              ; preds = %48, %34
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
  call void @hillclimbing(ptr noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13)
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
