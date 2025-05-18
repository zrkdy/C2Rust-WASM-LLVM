; ModuleID = './c_code/temp_compile/Circular Doubly Linked List (Insert, Delete, Print).c'
source_filename = "./c_code/temp_compile/Circular Doubly Linked List (Insert, Delete, Print).c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, %struct.linked_list*, %struct.linked_list* }

@head = dso_local global %struct.linked_list* null, align 8
@tail = dso_local global %struct.linked_list* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Insert at head: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Insert at tail: %d, %d, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Delete HEAD\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Insert at POSITION: %d, VALUE: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Delete TAIL\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Delete from POSITION: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Position does not exist!\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Position (%d) does not exist!\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"FORWARD order print:\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"REVERSE order print:\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0AList Length: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 15, i32* %3, align 4
  store i32 43, i32* %4, align 4
  store i32 23, i32* %5, align 4
  store i32 12, i32* %6, align 4
  store i32 66, i32* %7, align 4
  store i32 99, i32* %8, align 4
  store i32 65, i32* %9, align 4
  store i32 20, i32* %10, align 4
  store i32 8, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 500, i32* %13, align 4
  store i32 5, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %2, align 4
  call void @insert_at_head(i32 %17)
  call void @print_list()
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  call void @insert_at_tail(i32 %22)
  %23 = load i32, i32* %4, align 4
  call void @insert_at_tail(i32 %23)
  %24 = load i32, i32* %5, align 4
  call void @insert_at_tail(i32 %24)
  call void @print_list()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  call void @delete_head()
  call void @print_list()
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  call void @insert_at_head(i32 %28)
  call void @print_list()
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  call void @insert_at_middle(i32 %32, i32 %33)
  call void @print_list()
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  call void @delete_tail()
  call void @print_list()
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  call void @insert_at_tail(i32 %39)
  %40 = load i32, i32* %8, align 4
  call void @insert_at_tail(i32 %40)
  %41 = load i32, i32* %9, align 4
  call void @insert_at_tail(i32 %41)
  call void @print_list()
  %42 = load i32, i32* %14, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %14, align 4
  call void @delete_middle(i32 %44)
  call void @print_list()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_head(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.linked_list*
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 1
  store %struct.linked_list* %9, %struct.linked_list** %11, align 8
  %12 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %14 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %13, i32 0, i32 2
  store %struct.linked_list* %12, %struct.linked_list** %14, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %16 = icmp eq %struct.linked_list* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %18, %struct.linked_list** @head, align 8
  %19 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %19, %struct.linked_list** @tail, align 8
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %22 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %23 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %22, i32 0, i32 1
  store %struct.linked_list* %21, %struct.linked_list** %23, align 8
  %24 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %25 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %26 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %25, i32 0, i32 2
  store %struct.linked_list* %24, %struct.linked_list** %26, align 8
  %27 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %28 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %29 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %28, i32 0, i32 2
  store %struct.linked_list* %27, %struct.linked_list** %29, align 8
  %30 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %31 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %32 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %31, i32 0, i32 1
  store %struct.linked_list* %30, %struct.linked_list** %32, align 8
  %33 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %33, %struct.linked_list** @head, align 8
  br label %34

34:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_tail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.linked_list*
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 1
  store %struct.linked_list* %9, %struct.linked_list** %11, align 8
  %12 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %14 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %13, i32 0, i32 2
  store %struct.linked_list* %12, %struct.linked_list** %14, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %16 = icmp eq %struct.linked_list* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %18, %struct.linked_list** @head, align 8
  %19 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %19, %struct.linked_list** @tail, align 8
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %22 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %23 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %22, i32 0, i32 1
  store %struct.linked_list* %21, %struct.linked_list** %23, align 8
  %24 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %25 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %26 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %25, i32 0, i32 1
  store %struct.linked_list* %24, %struct.linked_list** %26, align 8
  %27 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %28 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %29 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %28, i32 0, i32 2
  store %struct.linked_list* %27, %struct.linked_list** %29, align 8
  %30 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %30, %struct.linked_list** @tail, align 8
  %31 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %32 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %33 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %32, i32 0, i32 2
  store %struct.linked_list* %31, %struct.linked_list** %33, align 8
  br label %34

34:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_middle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.linked_list*, align 8
  %6 = alloca %struct.linked_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  call void @insert_at_head(i32 %12)
  br label %77

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %74

16:                                               ; preds = %13
  %17 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %18 = icmp ne %struct.linked_list* %17, null
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %20, %struct.linked_list** %5, align 8
  %21 = call noalias i8* @malloc(i64 24) #3
  %22 = bitcast i8* %21 to %struct.linked_list*
  store %struct.linked_list* %22, %struct.linked_list** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %41, %19
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  store %struct.linked_list* %26, %struct.linked_list** %6, align 8
  %27 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %28 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %27, i32 0, i32 1
  %29 = load %struct.linked_list*, %struct.linked_list** %28, align 8
  store %struct.linked_list* %29, %struct.linked_list** %5, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %32 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %31, i32 0, i32 1
  %33 = load %struct.linked_list*, %struct.linked_list** %32, align 8
  %34 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %35 = icmp ne %struct.linked_list* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %37, %39
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i1 [ false, %30 ], [ %40, %36 ]
  br i1 %42, label %23, label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %50 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %51 = icmp eq %struct.linked_list* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  call void @insert_at_tail(i32 %53)
  br label %72

54:                                               ; preds = %48
  %55 = call noalias i8* @malloc(i64 24) #3
  %56 = bitcast i8* %55 to %struct.linked_list*
  store %struct.linked_list* %56, %struct.linked_list** %8, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %59 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %61 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %62 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %61, i32 0, i32 1
  store %struct.linked_list* %60, %struct.linked_list** %62, align 8
  %63 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %64 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %65 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %64, i32 0, i32 1
  store %struct.linked_list* %63, %struct.linked_list** %65, align 8
  %66 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %67 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %68 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %67, i32 0, i32 2
  store %struct.linked_list* %66, %struct.linked_list** %68, align 8
  %69 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %70 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %71 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %70, i32 0, i32 2
  store %struct.linked_list* %69, %struct.linked_list** %71, align 8
  br label %72

72:                                               ; preds = %54, %52
  br label %77

73:                                               ; preds = %43
  br label %74

74:                                               ; preds = %73, %16, %13
  br label %75

75:                                               ; preds = %74
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %72, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_middle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  %4 = alloca %struct.linked_list*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %7 = icmp eq %struct.linked_list* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %61

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @delete_head()
  br label %61

13:                                               ; preds = %9
  %14 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %14, %struct.linked_list** %3, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %13
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %18, %struct.linked_list** %4, align 8
  %19 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %20 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %19, i32 0, i32 1
  %21 = load %struct.linked_list*, %struct.linked_list** %20, align 8
  store %struct.linked_list* %21, %struct.linked_list** %3, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %24 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %23, i32 0, i32 1
  %25 = load %struct.linked_list*, %struct.linked_list** %24, align 8
  %26 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %27 = icmp ne %struct.linked_list* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ false, %22 ], [ %32, %28 ]
  br i1 %34, label %15, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %42 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %43 = icmp eq %struct.linked_list* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @delete_tail()
  br label %61

