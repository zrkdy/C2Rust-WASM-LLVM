; ModuleID = './c_code/temp_compile/Doubly Linked List (Insert, Delete, Print).c'
source_filename = "./c_code/temp_compile/Doubly Linked List (Insert, Delete, Print).c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, ptr, ptr }

@head = dso_local global ptr null, align 8
@tail = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Insert nodes at tail: %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Insert node: %d at middle. Position: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Delete item of position number %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Insert nodes at front: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Insert nodes at tail: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Delete first node of list\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Insert nodes at tail: %d, %d, %d, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%d found in the list.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%d not found in the list.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Desired position does not exist! Position: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\0AYour updated linked list in FORWARD ORDER:\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\0AYour full linked list in REVERSE ORDER:\0A\00", align 1

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
  %15 = alloca i32, align 4
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
  store i32 4, ptr %14, align 4
  %16 = load i32, ptr %2, align 4
  %17 = load i32, ptr %3, align 4
  %18 = load i32, ptr %4, align 4
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16, i32 noundef %17, i32 noundef %18)
  %20 = load i32, ptr %2, align 4
  call void @insert_at_tail(i32 noundef %20)
  %21 = load i32, ptr %3, align 4
  call void @insert_at_tail(i32 noundef %21)
  %22 = load i32, ptr %4, align 4
  call void @insert_at_tail(i32 noundef %22)
  call void @printLinkedListForward()
  %23 = load i32, ptr %13, align 4
  %24 = load i32, ptr %12, align 4
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %23, i32 noundef %24)
  %26 = load i32, ptr %13, align 4
  %27 = load i32, ptr %12, align 4
  call void @insert_at_middle(i32 noundef %26, i32 noundef %27)
  call void @printLinkedListForward()
  %28 = load i32, ptr %14, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %28)
  %30 = load i32, ptr %14, align 4
  call void @deleteNode(i32 noundef %30)
  call void @printLinkedListForward()
  %31 = load i32, ptr %5, align 4
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %31)
  %33 = load i32, ptr %5, align 4
  call void @insert_at_head(i32 noundef %33)
  call void @printLinkedListForward()
  %34 = load i32, ptr %6, align 4
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %34)
  %36 = load i32, ptr %6, align 4
  call void @insert_at_tail(i32 noundef %36)
  call void @printLinkedListForward()
  %37 = load i32, ptr %7, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %37)
  %39 = load i32, ptr %7, align 4
  call void @insert_at_head(i32 noundef %39)
  call void @printLinkedListForward()
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  call void @deleteNode(i32 noundef 1)
  call void @printLinkedListForward()
  %41 = load i32, ptr %8, align 4
  %42 = load i32, ptr %9, align 4
  %43 = load i32, ptr %10, align 4
  %44 = load i32, ptr %11, align 4
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %41, i32 noundef %42, i32 noundef %43, i32 noundef %44)
  %46 = load i32, ptr %8, align 4
  call void @insert_at_tail(i32 noundef %46)
  %47 = load i32, ptr %9, align 4
  call void @insert_at_tail(i32 noundef %47)
  %48 = load i32, ptr %10, align 4
  call void @insert_at_tail(i32 noundef %48)
  %49 = load i32, ptr %11, align 4
  call void @insert_at_tail(i32 noundef %49)
  call void @printLinkedListForward()
  call void @printLinkedListBackward()
  %50 = load i32, ptr %9, align 4
  store i32 %50, ptr %15, align 4
  %51 = load i32, ptr %15, align 4
  %52 = call zeroext i1 @isValueAvailable(i32 noundef %51)
  %53 = zext i1 %52 to i32
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %0
  %56 = load i32, ptr %15, align 4
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %56)
  br label %61

58:                                               ; preds = %0
  %59 = load i32, ptr %15, align 4
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %59)
  br label %61

