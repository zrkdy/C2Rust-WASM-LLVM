; ModuleID = './c_code/temp_compile/LinkedList.c'
source_filename = "./c_code/temp_compile/LinkedList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, ptr }

@head = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"How many numbers?: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Enter %d numbers: \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"LIST : \00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\0AWhat would you like to perform among these \0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"1.Add and element at nth position\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"2.Delete an element from nth position\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"3.Reverse the list\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"4.Print Reverse list(original list will remain same)\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Your choice: \00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enter number and its position: \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Enter postion to be deleted: \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"LIST: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertatbeg(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr @head, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  store ptr %11, ptr @head, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertatend(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %5 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %5, ptr %3, align 8
  %6 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %6, ptr %4, align 8
  %7 = load i32, ptr %2, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 1
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr @head, align 8
  store ptr %12, ptr %4, align 8
  br label %13

13:                                               ; preds = %18, %1
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds nuw %struct.Node, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %4, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load ptr, ptr %3, align 8
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printlist(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @printlist(ptr noundef %13)
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inseratn(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  call void @insertatbeg(i32 noundef %12)
  br label %53

13:                                               ; preds = %2
  %14 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %14, ptr %6, align 8
  %15 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %15, ptr %7, align 8
  %16 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %16, ptr %8, align 8
  %17 = load i32, ptr %3, align 4
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 0
  store i32 %17, ptr %19, align 8
  %20 = load ptr, ptr @head, align 8
  store ptr %20, ptr %7, align 8
  %21 = load ptr, ptr @head, align 8
  store ptr %21, ptr %6, align 8
  store i32 0, ptr %5, align 4
  br label %22

22:                                               ; preds = %30, %13
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %6, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %22

33:                                               ; preds = %22
  store i32 0, ptr %5, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, ptr %5, align 4
  %36 = load i32, ptr %4, align 4
  %37 = sub nsw i32 %36, 2
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load ptr, ptr %7, align 8
  %41 = getelementptr inbounds nuw %struct.Node, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %7, align 8
  br label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %5, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load ptr, ptr %8, align 8
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 8
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = getelementptr inbounds nuw %struct.Node, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 8
  br label %53

53:                                               ; preds = %46, %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteatn(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %6 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %6, ptr %3, align 8
  %7 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %7, ptr %4, align 8
  %8 = load ptr, ptr @head, align 8
  store ptr %8, ptr %4, align 8
  %9 = load ptr, ptr @head, align 8
  store ptr %9, ptr %3, align 8
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr @head, align 8
  br label %45

16:                                               ; preds = %1
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, ptr %5, align 4
  %19 = load i32, ptr %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct.Node, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %3, align 8
  br label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %5, align 4
  br label %17

28:                                               ; preds = %17
  store i32 0, ptr %5, align 4
  br label %29

29:                                               ; preds = %38, %28
  %30 = load i32, ptr %5, align 4
  %31 = load i32, ptr %2, align 4
  %32 = sub nsw i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  store ptr %37, ptr %4, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load i32, ptr %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %5, align 4
  br label %29

41:                                               ; preds = %29
  %42 = load ptr, ptr %3, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 8
  br label %45

45:                                               ; preds = %41, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  store ptr %9, ptr @head, align 8
  br label %22

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @reverse(ptr noundef %13)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %3, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 1
  store ptr null, ptr %21, align 8
  br label %22

22:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printrev(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @printrev(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store ptr null, ptr @head, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %7 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %8 = load i32, ptr %3, align 4
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8)
  %10 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %4)
  %11 = load i32, ptr %4, align 4
  call void @insertatbeg(i32 noundef %11)
  store i32 0, ptr %2, align 4
  br label %12

12:                                               ; preds = %20, %0
  %13 = load i32, ptr %2, align 4
  %14 = load i32, ptr %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %4)
  %19 = load i32, ptr %4, align 4
  call void @insertatend(i32 noundef %19)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %2, align 4
  br label %12

23:                                               ; preds = %12
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %25 = load ptr, ptr @head, align 8
  call void @printlist(ptr noundef %25)
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %32 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %5)
  %33 = load i32, ptr %5, align 4
  switch i32 %33, label %54 [
    i32 1, label %34
    i32 2, label %41
    i32 3, label %47
    i32 4, label %51
  ]

34:                                               ; preds = %23
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %36 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.12, ptr noundef %4, ptr noundef %3)
  %37 = load i32, ptr %4, align 4
  %38 = load i32, ptr %3, align 4
  call void @inseratn(i32 noundef %37, i32 noundef %38)
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %40 = load ptr, ptr @head, align 8
  call void @printlist(ptr noundef %40)
  br label %54

41:                                               ; preds = %23
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %43 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %3)
  %44 = load i32, ptr %3, align 4
  call void @deleteatn(i32 noundef %44)
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %46 = load ptr, ptr @head, align 8
  call void @printlist(ptr noundef %46)
  br label %54

47:                                               ; preds = %23
  %48 = load ptr, ptr @head, align 8
  call void @reverse(ptr noundef %48)
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %50 = load ptr, ptr @head, align 8
  call void @printlist(ptr noundef %50)
  br label %54

51:                                               ; preds = %23
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %53 = load ptr, ptr @head, align 8
  call void @printrev(ptr noundef %53)
  br label %54

54:                                               ; preds = %23, %51, %47, %41, %34
  %55 = load i32, ptr %1, align 4
  ret i32 %55
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
