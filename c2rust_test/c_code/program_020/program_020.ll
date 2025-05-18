; ModuleID = './c_code/temp_compile/07-图6 旅游规划.c'
source_filename = "./c_code/temp_compile/07-\E5\9B\BE6 \E6\97\85\E6\B8\B8\E8\A7\84\E5\88\92.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GNode = type { i32, i32, [501 x [501 x i32]], [501 x [501 x i32]] }
%struct.ENode = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @CreateGraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %8 = call noalias ptr @malloc(i64 noundef 2008016) #3
  store ptr %8, ptr %5, align 8
  %9 = load i32, ptr %3, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.GNode, ptr %10, i32 0, i32 0
  store i32 %9, ptr %11, align 4
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.GNode, ptr %13, i32 0, i32 1
  store i32 %12, ptr %14, align 4
  store i32 0, ptr %6, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, ptr %6, align 4
  %17 = load i32, ptr %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  store i32 0, ptr %7, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, ptr %7, align 4
  %22 = load i32, ptr %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds nuw %struct.GNode, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [501 x [501 x i32]], ptr %26, i64 0, i64 %28
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [501 x i32], ptr %29, i64 0, i64 %31
  store i32 65535, ptr %32, align 4
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.GNode, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [501 x [501 x i32]], ptr %34, i64 0, i64 %36
  %38 = load i32, ptr %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [501 x i32], ptr %37, i64 0, i64 %39
  store i32 65535, ptr %40, align 4
  br label %41