61:                                               ; preds = %58, %55
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_tail(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call ptr @getNewNode(i32 noundef %4)
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr @head, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr @head, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr @tail, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr @tail, align 8
  %14 = getelementptr inbounds nuw %struct.linked_list, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr @tail, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.linked_list, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr @tail, align 8
  br label %19

19:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_middle(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %8 = load i32, ptr %3, align 4
  %9 = call ptr @getNewNode(i32 noundef %8)
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr @head, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8
  store ptr %13, ptr @head, align 8
  %14 = load ptr, ptr %5, align 8
  store ptr %14, ptr @tail, align 8
  br label %59

15:                                               ; preds = %2
  %16 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %16, ptr %6, align 8
  %17 = load ptr, ptr @head, align 8
  store ptr %17, ptr %6, align 8
  store i32 1, ptr %7, align 4
  br label %18

18:                                               ; preds = %30, %15
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %4, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.linked_list, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, null
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %36

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw %struct.linked_list, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %7, align 4
  br label %18

36:                                               ; preds = %28
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds nuw %struct.linked_list, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds nuw %struct.linked_list, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 8
  %42 = load ptr, ptr %6, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.linked_list, ptr %43, i32 0, i32 2
  store ptr %42, ptr %44, align 8
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds nuw %struct.linked_list, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load ptr, ptr %5, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds nuw %struct.linked_list, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds nuw %struct.linked_list, ptr %53, i32 0, i32 2
  store ptr %50, ptr %54, align 8
  br label %55

55:                                               ; preds = %49, %36
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr inbounds nuw %struct.linked_list, ptr %57, i32 0, i32 1
  store ptr %56, ptr %58, align 8
  br label %59

59:                                               ; preds = %55, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %6 = load ptr, ptr @head, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %78

9:                                                ; preds = %1
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = load ptr, ptr @head, align 8
  %14 = getelementptr inbounds nuw %struct.linked_list, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr @head, align 8
  %16 = load ptr, ptr @head, align 8
  %17 = getelementptr inbounds nuw %struct.linked_list, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store ptr null, ptr @tail, align 8
  br label %26

21:                                               ; preds = %12
  %22 = load ptr, ptr @head, align 8
  %23 = getelementptr inbounds nuw %struct.linked_list, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds nuw %struct.linked_list, ptr %24, i32 0, i32 2
  store ptr null, ptr %25, align 8
  br label %26

26:                                               ; preds = %21, %20
  br label %78

27:                                               ; preds = %9
  %28 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %28, ptr %3, align 8
  %29 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %29, ptr %4, align 8
  store i32 1, ptr %5, align 4
  %30 = load ptr, ptr @head, align 8
  store ptr %30, ptr %3, align 8
  br label %31

31:                                               ; preds = %42, %27
  %32 = load i32, ptr %5, align 4
  %33 = load i32, ptr %2, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds nuw %struct.linked_list, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds nuw %struct.linked_list, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %3, align 8
  %46 = load i32, ptr %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %5, align 4
  br label %31

48:                                               ; preds = %40
  %49 = load i32, ptr %5, align 4
  %50 = load i32, ptr %2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds nuw %struct.linked_list, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  store ptr %55, ptr %4, align 8
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds nuw %struct.linked_list, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds nuw %struct.linked_list, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds nuw %struct.linked_list, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load ptr, ptr %4, align 8
  store ptr %66, ptr @tail, align 8
  br label %73

67:                                               ; preds = %52
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = getelementptr inbounds nuw %struct.linked_list, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds nuw %struct.linked_list, ptr %71, i32 0, i32 2
  store ptr %68, ptr %72, align 8
  br label %73

73:                                               ; preds = %67, %65
  %74 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %74) #5
  br label %78

75:                                               ; preds = %48
  %76 = load i32, ptr %5, align 4
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %76)
  br label %78

78:                                               ; preds = %8, %26, %75, %73
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_head(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call ptr @getNewNode(i32 noundef %4)
  store ptr %5, ptr %3, align 8
  %6 = load ptr, ptr @head, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr @head, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr @tail, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load ptr, ptr @head, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.linked_list, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr @head, align 8
  %17 = getelementptr inbounds nuw %struct.linked_list, ptr %16, i32 0, i32 2
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr @head, align 8
  br label %19

19:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @isValueAvailable(i32 noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  %5 = load ptr, ptr @head, align 8
  store ptr %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct.linked_list, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i1 true, ptr %2, align 1
  br label %22

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.linked_list, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %4, align 8
  br label %20

20:                                               ; preds = %16
  br label %6

21:                                               ; preds = %6
  store i1 false, ptr %2, align 1
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i1, ptr %2, align 1
  ret i1 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @getNewNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.linked_list, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.linked_list, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.linked_list, ptr %10, i32 0, i32 2
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  ret ptr %12
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLinkedListForward() #0 {
  %1 = alloca ptr, align 8
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %3 = load ptr, ptr @head, align 8
  store ptr %3, ptr %1, align 8
  br label %4

4:                                                ; preds = %0, %20
  %5 = load ptr, ptr @head, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @tail, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  br label %24

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %14)
  %16 = load ptr, ptr %1, align 8
  %17 = load ptr, ptr @tail, align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  %21 = load ptr, ptr %1, align 8
  %22 = getelementptr inbounds nuw %struct.linked_list, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %1, align 8
  br label %4

24:                                               ; preds = %19, %10
  %25 = call i32 @puts(ptr noundef @.str.12)
  ret void
}

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLinkedListBackward() #0 {
  %1 = alloca ptr, align 8
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %3 = load ptr, ptr @tail, align 8
  store ptr %3, ptr %1, align 8
  br label %4

4:                                                ; preds = %0, %21
  %5 = load ptr, ptr @head, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @tail, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  br label %25

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %14)
  %16 = load ptr, ptr %1, align 8
  %17 = getelementptr inbounds nuw %struct.linked_list, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  %22 = load ptr, ptr %1, align 8
  %23 = getelementptr inbounds nuw %struct.linked_list, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %1, align 8
  br label %4

25:                                               ; preds = %20, %10
  %26 = call i32 @puts(ptr noundef @.str.12)
  ret void
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