45:                                               ; preds = %40
  %46 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %47 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %46, i32 0, i32 1
  %48 = load %struct.linked_list*, %struct.linked_list** %47, align 8
  %49 = load %struct.linked_list*, %struct.linked_list** %4, align 8
  %50 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %49, i32 0, i32 1
  store %struct.linked_list* %48, %struct.linked_list** %50, align 8
  %51 = load %struct.linked_list*, %struct.linked_list** %4, align 8
  %52 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %53 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %52, i32 0, i32 1
  %54 = load %struct.linked_list*, %struct.linked_list** %53, align 8
  %55 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %54, i32 0, i32 2
  store %struct.linked_list* %51, %struct.linked_list** %55, align 8
  %56 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %57 = bitcast %struct.linked_list* %56 to i8*
  call void @free(i8* %57) #3
  br label %61

58:                                               ; preds = %35
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %45, %44, %12, %8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_head() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %3 = icmp eq %struct.linked_list* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %20

5:                                                ; preds = %0
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %6, %struct.linked_list** %1, align 8
  %7 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 1
  %9 = load %struct.linked_list*, %struct.linked_list** %8, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 1
  store %struct.linked_list* %9, %struct.linked_list** %11, align 8
  %12 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 1
  %14 = load %struct.linked_list*, %struct.linked_list** %13, align 8
  store %struct.linked_list* %14, %struct.linked_list** @head, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %16 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %17 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %16, i32 0, i32 2
  store %struct.linked_list* %15, %struct.linked_list** %17, align 8
  %18 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %19 = bitcast %struct.linked_list* %18 to i8*
  call void @free(i8* %19) #3
  br label %20

20:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_tail() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = alloca %struct.linked_list*, align 8
  %3 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %4 = icmp eq %struct.linked_list* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %30

6:                                                ; preds = %0
  %7 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %7, %struct.linked_list** %1, align 8
  %8 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %8, %struct.linked_list** %2, align 8
  br label %9

9:                                                ; preds = %15, %6
  %10 = load %struct.linked_list*, %struct.linked_list** %2, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 1
  %12 = load %struct.linked_list*, %struct.linked_list** %11, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %14 = icmp ne %struct.linked_list* %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.linked_list*, %struct.linked_list** %2, align 8
  store %struct.linked_list* %16, %struct.linked_list** %1, align 8
  %17 = load %struct.linked_list*, %struct.linked_list** %2, align 8
  %18 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %17, i32 0, i32 1
  %19 = load %struct.linked_list*, %struct.linked_list** %18, align 8
  store %struct.linked_list* %19, %struct.linked_list** %2, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %22 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %23 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %22, i32 0, i32 1
  store %struct.linked_list* %21, %struct.linked_list** %23, align 8
  %24 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  store %struct.linked_list* %24, %struct.linked_list** @tail, align 8
  %25 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %26 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %27 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %26, i32 0, i32 2
  store %struct.linked_list* %25, %struct.linked_list** %27, align 8
  %28 = load %struct.linked_list*, %struct.linked_list** %2, align 8
  %29 = bitcast %struct.linked_list* %28 to i8*
  call void @free(i8* %29) #3
  br label %30

30:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  call void @print_forward_order()
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  call void @print_reverse_order()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_forward_order() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %3 = icmp eq %struct.linked_list* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %22

5:                                                ; preds = %0
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %6, %struct.linked_list** %1, align 8
  br label %7

7:                                                ; preds = %15, %5
  %8 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %9 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %10)
  %12 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 1
  %14 = load %struct.linked_list*, %struct.linked_list** %13, align 8
  store %struct.linked_list* %14, %struct.linked_list** %1, align 8
  br label %15

15:                                               ; preds = %7
  %16 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %17 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %18 = icmp ne %struct.linked_list* %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %15
  %20 = call i32 @getListLength()
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_reverse_order() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %3 = icmp eq %struct.linked_list* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  %6 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  store %struct.linked_list* %6, %struct.linked_list** %1, align 8
  br label %7

7:                                                ; preds = %15, %5
  %8 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %9 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %10)
  %12 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 2
  %14 = load %struct.linked_list*, %struct.linked_list** %13, align 8
  store %struct.linked_list* %14, %struct.linked_list** %1, align 8
  br label %15

15:                                               ; preds = %7
  %16 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %17 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %18 = icmp ne %struct.linked_list* %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %15
  %20 = call i32 @getListLength()
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %20)
  %22 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getListLength() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  %4 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %5 = icmp eq %struct.linked_list* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %8 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %8, %struct.linked_list** %3, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  %12 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 1
  %14 = load %struct.linked_list*, %struct.linked_list** %13, align 8
  store %struct.linked_list* %14, %struct.linked_list** %3, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %17 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %18 = icmp ne %struct.linked_list* %16, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
