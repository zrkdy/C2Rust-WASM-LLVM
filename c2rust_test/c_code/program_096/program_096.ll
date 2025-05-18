; ModuleID = './c_code/temp_compile/bst.c'
source_filename = "./c_code/temp_compile/bst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bst = type { %struct.bst_node*, i32 }
%struct.bst_node = type { i32, %struct.bst_node*, %struct.bst_node* }

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@__const.main.arr = private unnamed_addr constant [13 x i32] [i32 21, i32 3, i32 5, i32 26, i32 29, i32 50, i32 18, i32 53, i32 8, i32 67, i32 1, i32 78, i32 6], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"size: %d \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Inorder Traversal: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @bst_create() #0 {
  %1 = alloca %struct.bst*, align 8
  %2 = alloca %struct.bst*, align 8
  %3 = call noalias i8* @malloc(i64 16) #4
  %4 = bitcast i8* %3 to %struct.bst*
  store %struct.bst* %4, %struct.bst** %2, align 8
  %5 = load %struct.bst*, %struct.bst** %2, align 8
  %6 = icmp eq %struct.bst* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.bst* null, %struct.bst** %1, align 8
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.bst*, %struct.bst** %2, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  store %struct.bst_node* null, %struct.bst_node** %10, align 8
  %11 = load %struct.bst*, %struct.bst** %2, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  store i32 0, i32* %12, align 8
  %13 = load %struct.bst*, %struct.bst** %2, align 8
  store %struct.bst* %13, %struct.bst** %1, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.bst*, %struct.bst** %1, align 8
  ret %struct.bst* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst_node* @bst_create_node(i32 %0) #0 {
  %2 = alloca %struct.bst_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bst_node*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 24) #4
  %6 = bitcast i8* %5 to %struct.bst_node*
  store %struct.bst_node* %6, %struct.bst_node** %4, align 8
  %7 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  %8 = icmp eq %struct.bst_node* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.bst_node* null, %struct.bst_node** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  %12 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %11, i32 0, i32 1
  store %struct.bst_node* null, %struct.bst_node** %12, align 8
  %13 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  %14 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %13, i32 0, i32 2
  store %struct.bst_node* null, %struct.bst_node** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  %17 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  store %struct.bst_node* %18, %struct.bst_node** %2, align 8
  br label %19

