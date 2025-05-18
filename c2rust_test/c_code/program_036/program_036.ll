; ModuleID = './c_code/temp_compile/trieTree.c'
source_filename = "./c_code/temp_compile/trieTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Tnode = type { i32, [26 x ptr] }

@.str = private unnamed_addr constant [9 x i8] c"leechanx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lichenxuan\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"leechany\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"leechlian\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cong\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"congx\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"congxiaol\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"leechanxuan\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"liche\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"zhangyumao\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"zhangyuzhou\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"zhanghongli\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"zhangweizhe\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"zhai\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"alibaba\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tencent\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"baidu\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"wangyi\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"souhu\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"macos\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@__const.main.string = private unnamed_addr constant [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 16
@__const.main.value = private unnamed_addr constant [23 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23], align 16
@.str.23 = private unnamed_addr constant [7 x i8] c"%d=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"zhanghonglis\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"zhanghongl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_pointer_array(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 26
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.Tnode, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [26 x ptr], ptr %9, i64 0, i64 %11
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %3, align 4
  br label %4

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @create_tree() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = call noalias ptr @malloc(i64 noundef 216) #6
  store ptr %3, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store ptr null, ptr %1, align 8
  br label %12

7:                                                ; preds = %0
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.Tnode, ptr %8, i32 0, i32 0
  store i32 -1, ptr %9, align 8
  %10 = load ptr, ptr %2, align 8
  call void @init_pointer_array(ptr noundef %10)
  %11 = load ptr, ptr %2, align 8
  store ptr %11, ptr %1, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load ptr, ptr %1, align 8
  ret ptr %13
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %11 = load ptr, ptr %4, align 8
  store ptr %11, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = call i64 @strlen(ptr noundef %12) #7
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %10, align 4
  br label %15

15:                                               ; preds = %54, %3
  %16 = load i32, ptr %9, align 4
  %17 = load i32, ptr %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds nuw %struct.Tnode, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 97
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [26 x ptr], ptr %21, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %19
  %34 = call noalias ptr @malloc(i64 noundef 216) #6
  store ptr %34, ptr %8, align 8
  %35 = load ptr, ptr %8, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %73

38:                                               ; preds = %33
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds nuw %struct.Tnode, ptr %39, i32 0, i32 0
  store i32 -1, ptr %40, align 8
  %41 = load ptr, ptr %8, align 8
  call void @init_pointer_array(ptr noundef %41)
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw %struct.Tnode, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %5, align 8
  %46 = load i32, ptr %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = load i8, ptr %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 97
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [26 x ptr], ptr %44, i64 0, i64 %52
  store ptr %42, ptr %53, align 8
  br label %54

54:                                               ; preds = %38, %19
  %55 = load ptr, ptr %7, align 8
  %56 = getelementptr inbounds nuw %struct.Tnode, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %5, align 8
  %58 = load i32, ptr %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 97
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [26 x ptr], ptr %56, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8
  store ptr %66, ptr %7, align 8
  %67 = load i32, ptr %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %9, align 4
  br label %15

69:                                               ; preds = %15
  %70 = load i32, ptr %6, align 4
  %71 = load ptr, ptr %7, align 8
  %72 = getelementptr inbounds nuw %struct.Tnode, ptr %71, i32 0, i32 0
  store i32 %70, ptr %72, align 8
  br label %73

