; ModuleID = './c_code/temp_compile/Circular Singly Linked List.c'
source_filename = "./c_code/temp_compile/Circular Singly Linked List.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, ptr }

@head = dso_local global ptr null, align 8
@tail = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Insert at head: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Updated Full list:\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Insert at tail: %d, %d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Delete HEAD\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Insert at POSITION: %d, VALUE: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Delete TAIL\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Delete from POSITION: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Position does not exist!\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Position (%d) does not exist!\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\0AList Length: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  store i32 0, ptr %1, align 4
  store i32 5, ptr %2, align 4
  store i32 15, ptr %3, align 4
  store i32 43, ptr %4, align 4
  store i32 23, ptr %5, align 4
  store i32 12, ptr %6, align 4
  store i32 66, ptr %7, align 4
  store i32 99, ptr %8, align 4
  store i32 65, ptr %9, align 4
  store i32 20, ptr %10, align 4
  store i32 8, ptr %11, align 4
  store i32 2, ptr %12, align 4
  store i32 500, ptr %13, align 4
  store i32 5, ptr %14, align 4
  %15 = load i32, ptr %2, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  %17 = load i32, ptr %2, align 4
  call void @insert_at_head(i32 noundef %17)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %19 = load i32, ptr %3, align 4
  %20 = load i32, ptr %4, align 4
  %21 = load i32, ptr %5, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  %23 = load i32, ptr %3, align 4
  call void @insert_at_tail(i32 noundef %23)
  %24 = load i32, ptr %4, align 4
  call void @insert_at_tail(i32 noundef %24)
  %25 = load i32, ptr %5, align 4
  call void @insert_at_tail(i32 noundef %25)
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @delete_head()
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %29 = load i32, ptr %6, align 4
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %29)
  %31 = load i32, ptr %6, align 4
  call void @insert_at_head(i32 noundef %31)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %33 = load i32, ptr %12, align 4
  %34 = load i32, ptr %13, align 4
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %33, i32 noundef %34)
  %36 = load i32, ptr %13, align 4
  %37 = load i32, ptr %12, align 4
  call void @insert_at_middle(i32 noundef %36, i32 noundef %37)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  call void @delete_tail()
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %41 = load i32, ptr %7, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load i32, ptr %9, align 4
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %41, i32 noundef %42, i32 noundef %43)
  %45 = load i32, ptr %7, align 4
  call void @insert_at_tail(i32 noundef %45)
  %46 = load i32, ptr %8, align 4
  call void @insert_at_tail(i32 noundef %46)
  %47 = load i32, ptr %9, align 4
  call void @insert_at_tail(i32 noundef %47)
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  %49 = load i32, ptr %14, align 4
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %49)
  %51 = load i32, ptr %14, align 4
  call void @delete_middle(i32 noundef %51)
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @print_list()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_head(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.linked_list, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.linked_list, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 8
  %11 = load ptr, ptr @head, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr @head, align 8
  %15 = load ptr, ptr %3, align 8
  store ptr %15, ptr @tail, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load ptr, ptr @head, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.linked_list, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr %3, align 8
  %21 = load ptr, ptr @tail, align 8
  %22 = getelementptr inbounds nuw %struct.linked_list, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  store ptr %23, ptr @head, align 8
  br label %24

24:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_tail(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.linked_list, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.linked_list, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 8
  %11 = load ptr, ptr @head, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr @head, align 8
  %15 = load ptr, ptr %3, align 8
  store ptr %15, ptr @tail, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8
  %18 = load ptr, ptr @tail, align 8
  %19 = getelementptr inbounds nuw %struct.linked_list, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr @head, align 8
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct.linked_list, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  store ptr %23, ptr @tail, align 8
  br label %24

24:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_middle(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  call void @insert_at_head(i32 noundef %12)
  br label %69

13:                                               ; preds = %2
  %14 = load i32, ptr %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load ptr, ptr @head, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load ptr, ptr @head, align 8
  store ptr %20, ptr %5, align 8
  %21 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %21, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %40, %19
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %7, align 4
  %25 = load ptr, ptr %5, align 8
  store ptr %25, ptr %6, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.linked_list, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %5, align 8
  br label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw %struct.linked_list, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr @head, align 8
  %34 = icmp ne ptr %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, ptr %7, align 4
  %37 = load i32, ptr %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i1 [ false, %29 ], [ %39, %35 ]
  br i1 %41, label %22, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr %7, align 4
  %44 = load i32, ptr %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8
  %49 = load ptr, ptr @tail, align 8
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, ptr %3, align 4
  call void @insert_at_tail(i32 noundef %52)
  br label %64

53:                                               ; preds = %47
  %54 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %54, ptr %8, align 8
  %55 = load i32, ptr %3, align 4
  %56 = load ptr, ptr %8, align 8
  %57 = getelementptr inbounds nuw %struct.linked_list, ptr %56, i32 0, i32 0
  store i32 %55, ptr %57, align 8
  %58 = load ptr, ptr %8, align 8
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds nuw %struct.linked_list, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds nuw %struct.linked_list, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 8
  br label %64

64:                                               ; preds = %53, %51
  br label %69

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %16, %13
  br label %67

67:                                               ; preds = %66
  %68 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %69

69:                                               ; preds = %67, %64, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_middle(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %6 = load ptr, ptr @head, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %55

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @delete_head()
  br label %55

13:                                               ; preds = %9
  %14 = load ptr, ptr @head, align 8
  store ptr %14, ptr %3, align 8
  store i32 0, ptr %5, align 4
  br label %15

15:                                               ; preds = %33, %13
  %16 = load i32, ptr %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %5, align 4
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.linked_list, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %3, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.linked_list, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr @head, align 8
  %27 = icmp ne ptr %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32, ptr %5, align 4
  %30 = load i32, ptr %2, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %29, %31
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i1 [ false, %22 ], [ %32, %28 ]
  br i1 %34, label %15, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %5, align 4
  %37 = load i32, ptr %2, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load ptr, ptr %3, align 8
  %42 = load ptr, ptr @tail, align 8
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @delete_tail()
  br label %55

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds nuw %struct.linked_list, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds nuw %struct.linked_list, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 8
  %51 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %51) #5
  br label %55

52:                                               ; preds = %35
  %53 = load i32, ptr %2, align 4
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %53)
  br label %55

55:                                               ; preds = %52, %45, %44, %12, %8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_head() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @head, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %16

5:                                                ; preds = %0
  %6 = load ptr, ptr @head, align 8
  store ptr %6, ptr %1, align 8
  %7 = load ptr, ptr @head, align 8
  %8 = getelementptr inbounds nuw %struct.linked_list, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr @tail, align 8
  %11 = getelementptr inbounds nuw %struct.linked_list, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr @head, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr @head, align 8
  %15 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %15) #5
  br label %16

16:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_tail() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @head, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  %7 = load ptr, ptr @head, align 8
  store ptr %7, ptr %1, align 8
  %8 = load ptr, ptr @head, align 8
  store ptr %8, ptr %2, align 8
  br label %9

9:                                                ; preds = %15, %6
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.linked_list, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr @head, align 8
  %14 = icmp ne ptr %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 8
  store ptr %16, ptr %1, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct.linked_list, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %2, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load ptr, ptr @head, align 8
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr inbounds nuw %struct.linked_list, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 8
  %24 = load ptr, ptr %1, align 8
  store ptr %24, ptr @tail, align 8
  %25 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %25) #5
  br label %26

26:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list() #0 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @head, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %23

5:                                                ; preds = %0
  %6 = load ptr, ptr @head, align 8
  store ptr %6, ptr %1, align 8
  br label %7

7:                                                ; preds = %15, %5
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds nuw %struct.linked_list, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %10)
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %1, align 8
  br label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %1, align 8
  %17 = load ptr, ptr @head, align 8
  %18 = icmp ne ptr %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %15
  %20 = call i32 @getListLength()
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %20)
  %22 = call i32 @puts(ptr noundef @.str.11)
  br label %23

23:                                               ; preds = %19, %4
  ret void
}

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getListLength() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @head, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, ptr %1, align 4
  br label %21

7:                                                ; preds = %0
  store i32 0, ptr %2, align 4
  %8 = load ptr, ptr @head, align 8
  store ptr %8, ptr %3, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load i32, ptr %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %2, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr @head, align 8
  %18 = icmp ne ptr %16, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %19, %6
  %22 = load i32, ptr %1, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