19:                                               ; preds = %10, %9
  %20 = load %struct.bst_node*, %struct.bst_node** %2, align 8
  ret %struct.bst_node* %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst_node* @bst_search_node(%struct.bst_node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bst_node*, align 8
  %5 = alloca %struct.bst_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bst_node*, align 8
  %9 = alloca %struct.bst_node*, align 8
  store %struct.bst_node* %0, %struct.bst_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  store %struct.bst_node* %10, %struct.bst_node** %8, align 8
  store %struct.bst_node* null, %struct.bst_node** %9, align 8
  %11 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %12 = icmp eq %struct.bst_node* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.bst_node* null, %struct.bst_node** %4, align 8
  br label %50

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %42, %14
  %16 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %17 = icmp ne %struct.bst_node* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %21 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  store %struct.bst_node* %25, %struct.bst_node** %9, align 8
  %26 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %27 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %26, i32 0, i32 1
  %28 = load %struct.bst_node*, %struct.bst_node** %27, align 8
  store %struct.bst_node* %28, %struct.bst_node** %8, align 8
  br label %42

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %32 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %43

36:                                               ; preds = %29
  %37 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  store %struct.bst_node* %37, %struct.bst_node** %9, align 8
  %38 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %39 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %38, i32 0, i32 2
  %40 = load %struct.bst_node*, %struct.bst_node** %39, align 8
  store %struct.bst_node* %40, %struct.bst_node** %8, align 8
  br label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %24
  br label %15

43:                                               ; preds = %35, %15
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  store %struct.bst_node* %47, %struct.bst_node** %4, align 8
  br label %50

48:                                               ; preds = %43
  %49 = load %struct.bst_node*, %struct.bst_node** %9, align 8
  store %struct.bst_node* %49, %struct.bst_node** %4, align 8
  br label %50

50:                                               ; preds = %48, %46, %13
  %51 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  ret %struct.bst_node* %51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst_node* @bst_find_max_node(%struct.bst_node* %0, i32 %1) #0 {
  %3 = alloca %struct.bst_node*, align 8
  %4 = alloca %struct.bst_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bst_node*, align 8
  %7 = alloca %struct.bst_node*, align 8
  store %struct.bst_node* %0, %struct.bst_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bst_node*, %struct.bst_node** %4, align 8
  store %struct.bst_node* %8, %struct.bst_node** %6, align 8
  store %struct.bst_node* null, %struct.bst_node** %7, align 8
  %9 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %10 = icmp eq %struct.bst_node* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.bst_node* null, %struct.bst_node** %3, align 8
  br label %30

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %15 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %14, i32 0, i32 2
  %16 = load %struct.bst_node*, %struct.bst_node** %15, align 8
  %17 = icmp ne %struct.bst_node* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  store %struct.bst_node* %19, %struct.bst_node** %7, align 8
  %20 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %21 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %20, i32 0, i32 2
  %22 = load %struct.bst_node*, %struct.bst_node** %21, align 8
  store %struct.bst_node* %22, %struct.bst_node** %6, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  store %struct.bst_node* %27, %struct.bst_node** %3, align 8
  br label %30

28:                                               ; preds = %23
  %29 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  store %struct.bst_node* %29, %struct.bst_node** %3, align 8
  br label %30

30:                                               ; preds = %28, %26, %11
  %31 = load %struct.bst_node*, %struct.bst_node** %3, align 8
  ret %struct.bst_node* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @bst_insert_node(%struct.bst* %0, i32 %1) #0 {
  %3 = alloca %struct.bst*, align 8
  %4 = alloca %struct.bst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bst_node*, align 8
  %7 = alloca %struct.bst_node*, align 8
  store %struct.bst* %0, %struct.bst** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bst*, %struct.bst** %4, align 8
  %9 = getelementptr inbounds %struct.bst, %struct.bst* %8, i32 0, i32 0
  %10 = load %struct.bst_node*, %struct.bst_node** %9, align 8
  store %struct.bst_node* %10, %struct.bst_node** %6, align 8
  store %struct.bst_node* null, %struct.bst_node** %7, align 8
  %11 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %12 = icmp eq %struct.bst_node* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.bst_node* @bst_create_node(i32 %14)
  %16 = load %struct.bst*, %struct.bst** %4, align 8
  %17 = getelementptr inbounds %struct.bst, %struct.bst* %16, i32 0, i32 0
  store %struct.bst_node* %15, %struct.bst_node** %17, align 8
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.bst*, %struct.bst** %4, align 8
  %20 = getelementptr inbounds %struct.bst, %struct.bst* %19, i32 0, i32 0
  %21 = load %struct.bst_node*, %struct.bst_node** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.bst_node* @bst_search_node(%struct.bst_node* %21, i32 1, i32 %22)
  store %struct.bst_node* %23, %struct.bst_node** %7, align 8
  %24 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %25 = icmp eq %struct.bst_node* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.bst* null, %struct.bst** %3, align 8
  br label %58

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %30 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.bst_node* @bst_create_node(i32 %34)
  %36 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %37 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %36, i32 0, i32 1
  store %struct.bst_node* %35, %struct.bst_node** %37, align 8
  br label %51

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %41 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store %struct.bst* null, %struct.bst** %3, align 8
  br label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.bst_node* @bst_create_node(i32 %46)
  %48 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %49 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %48, i32 0, i32 2
  store %struct.bst_node* %47, %struct.bst_node** %49, align 8
  br label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %33
  br label %52

52:                                               ; preds = %51, %13
  %53 = load %struct.bst*, %struct.bst** %4, align 8
  %54 = getelementptr inbounds %struct.bst, %struct.bst* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %57, %struct.bst** %3, align 8
  br label %58

58:                                               ; preds = %52, %44, %26
  %59 = load %struct.bst*, %struct.bst** %3, align 8
  ret %struct.bst* %59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bst_delete_node(%struct.bst* %0, i32 %1) #0 {
  %3 = alloca %struct.bst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bst_node*, align 8
  %6 = alloca %struct.bst_node*, align 8
  %7 = alloca %struct.bst_node*, align 8
  %8 = alloca %struct.bst_node*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  %11 = load %struct.bst_node*, %struct.bst_node** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.bst_node* @bst_search_node(%struct.bst_node* %11, i32 1, i32 %12)
  store %struct.bst_node* %13, %struct.bst_node** %5, align 8
  %14 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.bst_node* @bst_search_node(%struct.bst_node* %14, i32 0, i32 %15)
  store %struct.bst_node* %16, %struct.bst_node** %6, align 8
  %17 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %18 = icmp eq %struct.bst_node* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %21 = icmp eq %struct.bst_node* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.bst*, %struct.bst** %3, align 8
  %24 = getelementptr inbounds %struct.bst, %struct.bst* %23, i32 0, i32 0
  %25 = load %struct.bst_node*, %struct.bst_node** %24, align 8
  store %struct.bst_node* %25, %struct.bst_node** %7, align 8
  %26 = load %struct.bst*, %struct.bst** %3, align 8
  %27 = getelementptr inbounds %struct.bst, %struct.bst* %26, i32 0, i32 0
  store %struct.bst_node* null, %struct.bst_node** %27, align 8
  br label %166

28:                                               ; preds = %19, %2
  %29 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %30 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %29, i32 0, i32 1
  %31 = load %struct.bst_node*, %struct.bst_node** %30, align 8
  %32 = icmp eq %struct.bst_node* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %35 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %34, i32 0, i32 2
  %36 = load %struct.bst_node*, %struct.bst_node** %35, align 8
  %37 = icmp eq %struct.bst_node* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %40 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %43 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %48 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %47, i32 0, i32 1
  %49 = load %struct.bst_node*, %struct.bst_node** %48, align 8
  store %struct.bst_node* %49, %struct.bst_node** %7, align 8
  %50 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %51 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %50, i32 0, i32 1
  store %struct.bst_node* null, %struct.bst_node** %51, align 8
  br label %58

52:                                               ; preds = %38
  %53 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %54 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %53, i32 0, i32 2
  %55 = load %struct.bst_node*, %struct.bst_node** %54, align 8
  store %struct.bst_node* %55, %struct.bst_node** %7, align 8
  %56 = load %struct.bst_node*, %struct.bst_node** %5, align 8
  %57 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %56, i32 0, i32 2
  store %struct.bst_node* null, %struct.bst_node** %57, align 8
  br label %58

58:                                               ; preds = %52, %46
  br label %165

59:                                               ; preds = %33, %28
  %60 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %61 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %60, i32 0, i32 1
  %62 = load %struct.bst_node*, %struct.bst_node** %61, align 8
  %63 = icmp eq %struct.bst_node* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %66 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %65, i32 0, i32 2
  %67 = load %struct.bst_node*, %struct.bst_node** %66, align 8
  store %struct.bst_node* %67, %struct.bst_node** %7, align 8
  %68 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %69 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %68, i32 0, i32 2
  %70 = load %struct.bst_node*, %struct.bst_node** %69, align 8
  %71 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %74 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %76 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %75, i32 0, i32 2
  %77 = load %struct.bst_node*, %struct.bst_node** %76, align 8
  %78 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %77, i32 0, i32 1
  %79 = load %struct.bst_node*, %struct.bst_node** %78, align 8
  %80 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %81 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %80, i32 0, i32 1
  store %struct.bst_node* %79, %struct.bst_node** %81, align 8
  %82 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %83 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %82, i32 0, i32 2
  %84 = load %struct.bst_node*, %struct.bst_node** %83, align 8
  %85 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %84, i32 0, i32 2
  %86 = load %struct.bst_node*, %struct.bst_node** %85, align 8
  %87 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %88 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %87, i32 0, i32 2
  store %struct.bst_node* %86, %struct.bst_node** %88, align 8
  br label %164

89:                                               ; preds = %59
  %90 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %91 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %90, i32 0, i32 2
  %92 = load %struct.bst_node*, %struct.bst_node** %91, align 8
  %93 = icmp eq %struct.bst_node* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %96 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %95, i32 0, i32 1
  %97 = load %struct.bst_node*, %struct.bst_node** %96, align 8
  store %struct.bst_node* %97, %struct.bst_node** %7, align 8
  %98 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %99 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %98, i32 0, i32 1
  %100 = load %struct.bst_node*, %struct.bst_node** %99, align 8
  %101 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %104 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %106 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %105, i32 0, i32 1
  %107 = load %struct.bst_node*, %struct.bst_node** %106, align 8
  %108 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %107, i32 0, i32 1
  %109 = load %struct.bst_node*, %struct.bst_node** %108, align 8
  %110 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %111 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %110, i32 0, i32 1
  store %struct.bst_node* %109, %struct.bst_node** %111, align 8
  %112 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %113 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %112, i32 0, i32 1
  %114 = load %struct.bst_node*, %struct.bst_node** %113, align 8
  %115 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %114, i32 0, i32 2
  %116 = load %struct.bst_node*, %struct.bst_node** %115, align 8
  %117 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %118 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %117, i32 0, i32 2
  store %struct.bst_node* %116, %struct.bst_node** %118, align 8
  br label %163

119:                                              ; preds = %89
  %120 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %121 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %120, i32 0, i32 1
  %122 = load %struct.bst_node*, %struct.bst_node** %121, align 8
  %123 = call %struct.bst_node* @bst_find_max_node(%struct.bst_node* %122, i32 1)
  store %struct.bst_node* %123, %struct.bst_node** %8, align 8
  %124 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %125 = icmp eq %struct.bst_node* %124, null
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %128 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %127, i32 0, i32 1
  %129 = load %struct.bst_node*, %struct.bst_node** %128, align 8
  store %struct.bst_node* %129, %struct.bst_node** %7, align 8
  %130 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %131 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %130, i32 0, i32 1
  %132 = load %struct.bst_node*, %struct.bst_node** %131, align 8
  %133 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %136 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %138 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %137, i32 0, i32 1
  %139 = load %struct.bst_node*, %struct.bst_node** %138, align 8
  %140 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %139, i32 0, i32 1
  %141 = load %struct.bst_node*, %struct.bst_node** %140, align 8
  %142 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %143 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %142, i32 0, i32 1
  store %struct.bst_node* %141, %struct.bst_node** %143, align 8
  br label %162

144:                                              ; preds = %119
  %145 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %146 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %145, i32 0, i32 2
  %147 = load %struct.bst_node*, %struct.bst_node** %146, align 8
  store %struct.bst_node* %147, %struct.bst_node** %7, align 8
  %148 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %149 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %148, i32 0, i32 2
  %150 = load %struct.bst_node*, %struct.bst_node** %149, align 8
  %151 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.bst_node*, %struct.bst_node** %6, align 8
  %154 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %156 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %155, i32 0, i32 2
  %157 = load %struct.bst_node*, %struct.bst_node** %156, align 8
  %158 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %157, i32 0, i32 1
  %159 = load %struct.bst_node*, %struct.bst_node** %158, align 8
  %160 = load %struct.bst_node*, %struct.bst_node** %8, align 8
  %161 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %160, i32 0, i32 2
  store %struct.bst_node* %159, %struct.bst_node** %161, align 8
  br label %162

162:                                              ; preds = %144, %126
  br label %163

163:                                              ; preds = %162, %94
  br label %164

164:                                              ; preds = %163, %64
  br label %165

165:                                              ; preds = %164, %58
  br label %166

166:                                              ; preds = %165, %22
  %167 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  %168 = bitcast %struct.bst_node* %167 to i8*
  call void @free(i8* %168) #4
  %169 = load %struct.bst*, %struct.bst** %3, align 8
  %170 = getelementptr inbounds %struct.bst, %struct.bst* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bst_inorder_traversal(%struct.bst_node* %0) #0 {
  %2 = alloca %struct.bst_node*, align 8
  store %struct.bst_node* %0, %struct.bst_node** %2, align 8
  %3 = load %struct.bst_node*, %struct.bst_node** %2, align 8
  %4 = icmp ne %struct.bst_node* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.bst_node*, %struct.bst_node** %2, align 8
  %7 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %6, i32 0, i32 1
  %8 = load %struct.bst_node*, %struct.bst_node** %7, align 8
  call void @bst_inorder_traversal(%struct.bst_node* %8)
  %9 = load %struct.bst_node*, %struct.bst_node** %2, align 8
  %10 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bst_node*, %struct.bst_node** %2, align 8
  %14 = getelementptr inbounds %struct.bst_node, %struct.bst_node* %13, i32 0, i32 2
  %15 = load %struct.bst_node*, %struct.bst_node** %14, align 8
  call void @bst_inorder_traversal(%struct.bst_node* %15)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bst*, align 8
  %3 = alloca [13 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call %struct.bst* @bst_create()
  store %struct.bst* %6, %struct.bst** %2, align 8
  %7 = bitcast [13 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([13 x i32]* @__const.main.arr to i8*), i64 52, i1 false)
  store i32 13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %28, %0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.bst*, %struct.bst** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.bst* @bst_insert_node(%struct.bst* %13, i32 %17)
  %19 = load %struct.bst*, %struct.bst** %2, align 8
  %20 = getelementptr inbounds %struct.bst, %struct.bst* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.bst*, %struct.bst** %2, align 8
  %25 = getelementptr inbounds %struct.bst, %struct.bst* %24, i32 0, i32 0
  %26 = load %struct.bst_node*, %struct.bst_node** %25, align 8
  call void @bst_inorder_traversal(%struct.bst_node* %26)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %8

31:                                               ; preds = %8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.bst*, %struct.bst** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [13 x i32], [13 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  call void @bst_delete_node(%struct.bst* %38, i32 %42)
  %43 = load %struct.bst*, %struct.bst** %2, align 8
  %44 = getelementptr inbounds %struct.bst, %struct.bst* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.bst*, %struct.bst** %2, align 8
  %49 = getelementptr inbounds %struct.bst, %struct.bst* %48, i32 0, i32 0
  %50 = load %struct.bst_node*, %struct.bst_node** %49, align 8
  call void @bst_inorder_traversal(%struct.bst_node* %50)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.bst*, %struct.bst** %2, align 8
  %57 = bitcast %struct.bst* %56 to i8*
  call void @free(i8* %57) #4
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
