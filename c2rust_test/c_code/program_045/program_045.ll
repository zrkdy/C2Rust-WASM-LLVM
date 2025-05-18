; ModuleID = './c_code/temp_compile/MST_Kruskals.c'
source_filename = "./c_code/temp_compile/MST_Kruskals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.subset = type { i32, i32 }
%struct.Edge = type { i32, i32, i32 }
%struct.Graph = type { i32, i32, ptr }

@.str = private unnamed_addr constant [35 x i8] c"Following edges are there in MST \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"src--dest=weight\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d--%d=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.subset, ptr %5, i64 %7
  %9 = getelementptr inbounds nuw %struct.subset, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, ptr %15, i64 %17
  %19 = getelementptr inbounds nuw %struct.subset, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @find(ptr noundef %14, i32 noundef %20)
  %22 = load ptr, ptr %3, align 8
  %23 = load i32, ptr %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.subset, ptr %22, i64 %24
  %26 = getelementptr inbounds nuw %struct.subset, ptr %25, i32 0, i32 0
  store i32 %21, ptr %26, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load ptr, ptr %3, align 8
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.subset, ptr %28, i64 %30
  %32 = getelementptr inbounds nuw %struct.subset, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Union(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call i32 @find(ptr noundef %9, i32 noundef %10)
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = load i32, ptr %6, align 4
  %14 = call i32 @find(ptr noundef %12, i32 noundef %13)
  store i32 %14, ptr %8, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.subset, ptr %15, i64 %17
  %19 = getelementptr inbounds nuw %struct.subset, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.subset, ptr %21, i64 %23
  %25 = getelementptr inbounds nuw %struct.subset, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %20, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, ptr %8, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.subset, ptr %30, i64 %32
  %34 = getelementptr inbounds nuw %struct.subset, ptr %33, i32 0, i32 0
  store i32 %29, ptr %34, align 4
  br label %71

35:                                               ; preds = %3
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.subset, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.subset, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %4, align 8
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.subset, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.subset, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %41, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = load i32, ptr %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.subset, ptr %51, i64 %53
  %55 = getelementptr inbounds nuw %struct.subset, ptr %54, i32 0, i32 0
  store i32 %50, ptr %55, align 4
  br label %70

56:                                               ; preds = %35
  %57 = load i32, ptr %7, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = load i32, ptr %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.subset, ptr %58, i64 %60
  %62 = getelementptr inbounds nuw %struct.subset, ptr %61, i32 0, i32 0
  store i32 %57, ptr %62, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.subset, ptr %63, i64 %65
  %67 = getelementptr inbounds nuw %struct.subset, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %56, %49
  br label %71

71:                                               ; preds = %70, %28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scompare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %6, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %struct.Edge, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %struct.Edge, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %11, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @creategraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %6 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %6, ptr %5, align 8
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.Graph, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load i32, ptr %4, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw %struct.Graph, ptr %11, i32 0, i32 1
  store i32 %10, ptr %12, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 12, %14
  %16 = call noalias ptr @malloc(i64 noundef %15) #5
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.Graph, ptr %17, i32 0, i32 2
  store ptr %16, ptr %18, align 8
  %19 = load ptr, ptr %5, align 8
  ret ptr %19
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MST_kruskal(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.Edge, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct.Graph, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %3, align 4
  %15 = load i32, ptr %3, align 4
  %16 = zext i32 %15 to i64
  %17 = call ptr @llvm.stacksave.p0()
  store ptr %17, ptr %4, align 8
  %18 = alloca %struct.Edge, i64 %16, align 16
  store i64 %16, ptr %5, align 8
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.Graph, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds nuw %struct.Graph, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  call void @qsort(ptr noundef %21, i64 noundef %25, i64 noundef 12, ptr noundef @scompare)
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call noalias ptr @malloc(i64 noundef %28) #5
  store ptr %29, ptr %8, align 8
  store i32 0, ptr %7, align 4
  br label %30

30:                                               ; preds = %46, %1
  %31 = load i32, ptr %7, align 4
  %32 = load i32, ptr %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.subset, ptr %36, i64 %38
  %40 = getelementptr inbounds nuw %struct.subset, ptr %39, i32 0, i32 0
  store i32 %35, ptr %40, align 4
  %41 = load ptr, ptr %8, align 8
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.subset, ptr %41, i64 %43
  %45 = getelementptr inbounds nuw %struct.subset, ptr %44, i32 0, i32 1
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, ptr %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %7, align 4
  br label %30

49:                                               ; preds = %30
  store i32 0, ptr %7, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, ptr %6, align 4
  %52 = load i32, ptr %3, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds nuw %struct.Graph, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %7, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.Edge, ptr %58, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %62, i64 12, i1 false)
  %63 = load ptr, ptr %8, align 8
  %64 = getelementptr inbounds nuw %struct.Edge, ptr %9, i32 0, i32 0
  %65 = load i32, ptr %64, align 4
  %66 = call i32 @find(ptr noundef %63, i32 noundef %65)
  store i32 %66, ptr %10, align 4
  %67 = load ptr, ptr %8, align 8
  %68 = getelementptr inbounds nuw %struct.Edge, ptr %9, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @find(ptr noundef %67, i32 noundef %69)
  store i32 %70, ptr %11, align 4
  %71 = load i32, ptr %10, align 4
  %72 = load i32, ptr %11, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %55
  %75 = load i32, ptr %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %6, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.Edge, ptr %18, i64 %77
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %78, ptr align 4 %9, i64 12, i1 false)
  %79 = load ptr, ptr %8, align 8
  %80 = load i32, ptr %10, align 4
  %81 = load i32, ptr %11, align 4
  call void @Union(ptr noundef %79, i32 noundef %80, i32 noundef %81)
  br label %82

