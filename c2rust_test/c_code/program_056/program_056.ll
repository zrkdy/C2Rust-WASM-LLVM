; ModuleID = './c_code/temp_compile/intersectingNodeBruteForce.c'
source_filename = "./c_code/temp_compile/intersectingNodeBruteForce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListNode = type { i32, ptr }

@head1 = dso_local global ptr null, align 8
@head2 = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Error : Invalid ListNode pointer !!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\0A List1 data is %d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A List2 data is %d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0ALinked List\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\0A Intersecting node is %d\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A NULL \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize() #0 {
  store ptr null, ptr @head1, align 8
  store ptr null, ptr @head2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = call noalias ptr @malloc(i64 noundef 16) #3
  store ptr %6, ptr %5, align 8
  %7 = load i32, ptr %4, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.ListNode, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw %struct.ListNode, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %3, align 8
  store ptr %14, ptr %15, align 8
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getLength(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %2, align 4
  br label %21

9:                                                ; preds = %1
  store i32 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %13, %9
  %11 = load ptr, ptr %3, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct.ListNode, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %3, align 8
  %17 = load i32, ptr %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %4, align 4
  br label %10

19:                                               ; preds = %10
  %20 = load i32, ptr %4, align 4
  store i32 %20, ptr %2, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i32, ptr %2, align 4
  ret i32 %22
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLinkedList(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.ListNode, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.ListNode, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %2, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %18

18:                                               ; preds = %16, %6
  br label %3

19:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @reverseLinkedList(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store ptr null, ptr %3, align 8
  %6 = load ptr, ptr %2, align 8
  store ptr %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds nuw %struct.ListNode, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.ListNode, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  store ptr %17, ptr %3, align 8
  %18 = load ptr, ptr %5, align 8
  store ptr %18, ptr %4, align 8
  br label %7

19:                                               ; preds = %7
  %20 = load ptr, ptr %3, align 8
  ret ptr %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @intersectingNodeBruteForce(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %37, %2
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %41

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct.ListNode, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %14)
  br label %16

16:                                               ; preds = %33, %10
  %17 = load ptr, ptr %6, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds nuw %struct.ListNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.ListNode, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds nuw %struct.ListNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %30)
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %3, align 8
  br label %42

33:                                               ; preds = %19
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds nuw %struct.ListNode, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %6, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.ListNode, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %4, align 8
  br label %7

41:                                               ; preds = %7
  store ptr null, ptr %3, align 8
  br label %42

42:                                               ; preds = %41, %27
  %43 = load ptr, ptr %3, align 8
  ret ptr %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  call void @initialize()
  call void @insert(ptr noundef @head1, i32 noundef 3)
  call void @insert(ptr noundef @head1, i32 noundef 8)
  call void @insert(ptr noundef @head1, i32 noundef 12)
  call void @insert(ptr noundef @head1, i32 noundef 0)
  call void @insert(ptr noundef @head1, i32 noundef 35)
  call void @insert(ptr noundef @head1, i32 noundef 6)
  call void @insert(ptr noundef @head1, i32 noundef 10)
  call void @insert(ptr noundef @head1, i32 noundef 350)
  call void @insert(ptr noundef @head1, i32 noundef 16)
  call void @insert(ptr noundef @head1, i32 noundef 19)
  %3 = load ptr, ptr @head1, align 8
  %4 = call ptr @reverseLinkedList(ptr noundef %3)
  store ptr %4, ptr @head1, align 8
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %6 = load ptr, ptr @head1, align 8
  call void @printLinkedList(ptr noundef %6)
  call void @insert(ptr noundef @head2, i32 noundef 13)
  call void @insert(ptr noundef @head2, i32 noundef 18)
  call void @insert(ptr noundef @head2, i32 noundef 112)
  call void @insert(ptr noundef @head2, i32 noundef 10)
  call void @insert(ptr noundef @head2, i32 noundef 135)
  call void @insert(ptr noundef @head2, i32 noundef 16)
  call void @insert(ptr noundef @head2, i32 noundef 10)
  call void @insert(ptr noundef @head2, i32 noundef 350)
  call void @insert(ptr noundef @head2, i32 noundef 16)
  call void @insert(ptr noundef @head2, i32 noundef 19)
  %7 = load ptr, ptr @head2, align 8
  %8 = call ptr @reverseLinkedList(ptr noundef %7)
  store ptr %8, ptr @head2, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %10 = load ptr, ptr @head2, align 8
  call void @printLinkedList(ptr noundef %10)
  %11 = load ptr, ptr @head1, align 8
  %12 = load ptr, ptr @head2, align 8
  %13 = call ptr @intersectingNodeBruteForce(ptr noundef %11, ptr noundef %12)
  store ptr %13, ptr %2, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct.ListNode, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %19)
  br label %23

21:                                               ; preds = %0
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %23

23:                                               ; preds = %21, %16
  ret i32 0
}

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
