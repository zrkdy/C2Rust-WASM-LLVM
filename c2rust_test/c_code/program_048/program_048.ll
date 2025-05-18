; ModuleID = './c_code/temp_compile/RedBlackTrees.c'
source_filename = "./c_code/temp_compile/RedBlackTrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Queue = type { ptr, ptr }
%struct.Node = type { i32, ptr, ptr, ptr, i32 }

@front = dso_local global ptr null, align 8
@rear = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0APreorder - \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0ALevel order - \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0AAfter deleting 5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @pfront() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @front, align 8
  %3 = getelementptr inbounds nuw %struct.Queue, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %1, align 8
  %5 = load ptr, ptr %1, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isempty() #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @front, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, ptr %1, align 4
  br label %6

5:                                                ; preds = %0
  store i32 0, ptr %1, align 4
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, ptr %1, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dequeue() #0 {
  %1 = alloca ptr, align 8
  %2 = call i32 @isempty()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %11

5:                                                ; preds = %0
  %6 = load ptr, ptr @front, align 8
  store ptr %6, ptr %1, align 8
  %7 = load ptr, ptr @front, align 8
  %8 = getelementptr inbounds nuw %struct.Queue, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr @front, align 8
  %10 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %10) #4
  br label %11

11:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %4, ptr %3, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Queue, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Queue, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr @front, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr @rear, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8
  store ptr %16, ptr @rear, align 8
  store ptr %16, ptr @front, align 8
  br label %22

17:                                               ; preds = %12, %1
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr @rear, align 8
  %20 = getelementptr inbounds nuw %struct.Queue, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr %3, align 8
  store ptr %21, ptr @rear, align 8
  br label %22

22:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @levelorder(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %37

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  call void @enqueue(ptr noundef %8)
  br label %9

9:                                                ; preds = %36, %7
  %10 = call i32 @isempty()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = call ptr @pfront()
  store ptr %14, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17)
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.Node, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  call void @enqueue(ptr noundef %26)
  br label %27

27:                                               ; preds = %23, %13
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  call void @enqueue(ptr noundef %35)
  br label %36

36:                                               ; preds = %32, %27
  call void @dequeue()
  br label %9

37:                                               ; preds = %6, %9
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LeftRotate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 2
  store ptr %12, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %25, i32 0, i32 3
  store ptr %22, ptr %26, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 3
  store ptr %31, ptr %33, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load ptr, ptr %5, align 8
  %41 = load ptr, ptr %3, align 8
  store ptr %40, ptr %41, align 8
  br label %67

42:                                               ; preds = %27
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw %struct.Node, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %44, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.Node, ptr %57, i32 0, i32 1
  store ptr %53, ptr %58, align 8
  br label %66

59:                                               ; preds = %42
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 2
  store ptr %60, ptr %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %39
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw %struct.Node, ptr %74, i32 0, i32 3
  store ptr %72, ptr %75, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RightRotate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  store ptr %12, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %25, i32 0, i32 3
  store ptr %22, ptr %26, align 8
  br label %27

27:                                               ; preds = %20, %2
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 3
  store ptr %31, ptr %33, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load ptr, ptr %5, align 8
  %41 = load ptr, ptr %3, align 8
  store ptr %40, ptr %41, align 8
  br label %67

42:                                               ; preds = %27
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw %struct.Node, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %44, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.Node, ptr %57, i32 0, i32 1
  store ptr %53, ptr %58, align 8
  br label %66

59:                                               ; preds = %42
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 2
  store ptr %60, ptr %65, align 8
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %39
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 2
  store ptr %69, ptr %71, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw %struct.Node, ptr %74, i32 0, i32 3
  store ptr %72, ptr %75, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_insert_fixup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store ptr null, ptr %5, align 8
  store ptr null, ptr %6, align 8
  br label %9

9:                                                ; preds = %135, %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr %4, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %21, %15, %9
  %30 = phi i1 [ false, %15 ], [ false, %9 ], [ %28, %21 ]
  br i1 %30, label %31, label %136

31:                                               ; preds = %29
  %32 = load ptr, ptr %4, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %6, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds nuw %struct.Node, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct.Node, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %5, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %42, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %31
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %7, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds nuw %struct.Node, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw %struct.Node, ptr %59, i32 0, i32 4
  store i32 0, ptr %60, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds nuw %struct.Node, ptr %61, i32 0, i32 4
  store i32 1, ptr %62, align 8
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds nuw %struct.Node, ptr %63, i32 0, i32 4
  store i32 1, ptr %64, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = load ptr, ptr %4, align 8
  store ptr %65, ptr %66, align 8
  br label %90

