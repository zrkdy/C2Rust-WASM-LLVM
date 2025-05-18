; ModuleID = './c_code/temp_compile/Is it a BST or not.c'
source_filename = "./c_code/temp_compile/Is it a BST or not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bst = type { i32, %struct.bst*, %struct.bst* }

@root = dso_local global %struct.bst* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"\0AIn-Order Tree printing:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\0ASlower Approach:\0AYes, it is BST!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\0ASlower Approach:\0ANo, it is not BST\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"\0AAfter adding %d as a right child of root.\0AIn-Order Tree printing:\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\0AFaster Approach:\0AYes, it is BST!\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\0AFaster Approach:\0ANo, it is not BST\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\0AIn-order traversal Approach:\0AYes, it is BST!\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\0AIn-order traversal Approach:\0ANo, it is not BST\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -2147483648, i32* %3, align 4
  call void @insertNode(i32 47)
  call void @insertNode(i32 40)
  call void @insertNode(i32 54)
  call void @insertNode(i32 38)
  call void @insertNode(i32 43)
  call void @insertNode(i32 49)
  call void @insertNode(i32 39)
  call void @insertNode(i32 45)
  call void @insertNode(i32 44)
  call void @insertNode(i32 30)
  call void @insertNode(i32 41)
  call void @insertNode(i32 70)
  call void @insertNode(i32 46)
  call void @insertNode(i32 59)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.bst*, %struct.bst** @root, align 8
  call void @inOrderPrint(%struct.bst* %5)
  %6 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.bst*, %struct.bst** @root, align 8
  %8 = call i32 @isItBst(%struct.bst* %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %14

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  store i32 62, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.bst*, %struct.bst** @root, align 8
  %17 = getelementptr inbounds %struct.bst, %struct.bst* %16, i32 0, i32 2
  %18 = load %struct.bst*, %struct.bst** %17, align 8
  %19 = getelementptr inbounds %struct.bst, %struct.bst* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load %struct.bst*, %struct.bst** @root, align 8
  call void @inOrderPrint(%struct.bst* %22)
  %23 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.bst*, %struct.bst** @root, align 8
  %25 = call i32 @isItBst_fast(%struct.bst* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %31

29:                                               ; preds = %14
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %27
  store i32 54, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.bst*, %struct.bst** @root, align 8
  %34 = getelementptr inbounds %struct.bst, %struct.bst* %33, i32 0, i32 2
  %35 = load %struct.bst*, %struct.bst** %34, align 8
  %36 = getelementptr inbounds %struct.bst, %struct.bst* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.bst*, %struct.bst** @root, align 8
  call void @inOrderPrint(%struct.bst* %39)
  %40 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.bst*, %struct.bst** @root, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @isBstInOrderTraversal(%struct.bst* %41, i32 %42)
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %31
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %49

47:                                               ; preds = %31
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(i32 %0) #0 {
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
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.bst*, %struct.bst** @root, align 8
  store %struct.bst* %20, %struct.bst** %4, align 8
  store %struct.bst* null, %struct.bst** %5, align 8
  br label %21

21:                                               ; preds = %19, %50
  %22 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %22, %struct.bst** %5, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.bst*, %struct.bst** %5, align 8
  %25 = getelementptr inbounds %struct.bst, %struct.bst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.bst*, %struct.bst** %4, align 8
  %30 = getelementptr inbounds %struct.bst, %struct.bst* %29, i32 0, i32 1
  %31 = load %struct.bst*, %struct.bst** %30, align 8
  store %struct.bst* %31, %struct.bst** %4, align 8
  %32 = load %struct.bst*, %struct.bst** %4, align 8
  %33 = icmp eq %struct.bst* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.bst*, %struct.bst** %3, align 8
  %36 = load %struct.bst*, %struct.bst** %5, align 8
  %37 = getelementptr inbounds %struct.bst, %struct.bst* %36, i32 0, i32 1
  store %struct.bst* %35, %struct.bst** %37, align 8
  br label %51

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %21
  %40 = load %struct.bst*, %struct.bst** %4, align 8
  %41 = getelementptr inbounds %struct.bst, %struct.bst* %40, i32 0, i32 2
  %42 = load %struct.bst*, %struct.bst** %41, align 8
  store %struct.bst* %42, %struct.bst** %4, align 8
  %43 = load %struct.bst*, %struct.bst** %4, align 8
  %44 = icmp eq %struct.bst* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.bst*, %struct.bst** %3, align 8
  %47 = load %struct.bst*, %struct.bst** %5, align 8
  %48 = getelementptr inbounds %struct.bst, %struct.bst* %47, i32 0, i32 2
  store %struct.bst* %46, %struct.bst** %48, align 8
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
define dso_local void @inOrderPrint(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %2, align 8
  %3 = load %struct.bst*, %struct.bst** %2, align 8
  %4 = icmp eq %struct.bst* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.bst*, %struct.bst** %2, align 8
  %8 = getelementptr inbounds %struct.bst, %struct.bst* %7, i32 0, i32 1
  %9 = load %struct.bst*, %struct.bst** %8, align 8
  call void @inOrderPrint(%struct.bst* %9)
  %10 = load %struct.bst*, %struct.bst** %2, align 8
  %11 = getelementptr inbounds %struct.bst, %struct.bst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %12)
  %14 = load %struct.bst*, %struct.bst** %2, align 8
  %15 = getelementptr inbounds %struct.bst, %struct.bst* %14, i32 0, i32 2
  %16 = load %struct.bst*, %struct.bst** %15, align 8
  call void @inOrderPrint(%struct.bst* %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isItBst(%struct.bst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = icmp eq %struct.bst* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

7:                                                ; preds = %1
  %8 = load %struct.bst*, %struct.bst** %3, align 8
  %9 = getelementptr inbounds %struct.bst, %struct.bst* %8, i32 0, i32 1
  %10 = load %struct.bst*, %struct.bst** %9, align 8
  %11 = icmp ne %struct.bst* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.bst*, %struct.bst** %3, align 8
  %14 = getelementptr inbounds %struct.bst, %struct.bst* %13, i32 0, i32 1
  %15 = load %struct.bst*, %struct.bst** %14, align 8
  %16 = call i32 @findMax(%struct.bst* %15)
  %17 = load %struct.bst*, %struct.bst** %3, align 8
  %18 = getelementptr inbounds %struct.bst, %struct.bst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %51

22:                                               ; preds = %12, %7
  %23 = load %struct.bst*, %struct.bst** %3, align 8
  %24 = getelementptr inbounds %struct.bst, %struct.bst* %23, i32 0, i32 2
  %25 = load %struct.bst*, %struct.bst** %24, align 8
  %26 = icmp ne %struct.bst* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.bst*, %struct.bst** %3, align 8
  %29 = getelementptr inbounds %struct.bst, %struct.bst* %28, i32 0, i32 2
  %30 = load %struct.bst*, %struct.bst** %29, align 8
  %31 = call i32 @findMin(%struct.bst* %30)
  %32 = load %struct.bst*, %struct.bst** %3, align 8
  %33 = getelementptr inbounds %struct.bst, %struct.bst* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %51

37:                                               ; preds = %27, %22
  %38 = load %struct.bst*, %struct.bst** %3, align 8
  %39 = getelementptr inbounds %struct.bst, %struct.bst* %38, i32 0, i32 1
  %40 = load %struct.bst*, %struct.bst** %39, align 8
  %41 = call i32 @isItBst(%struct.bst* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.bst*, %struct.bst** %3, align 8
  %45 = getelementptr inbounds %struct.bst, %struct.bst* %44, i32 0, i32 2
  %46 = load %struct.bst*, %struct.bst** %45, align 8
  %47 = call i32 @isItBst(%struct.bst* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43, %37
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %36, %21, %6
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isItBst_fast(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %2, align 8
  %3 = load %struct.bst*, %struct.bst** %2, align 8
  %4 = call i32 @isBstHelper(%struct.bst* %3, i32 -2147483648, i32 2147483647)
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isBstInOrderTraversal(%struct.bst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bst*, align 8
  %5 = alloca i32, align 4
  store %struct.bst* %0, %struct.bst** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.bst*, %struct.bst** %4, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load %struct.bst*, %struct.bst** %4, align 8
  %11 = getelementptr inbounds %struct.bst, %struct.bst* %10, i32 0, i32 1
  %12 = load %struct.bst*, %struct.bst** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @isBstInOrderTraversal(%struct.bst* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %33

17:                                               ; preds = %9
  %18 = load %struct.bst*, %struct.bst** %4, align 8
  %19 = getelementptr inbounds %struct.bst, %struct.bst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load %struct.bst*, %struct.bst** %4, align 8
  %26 = getelementptr inbounds %struct.bst, %struct.bst* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.bst*, %struct.bst** %4, align 8
  %29 = getelementptr inbounds %struct.bst, %struct.bst* %28, i32 0, i32 2
  %30 = load %struct.bst*, %struct.bst** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @isBstInOrderTraversal(%struct.bst* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %23, %16, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isBstHelper(%struct.bst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bst* %0, %struct.bst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.bst*, %struct.bst** %5, align 8
  %9 = icmp eq %struct.bst* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

11:                                               ; preds = %3
  %12 = load %struct.bst*, %struct.bst** %5, align 8
  %13 = getelementptr inbounds %struct.bst, %struct.bst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.bst*, %struct.bst** %5, align 8
  %19 = getelementptr inbounds %struct.bst, %struct.bst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.bst*, %struct.bst** %5, align 8
  %25 = getelementptr inbounds %struct.bst, %struct.bst* %24, i32 0, i32 1
  %26 = load %struct.bst*, %struct.bst** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.bst*, %struct.bst** %5, align 8
  %29 = getelementptr inbounds %struct.bst, %struct.bst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @isBstHelper(%struct.bst* %26, i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load %struct.bst*, %struct.bst** %5, align 8
  %35 = getelementptr inbounds %struct.bst, %struct.bst* %34, i32 0, i32 2
  %36 = load %struct.bst*, %struct.bst** %35, align 8
  %37 = load %struct.bst*, %struct.bst** %5, align 8
  %38 = getelementptr inbounds %struct.bst, %struct.bst* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @isBstHelper(%struct.bst* %36, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %45

44:                                               ; preds = %33, %23, %17, %11
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %10
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findMax(%struct.bst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = getelementptr inbounds %struct.bst, %struct.bst* %4, i32 0, i32 2
  %6 = load %struct.bst*, %struct.bst** %5, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.bst*, %struct.bst** %3, align 8
  %14 = getelementptr inbounds %struct.bst, %struct.bst* %13, i32 0, i32 2
  %15 = load %struct.bst*, %struct.bst** %14, align 8
  %16 = call i32 @findMax(%struct.bst* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findMin(%struct.bst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = getelementptr inbounds %struct.bst, %struct.bst* %4, i32 0, i32 1
  %6 = load %struct.bst*, %struct.bst** %5, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.bst*, %struct.bst** %3, align 8
  %14 = getelementptr inbounds %struct.bst, %struct.bst* %13, i32 0, i32 1
  %15 = load %struct.bst*, %struct.bst** %14, align 8
  %16 = call i32 @findMin(%struct.bst* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
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
