; ModuleID = './c_code/temp_compile/btree.c'
source_filename = "./c_code/temp_compile/btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i32, [2 x i32], [3 x %struct.node*] }

@root = dso_local global %struct.node* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Creation of B tree for M=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"1.Insert\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"2.Delete\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"3.Search\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"4.Display\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"5.Quit\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"6.Enumerate\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"7.Total Keys\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"8.Min and Max Keys\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"9.Max Level\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Enter your choice : \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Enter the key : \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Btree is :\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Btree in sorted order is:\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"The total number of keys in this tree is:\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"The maximum level in this tree is:\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Wrong choice\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Key already available\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Search path:\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"Key %d found in position %d of last dispalyed node\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Key %d is not available\0A\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"tree is empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 3)
  br label %5

5:                                                ; preds = %0, %48
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %3)
  call void @eatline()
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %46 [
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
    i32 4, label %30
    i32 5, label %33
    i32 6, label %34
    i32 7, label %38
    i32 8, label %41
    i32 9, label %43
  ]

18:                                               ; preds = %5
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %2)
  call void @eatline()
  %21 = load i32, i32* %2, align 4
  call void @insert(i32 %21)
  br label %48

22:                                               ; preds = %5
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %2)
  call void @eatline()
  %25 = load i32, i32* %2, align 4
  call void @DelNode(i32 %25)
  br label %48

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %2)
  call void @eatline()
  %29 = load i32, i32* %2, align 4
  call void @search(i32 %29)
  br label %48

30:                                               ; preds = %5
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %32 = load %struct.node*, %struct.node** @root, align 8
  call void @display(%struct.node* %32, i32 0)
  br label %48

33:                                               ; preds = %5
  call void @exit(i32 1) #4
  unreachable

34:                                               ; preds = %5
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %36 = load %struct.node*, %struct.node** @root, align 8
  call void @inorder(%struct.node* %36)
  %37 = call i32 @putchar(i32 10)
  br label %48

38:                                               ; preds = %5
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  %40 = load %struct.node*, %struct.node** @root, align 8
  call void @printTotal(%struct.node* %40)
  br label %48

41:                                               ; preds = %5
  %42 = load %struct.node*, %struct.node** @root, align 8
  call void @getMinMax(%struct.node* %42)
  br label %48

43:                                               ; preds = %5
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %45 = load %struct.node*, %struct.node** @root, align 8
  call void @printMaxLevel(%struct.node* %45)
  br label %48

46:                                               ; preds = %5
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43, %41, %38, %34, %30, %26, %22, %18
  br label %5
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eatline() #0 {
  %1 = alloca i8, align 1
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0))
  br label %3

3:                                                ; preds = %9, %0
  %4 = call i32 @getchar()
  %5 = icmp ne i32 %4, 10
  %6 = zext i1 %5 to i32
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %1, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %3

10:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.node*, %struct.node** @root, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ins(%struct.node* %7, i32 %8, i32* %4, %struct.node** %3)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.node*, %struct.node** @root, align 8
  store %struct.node* %18, %struct.node** %6, align 8
  %19 = call noalias i8* @malloc(i64 40) #5
  %20 = bitcast i8* %19 to %struct.node*
  store %struct.node* %20, %struct.node** @root, align 8
  %21 = load %struct.node*, %struct.node** @root, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.node*, %struct.node** @root, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = load %struct.node*, %struct.node** @root, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 2
  %30 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %29, i64 0, i64 0
  store %struct.node* %27, %struct.node** %30, align 8
  %31 = load %struct.node*, %struct.node** %3, align 8
  %32 = load %struct.node*, %struct.node** @root, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  %34 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %33, i64 0, i64 1
  store %struct.node* %31, %struct.node** %34, align 8
  br label %35

35:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DelNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.node*, %struct.node** @root, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @del(%struct.node* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %20 [
    i32 1, label %9
    i32 4, label %12
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %10)
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.node*, %struct.node** @root, align 8
  store %struct.node* %13, %struct.node** %3, align 8
  %14 = load %struct.node*, %struct.node** @root, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  %16 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %15, i64 0, i64 0
  %17 = load %struct.node*, %struct.node** %16, align 8
  store %struct.node* %17, %struct.node** @root, align 8
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = bitcast %struct.node* %18 to i8*
  call void @free(i8* %19) #5
  br label %20

20:                                               ; preds = %1, %12, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load %struct.node*, %struct.node** @root, align 8
  store %struct.node* %7, %struct.node** %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  br label %9

9:                                                ; preds = %57, %1
  %10 = load %struct.node*, %struct.node** %6, align 8
  %11 = icmp ne %struct.node* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %9
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %12
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.node*, %struct.node** %6, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.node*, %struct.node** %6, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @searchPos(i32 %35, i32* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.node*, %struct.node** %6, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %54, i32 %55)
  br label %67

57:                                               ; preds = %44, %33
  %58 = load %struct.node*, %struct.node** %6, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 2
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %59, i64 0, i64 %61
  %63 = load %struct.node*, %struct.node** %62, align 8
  store %struct.node* %63, %struct.node** %6, align 8
  br label %9

64:                                               ; preds = %9
  %65 = load i32, i32* %2, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %53
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display(%struct.node* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.node*, %struct.node** %3, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %57

8:                                                ; preds = %2
  store i32 1, i32* %5, align 4
  br label %9

9:                                                ; preds = %15, %8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %9

18:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %33, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.node*, %struct.node** %3, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %19

36:                                               ; preds = %19
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %53, %36
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.node*, %struct.node** %3, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.node*, %struct.node** %3, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %46, i64 0, i64 %48
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 10
  call void @display(%struct.node* %50, i32 %52)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %38

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inorder(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = icmp ne %struct.node* %3, null
  br i1 %4, label %5, label %40

5:                                                ; preds = %1
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %39

10:                                               ; preds = %5
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %13 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %12, i64 0, i64 0
  %14 = load %struct.node*, %struct.node** %13, align 8
  call void @inorder(%struct.node* %14)
  %15 = load %struct.node*, %struct.node** %2, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %18)
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  %22 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %21, i64 0, i64 1
  %23 = load %struct.node*, %struct.node** %22, align 8
  call void @inorder(%struct.node* %23)
  %24 = load %struct.node*, %struct.node** %2, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %10
  %29 = load %struct.node*, %struct.node** %2, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 1
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %32)
  %34 = load %struct.node*, %struct.node** %2, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %36 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %35, i64 0, i64 2
  %37 = load %struct.node*, %struct.node** %36, align 8
  call void @inorder(%struct.node* %37)
  br label %38

38:                                               ; preds = %28, %10
  br label %39

39:                                               ; preds = %38, %5
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printTotal(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = call i32 @totalKeys(%struct.node* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getMinMax(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  %4 = call i32 @getMin(%struct.node* %3)
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = call i32 @getMax(%struct.node* %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 %4, i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printMaxLevel(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = call i32 @maxLevel(%struct.node* %4)
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  br label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ins(%struct.node* %0, i32 %1, i32* %2, %struct.node** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.node**, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.node** %3, %struct.node*** %9, align 8
  %19 = load %struct.node*, %struct.node** %6, align 8
  %20 = icmp eq %struct.node* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.node**, %struct.node*** %9, align 8
  store %struct.node* null, %struct.node** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  store i32 3, i32* %5, align 4
  br label %271

25:                                               ; preds = %4
  %26 = load %struct.node*, %struct.node** %6, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.node*, %struct.node** %6, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @searchPos(i32 %29, i32* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 1
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %39, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %271

48:                                               ; preds = %38, %25
  %49 = load %struct.node*, %struct.node** %6, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %50, i64 0, i64 %52
  %54 = load %struct.node*, %struct.node** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ins(%struct.node* %54, i32 %55, i32* %16, %struct.node** %10)
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %18, align 4
  store i32 %60, i32* %5, align 4
  br label %271

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %122

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.node*, %struct.node** %6, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 1
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %67, i64 0, i64 0
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @searchPos(i32 %65, i32* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %13, align 4
  br label %72

72:                                               ; preds = %101, %64
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %72
  %77 = load %struct.node*, %struct.node** %6, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 1
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.node*, %struct.node** %6, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 1
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load %struct.node*, %struct.node** %6, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 2
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %90, i64 0, i64 %92
  %94 = load %struct.node*, %struct.node** %93, align 8
  %95 = load %struct.node*, %struct.node** %6, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 2
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %96, i64 0, i64 %99
  store %struct.node* %94, %struct.node** %100, align 8
  br label %101

101:                                              ; preds = %76
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  br label %72

104:                                              ; preds = %72
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.node*, %struct.node** %6, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 1
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %107, i64 0, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load %struct.node*, %struct.node** %10, align 8
  %112 = load %struct.node*, %struct.node** %6, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 2
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %113, i64 0, i64 %116
  store %struct.node* %111, %struct.node** %117, align 8
  %118 = load %struct.node*, %struct.node** %6, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  store i32 2, i32* %5, align 4
  br label %271

122:                                              ; preds = %61
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %17, align 4
  %127 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %127, %struct.node** %11, align 8
  br label %183

128:                                              ; preds = %122
  %129 = load %struct.node*, %struct.node** %6, align 8
  %130 = getelementptr inbounds %struct.node, %struct.node* %129, i32 0, i32 1
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %130, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %17, align 4
  %133 = load %struct.node*, %struct.node** %6, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 2
  %135 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %134, i64 0, i64 2
  %136 = load %struct.node*, %struct.node** %135, align 8
  store %struct.node* %136, %struct.node** %11, align 8
  store i32 1, i32* %13, align 4
  br label %137

137:                                              ; preds = %166, %128
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %137
  %142 = load %struct.node*, %struct.node** %6, align 8
  %143 = getelementptr inbounds %struct.node, %struct.node* %142, i32 0, i32 1
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %143, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.node*, %struct.node** %6, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 1
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %150, i64 0, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load %struct.node*, %struct.node** %6, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 2
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %155, i64 0, i64 %157
  %159 = load %struct.node*, %struct.node** %158, align 8
  %160 = load %struct.node*, %struct.node** %6, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 2
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %161, i64 0, i64 %164
  store %struct.node* %159, %struct.node** %165, align 8
  br label %166

166:                                              ; preds = %141
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %13, align 4
  br label %137

169:                                              ; preds = %137
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.node*, %struct.node** %6, align 8
  %172 = getelementptr inbounds %struct.node, %struct.node* %171, i32 0, i32 1
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 0, i64 %174
  store i32 %170, i32* %175, align 4
  %176 = load %struct.node*, %struct.node** %10, align 8
  %177 = load %struct.node*, %struct.node** %6, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 2
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %178, i64 0, i64 %181
  store %struct.node* %176, %struct.node** %182, align 8
  br label %183

183:                                              ; preds = %169, %125
  store i32 1, i32* %15, align 4
  %184 = load %struct.node*, %struct.node** %6, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 1
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %185, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %8, align 8
  store i32 %189, i32* %190, align 4
  %191 = call noalias i8* @malloc(i64 40) #5
  %192 = bitcast i8* %191 to %struct.node*
  %193 = load %struct.node**, %struct.node*** %9, align 8
  store %struct.node* %192, %struct.node** %193, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.node*, %struct.node** %6, align 8
  %196 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %15, align 4
  %198 = sub nsw i32 2, %197
  %199 = load %struct.node**, %struct.node*** %9, align 8
  %200 = load %struct.node*, %struct.node** %199, align 8
  %201 = getelementptr inbounds %struct.node, %struct.node* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 8
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %257, %183
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.node**, %struct.node*** %9, align 8
  %205 = load %struct.node*, %struct.node** %204, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %203, %207
  br i1 %208, label %209, label %260

209:                                              ; preds = %202
  %210 = load %struct.node*, %struct.node** %6, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 2
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %212, %213
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %211, i64 0, i64 %216
  %218 = load %struct.node*, %struct.node** %217, align 8
  %219 = load %struct.node**, %struct.node*** %9, align 8
  %220 = load %struct.node*, %struct.node** %219, align 8
  %221 = getelementptr inbounds %struct.node, %struct.node* %220, i32 0, i32 2
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %221, i64 0, i64 %223
  store %struct.node* %218, %struct.node** %224, align 8
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.node**, %struct.node*** %9, align 8
  %227 = load %struct.node*, %struct.node** %226, align 8
  %228 = getelementptr inbounds %struct.node, %struct.node* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = sub nsw i32 %229, 1
  %231 = icmp slt i32 %225, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %209
  %233 = load %struct.node*, %struct.node** %6, align 8
  %234 = getelementptr inbounds %struct.node, %struct.node* %233, i32 0, i32 1
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %235, %236
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %234, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.node**, %struct.node*** %9, align 8
  %243 = load %struct.node*, %struct.node** %242, align 8
  %244 = getelementptr inbounds %struct.node, %struct.node* %243, i32 0, i32 1
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %244, i64 0, i64 %246
  store i32 %241, i32* %247, align 4
  br label %256

248:                                              ; preds = %209
  %249 = load i32, i32* %17, align 4
  %250 = load %struct.node**, %struct.node*** %9, align 8
  %251 = load %struct.node*, %struct.node** %250, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 1
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %252, i64 0, i64 %254
  store i32 %249, i32* %255, align 4
  br label %256

256:                                              ; preds = %248, %232
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %13, align 4
  br label %202

260:                                              ; preds = %202
  %261 = load %struct.node*, %struct.node** %11, align 8
  %262 = load %struct.node**, %struct.node*** %9, align 8
  %263 = load %struct.node*, %struct.node** %262, align 8
  %264 = getelementptr inbounds %struct.node, %struct.node* %263, i32 0, i32 2
  %265 = load %struct.node**, %struct.node*** %9, align 8
  %266 = load %struct.node*, %struct.node** %265, align 8
  %267 = getelementptr inbounds %struct.node, %struct.node* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %264, i64 0, i64 %269
  store %struct.node* %261, %struct.node** %270, align 8
  store i32 3, i32* %5, align 4
  br label %271

271:                                              ; preds = %260, %104, %59, %47, %21
  %272 = load i32, i32* %5, align 4
  ret i32 %272
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchPos(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %13, %18
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i1 [ false, %8 ], [ %19, %12 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del(%struct.node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.node**, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca %struct.node*, align 8
  %16 = alloca %struct.node*, align 8
  %17 = alloca %struct.node*, align 8
  %18 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.node*, %struct.node** %4, align 8
  %20 = icmp eq %struct.node* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %544

22:                                               ; preds = %2
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  store i32* %28, i32** %11, align 8
  %29 = load %struct.node*, %struct.node** %4, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 2
  %31 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %30, i64 0, i64 0
  store %struct.node** %31, %struct.node*** %13, align 8
  store i32 1, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @searchPos(i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.node**, %struct.node*** %13, align 8
  %37 = getelementptr inbounds %struct.node*, %struct.node** %36, i64 0
  %38 = load %struct.node*, %struct.node** %37, align 8
  %39 = icmp eq %struct.node* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %40
  store i32 1, i32* %3, align 4
  br label %544

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %81, %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.node**, %struct.node*** %13, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.node*, %struct.node** %71, i64 %74
  %76 = load %struct.node*, %struct.node** %75, align 8
  %77 = load %struct.node**, %struct.node*** %13, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.node*, %struct.node** %77, i64 %79
  store %struct.node* %76, %struct.node** %80, align 8
  br label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load %struct.node*, %struct.node** %4, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.node*, %struct.node** %4, align 8
  %90 = load %struct.node*, %struct.node** @root, align 8
  %91 = icmp eq %struct.node* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 1, %92 ], [ %94, %93 ]
  %97 = icmp sge i32 %88, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 2, i32 4
  store i32 %99, i32* %3, align 4
  br label %544

100:                                              ; preds = %22
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %152

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %105, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %104
  %113 = load %struct.node**, %struct.node*** %13, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.node*, %struct.node** %113, i64 %115
  %117 = load %struct.node*, %struct.node** %116, align 8
  store %struct.node* %117, %struct.node** %16, align 8
  br label %118

118:                                              ; preds = %112, %131
  %119 = load %struct.node*, %struct.node** %16, align 8
  %120 = getelementptr inbounds %struct.node, %struct.node* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %18, align 4
  %122 = load %struct.node*, %struct.node** %16, align 8
  %123 = getelementptr inbounds %struct.node, %struct.node* %122, i32 0, i32 2
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %123, i64 0, i64 %125
  %127 = load %struct.node*, %struct.node** %126, align 8
  store %struct.node* %127, %struct.node** %17, align 8
  %128 = load %struct.node*, %struct.node** %17, align 8
  %129 = icmp eq %struct.node* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  br label %133

131:                                              ; preds = %118
  %132 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %132, %struct.node** %16, align 8
  br label %118

133:                                              ; preds = %130
  %134 = load %struct.node*, %struct.node** %16, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 1
  %136 = load i32, i32* %18, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load %struct.node*, %struct.node** %16, align 8
  %147 = getelementptr inbounds %struct.node, %struct.node* %146, i32 0, i32 1
  %148 = load i32, i32* %18, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %147, i64 0, i64 %150
  store i32 %145, i32* %151, align 4
  br label %152

152:                                              ; preds = %133, %104, %100
  %153 = load %struct.node**, %struct.node*** %13, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.node*, %struct.node** %153, i64 %155
  %157 = load %struct.node*, %struct.node** %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @del(%struct.node* %157, i32 %158)
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 4
  br i1 %161, label %162, label %164

162:                                              ; preds = %152
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %3, align 4
  br label %544

164:                                              ; preds = %152
  %165 = load i32, i32* %6, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %278

167:                                              ; preds = %164
  %168 = load %struct.node**, %struct.node*** %13, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.node*, %struct.node** %168, i64 %171
  %173 = load %struct.node*, %struct.node** %172, align 8
  %174 = getelementptr inbounds %struct.node, %struct.node* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = icmp sgt i32 %175, %176
  br i1 %177, label %178, label %278

178:                                              ; preds = %167
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = load %struct.node**, %struct.node*** %13, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.node*, %struct.node** %181, i64 %183
  %185 = load %struct.node*, %struct.node** %184, align 8
  store %struct.node* %185, %struct.node** %14, align 8
  %186 = load %struct.node**, %struct.node*** %13, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.node*, %struct.node** %186, i64 %188
  %190 = load %struct.node*, %struct.node** %189, align 8
  store %struct.node* %190, %struct.node** %15, align 8
  %191 = load %struct.node*, %struct.node** %15, align 8
  %192 = getelementptr inbounds %struct.node, %struct.node* %191, i32 0, i32 2
  %193 = load %struct.node*, %struct.node** %15, align 8
  %194 = getelementptr inbounds %struct.node, %struct.node* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %192, i64 0, i64 %196
  %198 = load %struct.node*, %struct.node** %197, align 8
  %199 = load %struct.node*, %struct.node** %15, align 8
  %200 = getelementptr inbounds %struct.node, %struct.node* %199, i32 0, i32 2
  %201 = load %struct.node*, %struct.node** %15, align 8
  %202 = getelementptr inbounds %struct.node, %struct.node* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %200, i64 0, i64 %205
  store %struct.node* %198, %struct.node** %206, align 8
  %207 = load %struct.node*, %struct.node** %15, align 8
  %208 = getelementptr inbounds %struct.node, %struct.node* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %238, %178
  %211 = load i32, i32* %7, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %241

213:                                              ; preds = %210
  %214 = load %struct.node*, %struct.node** %15, align 8
  %215 = getelementptr inbounds %struct.node, %struct.node* %214, i32 0, i32 1
  %216 = load i32, i32* %7, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %215, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.node*, %struct.node** %15, align 8
  %222 = getelementptr inbounds %struct.node, %struct.node* %221, i32 0, i32 1
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %222, i64 0, i64 %224
  store i32 %220, i32* %225, align 4
  %226 = load %struct.node*, %struct.node** %15, align 8
  %227 = getelementptr inbounds %struct.node, %struct.node* %226, i32 0, i32 2
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %227, i64 0, i64 %230
  %232 = load %struct.node*, %struct.node** %231, align 8
  %233 = load %struct.node*, %struct.node** %15, align 8
  %234 = getelementptr inbounds %struct.node, %struct.node* %233, i32 0, i32 2
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %234, i64 0, i64 %236
  store %struct.node* %232, %struct.node** %237, align 8
  br label %238

238:                                              ; preds = %213
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %7, align 4
  br label %210

241:                                              ; preds = %210
  %242 = load %struct.node*, %struct.node** %15, align 8
  %243 = getelementptr inbounds %struct.node, %struct.node* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.node*, %struct.node** %15, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 1
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %252, i64 0, i64 0
  store i32 %250, i32* %253, align 4
  %254 = load %struct.node*, %struct.node** %14, align 8
  %255 = getelementptr inbounds %struct.node, %struct.node* %254, i32 0, i32 2
  %256 = load %struct.node*, %struct.node** %14, align 8
  %257 = getelementptr inbounds %struct.node, %struct.node* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %255, i64 0, i64 %259
  %261 = load %struct.node*, %struct.node** %260, align 8
  %262 = load %struct.node*, %struct.node** %15, align 8
  %263 = getelementptr inbounds %struct.node, %struct.node* %262, i32 0, i32 2
  %264 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %263, i64 0, i64 0
  store %struct.node* %261, %struct.node** %264, align 8
  %265 = load %struct.node*, %struct.node** %14, align 8
  %266 = getelementptr inbounds %struct.node, %struct.node* %265, i32 0, i32 1
  %267 = load %struct.node*, %struct.node** %14, align 8
  %268 = getelementptr inbounds %struct.node, %struct.node* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, -1
  store i32 %270, i32* %268, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %266, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* %8, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %273, i32* %277, align 4
  store i32 2, i32* %3, align 4
  br label %544

278:                                              ; preds = %167, %164
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %9, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %397

282:                                              ; preds = %278
  %283 = load %struct.node**, %struct.node*** %13, align 8
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.node*, %struct.node** %283, i64 %286
  %288 = load %struct.node*, %struct.node** %287, align 8
  %289 = getelementptr inbounds %struct.node, %struct.node* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %10, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %397

293:                                              ; preds = %282
  %294 = load i32, i32* %6, align 4
  store i32 %294, i32* %8, align 4
  %295 = load %struct.node**, %struct.node*** %13, align 8
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.node*, %struct.node** %295, i64 %297
  %299 = load %struct.node*, %struct.node** %298, align 8
  store %struct.node* %299, %struct.node** %14, align 8
  %300 = load %struct.node**, %struct.node*** %13, align 8
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.node*, %struct.node** %300, i64 %303
  %305 = load %struct.node*, %struct.node** %304, align 8
  store %struct.node* %305, %struct.node** %15, align 8
  %306 = load i32*, i32** %11, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.node*, %struct.node** %14, align 8
  %312 = getelementptr inbounds %struct.node, %struct.node* %311, i32 0, i32 1
  %313 = load %struct.node*, %struct.node** %14, align 8
  %314 = getelementptr inbounds %struct.node, %struct.node* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [2 x i32], [2 x i32]* %312, i64 0, i64 %316
  store i32 %310, i32* %317, align 4
  %318 = load %struct.node*, %struct.node** %15, align 8
  %319 = getelementptr inbounds %struct.node, %struct.node* %318, i32 0, i32 2
  %320 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %319, i64 0, i64 0
  %321 = load %struct.node*, %struct.node** %320, align 8
  %322 = load %struct.node*, %struct.node** %14, align 8
  %323 = getelementptr inbounds %struct.node, %struct.node* %322, i32 0, i32 2
  %324 = load %struct.node*, %struct.node** %14, align 8
  %325 = getelementptr inbounds %struct.node, %struct.node* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %323, i64 0, i64 %328
  store %struct.node* %321, %struct.node** %329, align 8
  %330 = load %struct.node*, %struct.node** %15, align 8
  %331 = getelementptr inbounds %struct.node, %struct.node* %330, i32 0, i32 1
  %332 = getelementptr inbounds [2 x i32], [2 x i32]* %331, i64 0, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %333, i32* %337, align 4
  %338 = load %struct.node*, %struct.node** %14, align 8
  %339 = getelementptr inbounds %struct.node, %struct.node* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 8
  %342 = load %struct.node*, %struct.node** %15, align 8
  %343 = getelementptr inbounds %struct.node, %struct.node* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %343, align 8
  store i32 0, i32* %7, align 4
  br label %346

346:                                              ; preds = %377, %293
  %347 = load i32, i32* %7, align 4
  %348 = load %struct.node*, %struct.node** %15, align 8
  %349 = getelementptr inbounds %struct.node, %struct.node* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = icmp slt i32 %347, %350
  br i1 %351, label %352, label %380

352:                                              ; preds = %346
  %353 = load %struct.node*, %struct.node** %15, align 8
  %354 = getelementptr inbounds %struct.node, %struct.node* %353, i32 0, i32 1
  %355 = load i32, i32* %7, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [2 x i32], [2 x i32]* %354, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.node*, %struct.node** %15, align 8
  %361 = getelementptr inbounds %struct.node, %struct.node* %360, i32 0, i32 1
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [2 x i32], [2 x i32]* %361, i64 0, i64 %363
  store i32 %359, i32* %364, align 4
  %365 = load %struct.node*, %struct.node** %15, align 8
  %366 = getelementptr inbounds %struct.node, %struct.node* %365, i32 0, i32 2
  %367 = load i32, i32* %7, align 4
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %366, i64 0, i64 %369
  %371 = load %struct.node*, %struct.node** %370, align 8
  %372 = load %struct.node*, %struct.node** %15, align 8
  %373 = getelementptr inbounds %struct.node, %struct.node* %372, i32 0, i32 2
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %373, i64 0, i64 %375
  store %struct.node* %371, %struct.node** %376, align 8
  br label %377

377:                                              ; preds = %352
  %378 = load i32, i32* %7, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %7, align 4
  br label %346

380:                                              ; preds = %346
  %381 = load %struct.node*, %struct.node** %15, align 8
  %382 = getelementptr inbounds %struct.node, %struct.node* %381, i32 0, i32 2
  %383 = load %struct.node*, %struct.node** %15, align 8
  %384 = getelementptr inbounds %struct.node, %struct.node* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %382, i64 0, i64 %387
  %389 = load %struct.node*, %struct.node** %388, align 8
  %390 = load %struct.node*, %struct.node** %15, align 8
  %391 = getelementptr inbounds %struct.node, %struct.node* %390, i32 0, i32 2
  %392 = load %struct.node*, %struct.node** %15, align 8
  %393 = getelementptr inbounds %struct.node, %struct.node* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %391, i64 0, i64 %395
  store %struct.node* %389, %struct.node** %396, align 8
  store i32 2, i32* %3, align 4
  br label %544

397:                                              ; preds = %282, %278
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %9, align 4
  %400 = icmp eq i32 %398, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %397
  %402 = load i32, i32* %6, align 4
  %403 = sub nsw i32 %402, 1
  store i32 %403, i32* %8, align 4
  br label %406

404:                                              ; preds = %397
  %405 = load i32, i32* %6, align 4
  store i32 %405, i32* %8, align 4
  br label %406

406:                                              ; preds = %404, %401
  %407 = load %struct.node**, %struct.node*** %13, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.node*, %struct.node** %407, i64 %409
  %411 = load %struct.node*, %struct.node** %410, align 8
  store %struct.node* %411, %struct.node** %14, align 8
  %412 = load %struct.node**, %struct.node*** %13, align 8
  %413 = load i32, i32* %8, align 4
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.node*, %struct.node** %412, i64 %415
  %417 = load %struct.node*, %struct.node** %416, align 8
  store %struct.node* %417, %struct.node** %15, align 8
  %418 = load i32*, i32** %11, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.node*, %struct.node** %14, align 8
  %424 = getelementptr inbounds %struct.node, %struct.node* %423, i32 0, i32 1
  %425 = load %struct.node*, %struct.node** %14, align 8
  %426 = getelementptr inbounds %struct.node, %struct.node* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [2 x i32], [2 x i32]* %424, i64 0, i64 %428
  store i32 %422, i32* %429, align 4
  %430 = load %struct.node*, %struct.node** %15, align 8
  %431 = getelementptr inbounds %struct.node, %struct.node* %430, i32 0, i32 2
  %432 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %431, i64 0, i64 0
  %433 = load %struct.node*, %struct.node** %432, align 8
  %434 = load %struct.node*, %struct.node** %14, align 8
  %435 = getelementptr inbounds %struct.node, %struct.node* %434, i32 0, i32 2
  %436 = load %struct.node*, %struct.node** %14, align 8
  %437 = getelementptr inbounds %struct.node, %struct.node* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = add nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %435, i64 0, i64 %440
  store %struct.node* %433, %struct.node** %441, align 8
  store i32 0, i32* %7, align 4
  br label %442

442:                                              ; preds = %482, %406
  %443 = load i32, i32* %7, align 4
  %444 = load %struct.node*, %struct.node** %15, align 8
  %445 = getelementptr inbounds %struct.node, %struct.node* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp slt i32 %443, %446
  br i1 %447, label %448, label %485

448:                                              ; preds = %442
  %449 = load %struct.node*, %struct.node** %15, align 8
  %450 = getelementptr inbounds %struct.node, %struct.node* %449, i32 0, i32 1
  %451 = load i32, i32* %7, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [2 x i32], [2 x i32]* %450, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.node*, %struct.node** %14, align 8
  %456 = getelementptr inbounds %struct.node, %struct.node* %455, i32 0, i32 1
  %457 = load %struct.node*, %struct.node** %14, align 8
  %458 = getelementptr inbounds %struct.node, %struct.node* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = add nsw i32 %459, 1
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %460, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [2 x i32], [2 x i32]* %456, i64 0, i64 %463
  store i32 %454, i32* %464, align 4
  %465 = load %struct.node*, %struct.node** %15, align 8
  %466 = getelementptr inbounds %struct.node, %struct.node* %465, i32 0, i32 2
  %467 = load i32, i32* %7, align 4
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %466, i64 0, i64 %469
  %471 = load %struct.node*, %struct.node** %470, align 8
  %472 = load %struct.node*, %struct.node** %14, align 8
  %473 = getelementptr inbounds %struct.node, %struct.node* %472, i32 0, i32 2
  %474 = load %struct.node*, %struct.node** %14, align 8
  %475 = getelementptr inbounds %struct.node, %struct.node* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = add nsw i32 %476, 2
  %478 = load i32, i32* %7, align 4
  %479 = add nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %473, i64 0, i64 %480
  store %struct.node* %471, %struct.node** %481, align 8
  br label %482

482:                                              ; preds = %448
  %483 = load i32, i32* %7, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %7, align 4
  br label %442

485:                                              ; preds = %442
  %486 = load %struct.node*, %struct.node** %14, align 8
  %487 = getelementptr inbounds %struct.node, %struct.node* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.node*, %struct.node** %15, align 8
  %490 = getelementptr inbounds %struct.node, %struct.node* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = add nsw i32 %488, %491
  %493 = add nsw i32 %492, 1
  %494 = load %struct.node*, %struct.node** %14, align 8
  %495 = getelementptr inbounds %struct.node, %struct.node* %494, i32 0, i32 0
  store i32 %493, i32* %495, align 8
  %496 = load %struct.node*, %struct.node** %15, align 8
  %497 = bitcast %struct.node* %496 to i8*
  call void @free(i8* %497) #5
  %498 = load i32, i32* %6, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %7, align 4
  br label %500

500:                                              ; preds = %525, %485
  %501 = load i32, i32* %7, align 4
  %502 = load i32, i32* %9, align 4
  %503 = icmp slt i32 %501, %502
  br i1 %503, label %504, label %528

504:                                              ; preds = %500
  %505 = load i32*, i32** %11, align 8
  %506 = load i32, i32* %7, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = load i32*, i32** %11, align 8
  %511 = load i32, i32* %7, align 4
  %512 = sub nsw i32 %511, 1
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %510, i64 %513
  store i32 %509, i32* %514, align 4
  %515 = load %struct.node**, %struct.node*** %13, align 8
  %516 = load i32, i32* %7, align 4
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds %struct.node*, %struct.node** %515, i64 %518
  %520 = load %struct.node*, %struct.node** %519, align 8
  %521 = load %struct.node**, %struct.node*** %13, align 8
  %522 = load i32, i32* %7, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.node*, %struct.node** %521, i64 %523
  store %struct.node* %520, %struct.node** %524, align 8
  br label %525

525:                                              ; preds = %504
  %526 = load i32, i32* %7, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %7, align 4
  br label %500

528:                                              ; preds = %500
  %529 = load %struct.node*, %struct.node** %4, align 8
  %530 = getelementptr inbounds %struct.node, %struct.node* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = add nsw i32 %531, -1
  store i32 %532, i32* %530, align 8
  %533 = load %struct.node*, %struct.node** %4, align 8
  %534 = load %struct.node*, %struct.node** @root, align 8
  %535 = icmp eq %struct.node* %533, %534
  br i1 %535, label %536, label %537

536:                                              ; preds = %528
  br label %539

537:                                              ; preds = %528
  %538 = load i32, i32* %10, align 4
  br label %539

539:                                              ; preds = %537, %536
  %540 = phi i32 [ 1, %536 ], [ %538, %537 ]
  %541 = icmp sge i32 %532, %540
  %542 = zext i1 %541 to i64
  %543 = select i1 %541, i32 2, i32 4
  store i32 %543, i32* %3, align 4
  br label %544

544:                                              ; preds = %539, %380, %241, %162, %95, %52, %21
  %545 = load i32, i32* %3, align 4
  ret i32 %545
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local i32 @getchar() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @totalKeys(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %3, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 1
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %14, i64 0, i64 0
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = call i32 @totalKeys(%struct.node* %16)
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.node*, %struct.node** %3, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  %22 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %21, i64 0, i64 1
  %23 = load %struct.node*, %struct.node** %22, align 8
  %24 = call i32 @totalKeys(%struct.node* %23)
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %40

31:                                               ; preds = %12
  %32 = load %struct.node*, %struct.node** %3, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  %34 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %33, i64 0, i64 2
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = call i32 @totalKeys(%struct.node* %35)
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %31, %12
  br label %41

41:                                               ; preds = %40, %7
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMin(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %3, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %9, i64 0, i64 0
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = icmp ne %struct.node* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  %16 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %15, i64 0, i64 0
  %17 = load %struct.node*, %struct.node** %16, align 8
  %18 = call i32 @getMin(%struct.node* %17)
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %7
  %20 = load %struct.node*, %struct.node** %3, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMax(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %3, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %14, i64 0, i64 1
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 2
  %21 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %20, i64 0, i64 1
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = call i32 @getMax(%struct.node* %22)
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %12
  %25 = load %struct.node*, %struct.node** %3, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %18
  br label %30

30:                                               ; preds = %29, %7
  %31 = load %struct.node*, %struct.node** %3, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.node*, %struct.node** %3, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 2
  %38 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %37, i64 0, i64 2
  %39 = load %struct.node*, %struct.node** %38, align 8
  %40 = icmp ne %struct.node* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.node*, %struct.node** %3, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 2
  %44 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %43, i64 0, i64 2
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = call i32 @getMax(%struct.node* %45)
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %35
  %48 = load %struct.node*, %struct.node** %3, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %49, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %30
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxLevel(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = icmp ne %struct.node* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.node*, %struct.node** %3, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %13 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %12, i64 0, i64 0
  %14 = load %struct.node*, %struct.node** %13, align 8
  %15 = icmp ne %struct.node* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.node*, %struct.node** %3, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %19 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %18, i64 0, i64 0
  %20 = load %struct.node*, %struct.node** %19, align 8
  %21 = call i32 @maxLevel(%struct.node* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  %25 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %24, i64 0, i64 1
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = icmp ne %struct.node* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.node*, %struct.node** %3, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 2
  %31 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %30, i64 0, i64 1
  %32 = load %struct.node*, %struct.node** %31, align 8
  %33 = call i32 @maxLevel(%struct.node* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.node*, %struct.node** %3, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 2
  %42 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %41, i64 0, i64 2
  %43 = load %struct.node*, %struct.node** %42, align 8
  %44 = icmp ne %struct.node* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.node*, %struct.node** %3, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 2
  %48 = getelementptr inbounds [3 x %struct.node*], [3 x %struct.node*]* %47, i64 0, i64 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  %50 = call i32 @maxLevel(%struct.node* %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @max(i32 %53, i32 %54, i32 %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