67:                                               ; preds = %53, %47
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %69, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load ptr, ptr %3, align 8
  call void @LeftRotate(ptr noundef %75, ptr noundef %6)
  %76 = load ptr, ptr %6, align 8
  %77 = load ptr, ptr %4, align 8
  store ptr %76, ptr %77, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds nuw %struct.Node, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8
  store ptr %81, ptr %6, align 8
  br label %82

82:                                               ; preds = %74, %67
  %83 = load ptr, ptr %3, align 8
  call void @RightRotate(ptr noundef %83, ptr noundef %5)
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr inbounds nuw %struct.Node, ptr %84, i32 0, i32 4
  store i32 1, ptr %85, align 8
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds nuw %struct.Node, ptr %86, i32 0, i32 4
  store i32 0, ptr %87, align 8
  %88 = load ptr, ptr %6, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %88, ptr %89, align 8
  br label %90

90:                                               ; preds = %82, %58
  br label %135

91:                                               ; preds = %31
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  store ptr %94, ptr %8, align 8
  %95 = load ptr, ptr %8, align 8
  %96 = icmp ne ptr %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load ptr, ptr %8, align 8
  %99 = getelementptr inbounds nuw %struct.Node, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load ptr, ptr %5, align 8
  %104 = getelementptr inbounds nuw %struct.Node, ptr %103, i32 0, i32 4
  store i32 0, ptr %104, align 8
  %105 = load ptr, ptr %6, align 8
  %106 = getelementptr inbounds nuw %struct.Node, ptr %105, i32 0, i32 4
  store i32 1, ptr %106, align 8
  %107 = load ptr, ptr %8, align 8
  %108 = getelementptr inbounds nuw %struct.Node, ptr %107, i32 0, i32 4
  store i32 1, ptr %108, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = load ptr, ptr %4, align 8
  store ptr %109, ptr %110, align 8
  br label %134

111:                                              ; preds = %97, %91
  %112 = load ptr, ptr %4, align 8
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds nuw %struct.Node, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %113, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %111
  %119 = load ptr, ptr %3, align 8
  call void @RightRotate(ptr noundef %119, ptr noundef %6)
  %120 = load ptr, ptr %6, align 8
  %121 = load ptr, ptr %4, align 8
  store ptr %120, ptr %121, align 8
  %122 = load ptr, ptr %4, align 8
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds nuw %struct.Node, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  store ptr %125, ptr %6, align 8
  br label %126

126:                                              ; preds = %118, %111
  %127 = load ptr, ptr %3, align 8
  call void @LeftRotate(ptr noundef %127, ptr noundef %5)
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds nuw %struct.Node, ptr %128, i32 0, i32 4
  store i32 1, ptr %129, align 8
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds nuw %struct.Node, ptr %130, i32 0, i32 4
  store i32 0, ptr %131, align 8
  %132 = load ptr, ptr %6, align 8
  %133 = load ptr, ptr %4, align 8
  store ptr %132, ptr %133, align 8
  br label %134

134:                                              ; preds = %126, %102
  br label %135

135:                                              ; preds = %134, %90
  br label %9

136:                                              ; preds = %29
  %137 = load ptr, ptr %3, align 8
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds nuw %struct.Node, ptr %138, i32 0, i32 4
  store i32 1, ptr %139, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @RB_insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = call noalias ptr @malloc(i64 noundef 40) #5
  store ptr %8, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 0
  store i32 %9, ptr %11, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 1
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 2
  store ptr null, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 3
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 4
  store i32 0, ptr %19, align 8
  store ptr null, ptr %6, align 8
  %20 = load ptr, ptr %3, align 8
  store ptr %20, ptr %7, align 8
  br label %21

21:                                               ; preds = %41, %2
  %22 = load ptr, ptr %7, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 8
  store ptr %25, ptr %6, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load ptr, ptr %7, align 8
  %35 = getelementptr inbounds nuw %struct.Node, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %7, align 8
  br label %41

37:                                               ; preds = %24
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %37, %33
  br label %21

42:                                               ; preds = %21
  %43 = load ptr, ptr %6, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds nuw %struct.Node, ptr %44, i32 0, i32 3
  store ptr %43, ptr %45, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 8
  store ptr %49, ptr %3, align 8
  br label %67

50:                                               ; preds = %42
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds nuw %struct.Node, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = getelementptr inbounds nuw %struct.Node, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load ptr, ptr %5, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds nuw %struct.Node, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 8
  br label %66

