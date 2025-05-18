; ModuleID = './c_code/temp_compile/7.3_astar.c'
source_filename = "./c_code/temp_compile/7.3_astar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Heap = type { i32, i32, ptr }
%struct.TNode = type { i32, i32, i32, ptr }
%struct.Node = type { i32, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] c"cost=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d <-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %28 = getelementptr inbounds nuw %struct.TNode, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.Heap, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct.TNode, ptr %36, i32 0, i32 1
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
  %56 = getelementptr inbounds nuw %struct.TNode, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds nuw %struct.Heap, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.TNode, ptr %64, i32 0, i32 1
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
  %33 = getelementptr inbounds nuw %struct.TNode, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.Heap, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct.TNode, ptr %41, i32 0, i32 1
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
  %29 = getelementptr inbounds nuw %struct.TNode, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %struct.TNode, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %30, %33
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
define dso_local i32 @find_min_h(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load i32, ptr %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %5, align 8
  store i32 2147483647, ptr %6, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load ptr, ptr %5, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %6, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %5, align 8
  br label %12

29:                                               ; preds = %12
  %30 = load i32, ptr %6, align 4
  %31 = icmp eq i32 %30, 2147483647
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, ptr %6, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @displayoutcome(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.TNode, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %7

7:                                                ; preds = %10, %1
  %8 = load ptr, ptr %2, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.TNode, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.TNode, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %2, align 8
  br label %7

18:                                               ; preds = %7
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @astar(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [13 x i32], align 16
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %9 = call ptr @init_heap()
  store ptr %9, ptr %3, align 8
  %10 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %10, ptr %4, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw %struct.TNode, ptr %11, i32 0, i32 2
  store i32 0, ptr %12, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.TNode, ptr %13, i32 0, i32 0
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.TNode, ptr %15, i32 0, i32 3
  store ptr null, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.TNode, ptr %17, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %3, align 8
  %20 = load ptr, ptr %4, align 8
  call void @insert_heap(ptr noundef %19, ptr noundef %20)
  store i32 0, ptr %6, align 4
  br label %21

21:                                               ; preds = %31, %1
  %22 = load i32, ptr %6, align 4
  %23 = icmp slt i32 %22, 13
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8
  %26 = load i32, ptr %6, align 4
  %27 = call i32 @find_min_h(ptr noundef %25, i32 noundef %26)
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [13 x i32], ptr %7, i64 0, i64 %29
  store i32 %27, ptr %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %6, align 4
  br label %21

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %96, %34
  %36 = load ptr, ptr %3, align 8
  %37 = call i32 @heap_empty(ptr noundef %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %97

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8
  %42 = call ptr @delete_min(ptr noundef %41)
  store ptr %42, ptr %4, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.TNode, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load ptr, ptr %4, align 8
  call void @displayoutcome(ptr noundef %48)
  br label %97

49:                                               ; preds = %40
  %50 = load ptr, ptr %2, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds nuw %struct.TNode, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %50, i64 %54
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %5, align 8
  br label %57

57:                                               ; preds = %60, %49
  %58 = load ptr, ptr %5, align 8
  %59 = icmp ne ptr %58, null
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %61, ptr %8, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8
  %65 = load ptr, ptr %8, align 8
  %66 = getelementptr inbounds nuw %struct.TNode, ptr %65, i32 0, i32 2
  store i32 %64, ptr %66, align 8
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds nuw %struct.TNode, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = load ptr, ptr %8, align 8
  %75 = getelementptr inbounds nuw %struct.TNode, ptr %74, i32 0, i32 0
  store i32 %73, ptr %75, align 8
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds nuw %struct.TNode, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8
  %79 = load ptr, ptr %8, align 8
  %80 = getelementptr inbounds nuw %struct.TNode, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [13 x i32], ptr %7, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = add nsw i32 %78, %84
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds nuw %struct.TNode, ptr %86, i32 0, i32 1
  store i32 %85, ptr %87, align 4
  %88 = load ptr, ptr %4, align 8
  %89 = load ptr, ptr %8, align 8
  %90 = getelementptr inbounds nuw %struct.TNode, ptr %89, i32 0, i32 3
  store ptr %88, ptr %90, align 8
  %91 = load ptr, ptr %3, align 8
  %92 = load ptr, ptr %8, align 8
  call void @insert_heap(ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds nuw %struct.Node, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  store ptr %95, ptr %5, align 8
  br label %57

96:                                               ; preds = %57
  br label %35

97:                                               ; preds = %47, %35
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
  call void @astar(ptr noundef %31)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
