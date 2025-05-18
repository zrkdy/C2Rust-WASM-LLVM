; ModuleID = './c_code/temp_compile/Binary Search Tree [Insert-Search-Traverse] .c'
source_filename = "./c_code/temp_compile/Binary Search Tree [Insert-Search-Traverse] .c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree* }

@root = dso_local global %struct.tree* null, align 8
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
  store i32 0, i32* %1, align 4
  call void @insertNode(i32 45)
  call void @insertNode(i32 54)
  call void @insertNode(i32 40)
  call void @insertNode(i32 49)
  call void @insertNode(i32 38)
  call void @insertNode(i32 70)
  call void @insertNode(i32 30)
  call void @insertNode(i32 39)
  call void @insertNode(i32 41)
  call void @insertNode(i32 45)
  call void @insertNode(i32 44)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.tree*, %struct.tree** @root, align 8
  call void @preOrderPrint(%struct.tree* %3)
  %4 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %6 = load %struct.tree*, %struct.tree** @root, align 8
  call void @inOrderPrint(%struct.tree* %6)
  %7 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct.tree*, %struct.tree** @root, align 8
  call void @postOrderPrint(%struct.tree* %9)
  %10 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  call void @searchOnTree(i32 70)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call noalias i8* @malloc(i64 24) #3
  %7 = bitcast i8* %6 to %struct.tree*
  store %struct.tree* %7, %struct.tree** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.tree*, %struct.tree** %3, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  store %struct.tree* null, %struct.tree** %12, align 8
  %13 = load %struct.tree*, %struct.tree** %3, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 2
  store %struct.tree* null, %struct.tree** %14, align 8
  %15 = load %struct.tree*, %struct.tree** @root, align 8
  %16 = icmp eq %struct.tree* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.tree*, %struct.tree** %3, align 8
  store %struct.tree* %18, %struct.tree** @root, align 8
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.tree*, %struct.tree** @root, align 8
  store %struct.tree* %20, %struct.tree** %4, align 8
  store %struct.tree* null, %struct.tree** %5, align 8
  br label %21

21:                                               ; preds = %19, %50
  %22 = load %struct.tree*, %struct.tree** %4, align 8
  store %struct.tree* %22, %struct.tree** %5, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.tree*, %struct.tree** %5, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.tree*, %struct.tree** %4, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 1
  %31 = load %struct.tree*, %struct.tree** %30, align 8
  store %struct.tree* %31, %struct.tree** %4, align 8
  %32 = load %struct.tree*, %struct.tree** %4, align 8
  %33 = icmp eq %struct.tree* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.tree*, %struct.tree** %3, align 8
  %36 = load %struct.tree*, %struct.tree** %5, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 1
  store %struct.tree* %35, %struct.tree** %37, align 8
  br label %51

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %21
  %40 = load %struct.tree*, %struct.tree** %4, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 2
  %42 = load %struct.tree*, %struct.tree** %41, align 8
  store %struct.tree* %42, %struct.tree** %4, align 8
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = icmp eq %struct.tree* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.tree*, %struct.tree** %3, align 8
  %47 = load %struct.tree*, %struct.tree** %5, align 8
  %48 = getelementptr inbounds %struct.tree, %struct.tree* %47, i32 0, i32 2
  store %struct.tree* %46, %struct.tree** %48, align 8
  br label %51

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %38
  br label %21

51:                                               ; preds = %34, %45, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrderPrint(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = icmp eq %struct.tree* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %9)
  %11 = load %struct.tree*, %struct.tree** %2, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  call void @preOrderPrint(%struct.tree* %13)
  %14 = load %struct.tree*, %struct.tree** %2, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 2
  %16 = load %struct.tree*, %struct.tree** %15, align 8
  call void @preOrderPrint(%struct.tree* %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inOrderPrint(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = icmp eq %struct.tree* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 1
  %9 = load %struct.tree*, %struct.tree** %8, align 8
  call void @inOrderPrint(%struct.tree* %9)
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %12)
  %14 = load %struct.tree*, %struct.tree** %2, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 2
  %16 = load %struct.tree*, %struct.tree** %15, align 8
  call void @inOrderPrint(%struct.tree* %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @postOrderPrint(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = icmp eq %struct.tree* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 1
  %9 = load %struct.tree*, %struct.tree** %8, align 8
  call void @postOrderPrint(%struct.tree* %9)
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 2
  %12 = load %struct.tree*, %struct.tree** %11, align 8
  call void @postOrderPrint(%struct.tree* %12)
  %13 = load %struct.tree*, %struct.tree** %2, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @searchOnTree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.tree*, %struct.tree** @root, align 8
  store %struct.tree* %5, %struct.tree** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %1, %32
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.tree*, %struct.tree** %3, align 8
  %9 = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 1, i32* %4, align 4
  br label %33

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.tree*, %struct.tree** %3, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.tree*, %struct.tree** %3, align 8
  %21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 1
  %22 = load %struct.tree*, %struct.tree** %21, align 8
  store %struct.tree* %22, %struct.tree** %3, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.tree*, %struct.tree** %3, align 8
  %25 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 2
  %26 = load %struct.tree*, %struct.tree** %25, align 8
  store %struct.tree* %26, %struct.tree** %3, align 8
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.tree*, %struct.tree** %3, align 8
  %30 = icmp eq %struct.tree* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %28
  br label %6

33:                                               ; preds = %31, %12
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.tree*, %struct.tree** %3, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