82:                                               ; preds = %74, %55
  br label %50

83:                                               ; preds = %50
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %85 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %7, align 4
  br label %86

86:                                               ; preds = %107, %83
  %87 = load i32, ptr %7, align 4
  %88 = load i32, ptr %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i32, ptr %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.Edge, ptr %18, i64 %92
  %94 = getelementptr inbounds nuw %struct.Edge, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.Edge, ptr %18, i64 %97
  %99 = getelementptr inbounds nuw %struct.Edge, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.Edge, ptr %18, i64 %102
  %104 = getelementptr inbounds nuw %struct.Edge, ptr %103, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %95, i32 noundef %100, i32 noundef %105)
  br label %107

107:                                              ; preds = %90
  %108 = load i32, ptr %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %7, align 4
  br label %86

110:                                              ; preds = %86
  %111 = load ptr, ptr %4, align 8
  call void @llvm.stackrestore.p0(ptr %111)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store i32 4, ptr %2, align 4
  store i32 5, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = load i32, ptr %3, align 4
  %7 = call ptr @creategraph(i32 noundef %5, i32 noundef %6)
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds nuw %struct.Graph, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.Edge, ptr %10, i64 0
  %12 = getelementptr inbounds nuw %struct.Edge, ptr %11, i32 0, i32 0
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.Graph, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.Edge, ptr %15, i64 0
  %17 = getelementptr inbounds nuw %struct.Edge, ptr %16, i32 0, i32 1
  store i32 1, ptr %17, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct.Graph, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.Edge, ptr %20, i64 0
  %22 = getelementptr inbounds nuw %struct.Edge, ptr %21, i32 0, i32 2
  store i32 10, ptr %22, align 4
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.Graph, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.Edge, ptr %25, i64 1
  %27 = getelementptr inbounds nuw %struct.Edge, ptr %26, i32 0, i32 0
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.Graph, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.Edge, ptr %30, i64 1
  %32 = getelementptr inbounds nuw %struct.Edge, ptr %31, i32 0, i32 1
  store i32 2, ptr %32, align 4
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw %struct.Graph, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.Edge, ptr %35, i64 1
  %37 = getelementptr inbounds nuw %struct.Edge, ptr %36, i32 0, i32 2
  store i32 6, ptr %37, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.Graph, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.Edge, ptr %40, i64 2
  %42 = getelementptr inbounds nuw %struct.Edge, ptr %41, i32 0, i32 0
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.Graph, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.Edge, ptr %45, i64 2
  %47 = getelementptr inbounds nuw %struct.Edge, ptr %46, i32 0, i32 1
  store i32 3, ptr %47, align 4
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds nuw %struct.Graph, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.Edge, ptr %50, i64 2
  %52 = getelementptr inbounds nuw %struct.Edge, ptr %51, i32 0, i32 2
  store i32 5, ptr %52, align 4
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds nuw %struct.Graph, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.Edge, ptr %55, i64 3
  %57 = getelementptr inbounds nuw %struct.Edge, ptr %56, i32 0, i32 0
  store i32 1, ptr %57, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds nuw %struct.Graph, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.Edge, ptr %60, i64 3
  %62 = getelementptr inbounds nuw %struct.Edge, ptr %61, i32 0, i32 1
  store i32 3, ptr %62, align 4
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds nuw %struct.Graph, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.Edge, ptr %65, i64 3
  %67 = getelementptr inbounds nuw %struct.Edge, ptr %66, i32 0, i32 2
  store i32 15, ptr %67, align 4
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds nuw %struct.Graph, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.Edge, ptr %70, i64 4
  %72 = getelementptr inbounds nuw %struct.Edge, ptr %71, i32 0, i32 0
  store i32 2, ptr %72, align 4
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds nuw %struct.Graph, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.Edge, ptr %75, i64 4
  %77 = getelementptr inbounds nuw %struct.Edge, ptr %76, i32 0, i32 1
  store i32 3, ptr %77, align 4
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds nuw %struct.Graph, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.Edge, ptr %80, i64 4
  %82 = getelementptr inbounds nuw %struct.Edge, ptr %81, i32 0, i32 2
  store i32 4, ptr %82, align 4
  %83 = load ptr, ptr %4, align 8
  call void @MST_kruskal(ptr noundef %83)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
