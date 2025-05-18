; ModuleID = './c_code/temp_compile/Binary Search Tree [Find Maximum and Minimum value].c'
source_filename = "./c_code/temp_compile/Binary Search Tree [Find Maximum and Minimum value].c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bst = type { i32, %struct.bst*, %struct.bst* }

@root = dso_local global %struct.bst* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0APre-Order Tree printing:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A\0AMinimum value is: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A\0ATree is empty!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\0A\0AMaximum value is: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store i32 0, i32* %1, align 4
  %4 = load %struct.bst*, %struct.bst** @root, align 8
  %5 = call %struct.bst* @insertNodeRecursive(%struct.bst* %4, i32 45)
  store %struct.bst* %5, %struct.bst** @root, align 8
  %6 = load %struct.bst*, %struct.bst** @root, align 8
  %7 = call %struct.bst* @insertNodeRecursive(%struct.bst* %6, i32 54)
  %8 = load %struct.bst*, %struct.bst** @root, align 8
  %9 = call %struct.bst* @insertNodeRecursive(%struct.bst* %8, i32 40)
  %10 = load %struct.bst*, %struct.bst** @root, align 8
  %11 = call %struct.bst* @insertNodeRecursive(%struct.bst* %10, i32 49)
  %12 = load %struct.bst*, %struct.bst** @root, align 8
  %13 = call %struct.bst* @insertNodeRecursive(%struct.bst* %12, i32 38)
  %14 = load %struct.bst*, %struct.bst** @root, align 8
  %15 = call %struct.bst* @insertNodeRecursive(%struct.bst* %14, i32 70)
  call void @insertNodeIterative(i32 30)
  call void @insertNodeIterative(i32 39)
  call void @insertNodeIterative(i32 41)
  call void @insertNodeIterative(i32 45)
  call void @insertNodeIterative(i32 44)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bst*, %struct.bst** @root, align 8
  call void @preOrderPrint(%struct.bst* %17)
  %18 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.bst*, %struct.bst** @root, align 8
  %20 = call %struct.bst* @findMinIterative(%struct.bst* %19)
  store %struct.bst* %20, %struct.bst** %2, align 8
  %21 = load %struct.bst*, %struct.bst** %2, align 8
  %22 = icmp ne %struct.bst* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %0
  %24 = load %struct.bst*, %struct.bst** %2, align 8
  %25 = getelementptr inbounds %struct.bst, %struct.bst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %30

28:                                               ; preds = %0
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.bst*, %struct.bst** @root, align 8
  %32 = call %struct.bst* @findMaxRecursive(%struct.bst* %31)
  store %struct.bst* %32, %struct.bst** %3, align 8
  %33 = load %struct.bst*, %struct.bst** %3, align 8
  %34 = icmp ne %struct.bst* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.bst*, %struct.bst** %3, align 8
  %37 = getelementptr inbounds %struct.bst, %struct.bst* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  br label %42

40:                                               ; preds = %30
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @insertNodeRecursive(%struct.bst* %0, i32 %1) #0 {
  %3 = alloca %struct.bst*, align 8
  %4 = alloca %struct.bst*, align 8
  %5 = alloca i32, align 4
  store %struct.bst* %0, %struct.bst** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bst*, %struct.bst** %4, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = call noalias i8* @malloc(i64 24) #3
  %10 = bitcast i8* %9 to %struct.bst*
  store %struct.bst* %10, %struct.bst** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bst*, %struct.bst** %4, align 8
  %13 = getelementptr inbounds %struct.bst, %struct.bst* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.bst*, %struct.bst** %4, align 8
  %15 = getelementptr inbounds %struct.bst, %struct.bst* %14, i32 0, i32 1
  store %struct.bst* null, %struct.bst** %15, align 8
  %16 = load %struct.bst*, %struct.bst** %4, align 8
  %17 = getelementptr inbounds %struct.bst, %struct.bst* %16, i32 0, i32 2
  store %struct.bst* null, %struct.bst** %17, align 8
  %18 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %18, %struct.bst** %3, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.bst*, %struct.bst** %4, align 8
  %22 = getelementptr inbounds %struct.bst, %struct.bst* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.bst*, %struct.bst** %4, align 8
  %27 = getelementptr inbounds %struct.bst, %struct.bst* %26, i32 0, i32 1
  %28 = load %struct.bst*, %struct.bst** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.bst* @insertNodeRecursive(%struct.bst* %28, i32 %29)
  %31 = load %struct.bst*, %struct.bst** %4, align 8
  %32 = getelementptr inbounds %struct.bst, %struct.bst* %31, i32 0, i32 1
  store %struct.bst* %30, %struct.bst** %32, align 8
  br label %41

