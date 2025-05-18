; ModuleID = './c_code/temp_compile/LevelOrder.c'
source_filename = "./c_code/temp_compile/LevelOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Queue = type { %struct.ListNode*, %struct.ListNode* }
%struct.ListNode = type { %struct.BinaryTreeNode*, %struct.ListNode* }
%struct.BinaryTreeNode = type { i32, %struct.BinaryTreeNode*, %struct.BinaryTreeNode* }

@.str = private unnamed_addr constant [18 x i8] c"\0AQueue is Empty \0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Queue is Empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Element being deleted: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Level Order traversal of binary BinaryTreeNode is :\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Queue* @createQueue() #0 {
  %1 = alloca %struct.Queue*, align 8
  %2 = alloca %struct.Queue*, align 8
  %3 = call noalias i8* @malloc(i64 16) #3
  %4 = bitcast i8* %3 to %struct.Queue*
  store %struct.Queue* %4, %struct.Queue** %2, align 8
  %5 = load %struct.Queue*, %struct.Queue** %2, align 8
  %6 = icmp ne %struct.Queue* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.Queue* null, %struct.Queue** %1, align 8
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.Queue*, %struct.Queue** %2, align 8
  %10 = getelementptr inbounds %struct.Queue, %struct.Queue* %9, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %10, align 8
  %11 = load %struct.Queue*, %struct.Queue** %2, align 8
  %12 = getelementptr inbounds %struct.Queue, %struct.Queue* %11, i32 0, i32 0
  store %struct.ListNode* null, %struct.ListNode** %12, align 8
  %13 = load %struct.Queue*, %struct.Queue** %2, align 8
  store %struct.Queue* %13, %struct.Queue** %1, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.Queue*, %struct.Queue** %1, align 8
  ret %struct.Queue* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @size(%struct.Queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca %struct.ListNode*, align 8
  %5 = alloca i32, align 4
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  %6 = load %struct.Queue*, %struct.Queue** %3, align 8
  %7 = getelementptr inbounds %struct.Queue, %struct.Queue* %6, i32 0, i32 0
  %8 = load %struct.ListNode*, %struct.ListNode** %7, align 8
  store %struct.ListNode* %8, %struct.ListNode** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.Queue*, %struct.Queue** %3, align 8
  %10 = getelementptr inbounds %struct.Queue, %struct.Queue* %9, i32 0, i32 0
  %11 = load %struct.ListNode*, %struct.ListNode** %10, align 8
  %12 = icmp eq %struct.ListNode* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.Queue*, %struct.Queue** %3, align 8
  %15 = getelementptr inbounds %struct.Queue, %struct.Queue* %14, i32 0, i32 1
  %16 = load %struct.ListNode*, %struct.ListNode** %15, align 8
  %17 = icmp eq %struct.ListNode* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %43

19:                                               ; preds = %13, %1
  br label %20

20:                                               ; preds = %26, %19
  %21 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %22 = load %struct.Queue*, %struct.Queue** %3, align 8
  %23 = getelementptr inbounds %struct.Queue, %struct.Queue* %22, i32 0, i32 1
  %24 = load %struct.ListNode*, %struct.ListNode** %23, align 8
  %25 = icmp ne %struct.ListNode* %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %30 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %29, i32 0, i32 1
  %31 = load %struct.ListNode*, %struct.ListNode** %30, align 8
  store %struct.ListNode* %31, %struct.ListNode** %4, align 8
  br label %20

32:                                               ; preds = %20
  %33 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %34 = load %struct.Queue*, %struct.Queue** %3, align 8
  %35 = getelementptr inbounds %struct.Queue, %struct.Queue* %34, i32 0, i32 1
  %36 = load %struct.ListNode*, %struct.ListNode** %35, align 8
  %37 = icmp eq %struct.ListNode* %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BinaryTreeNode* @frontElement(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 0
  %5 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %6 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 0
  %7 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %6, align 8
  ret %struct.BinaryTreeNode* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BinaryTreeNode* @rearElement(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %3 = load %struct.Queue*, %struct.Queue** %2, align 8
  %4 = getelementptr inbounds %struct.Queue, %struct.Queue* %3, i32 0, i32 1
  %5 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %6 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 0
  %7 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %6, align 8
  ret %struct.BinaryTreeNode* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmpty(%struct.Queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Queue*, align 8
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  %4 = load %struct.Queue*, %struct.Queue** %3, align 8
  %5 = getelementptr inbounds %struct.Queue, %struct.Queue* %4, i32 0, i32 0
  %6 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %7 = icmp eq %struct.ListNode* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.Queue*, %struct.Queue** %3, align 8
  %10 = getelementptr inbounds %struct.Queue, %struct.Queue* %9, i32 0, i32 1
  %11 = load %struct.ListNode*, %struct.ListNode** %10, align 8
  %12 = icmp eq %struct.ListNode* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %15

14:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enQueue(%struct.Queue* %0, %struct.BinaryTreeNode* %1) #0 {
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca %struct.BinaryTreeNode*, align 8
  %5 = alloca %struct.ListNode*, align 8
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  store %struct.BinaryTreeNode* %1, %struct.BinaryTreeNode** %4, align 8
  %6 = call noalias i8* @malloc(i64 16) #3
  %7 = bitcast i8* %6 to %struct.ListNode*
  store %struct.ListNode* %7, %struct.ListNode** %5, align 8
  %8 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %4, align 8
  %9 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %10 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %9, i32 0, i32 0
  store %struct.BinaryTreeNode* %8, %struct.BinaryTreeNode** %10, align 8
  %11 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %12 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %11, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %12, align 8
  %13 = load %struct.Queue*, %struct.Queue** %3, align 8
  %14 = getelementptr inbounds %struct.Queue, %struct.Queue* %13, i32 0, i32 1
  %15 = load %struct.ListNode*, %struct.ListNode** %14, align 8
  %16 = icmp eq %struct.ListNode* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %19 = load %struct.Queue*, %struct.Queue** %3, align 8
  %20 = getelementptr inbounds %struct.Queue, %struct.Queue* %19, i32 0, i32 1
  store %struct.ListNode* %18, %struct.ListNode** %20, align 8
  %21 = load %struct.Queue*, %struct.Queue** %3, align 8
  %22 = getelementptr inbounds %struct.Queue, %struct.Queue* %21, i32 0, i32 0
  store %struct.ListNode* %18, %struct.ListNode** %22, align 8
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %25 = load %struct.Queue*, %struct.Queue** %3, align 8
  %26 = getelementptr inbounds %struct.Queue, %struct.Queue* %25, i32 0, i32 1
  %27 = load %struct.ListNode*, %struct.ListNode** %26, align 8
  %28 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %27, i32 0, i32 1
  store %struct.ListNode* %24, %struct.ListNode** %28, align 8
  %29 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  %30 = load %struct.Queue*, %struct.Queue** %3, align 8
  %31 = getelementptr inbounds %struct.Queue, %struct.Queue* %30, i32 0, i32 1
  store %struct.ListNode* %29, %struct.ListNode** %31, align 8
  br label %32

32:                                               ; preds = %23, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BinaryTreeNode* @deQueue(%struct.Queue* %0) #0 {
  %2 = alloca %struct.BinaryTreeNode*, align 8
  %3 = alloca %struct.Queue*, align 8
  %4 = alloca %struct.ListNode*, align 8
  store %struct.Queue* %0, %struct.Queue** %3, align 8
  %5 = load %struct.Queue*, %struct.Queue** %3, align 8
  %6 = getelementptr inbounds %struct.Queue, %struct.Queue* %5, i32 0, i32 0
  %7 = load %struct.ListNode*, %struct.ListNode** %6, align 8
  %8 = icmp eq %struct.ListNode* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.BinaryTreeNode* null, %struct.BinaryTreeNode** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.Queue*, %struct.Queue** %3, align 8
  %13 = getelementptr inbounds %struct.Queue, %struct.Queue* %12, i32 0, i32 0
  %14 = load %struct.ListNode*, %struct.ListNode** %13, align 8
  store %struct.ListNode* %14, %struct.ListNode** %4, align 8
  %15 = load %struct.Queue*, %struct.Queue** %3, align 8
  %16 = getelementptr inbounds %struct.Queue, %struct.Queue* %15, i32 0, i32 0
  %17 = load %struct.ListNode*, %struct.ListNode** %16, align 8
  %18 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %17, i32 0, i32 1
  %19 = load %struct.ListNode*, %struct.ListNode** %18, align 8
  %20 = load %struct.Queue*, %struct.Queue** %3, align 8
  %21 = getelementptr inbounds %struct.Queue, %struct.Queue* %20, i32 0, i32 0
  store %struct.ListNode* %19, %struct.ListNode** %21, align 8
  %22 = load %struct.Queue*, %struct.Queue** %3, align 8
  %23 = getelementptr inbounds %struct.Queue, %struct.Queue* %22, i32 0, i32 0
  %24 = load %struct.ListNode*, %struct.ListNode** %23, align 8
  %25 = icmp eq %struct.ListNode* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.Queue*, %struct.Queue** %3, align 8
  %28 = getelementptr inbounds %struct.Queue, %struct.Queue* %27, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %28, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.ListNode*, %struct.ListNode** %4, align 8
  %31 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %30, i32 0, i32 0
  %32 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %31, align 8
  store %struct.BinaryTreeNode* %32, %struct.BinaryTreeNode** %2, align 8
  br label %33

33:                                               ; preds = %29, %9
  %34 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  ret %struct.BinaryTreeNode* %34
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printQueue(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  %3 = alloca %struct.ListNode*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  %4 = load %struct.Queue*, %struct.Queue** %2, align 8
  %5 = getelementptr inbounds %struct.Queue, %struct.Queue* %4, i32 0, i32 0
  %6 = load %struct.ListNode*, %struct.ListNode** %5, align 8
  store %struct.ListNode* %6, %struct.ListNode** %3, align 8
  %7 = load %struct.Queue*, %struct.Queue** %2, align 8
  %8 = getelementptr inbounds %struct.Queue, %struct.Queue* %7, i32 0, i32 0
  %9 = load %struct.ListNode*, %struct.ListNode** %8, align 8
  %10 = icmp eq %struct.ListNode* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.Queue*, %struct.Queue** %2, align 8
  %13 = getelementptr inbounds %struct.Queue, %struct.Queue* %12, i32 0, i32 1
  %14 = load %struct.ListNode*, %struct.ListNode** %13, align 8
  %15 = icmp eq %struct.ListNode* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %37

18:                                               ; preds = %11, %1
  br label %19

19:                                               ; preds = %36, %18
  %20 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %21 = icmp ne %struct.ListNode* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %24 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %23, i32 0, i32 0
  %25 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %24, align 8
  %26 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %30 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %29, i32 0, i32 1
  %31 = load %struct.ListNode*, %struct.ListNode** %30, align 8
  store %struct.ListNode* %31, %struct.ListNode** %3, align 8
  %32 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %33 = icmp ne %struct.ListNode* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %22
  br label %19

37:                                               ; preds = %16, %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteQueue(%struct.Queue* %0) #0 {
  %2 = alloca %struct.Queue*, align 8
  %3 = alloca %struct.ListNode*, align 8
  store %struct.Queue* %0, %struct.Queue** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.Queue*, %struct.Queue** %2, align 8
  %6 = getelementptr inbounds %struct.Queue, %struct.Queue* %5, i32 0, i32 0
  %7 = load %struct.ListNode*, %struct.ListNode** %6, align 8
  %8 = icmp ne %struct.ListNode* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %4
  %10 = load %struct.Queue*, %struct.Queue** %2, align 8
  %11 = getelementptr inbounds %struct.Queue, %struct.Queue* %10, i32 0, i32 0
  %12 = load %struct.ListNode*, %struct.ListNode** %11, align 8
  store %struct.ListNode* %12, %struct.ListNode** %3, align 8
  %13 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %14 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %13, i32 0, i32 0
  %15 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %14, align 8
  %16 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load %struct.Queue*, %struct.Queue** %2, align 8
  %20 = getelementptr inbounds %struct.Queue, %struct.Queue* %19, i32 0, i32 0
  %21 = load %struct.ListNode*, %struct.ListNode** %20, align 8
  %22 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %21, i32 0, i32 1
  %23 = load %struct.ListNode*, %struct.ListNode** %22, align 8
  %24 = load %struct.Queue*, %struct.Queue** %2, align 8
  %25 = getelementptr inbounds %struct.Queue, %struct.Queue* %24, i32 0, i32 0
  store %struct.ListNode* %23, %struct.ListNode** %25, align 8
  %26 = load %struct.ListNode*, %struct.ListNode** %3, align 8
  %27 = bitcast %struct.ListNode* %26 to i8*
  call void @free(i8* %27) #3
  br label %4

28:                                               ; preds = %4
  %29 = load %struct.Queue*, %struct.Queue** %2, align 8
  %30 = bitcast %struct.Queue* %29 to i8*
  call void @free(i8* %30) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.BinaryTreeNode* @createNewNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BinaryTreeNode*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.BinaryTreeNode*
  store %struct.BinaryTreeNode* %5, %struct.BinaryTreeNode** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %8 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %10 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %9, i32 0, i32 1
  store %struct.BinaryTreeNode* null, %struct.BinaryTreeNode** %10, align 8
  %11 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %12 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %11, i32 0, i32 2
  store %struct.BinaryTreeNode* null, %struct.BinaryTreeNode** %12, align 8
  %13 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  ret %struct.BinaryTreeNode* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @levelOrder(%struct.BinaryTreeNode* %0) #0 {
  %2 = alloca %struct.BinaryTreeNode*, align 8
  %3 = alloca %struct.BinaryTreeNode*, align 8
  %4 = alloca %struct.Queue*, align 8
  store %struct.BinaryTreeNode* %0, %struct.BinaryTreeNode** %2, align 8
  %5 = call %struct.Queue* @createQueue()
  store %struct.Queue* %5, %struct.Queue** %4, align 8
  %6 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %7 = icmp ne %struct.BinaryTreeNode* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  %10 = load %struct.Queue*, %struct.Queue** %4, align 8
  %11 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  call void @enQueue(%struct.Queue* %10, %struct.BinaryTreeNode* %11)
  br label %12

12:                                               ; preds = %43, %9
  %13 = load %struct.Queue*, %struct.Queue** %4, align 8
  %14 = call i32 @isEmpty(%struct.Queue* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.Queue*, %struct.Queue** %4, align 8
  %19 = call %struct.BinaryTreeNode* @deQueue(%struct.Queue* %18)
  store %struct.BinaryTreeNode* %19, %struct.BinaryTreeNode** %3, align 8
  %20 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %21 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  %24 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %25 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %24, i32 0, i32 1
  %26 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %25, align 8
  %27 = icmp ne %struct.BinaryTreeNode* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.Queue*, %struct.Queue** %4, align 8
  %30 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %31 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %30, i32 0, i32 1
  %32 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %31, align 8
  call void @enQueue(%struct.Queue* %29, %struct.BinaryTreeNode* %32)
  br label %33

33:                                               ; preds = %28, %17
  %34 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %35 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %34, i32 0, i32 2
  %36 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %35, align 8
  %37 = icmp ne %struct.BinaryTreeNode* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.Queue*, %struct.Queue** %4, align 8
  %40 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %3, align 8
  %41 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %40, i32 0, i32 2
  %42 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %41, align 8
  call void @enQueue(%struct.Queue* %39, %struct.BinaryTreeNode* %42)
  br label %43

43:                                               ; preds = %38, %33
  br label %12

44:                                               ; preds = %12
  %45 = load %struct.Queue*, %struct.Queue** %4, align 8
  call void @deleteQueue(%struct.Queue* %45)
  br label %46

46:                                               ; preds = %44, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.BinaryTreeNode*, align 8
  store i32 0, i32* %1, align 4
  %3 = call %struct.BinaryTreeNode* @createNewNode(i32 2)
  store %struct.BinaryTreeNode* %3, %struct.BinaryTreeNode** %2, align 8
  %4 = call %struct.BinaryTreeNode* @createNewNode(i32 7)
  %5 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %6 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %5, i32 0, i32 1
  store %struct.BinaryTreeNode* %4, %struct.BinaryTreeNode** %6, align 8
  %7 = call %struct.BinaryTreeNode* @createNewNode(i32 5)
  %8 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %9 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %8, i32 0, i32 2
  store %struct.BinaryTreeNode* %7, %struct.BinaryTreeNode** %9, align 8
  %10 = call %struct.BinaryTreeNode* @createNewNode(i32 9)
  %11 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %12 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %11, i32 0, i32 2
  %13 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %12, align 8
  %14 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %13, i32 0, i32 2
  store %struct.BinaryTreeNode* %10, %struct.BinaryTreeNode** %14, align 8
  %15 = call %struct.BinaryTreeNode* @createNewNode(i32 4)
  %16 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %17 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %16, i32 0, i32 2
  %18 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %17, align 8
  %19 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %18, i32 0, i32 2
  %20 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %19, align 8
  %21 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %20, i32 0, i32 1
  store %struct.BinaryTreeNode* %15, %struct.BinaryTreeNode** %21, align 8
  %22 = call %struct.BinaryTreeNode* @createNewNode(i32 2)
  %23 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %24 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %23, i32 0, i32 1
  %25 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %24, align 8
  %26 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %25, i32 0, i32 1
  store %struct.BinaryTreeNode* %22, %struct.BinaryTreeNode** %26, align 8
  %27 = call %struct.BinaryTreeNode* @createNewNode(i32 6)
  %28 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %29 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %28, i32 0, i32 1
  %30 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %29, align 8
  %31 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %30, i32 0, i32 2
  store %struct.BinaryTreeNode* %27, %struct.BinaryTreeNode** %31, align 8
  %32 = call %struct.BinaryTreeNode* @createNewNode(i32 5)
  %33 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %34 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %33, i32 0, i32 1
  %35 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %34, align 8
  %36 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %35, i32 0, i32 2
  %37 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %36, align 8
  %38 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %37, i32 0, i32 1
  store %struct.BinaryTreeNode* %32, %struct.BinaryTreeNode** %38, align 8
  %39 = call %struct.BinaryTreeNode* @createNewNode(i32 11)
  %40 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  %41 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %40, i32 0, i32 1
  %42 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %41, align 8
  %43 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %42, i32 0, i32 2
  %44 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %43, align 8
  %45 = getelementptr inbounds %struct.BinaryTreeNode, %struct.BinaryTreeNode* %44, i32 0, i32 2
  store %struct.BinaryTreeNode* %39, %struct.BinaryTreeNode** %45, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.BinaryTreeNode*, %struct.BinaryTreeNode** %2, align 8
  call void @levelOrder(%struct.BinaryTreeNode* %47)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
