; ModuleID = './c_code/temp_compile/06-图2 Saving James Bond - Hard Version.c'
source_filename = "./c_code/temp_compile/06-\E5\9B\BE2 Saving James Bond - Hard Version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crocodile = type { i32, i32, i8, i8 }
%struct.Path = type { [101 x i32] }
%struct.Dist = type { [101 x i32] }
%struct.QNode = type { ptr, i32, i32 }
%struct.SNode = type { ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"\E9\98\9F\E5\88\97\E6\BB\A1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\E9\98\9F\E5\88\97\E7\A9\BA\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\E5\A0\86\E6\A0\88\E6\BB\A1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\E5\A0\86\E6\A0\88\E7\A9\BA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@c = dso_local global [101 x %struct.crocodile] zeroinitializer, align 16
@Path = dso_local global [101 x %struct.Path] zeroinitializer, align 16
@Dist = dso_local global [101 x %struct.Dist] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @CreateQueue() #0 {
  %1 = alloca ptr, align 8
  %2 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %2, ptr %1, align 8
  %3 = call noalias ptr @malloc(i64 noundef 404) #5
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds nuw %struct.QNode, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds nuw %struct.QNode, ptr %6, i32 0, i32 1
  store i32 0, ptr %7, align 8
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds nuw %struct.QNode, ptr %8, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = load ptr, ptr %1, align 8
  ret ptr %10
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @IsEmpty(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.QNode, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.QNode, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %5, %8
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @IsFull(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.QNode, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = add nsw i32 %5, 1
  %7 = srem i32 %6, 101
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.QNode, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %7, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddQ(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct.QNode, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = add nsw i32 %7, 1
  %9 = srem i32 %8, 101
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.QNode, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %33

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw %struct.QNode, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = srem i32 %20, 101
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct.QNode, ptr %22, i32 0, i32 1
  store i32 %21, ptr %23, align 8
  %24 = load i32, ptr %4, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.QNode, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds nuw %struct.QNode, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  store i32 %24, ptr %32, align 4
  br label %33

33:                                               ; preds = %16, %14
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeleteQ(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.QNode, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %struct.QNode, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 999, ptr %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds nuw %struct.QNode, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = srem i32 %17, 101
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.QNode, ptr %19, i32 0, i32 2
  store i32 %18, ptr %20, align 4
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct.QNode, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.QNode, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %23, i64 %27
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %13, %11
  %31 = load i32, ptr %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @CreateStack() #0 {
  %1 = alloca ptr, align 8
  %2 = call noalias ptr @malloc(i64 noundef 16) #5
  store ptr %2, ptr %1, align 8
  %3 = call noalias ptr @malloc(i64 noundef 404) #5
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds nuw %struct.SNode, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds nuw %struct.SNode, ptr %6, i32 0, i32 1
  store i32 -1, ptr %7, align 8
  %8 = load ptr, ptr %1, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Push(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds nuw %struct.SNode, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 100
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %22

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.SNode, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.SNode, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %15, i64 %20
  store i32 %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @IsStackEmpty(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds nuw %struct.SNode, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i1 true, ptr %2, align 1
  br label %10

9:                                                ; preds = %1
  store i1 false, ptr %2, align 1
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i1, ptr %2, align 1
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Pop(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call zeroext i1 @IsStackEmpty(ptr noundef %4)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 999, ptr %2, align 4
  br label %19

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds nuw %struct.SNode, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.SNode, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %13, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %8, %6
  %20 = load i32, ptr %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Distance(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %6, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sitofp i32 %12 to double
  %14 = call double @pow(double noundef %13, double noundef 2.000000e+00) #6
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %5, align 4
  %17 = sub nsw i32 %15, %16
  %18 = sitofp i32 %17 to double
  %19 = call double @pow(double noundef %18, double noundef 2.000000e+00) #6
  %20 = fadd double %14, %19
  %21 = call double @sqrt(double noundef %20) #6
  %22 = fptosi double %21 to i32
  store i32 %22, ptr %9, align 4
  %23 = load i32, ptr %9, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @NearShore(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @llvm.abs.i32(i32 %8, i1 true)
  %10 = sub nsw i32 50, %9
  %11 = load i32, ptr %7, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %6, align 4
  %15 = call i32 @llvm.abs.i32(i32 %14, i1 true)
  %16 = sub nsw i32 50, %15
  %17 = load i32, ptr %7, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  store i1 true, ptr %4, align 1
  br label %21

20:                                               ; preds = %13
  store i1 false, ptr %4, align 1
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i1, ptr %4, align 1
  ret i1 %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @FirstJump(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %9 = load i32, ptr %5, align 4
  %10 = sitofp i32 %9 to double
  %11 = call double @pow(double noundef %10, double noundef 2.000000e+00) #6
  %12 = load i32, ptr %6, align 4
  %13 = sitofp i32 %12 to double
  %14 = call double @pow(double noundef %13, double noundef 2.000000e+00) #6
  %15 = fadd double %11, %14
  %16 = call double @sqrt(double noundef %15) #6
  %17 = fptosi double %16 to i32
  store i32 %17, ptr %8, align 4
  %18 = load i32, ptr %8, align 4
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 7
  %21 = icmp sle i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i1 true, ptr %4, align 1
  br label %24

23:                                               ; preds = %3
  store i1 false, ptr %4, align 1
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i1, ptr %4, align 1
  ret i1 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Initial(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %42, %2
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.4, ptr noundef %5, ptr noundef %6)
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.crocodile, ptr %17, i32 0, i32 0
  store i32 %14, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.crocodile, ptr %22, i32 0, i32 1
  store i32 %19, ptr %23, align 4
  %24 = load i32, ptr %5, align 4
  %25 = load i32, ptr %6, align 4
  %26 = load i32, ptr %4, align 4
  %27 = call zeroext i1 @NearShore(i32 noundef %24, i32 noundef %25, i32 noundef %26)
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %29
  %31 = getelementptr inbounds nuw %struct.crocodile, ptr %30, i32 0, i32 2
  %32 = zext i1 %27 to i8
  store i8 %32, ptr %31, align 4
  %33 = load i32, ptr %5, align 4
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %4, align 4
  %36 = call zeroext i1 @FirstJump(i32 noundef %33, i32 noundef %34, i32 noundef %35)
  %37 = load i32, ptr %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.crocodile, ptr %39, i32 0, i32 3
  %41 = zext i1 %36 to i8
  store i8 %41, ptr %40, align 1
  br label %42

42:                                               ; preds = %12
  %43 = load i32, ptr %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %7, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Unweighted(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %11, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, ptr %11, align 4
  %15 = load i32, ptr %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [101 x %struct.Path], ptr @Path, i64 0, i64 %19
  %21 = getelementptr inbounds nuw %struct.Path, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [101 x i32], ptr %21, i64 0, i64 %23
  store i32 -1, ptr %24, align 4
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct.Dist, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [101 x i32], ptr %28, i64 0, i64 %30
  store i32 -1, ptr %31, align 4
  br label %32

32:                                               ; preds = %17
  %33 = load i32, ptr %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %11, align 4
  br label %13

35:                                               ; preds = %13
  %36 = call ptr @CreateQueue()
  store ptr %36, ptr %7, align 8
  %37 = load i32, ptr %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.Dist, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [101 x i32], ptr %40, i64 0, i64 %42
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %7, align 8
  %45 = load i32, ptr %4, align 4
  call void @AddQ(ptr noundef %44, i32 noundef %45)
  br label %46

46:                                               ; preds = %123, %35
  %47 = load ptr, ptr %7, align 8
  %48 = call zeroext i1 @IsEmpty(ptr noundef %47)
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %124

50:                                               ; preds = %46
  %51 = load ptr, ptr %7, align 8
  %52 = call i32 @DeleteQ(ptr noundef %51)
  store i32 %52, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %53

53:                                               ; preds = %120, %50
  %54 = load i32, ptr %9, align 4
  %55 = load i32, ptr %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %123

57:                                               ; preds = %53
  %58 = load i32, ptr %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %59
  %61 = getelementptr inbounds nuw %struct.crocodile, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %64
  %66 = getelementptr inbounds nuw %struct.crocodile, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %69
  %71 = getelementptr inbounds nuw %struct.crocodile, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %74
  %76 = getelementptr inbounds nuw %struct.crocodile, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @Distance(i32 noundef %62, i32 noundef %67, i32 noundef %72, i32 noundef %77)
  store i32 %78, ptr %10, align 4
  %79 = load i32, ptr %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %80
  %82 = getelementptr inbounds nuw %struct.Dist, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [101 x i32], ptr %82, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %119

88:                                               ; preds = %57
  %89 = load i32, ptr %10, align 4
  %90 = load i32, ptr %6, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load i32, ptr %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %94
  %96 = getelementptr inbounds nuw %struct.Dist, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [101 x i32], ptr %96, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, ptr %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %103
  %105 = getelementptr inbounds nuw %struct.Dist, ptr %104, i32 0, i32 0
  %106 = load i32, ptr %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [101 x i32], ptr %105, i64 0, i64 %107
  store i32 %101, ptr %108, align 4
  %109 = load i32, ptr %8, align 4
  %110 = load i32, ptr %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [101 x %struct.Path], ptr @Path, i64 0, i64 %111
  %113 = getelementptr inbounds nuw %struct.Path, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [101 x i32], ptr %113, i64 0, i64 %115
  store i32 %109, ptr %116, align 4
  %117 = load ptr, ptr %7, align 8
  %118 = load i32, ptr %9, align 4
  call void @AddQ(ptr noundef %117, i32 noundef %118)
  br label %119

119:                                              ; preds = %92, %88, %57
  br label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %9, align 4
  br label %53

123:                                              ; preds = %53
  br label %46

124:                                              ; preds = %46
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintList(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i32, ptr %5, align 4
  %8 = load i32, ptr %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %5, align 4
  br label %6

20:                                               ; preds = %6
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 101, ptr %13, align 4
  store i32 101, ptr %14, align 4
  %16 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.4, ptr noundef %6, ptr noundef %7)
  %17 = load i32, ptr %6, align 4
  %18 = load i32, ptr %7, align 4
  call void @Initial(i32 noundef %17, i32 noundef %18)
  %19 = load i32, ptr %7, align 4
  %20 = load i32, ptr %7, align 4
  %21 = sdiv i32 %20, 2
  %22 = sub nsw i32 50, %21
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 0, ptr %3, align 4
  br label %171

26:                                               ; preds = %2
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %123, %26
  %28 = load i32, ptr %8, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %126

31:                                               ; preds = %27
  %32 = load i32, ptr %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %33
  %35 = getelementptr inbounds nuw %struct.crocodile, ptr %34, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = trunc i8 %36 to i1
  br i1 %37, label %38, label %122

38:                                               ; preds = %31
  %39 = load i32, ptr %8, align 4
  %40 = load i32, ptr %6, align 4
  %41 = load i32, ptr %7, align 4
  call void @Unweighted(i32 noundef %39, i32 noundef %40, i32 noundef %41)
  %42 = load i32, ptr %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %43
  %45 = getelementptr inbounds nuw %struct.crocodile, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %48
  %50 = getelementptr inbounds nuw %struct.crocodile, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @Distance(i32 noundef %46, i32 noundef %51, i32 noundef 0, i32 noundef 0)
  store i32 %52, ptr %12, align 4
  store i32 0, ptr %9, align 4
  br label %53

53:                                               ; preds = %118, %38
  %54 = load i32, ptr %9, align 4
  %55 = load i32, ptr %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %121

57:                                               ; preds = %53
  %58 = load i32, ptr %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %59
  %61 = getelementptr inbounds nuw %struct.crocodile, ptr %60, i32 0, i32 2
  %62 = load i8, ptr %61, align 4
  %63 = trunc i8 %62 to i1
  br i1 %63, label %64, label %117

64:                                               ; preds = %57
  %65 = load i32, ptr %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %66
  %68 = getelementptr inbounds nuw %struct.Dist, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [101 x i32], ptr %68, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %64
  %75 = load i32, ptr %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %76
  %78 = getelementptr inbounds nuw %struct.Dist, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [101 x i32], ptr %78, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %74
  %86 = load i32, ptr %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %87
  %89 = getelementptr inbounds nuw %struct.Dist, ptr %88, i32 0, i32 0
  %90 = load i32, ptr %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [101 x i32], ptr %89, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4
  store i32 %93, ptr %13, align 4
  %94 = load i32, ptr %12, align 4
  store i32 %94, ptr %14, align 4
  %95 = load i32, ptr %9, align 4
  store i32 %95, ptr %10, align 4
  %96 = load i32, ptr %8, align 4
  store i32 %96, ptr %11, align 4
  br label %116

97:                                               ; preds = %74
  %98 = load i32, ptr %13, align 4
  %99 = load i32, ptr %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [101 x %struct.Dist], ptr @Dist, i64 0, i64 %100
  %102 = getelementptr inbounds nuw %struct.Dist, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [101 x i32], ptr %102, i64 0, i64 %104
  store i32 %98, ptr %105, align 4
  %106 = icmp ne i32 %98, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load i32, ptr %12, align 4
  %109 = load i32, ptr %14, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, ptr %12, align 4
  store i32 %112, ptr %14, align 4
  %113 = load i32, ptr %9, align 4
  store i32 %113, ptr %10, align 4
  %114 = load i32, ptr %8, align 4
  store i32 %114, ptr %11, align 4
  br label %115

115:                                              ; preds = %111, %107, %97
  br label %116

116:                                              ; preds = %115, %85
  br label %117

117:                                              ; preds = %116, %64, %57
  br label %118

118:                                              ; preds = %117
  %119 = load i32, ptr %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %9, align 4
  br label %53

121:                                              ; preds = %53
  br label %122

122:                                              ; preds = %121, %31
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %8, align 4
  br label %27

126:                                              ; preds = %27
  %127 = load i32, ptr %13, align 4
  %128 = icmp eq i32 %127, 101
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %170

131:                                              ; preds = %126
  %132 = load i32, ptr %13, align 4
  %133 = add nsw i32 %132, 2
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %133)
  %135 = call ptr @CreateStack()
  store ptr %135, ptr %15, align 8
  br label %136

136:                                              ; preds = %139, %131
  %137 = load i32, ptr %10, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load ptr, ptr %15, align 8
  %141 = load i32, ptr %10, align 4
  call void @Push(ptr noundef %140, i32 noundef %141)
  %142 = load i32, ptr %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [101 x %struct.Path], ptr @Path, i64 0, i64 %143
  %145 = getelementptr inbounds nuw %struct.Path, ptr %144, i32 0, i32 0
  %146 = load i32, ptr %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [101 x i32], ptr %145, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4
  store i32 %149, ptr %10, align 4
  br label %136

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %155, %150
  %152 = load ptr, ptr %15, align 8
  %153 = call zeroext i1 @IsStackEmpty(ptr noundef %152)
  %154 = xor i1 %153, true
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load ptr, ptr %15, align 8
  %157 = call i32 @Pop(ptr noundef %156)
  store i32 %157, ptr %10, align 4
  %158 = load i32, ptr %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %159
  %161 = getelementptr inbounds nuw %struct.crocodile, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 4
  %163 = load i32, ptr %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [101 x %struct.crocodile], ptr @c, i64 0, i64 %164
  %166 = getelementptr inbounds nuw %struct.crocodile, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %162, i32 noundef %167)
  br label %151

169:                                              ; preds = %151
  br label %170

170:                                              ; preds = %169, %129
  store i32 0, ptr %3, align 4
  br label %171

171:                                              ; preds = %170, %24
  %172 = load i32, ptr %3, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