33:                                               ; preds = %19
  %34 = load %struct.bst*, %struct.bst** %4, align 8
  %35 = getelementptr inbounds %struct.bst, %struct.bst* %34, i32 0, i32 2
  %36 = load %struct.bst*, %struct.bst** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.bst* @insertNodeRecursive(%struct.bst* %36, i32 %37)
  %39 = load %struct.bst*, %struct.bst** %4, align 8
  %40 = getelementptr inbounds %struct.bst, %struct.bst* %39, i32 0, i32 2
  store %struct.bst* %38, %struct.bst** %40, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %42, %struct.bst** %3, align 8
  br label %43

43:                                               ; preds = %41, %8
  %44 = load %struct.bst*, %struct.bst** %3, align 8
  ret %struct.bst* %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNodeIterative(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bst*, align 8
  %4 = alloca %struct.bst*, align 8
  %5 = alloca %struct.bst*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call noalias i8* @malloc(i64 24) #3
  %7 = bitcast i8* %6 to %struct.bst*
  store %struct.bst* %7, %struct.bst** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bst*, %struct.bst** %3, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  store %struct.bst* null, %struct.bst** %12, align 8
  %13 = load %struct.bst*, %struct.bst** %3, align 8
  %14 = getelementptr inbounds %struct.bst, %struct.bst* %13, i32 0, i32 2
  store %struct.bst* null, %struct.bst** %14, align 8
  %15 = load %struct.bst*, %struct.bst** @root, align 8
  %16 = icmp eq %struct.bst* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %18, %struct.bst** @root, align 8
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.bst*, %struct.bst** @root, align 8
  store %struct.bst* %20, %struct.bst** %4, align 8
  store %struct.bst* null, %struct.bst** %5, align 8
  %21 = load %struct.bst*, %struct.bst** %5, align 8
  %22 = getelementptr inbounds %struct.bst, %struct.bst* %21, i32 0, i32 1
  store %struct.bst* null, %struct.bst** %22, align 8
  %23 = load %struct.bst*, %struct.bst** %5, align 8
  %24 = getelementptr inbounds %struct.bst, %struct.bst* %23, i32 0, i32 2
  store %struct.bst* null, %struct.bst** %24, align 8
  br label %25

25:                                               ; preds = %19, %54
  %26 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %26, %struct.bst** %5, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load %struct.bst*, %struct.bst** %5, align 8
  %29 = getelementptr inbounds %struct.bst, %struct.bst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.bst*, %struct.bst** %4, align 8
  %34 = getelementptr inbounds %struct.bst, %struct.bst* %33, i32 0, i32 1
  %35 = load %struct.bst*, %struct.bst** %34, align 8
  store %struct.bst* %35, %struct.bst** %4, align 8
  %36 = load %struct.bst*, %struct.bst** %4, align 8
  %37 = icmp eq %struct.bst* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.bst*, %struct.bst** %3, align 8
  %40 = load %struct.bst*, %struct.bst** %5, align 8
  %41 = getelementptr inbounds %struct.bst, %struct.bst* %40, i32 0, i32 1
  store %struct.bst* %39, %struct.bst** %41, align 8
  br label %55

42:                                               ; preds = %32
  br label %54

43:                                               ; preds = %25
  %44 = load %struct.bst*, %struct.bst** %4, align 8
  %45 = getelementptr inbounds %struct.bst, %struct.bst* %44, i32 0, i32 2
  %46 = load %struct.bst*, %struct.bst** %45, align 8
  store %struct.bst* %46, %struct.bst** %4, align 8
  %47 = load %struct.bst*, %struct.bst** %4, align 8
  %48 = icmp eq %struct.bst* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.bst*, %struct.bst** %3, align 8
  %51 = load %struct.bst*, %struct.bst** %5, align 8
  %52 = getelementptr inbounds %struct.bst, %struct.bst* %51, i32 0, i32 2
  store %struct.bst* %50, %struct.bst** %52, align 8
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %42
  br label %25

55:                                               ; preds = %38, %49, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrderPrint(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %2, align 8
  %3 = load %struct.bst*, %struct.bst** %2, align 8
  %4 = icmp eq %struct.bst* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.bst*, %struct.bst** %2, align 8
  %8 = getelementptr inbounds %struct.bst, %struct.bst* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %9)
  %11 = load %struct.bst*, %struct.bst** %2, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  %13 = load %struct.bst*, %struct.bst** %12, align 8
  call void @preOrderPrint(%struct.bst* %13)
  %14 = load %struct.bst*, %struct.bst** %2, align 8
  %15 = getelementptr inbounds %struct.bst, %struct.bst* %14, i32 0, i32 2
  %16 = load %struct.bst*, %struct.bst** %15, align 8
  call void @preOrderPrint(%struct.bst* %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @findMinIterative(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = icmp eq %struct.bst* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %7, %struct.bst** %2, align 8
  br label %20

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.bst*, %struct.bst** %3, align 8
  %11 = getelementptr inbounds %struct.bst, %struct.bst* %10, i32 0, i32 1
  %12 = load %struct.bst*, %struct.bst** %11, align 8
  %13 = icmp ne %struct.bst* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.bst*, %struct.bst** %3, align 8
  %16 = getelementptr inbounds %struct.bst, %struct.bst* %15, i32 0, i32 1
  %17 = load %struct.bst*, %struct.bst** %16, align 8
  store %struct.bst* %17, %struct.bst** %3, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %19, %struct.bst** %2, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load %struct.bst*, %struct.bst** %2, align 8
  ret %struct.bst* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @findMaxRecursive(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = getelementptr inbounds %struct.bst, %struct.bst* %4, i32 0, i32 2
  %6 = load %struct.bst*, %struct.bst** %5, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %9, %struct.bst** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.bst*, %struct.bst** %3, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 2
  %13 = load %struct.bst*, %struct.bst** %12, align 8
  %14 = call %struct.bst* @findMaxRecursive(%struct.bst* %13)
  store %struct.bst* %14, %struct.bst** %2, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = load %struct.bst*, %struct.bst** %2, align 8
  ret %struct.bst* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @findMinRecursive(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = getelementptr inbounds %struct.bst, %struct.bst* %4, i32 0, i32 1
  %6 = load %struct.bst*, %struct.bst** %5, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %9, %struct.bst** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.bst*, %struct.bst** %3, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  %13 = load %struct.bst*, %struct.bst** %12, align 8
  %14 = call %struct.bst* @findMinRecursive(%struct.bst* %13)
  store %struct.bst* %14, %struct.bst** %2, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = load %struct.bst*, %struct.bst** %2, align 8
  ret %struct.bst* %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @findMaxIterative(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = icmp eq %struct.bst* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %7, %struct.bst** %2, align 8
  br label %20

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.bst*, %struct.bst** %3, align 8
  %11 = getelementptr inbounds %struct.bst, %struct.bst* %10, i32 0, i32 2
  %12 = load %struct.bst*, %struct.bst** %11, align 8
  %13 = icmp ne %struct.bst* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.bst*, %struct.bst** %3, align 8
  %16 = getelementptr inbounds %struct.bst, %struct.bst* %15, i32 0, i32 2
  %17 = load %struct.bst*, %struct.bst** %16, align 8
  store %struct.bst* %17, %struct.bst** %3, align 8
  br label %9

18:                                               ; preds = %9
  %19 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %19, %struct.bst** %2, align 8
  br label %20

20:                                               ; preds = %18, %6
  %21 = load %struct.bst*, %struct.bst** %2, align 8
  ret %struct.bst* %21
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
