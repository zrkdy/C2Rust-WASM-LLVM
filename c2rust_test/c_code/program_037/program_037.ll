; ModuleID = './c_code/temp_compile/main.c'
source_filename = "./c_code/temp_compile/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@sp = dso_local global i32 -1, align 4
@stack = dso_local global [100 x ptr] zeroinitializer, align 16
@head = dso_local global i32 0, align 4
@rear = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Error:almost full.\0A\00", align 1
@queue = dso_local global [100 x ptr] zeroinitializer, align 16
@__const.main.data = private unnamed_addr constant [12 x i32] [i32 7, i32 10, i32 2, i32 8, i32 4, i32 8, i32 6, i32 1, i32 9, i32 11, i32 3, i32 5], align 16
@.str.2 = private unnamed_addr constant [35 x i8] c"using prefix(dfs),height=depth=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"using bfs,height=depth=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertnode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = call noalias ptr @malloc(i64 noundef 24) #5
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  call void @exit(i32 noundef 1) #6
  unreachable

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 0
  store i32 %13, ptr %15, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 1
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.Node, ptr %18, i32 0, i32 3
  store ptr null, ptr %19, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 2
  store ptr null, ptr %21, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %3, align 8
  store ptr %26, ptr %27, align 8
  br label %65

28:                                               ; preds = %12
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %6, align 8
  store ptr null, ptr %7, align 8
  br label %31

31:                                               ; preds = %49, %28
  %32 = load ptr, ptr %6, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load ptr, ptr %6, align 8
  store ptr %35, ptr %7, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds nuw %struct.Node, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8
  %39 = load i32, ptr %4, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds nuw %struct.Node, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct.Node, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi ptr [ %44, %41 ], [ %48, %45 ]
  store ptr %50, ptr %6, align 8
  br label %31

51:                                               ; preds = %31
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds nuw %struct.Node, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8
  %55 = load i32, ptr %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %7, align 8
  %60 = getelementptr inbounds nuw %struct.Node, ptr %59, i32 0, i32 2
  store ptr %58, ptr %60, align 8
  br label %65

61:                                               ; preds = %51
  %62 = load ptr, ptr %5, align 8
  %63 = load ptr, ptr %7, align 8
  %64 = getelementptr inbounds nuw %struct.Node, ptr %63, i32 0, i32 3
  store ptr %62, ptr %64, align 8
  br label %65

65:                                               ; preds = %25, %61, %57
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prefix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  call void @prefix(ptr noundef %12)
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.Node, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  call void @prefix(ptr noundef %15)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @sp, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x ptr], ptr @stack, i64 0, i64 %6
  store ptr %3, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @pop() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x ptr], ptr @stack, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @empty() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdepth(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  store ptr %6, ptr %3, align 8
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load ptr, ptr %3, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = call i32 @empty()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ true, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %52

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %35, %16
  %18 = load ptr, ptr %3, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %4, align 4
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.Node, ptr %23, i32 0, i32 1
  store i32 %21, ptr %24, align 4
  %25 = load ptr, ptr %3, align 8
  call void @push(ptr noundef %25)
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds nuw %struct.Node, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds nuw %struct.Node, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  store ptr %38, ptr %3, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load ptr, ptr %3, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = call ptr @pop()
  store ptr %43, ptr %3, align 8
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds nuw %struct.Node, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %4, align 4
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %3, align 8
  br label %51

51:                                               ; preds = %42, %39
  br label %7

52:                                               ; preds = %14
  %53 = load i32, ptr %5, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qempty() #0 {
  %1 = load i32, ptr @head, align 4
  %2 = load i32, ptr @rear, align 4
  %3 = icmp eq i32 %1, %2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfull() #0 {
  %1 = load i32, ptr @rear, align 4
  %2 = add nsw i32 %1, 1
  %3 = srem i32 %2, 100
  %4 = load i32, ptr @head, align 4
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 @qfull()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr @rear, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [100 x ptr], ptr @queue, i64 0, i64 %10
  store ptr %8, ptr %11, align 8
  %12 = load i32, ptr @rear, align 4
  %13 = add nsw i32 %12, 1
  %14 = srem i32 %13, 100
  store i32 %14, ptr @rear, align 4
  br label %15

15:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @dequeue() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = call i32 @qempty()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store ptr null, ptr %1, align 8
  br label %15

6:                                                ; preds = %0
  %7 = load i32, ptr @head, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [100 x ptr], ptr @queue, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %2, align 8
  %11 = load i32, ptr @head, align 4
  %12 = add nsw i32 %11, 1
  %13 = srem i32 %12, 100
  store i32 %13, ptr @head, align 4
  %14 = load ptr, ptr %2, align 8
  store ptr %14, ptr %1, align 8
  br label %15

15:                                               ; preds = %6, %5
  %16 = load ptr, ptr %1, align 8
  ret ptr %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getdepth_cuo(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 0, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %4, align 4
  store i32 %9, ptr %2, align 4
  br label %66

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %3, align 8
  call void @enqueue(ptr noundef %13)
  br label %14

14:                                               ; preds = %63, %10
  %15 = call i32 @qempty()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = call ptr @dequeue()
  store ptr %19, ptr %5, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.Node, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw %struct.Node, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.Node, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds nuw %struct.Node, ptr %41, i32 0, i32 1
  store i32 %38, ptr %42, align 4
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  call void @enqueue(ptr noundef %45)
  br label %46

46:                                               ; preds = %34, %29
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw %struct.Node, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = icmp ne ptr %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds nuw %struct.Node, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds nuw %struct.Node, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds nuw %struct.Node, ptr %58, i32 0, i32 1
  store i32 %55, ptr %59, align 4
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds nuw %struct.Node, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  call void @enqueue(ptr noundef %62)
  br label %63

63:                                               ; preds = %51, %46
  br label %14

64:                                               ; preds = %14
  %65 = load i32, ptr %4, align 4
  store i32 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %64, %8
  %67 = load i32, ptr %2, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [12 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const.main.data, i64 48, i1 false)
  store i32 12, ptr %7, align 4
  store ptr null, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i32, ptr %9, align 4
  %13 = load i32, ptr %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, ptr %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [12 x i32], ptr %6, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  call void @insertnode(ptr noundef %8, i32 noundef %19)
  br label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %9, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load ptr, ptr %8, align 8
  %25 = call i32 @getdepth(ptr noundef %24)
  store i32 %25, ptr %10, align 4
  %26 = load i32, ptr %10, align 4
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %26)
  %28 = load ptr, ptr %8, align 8
  %29 = call i32 @getdepth_cuo(ptr noundef %28)
  store i32 %29, ptr %10, align 4
  %30 = load i32, ptr %10, align 4
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %30)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