62:                                               ; preds = %50
  %63 = load ptr, ptr %5, align 8
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 2
  store ptr %63, ptr %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %48
  call void @RB_insert_fixup(ptr noundef %3, ptr noundef %5)
  %68 = load ptr, ptr %3, align 8
  ret ptr %68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preorder(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @preorder(ptr noundef %13)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  call void @preorder(ptr noundef %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @Tree_minimum(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_delete_fixup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  br label %7

7:                                                ; preds = %227, %2
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %9, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ false, %7 ], [ %18, %13 ]
  br i1 %20, label %21, label %228

21:                                               ; preds = %19
  %22 = load ptr, ptr %4, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.Node, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %23, %29
  br i1 %30, label %31, label %129

31:                                               ; preds = %21
  %32 = load ptr, ptr %4, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  store ptr %37, ptr %5, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %31
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 4
  store i32 1, ptr %44, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw %struct.Node, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 4
  store i32 1, ptr %49, align 8
  %50 = load ptr, ptr %3, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds nuw %struct.Node, ptr %52, i32 0, i32 3
  call void @LeftRotate(ptr noundef %50, ptr noundef %53)
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.Node, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %5, align 8
  br label %60

60:                                               ; preds = %42, %31
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds nuw %struct.Node, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds nuw %struct.Node, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds nuw %struct.Node, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8
  %76 = getelementptr inbounds nuw %struct.Node, ptr %75, i32 0, i32 4
  store i32 0, ptr %76, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds nuw %struct.Node, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %4, align 8
  store ptr %80, ptr %81, align 8
  br label %128

82:                                               ; preds = %67, %60
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds nuw %struct.Node, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds nuw %struct.Node, ptr %85, i32 0, i32 4
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds nuw %struct.Node, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 4
  store i32 1, ptr %93, align 8
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds nuw %struct.Node, ptr %94, i32 0, i32 4
  store i32 0, ptr %95, align 8
  %96 = load ptr, ptr %3, align 8
  call void @RightRotate(ptr noundef %96, ptr noundef %5)
  %97 = load ptr, ptr %4, align 8
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds nuw %struct.Node, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds nuw %struct.Node, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %5, align 8
  br label %103

103:                                              ; preds = %89, %82
  %104 = load ptr, ptr %4, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds nuw %struct.Node, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds nuw %struct.Node, ptr %107, i32 0, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds nuw %struct.Node, ptr %110, i32 0, i32 4
  store i32 %109, ptr %111, align 8
  %112 = load ptr, ptr %4, align 8
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds nuw %struct.Node, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds nuw %struct.Node, ptr %115, i32 0, i32 4
  store i32 1, ptr %116, align 8
  %117 = load ptr, ptr %5, align 8
  %118 = getelementptr inbounds nuw %struct.Node, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds nuw %struct.Node, ptr %119, i32 0, i32 4
  store i32 1, ptr %120, align 8
  %121 = load ptr, ptr %3, align 8
  %122 = load ptr, ptr %4, align 8
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds nuw %struct.Node, ptr %123, i32 0, i32 3
  call void @LeftRotate(ptr noundef %121, ptr noundef %124)
  %125 = load ptr, ptr %3, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load ptr, ptr %4, align 8
  store ptr %126, ptr %127, align 8
  br label %128

128:                                              ; preds = %103, %74
  br label %227

129:                                              ; preds = %21
  %130 = load ptr, ptr %4, align 8
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds nuw %struct.Node, ptr %131, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds nuw %struct.Node, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8
  store ptr %135, ptr %6, align 8
  %136 = load ptr, ptr %6, align 8
  %137 = getelementptr inbounds nuw %struct.Node, ptr %136, i32 0, i32 4
  %138 = load i32, ptr %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %129
  %141 = load ptr, ptr %6, align 8
  %142 = getelementptr inbounds nuw %struct.Node, ptr %141, i32 0, i32 4
  store i32 1, ptr %142, align 8
  %143 = load ptr, ptr %4, align 8
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds nuw %struct.Node, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr inbounds nuw %struct.Node, ptr %146, i32 0, i32 4
  store i32 1, ptr %147, align 8
  %148 = load ptr, ptr %3, align 8
  %149 = load ptr, ptr %4, align 8
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds nuw %struct.Node, ptr %150, i32 0, i32 3
  call void @RightRotate(ptr noundef %148, ptr noundef %151)
  %152 = load ptr, ptr %4, align 8
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds nuw %struct.Node, ptr %153, i32 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds nuw %struct.Node, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8
  store ptr %157, ptr %6, align 8
  br label %158

158:                                              ; preds = %140, %129
  %159 = load ptr, ptr %6, align 8
  %160 = getelementptr inbounds nuw %struct.Node, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds nuw %struct.Node, ptr %161, i32 0, i32 4
  %163 = load i32, ptr %162, align 8
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load ptr, ptr %6, align 8
  %167 = getelementptr inbounds nuw %struct.Node, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds nuw %struct.Node, ptr %168, i32 0, i32 4
  %170 = load i32, ptr %169, align 8
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load ptr, ptr %6, align 8
  %174 = getelementptr inbounds nuw %struct.Node, ptr %173, i32 0, i32 4
  store i32 0, ptr %174, align 8
  %175 = load ptr, ptr %4, align 8
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds nuw %struct.Node, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 8
  %179 = load ptr, ptr %4, align 8
  store ptr %178, ptr %179, align 8
  br label %226

180:                                              ; preds = %165, %158
  %181 = load ptr, ptr %6, align 8
  %182 = getelementptr inbounds nuw %struct.Node, ptr %181, i32 0, i32 1
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds nuw %struct.Node, ptr %183, i32 0, i32 4
  %185 = load i32, ptr %184, align 8
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %201

187:                                              ; preds = %180
  %188 = load ptr, ptr %6, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 2
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds nuw %struct.Node, ptr %190, i32 0, i32 4
  store i32 1, ptr %191, align 8
  %192 = load ptr, ptr %6, align 8
  %193 = getelementptr inbounds nuw %struct.Node, ptr %192, i32 0, i32 4
  store i32 0, ptr %193, align 8
  %194 = load ptr, ptr %3, align 8
  call void @LeftRotate(ptr noundef %194, ptr noundef %6)
  %195 = load ptr, ptr %4, align 8
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds nuw %struct.Node, ptr %196, i32 0, i32 3
  %198 = load ptr, ptr %197, align 8
  %199 = getelementptr inbounds nuw %struct.Node, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8
  store ptr %200, ptr %6, align 8
  br label %201

201:                                              ; preds = %187, %180
  %202 = load ptr, ptr %4, align 8
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds nuw %struct.Node, ptr %203, i32 0, i32 3
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr inbounds nuw %struct.Node, ptr %205, i32 0, i32 4
  %207 = load i32, ptr %206, align 8
  %208 = load ptr, ptr %6, align 8
  %209 = getelementptr inbounds nuw %struct.Node, ptr %208, i32 0, i32 4
  store i32 %207, ptr %209, align 8
  %210 = load ptr, ptr %4, align 8
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds nuw %struct.Node, ptr %211, i32 0, i32 3
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds nuw %struct.Node, ptr %213, i32 0, i32 4
  store i32 1, ptr %214, align 8
  %215 = load ptr, ptr %6, align 8
  %216 = getelementptr inbounds nuw %struct.Node, ptr %215, i32 0, i32 1
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds nuw %struct.Node, ptr %217, i32 0, i32 4
  store i32 1, ptr %218, align 8
  %219 = load ptr, ptr %3, align 8
  %220 = load ptr, ptr %4, align 8
  %221 = load ptr, ptr %220, align 8
  %222 = getelementptr inbounds nuw %struct.Node, ptr %221, i32 0, i32 3
  call void @RightRotate(ptr noundef %219, ptr noundef %222)
  %223 = load ptr, ptr %3, align 8
  %224 = load ptr, ptr %223, align 8
  %225 = load ptr, ptr %4, align 8
  store ptr %224, ptr %225, align 8
  br label %226

226:                                              ; preds = %201, %172
  br label %227

227:                                              ; preds = %226, %128
  br label %7

228:                                              ; preds = %19
  %229 = load ptr, ptr %4, align 8
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds nuw %struct.Node, ptr %230, i32 0, i32 4
  store i32 1, ptr %231, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_transplat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %4, align 8
  store ptr %14, ptr %15, align 8
  br label %43

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %18, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.Node, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 1
  store ptr %28, ptr %33, align 8
  br label %42

34:                                               ; preds = %16
  %35 = load ptr, ptr %6, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct.Node, ptr %40, i32 0, i32 2
  store ptr %36, ptr %41, align 8
  br label %42

42:                                               ; preds = %34, %26
  br label %43

43:                                               ; preds = %42, %12
  %44 = load ptr, ptr %6, align 8
  %45 = load ptr, ptr %44, align 8
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds nuw %struct.Node, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds nuw %struct.Node, ptr %53, i32 0, i32 3
  store ptr %51, ptr %54, align 8
  br label %55

55:                                               ; preds = %47, %43
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @RB_delete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %6, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %7, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 2
  call void @RB_transplat(ptr noundef %3, ptr noundef %4, ptr noundef %21)
  br label %83

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %7, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.Node, ptr %31, i32 0, i32 1
  call void @RB_transplat(ptr noundef %3, ptr noundef %4, ptr noundef %32)
  br label %82

33:                                               ; preds = %22
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds nuw %struct.Node, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = call ptr @Tree_minimum(ptr noundef %36)
  store ptr %37, ptr %5, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  store i32 %40, ptr %6, align 4
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw %struct.Node, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  store ptr %43, ptr %7, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds nuw %struct.Node, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %33
  %50 = load ptr, ptr %5, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds nuw %struct.Node, ptr %51, i32 0, i32 3
  store ptr %50, ptr %52, align 8
  br label %66

53:                                               ; preds = %33
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds nuw %struct.Node, ptr %54, i32 0, i32 2
  call void @RB_transplat(ptr noundef %3, ptr noundef %5, ptr noundef %55)
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds nuw %struct.Node, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds nuw %struct.Node, ptr %59, i32 0, i32 2
  store ptr %58, ptr %60, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 3
  store ptr %61, ptr %65, align 8
  br label %66

66:                                               ; preds = %53, %49
  call void @RB_transplat(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds nuw %struct.Node, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.Node, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds nuw %struct.Node, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds nuw %struct.Node, ptr %75, i32 0, i32 3
  store ptr %72, ptr %76, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds nuw %struct.Node, ptr %77, i32 0, i32 4
  %79 = load i32, ptr %78, align 8
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds nuw %struct.Node, ptr %80, i32 0, i32 4
  store i32 %79, ptr %81, align 8
  br label %82

82:                                               ; preds = %66, %27
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i32, ptr %6, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call void @RB_delete_fixup(ptr noundef %3, ptr noundef %7)
  br label %87

87:                                               ; preds = %86, %83
  %88 = load ptr, ptr %3, align 8
  ret ptr %88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BST_search(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  %15 = load ptr, ptr %4, align 8
  store ptr %15, ptr %3, align 8
  br label %34

16:                                               ; preds = %8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = load i32, ptr %5, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %5, align 4
  %27 = call ptr @BST_search(ptr noundef %25, i32 noundef %26)
  store ptr %27, ptr %3, align 8
  br label %34

28:                                               ; preds = %16
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load i32, ptr %5, align 4
  %33 = call ptr @BST_search(ptr noundef %31, i32 noundef %32)
  store ptr %33, ptr %3, align 8
  br label %34

34:                                               ; preds = %28, %22, %14
  %35 = load ptr, ptr %3, align 8
  ret ptr %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call ptr @RB_insert(ptr noundef %4, i32 noundef 2)
  store ptr %5, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @RB_insert(ptr noundef %6, i32 noundef 1)
  store ptr %7, ptr %2, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = call ptr @RB_insert(ptr noundef %8, i32 noundef 4)
  store ptr %9, ptr %2, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = call ptr @RB_insert(ptr noundef %10, i32 noundef 5)
  store ptr %11, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = call ptr @RB_insert(ptr noundef %12, i32 noundef 9)
  store ptr %13, ptr %2, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = call ptr @RB_insert(ptr noundef %14, i32 noundef 3)
  store ptr %15, ptr %2, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = call ptr @RB_insert(ptr noundef %16, i32 noundef 6)
  store ptr %17, ptr %2, align 8
  %18 = load ptr, ptr %2, align 8
  %19 = call ptr @RB_insert(ptr noundef %18, i32 noundef 7)
  store ptr %19, ptr %2, align 8
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %21 = load ptr, ptr %2, align 8
  call void @preorder(ptr noundef %21)
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %23 = load ptr, ptr %2, align 8
  call void @levelorder(ptr noundef %23)
  %24 = load ptr, ptr %2, align 8
  %25 = call ptr @BST_search(ptr noundef %24, i32 noundef 5)
  store ptr %25, ptr %3, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = call ptr @RB_delete(ptr noundef %26, ptr noundef %27)
  store ptr %28, ptr %2, align 8
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %31 = load ptr, ptr %2, align 8
  call void @preorder(ptr noundef %31)
  store ptr null, ptr @front, align 8
  store ptr null, ptr @rear, align 8
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %33 = load ptr, ptr %2, align 8
  call void @levelorder(ptr noundef %33)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