73:                                               ; preds = %69, %37
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_node_r(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %14 = load i32, ptr %8, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %81

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %11, align 1
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.Tnode, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %11, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 97
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [26 x ptr], ptr %25, i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %12, align 8
  %32 = load ptr, ptr %12, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %18
  %35 = call noalias ptr @malloc(i64 noundef 216) #6
  store ptr %35, ptr %13, align 8
  %36 = load ptr, ptr %13, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %81

39:                                               ; preds = %34
  %40 = load ptr, ptr %13, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds nuw %struct.Tnode, ptr %41, i32 0, i32 1
  %43 = load i8, ptr %11, align 1
  %44 = sext i8 %43 to i32
  %45 = sub nsw i32 %44, 97
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [26 x ptr], ptr %42, i64 0, i64 %46
  store ptr %40, ptr %47, align 8
  %48 = load ptr, ptr %13, align 8
  call void @init_pointer_array(ptr noundef %48)
  %49 = load ptr, ptr %13, align 8
  %50 = getelementptr inbounds nuw %struct.Tnode, ptr %49, i32 0, i32 0
  store i32 -1, ptr %50, align 8
  br label %51

51:                                               ; preds = %39, %18
  %52 = load i32, ptr %8, align 4
  %53 = load i32, ptr %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, ptr %10, align 4
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds nuw %struct.Tnode, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %11, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 97
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [26 x ptr], ptr %59, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds nuw %struct.Tnode, ptr %65, i32 0, i32 0
  store i32 %57, ptr %66, align 8
  br label %67

67:                                               ; preds = %56, %51
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds nuw %struct.Tnode, ptr %68, i32 0, i32 1
  %70 = load i8, ptr %11, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 97
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [26 x ptr], ptr %69, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8
  %76 = load ptr, ptr %7, align 8
  %77 = load i32, ptr %8, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, ptr %9, align 4
  %80 = load i32, ptr %10, align 4
  call void @insert_node_r(ptr noundef %75, ptr noundef %76, i32 noundef %78, i32 noundef %79, i32 noundef %80)
  br label %81

81:                                               ; preds = %67, %38, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_tree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @strlen(ptr noundef %11) #7
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %6, align 4
  store i32 -1, ptr %8, align 4
  %14 = load ptr, ptr %4, align 8
  store ptr %14, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i32, ptr %10, align 4
  %17 = load i32, ptr %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8
  %21 = load i32, ptr %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr %7, align 1
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds nuw %struct.Tnode, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %7, align 1
  %28 = sext i8 %27 to i32
  %29 = sub nsw i32 %28, 97
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [26 x ptr], ptr %26, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %9, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = icmp ne ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  store i32 -1, ptr %3, align 4
  br label %45

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %10, align 4
  br label %15

40:                                               ; preds = %15
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds nuw %struct.Tnode, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8
  store i32 %43, ptr %8, align 4
  %44 = load i32, ptr %8, align 4
  store i32 %44, ptr %3, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, ptr %3, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_tree_r(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  %12 = load i32, ptr %8, align 4
  %13 = load i32, ptr %9, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, ptr %5, align 4
  br label %57

17:                                               ; preds = %4
  %18 = load ptr, ptr %7, align 8
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr %10, align 1
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.Tnode, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %10, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 97
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [26 x ptr], ptr %24, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %11, align 8
  %31 = load ptr, ptr %11, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %17
  store i32 -1, ptr %5, align 4
  br label %57

34:                                               ; preds = %17
  %35 = load i32, ptr %8, align 4
  %36 = load i32, ptr %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds nuw %struct.Tnode, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8
  store i32 %42, ptr %5, align 4
  br label %57

43:                                               ; preds = %34
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds nuw %struct.Tnode, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %10, align 1
  %47 = sext i8 %46 to i32
  %48 = sub nsw i32 %47, 97
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [26 x ptr], ptr %45, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %7, align 8
  %53 = load i32, ptr %8, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, ptr %9, align 4
  %56 = call i32 @search_tree_r(ptr noundef %51, ptr noundef %52, i32 noundef %54, i32 noundef %55)
  store i32 %56, ptr %5, align 4
  br label %57

57:                                               ; preds = %43, %39, %33, %16
  %58 = load i32, ptr %5, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destory_tree(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  store i32 0, ptr %3, align 4
  br label %8

8:                                                ; preds = %18, %7
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %9, 26
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct.Tnode, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [26 x ptr], ptr %13, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8
  call void @destory_tree(ptr noundef %17)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [23 x ptr], align 16
  %7 = alloca [23 x i32], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const.main.string, i64 184, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.main.value, i64 92, i1 false)
  %13 = call ptr @create_tree()
  store ptr %13, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 23
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 8
  %19 = load i32, ptr %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [23 x ptr], ptr %6, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [23 x i32], ptr %7, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4
  call void @insert_node(ptr noundef %18, ptr noundef %22, i32 noundef %26)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %9, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, ptr %10, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, ptr %10, align 4
  %33 = icmp slt i32 %32, 23
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [23 x ptr], ptr %6, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @search_tree(ptr noundef %35, ptr noundef %39)
  store i32 %40, ptr %11, align 4
  %41 = load ptr, ptr %8, align 8
  %42 = load i32, ptr %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [23 x ptr], ptr %6, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [23 x ptr], ptr %6, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8
  %50 = call i64 @strlen(ptr noundef %49) #7
  %51 = trunc i64 %50 to i32
  %52 = call i32 @search_tree_r(ptr noundef %41, ptr noundef %45, i32 noundef 0, i32 noundef %51)
  store i32 %52, ptr %12, align 4
  %53 = load i32, ptr %11, align 4
  %54 = load i32, ptr %12, align 4
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, i32 noundef %53, i32 noundef %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i32, ptr %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %10, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load ptr, ptr %8, align 8
  %61 = call i32 @search_tree(ptr noundef %60, ptr noundef @.str.24)
  %62 = load ptr, ptr %8, align 8
  %63 = call i32 @search_tree_r(ptr noundef %62, ptr noundef @.str.24, i32 noundef 0, i32 noundef 12)
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, i32 noundef %61, i32 noundef %63)
  %65 = load ptr, ptr %8, align 8
  %66 = call i32 @search_tree(ptr noundef %65, ptr noundef @.str.25)
  %67 = load ptr, ptr %8, align 8
  %68 = call i32 @search_tree_r(ptr noundef %67, ptr noundef @.str.25, i32 noundef 0, i32 noundef 10)
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, i32 noundef %66, i32 noundef %68)
  %70 = load ptr, ptr %8, align 8
  call void @destory_tree(ptr noundef %70)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
