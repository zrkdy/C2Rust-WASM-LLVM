; ModuleID = './c_code/temp_compile/Linked List [create, insert, delete, search].c'
source_filename = "./c_code/temp_compile/Linked List [create, insert, delete, search].c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, ptr }

@head = dso_local global ptr null, align 8
@last = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Create Linked List\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AInsert new item at last\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0AInsert new item at first\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"\0AEnter a KEY (existing item of List), after that you want to insert a value\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\0AInsert new item after %d KEY\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\0AEnter an item to search it from List\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\0AEnter a value, which you want to delete from list\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Input a number. (Enter -1 to exit)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%d is inserted after %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Key not found!\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%d is deleted from list\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%d is present in this list. Memory address is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Item not found\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0AYour full linked list is\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @create_linked_list()
  call void @print_linked_list()
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %6 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %7 = load i32, ptr %3, align 4
  call void @insert_at_last(i32 noundef %7)
  call void @print_linked_list()
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %9 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %10 = load i32, ptr %3, align 4
  call void @insert_at_first(i32 noundef %10)
  call void @print_linked_list()
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %2)
  %13 = load i32, ptr %2, align 4
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %13)
  %15 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %16 = load i32, ptr %2, align 4
  %17 = load i32, ptr %3, align 4
  call void @insert_after(i32 noundef %16, i32 noundef %17)
  call void @print_linked_list()
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %19 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %20 = load i32, ptr %3, align 4
  call void @search_item(i32 noundef %20)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %22 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %23 = load i32, ptr %3, align 4
  call void @delete_item(i32 noundef %23)
  call void @print_linked_list()
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_last(i32 noundef %0) #0 {
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
  %9 = getelementptr inbounds nuw %struct.linked_list, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr @head, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  store ptr %13, ptr @head, align 8
  %14 = load ptr, ptr %3, align 8
  store ptr %14, ptr @last, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr @last, align 8
  %18 = getelementptr inbounds nuw %struct.linked_list, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 8
  %19 = load ptr, ptr %3, align 8
  store ptr %19, ptr @last, align 8
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_first(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.linked_list, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr @head, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.linked_list, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  store ptr %11, ptr @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_after(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr @head, align 8
  store ptr %8, ptr %5, align 8
  store i32 0, ptr %6, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.linked_list, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = load i32, ptr %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = call noalias ptr @malloc(i64 noundef 16) #4
  store ptr %19, ptr %7, align 8
  %20 = load i32, ptr %4, align 4
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds nuw %struct.linked_list, ptr %21, i32 0, i32 0
  store i32 %20, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.linked_list, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.linked_list, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds nuw %struct.linked_list, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr %3, align 4
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %31, i32 noundef %32)
  store i32 1, ptr %6, align 4
  br label %39

34:                                               ; preds = %12
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.linked_list, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  store ptr %37, ptr %5, align 8
  br label %38

38:                                               ; preds = %34
  br label %9

39:                                               ; preds = %18, %9
  %40 = load i32, ptr %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %44

44:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_item(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load ptr, ptr @head, align 8
  store ptr %5, ptr %3, align 8
  store i32 0, ptr %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load ptr, ptr %3, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.linked_list, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, ptr %2, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %16, ptr noundef %17)
  store i32 1, ptr %4, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.linked_list, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %3, align 8
  br label %23

23:                                               ; preds = %19
  br label %6

24:                                               ; preds = %15, %6
  %25 = load i32, ptr %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_item(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %6 = load ptr, ptr @head, align 8
  store ptr %6, ptr %3, align 8
  store ptr null, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.linked_list, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.linked_list, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr @head, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.linked_list, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds nuw %struct.linked_list, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, ptr %2, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %30)
  store i32 1, ptr %5, align 4
  %32 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %32) #5
  br label %38

33:                                               ; preds = %10
  %34 = load ptr, ptr %3, align 8
  store ptr %34, ptr %4, align 8
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds nuw %struct.linked_list, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  store ptr %37, ptr %3, align 8
  br label %7

38:                                               ; preds = %29, %7
  %39 = load i32, ptr %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %43

43:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_linked_list() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %4 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %1)
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  call void @insert_at_last(i32 noundef %9)
  br label %2

10:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_linked_list() #0 {
  %1 = alloca ptr, align 8
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %3 = load ptr, ptr @head, align 8
  store ptr %3, ptr %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load ptr, ptr %1, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds nuw %struct.linked_list, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %10)
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds nuw %struct.linked_list, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %1, align 8
  br label %4

15:                                               ; preds = %4
  %16 = call i32 @puts(ptr noundef @.str.16)
  ret void
}

declare i32 @puts(ptr noundef) #1

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