41:                                               ; preds = %24
  %42 = load i32, ptr %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %7, align 4
  br label %20

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %6, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load ptr, ptr %5, align 8
  ret ptr %49
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertEdge(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %struct.ENode, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.GNode, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct.ENode, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [501 x [501 x i32]], ptr %9, i64 0, i64 %13
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.ENode, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [501 x i32], ptr %14, i64 0, i64 %18
  store i32 %7, ptr %19, align 4
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds nuw %struct.ENode, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.GNode, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds nuw %struct.ENode, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [501 x [501 x i32]], ptr %24, i64 0, i64 %28
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds nuw %struct.ENode, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [501 x i32], ptr %29, i64 0, i64 %33
  store i32 %22, ptr %34, align 4
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds nuw %struct.ENode, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds nuw %struct.GNode, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.ENode, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [501 x [501 x i32]], ptr %39, i64 0, i64 %43
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds nuw %struct.ENode, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [501 x i32], ptr %44, i64 0, i64 %48
  store i32 %37, ptr %49, align 4
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds nuw %struct.ENode, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds nuw %struct.GNode, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.ENode, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [501 x [501 x i32]], ptr %54, i64 0, i64 %58
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds nuw %struct.ENode, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [501 x i32], ptr %59, i64 0, i64 %63
  store i32 %52, ptr %64, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @BuildGraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = load i32, ptr %4, align 4
  %10 = call ptr @CreateGraph(i32 noundef %8, i32 noundef %9)
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw %struct.GNode, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %16, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %17

17:                                               ; preds = %35, %15
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.GNode, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.ENode, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %struct.ENode, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds nuw %struct.ENode, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %struct.ENode, ptr %30, i32 0, i32 3
  %32 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %25, ptr noundef %27, ptr noundef %29, ptr noundef %31)
  %33 = load ptr, ptr %5, align 8
  %34 = load ptr, ptr %6, align 8
  call void @InsertEdge(ptr noundef %33, ptr noundef %34)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 4
  br label %17

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %2
  %40 = load ptr, ptr %5, align 8
  ret ptr %40
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindMinDist(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i32 65535, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %11

11:                                               ; preds = %40, %3
  %12 = load i32, ptr %9, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.GNode, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = load ptr, ptr %7, align 8
  %19 = load i32, ptr %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load ptr, ptr %6, align 8
  %26 = load i32, ptr %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %10, align 4
  %38 = load i32, ptr %9, align 4
  store i32 %38, ptr %8, align 4
  br label %39

39:                                               ; preds = %32, %24, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, ptr %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %9, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load i32, ptr %10, align 4
  %45 = icmp slt i32 %44, 65535
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr %8, align 4
  store i32 %47, ptr %4, align 4
  br label %49

48:                                               ; preds = %43
  store i32 999, ptr %4, align 4
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, ptr %4, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @Dijkstra(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca [501 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  store i32 0, ptr %13, align 4
  br label %15

15:                                               ; preds = %69, %5
  %16 = load i32, ptr %13, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds nuw %struct.GNode, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %15
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds nuw %struct.GNode, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [501 x [501 x i32]], ptr %23, i64 0, i64 %25
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [501 x i32], ptr %26, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %8, align 8
  %32 = load i32, ptr %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %31, i64 %33
  store i32 %30, ptr %34, align 4
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds nuw %struct.GNode, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [501 x [501 x i32]], ptr %36, i64 0, i64 %38
  %40 = load i32, ptr %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [501 x i32], ptr %39, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %9, align 8
  %45 = load i32, ptr %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %44, i64 %46
  store i32 %43, ptr %47, align 4
  %48 = load ptr, ptr %8, align 8
  %49 = load i32, ptr %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = icmp slt i32 %52, 65535
  br i1 %53, label %54, label %60

54:                                               ; preds = %21
  %55 = load i32, ptr %11, align 4
  %56 = load ptr, ptr %10, align 8
  %57 = load i32, ptr %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %56, i64 %58
  store i32 %55, ptr %59, align 4
  br label %65

60:                                               ; preds = %21
  %61 = load ptr, ptr %10, align 8
  %62 = load i32, ptr %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %61, i64 %63
  store i32 -1, ptr %64, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load i32, ptr %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 %67
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %13, align 4
  br label %15

72:                                               ; preds = %15
  %73 = load ptr, ptr %8, align 8
  %74 = load i32, ptr %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, ptr %73, i64 %75
  store i32 0, ptr %76, align 4
  %77 = load ptr, ptr %9, align 8
  %78 = load i32, ptr %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %77, i64 %79
  store i32 0, ptr %80, align 4
  %81 = load i32, ptr %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 %82
  store i32 1, ptr %83, align 4
  br label %84

84:                                               ; preds = %72, %272
  %85 = load ptr, ptr %7, align 8
  %86 = load ptr, ptr %8, align 8
  %87 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 0
  %88 = call i32 @FindMinDist(ptr noundef %85, ptr noundef %86, ptr noundef %87)
  store i32 %88, ptr %13, align 4
  %89 = load i32, ptr %13, align 4
  %90 = icmp eq i32 %89, 999
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %273

92:                                               ; preds = %84
  %93 = load i32, ptr %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 %94
  store i32 1, ptr %95, align 4
  store i32 0, ptr %14, align 4
  br label %96

96:                                               ; preds = %269, %92
  %97 = load i32, ptr %14, align 4
  %98 = load ptr, ptr %7, align 8
  %99 = getelementptr inbounds nuw %struct.GNode, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %272

102:                                              ; preds = %96
  %103 = load i32, ptr %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %268

108:                                              ; preds = %102
  %109 = load ptr, ptr %7, align 8
  %110 = getelementptr inbounds nuw %struct.GNode, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [501 x [501 x i32]], ptr %110, i64 0, i64 %112
  %114 = load i32, ptr %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [501 x i32], ptr %113, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4
  %118 = icmp slt i32 %117, 65535
  br i1 %118, label %119, label %268

119:                                              ; preds = %108
  %120 = load ptr, ptr %7, align 8
  %121 = getelementptr inbounds nuw %struct.GNode, ptr %120, i32 0, i32 2
  %122 = load i32, ptr %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [501 x [501 x i32]], ptr %121, i64 0, i64 %123
  %125 = load i32, ptr %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [501 x i32], ptr %124, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i1 false, ptr %6, align 1
  br label %274

131:                                              ; preds = %119
  %132 = load ptr, ptr %8, align 8
  %133 = load i32, ptr %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %132, i64 %134
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %7, align 8
  %138 = getelementptr inbounds nuw %struct.GNode, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [501 x [501 x i32]], ptr %138, i64 0, i64 %140
  %142 = load i32, ptr %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [501 x i32], ptr %141, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4
  %146 = add nsw i32 %136, %145
  %147 = load ptr, ptr %8, align 8
  %148 = load i32, ptr %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %147, i64 %149
  %151 = load i32, ptr %150, align 4
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %153, label %197

153:                                              ; preds = %131
  %154 = load ptr, ptr %8, align 8
  %155 = load i32, ptr %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %154, i64 %156
  %158 = load i32, ptr %157, align 4
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds nuw %struct.GNode, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [501 x [501 x i32]], ptr %160, i64 0, i64 %162
  %164 = load i32, ptr %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [501 x i32], ptr %163, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = add nsw i32 %158, %167
  %169 = load ptr, ptr %8, align 8
  %170 = load i32, ptr %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %169, i64 %171
  store i32 %168, ptr %172, align 4
  %173 = load i32, ptr %13, align 4
  %174 = load ptr, ptr %10, align 8
  %175 = load i32, ptr %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %174, i64 %176
  store i32 %173, ptr %177, align 4
  %178 = load ptr, ptr %9, align 8
  %179 = load i32, ptr %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, ptr %178, i64 %180
  %182 = load i32, ptr %181, align 4
  %183 = load ptr, ptr %7, align 8
  %184 = getelementptr inbounds nuw %struct.GNode, ptr %183, i32 0, i32 3
  %185 = load i32, ptr %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [501 x [501 x i32]], ptr %184, i64 0, i64 %186
  %188 = load i32, ptr %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [501 x i32], ptr %187, i64 0, i64 %189
  %191 = load i32, ptr %190, align 4
  %192 = add nsw i32 %182, %191
  %193 = load ptr, ptr %9, align 8
  %194 = load i32, ptr %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, ptr %193, i64 %195
  store i32 %192, ptr %196, align 4
  br label %267

197:                                              ; preds = %131
  %198 = load ptr, ptr %8, align 8
  %199 = load i32, ptr %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %198, i64 %200
  %202 = load i32, ptr %201, align 4
  %203 = load ptr, ptr %7, align 8
  %204 = getelementptr inbounds nuw %struct.GNode, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [501 x [501 x i32]], ptr %204, i64 0, i64 %206
  %208 = load i32, ptr %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [501 x i32], ptr %207, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4
  %212 = add nsw i32 %202, %211
  %213 = load ptr, ptr %8, align 8
  %214 = load i32, ptr %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, ptr %213, i64 %215
  %217 = load i32, ptr %216, align 4
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %219, label %266

219:                                              ; preds = %197
  %220 = load ptr, ptr %9, align 8
  %221 = load i32, ptr %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, ptr %220, i64 %222
  %224 = load i32, ptr %223, align 4
  %225 = load ptr, ptr %7, align 8
  %226 = getelementptr inbounds nuw %struct.GNode, ptr %225, i32 0, i32 3
  %227 = load i32, ptr %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [501 x [501 x i32]], ptr %226, i64 0, i64 %228
  %230 = load i32, ptr %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [501 x i32], ptr %229, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4
  %234 = add nsw i32 %224, %233
  %235 = load ptr, ptr %9, align 8
  %236 = load i32, ptr %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, ptr %235, i64 %237
  %239 = load i32, ptr %238, align 4
  %240 = icmp slt i32 %234, %239
  br i1 %240, label %241, label %266

241:                                              ; preds = %219
  %242 = load ptr, ptr %9, align 8
  %243 = load i32, ptr %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, ptr %242, i64 %244
  %246 = load i32, ptr %245, align 4
  %247 = load ptr, ptr %7, align 8
  %248 = getelementptr inbounds nuw %struct.GNode, ptr %247, i32 0, i32 3
  %249 = load i32, ptr %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [501 x [501 x i32]], ptr %248, i64 0, i64 %250
  %252 = load i32, ptr %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [501 x i32], ptr %251, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4
  %256 = add nsw i32 %246, %255
  %257 = load ptr, ptr %9, align 8
  %258 = load i32, ptr %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, ptr %257, i64 %259
  store i32 %256, ptr %260, align 4
  %261 = load i32, ptr %13, align 4
  %262 = load ptr, ptr %10, align 8
  %263 = load i32, ptr %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, ptr %262, i64 %264
  store i32 %261, ptr %265, align 4
  br label %266

266:                                              ; preds = %241, %219, %197
  br label %267

267:                                              ; preds = %266, %153
  br label %268

268:                                              ; preds = %267, %108, %102
  br label %269

269:                                              ; preds = %268
  %270 = load i32, ptr %14, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, ptr %14, align 4
  br label %96

272:                                              ; preds = %96
  br label %84

273:                                              ; preds = %91
  store i1 true, ptr %6, align 1
  br label %274

274:                                              ; preds = %273, %130
  %275 = load i1, ptr %6, align 1
  ret i1 %275
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [501 x i32], align 16
  %11 = alloca [501 x i32], align 16
  %12 = alloca [501 x i32], align 16
  %13 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %14 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %15 = load i32, ptr %6, align 4
  %16 = load i32, ptr %7, align 4
  %17 = call ptr @BuildGraph(i32 noundef %15, i32 noundef %16)
  store ptr %17, ptr %13, align 8
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr inbounds [501 x i32], ptr %10, i64 0, i64 0
  %20 = getelementptr inbounds [501 x i32], ptr %11, i64 0, i64 0
  %21 = getelementptr inbounds [501 x i32], ptr %12, i64 0, i64 0
  %22 = load i32, ptr %8, align 4
  %23 = call zeroext i1 @Dijkstra(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, i32 noundef %22)
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load i32, ptr %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [501 x i32], ptr %10, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [501 x i32], ptr %11, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %28, i32 noundef %32)
  br label %36

34:                                               ; preds = %2
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %36

36:                                               ; preds = %34, %24
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
