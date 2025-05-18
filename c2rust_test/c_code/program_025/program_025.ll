; ModuleID = './c_code/temp_compile/11-散列3 QQ帐户的申请与登陆 - 散列法.c'
source_filename = "./c_code/temp_compile/11-\E6\95\A3\E5\88\973 QQ\E5\B8\90\E6\88\B7\E7\9A\84\E7\94\B3\E8\AF\B7\E4\B8\8E\E7\99\BB\E9\99\86 - \E6\95\A3\E5\88\97\E6\B3\95.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TblNode = type { i32, ptr }
%struct.LNode = type { [17 x i8], [17 x i8], ptr }

@.str = private unnamed_addr constant [9 x i8] c"New: OK\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ERROR: Exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Login: OK\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ERROR: Wrong PW\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ERROR: Not Exist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NextPrime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = load i32, ptr %2, align 4
  %6 = srem i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4
  %10 = add nsw i32 %9, 2
  br label %14

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = add nsw i32 %12, 1
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  store i32 %15, ptr %4, align 4
  br label %16

16:                                               ; preds = %44, %14
  %17 = load i32, ptr %4, align 4
  %18 = icmp sle i32 %17, 1000000
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  %21 = sitofp i32 %20 to double
  %22 = call double @sqrt(double noundef %21) #5
  %23 = fptosi double %22 to i32
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %34, %19
  %25 = load i32, ptr %3, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 4
  %29 = load i32, ptr %3, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %37

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %3, align 4
  br label %24

37:                                               ; preds = %32, %24
  %38 = load i32, ptr %3, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, ptr %4, align 4
  br label %44

44:                                               ; preds = %41
  br label %16

45:                                               ; preds = %40, %16
  %46 = load i32, ptr %4, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @CreateTable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = call noalias ptr @malloc(i64 noundef 16) #6
  store ptr %5, ptr %3, align 8
  %6 = load i32, ptr %2, align 4
  %7 = call i32 @NextPrime(i32 noundef %6)
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.TblNode, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.TblNode, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 48
  %15 = call noalias ptr @malloc(i64 noundef %14) #6
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.TblNode, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %48, %1
  %19 = load i32, ptr %4, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.TblNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.TblNode, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.LNode, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.LNode, ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds [17 x i8], ptr %31, i64 0, i64 0
  store i8 0, ptr %32, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.TblNode, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.LNode, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.LNode, ptr %38, i32 0, i32 1
  %40 = getelementptr inbounds [17 x i8], ptr %39, i64 0, i64 0
  store i8 0, ptr %40, align 1
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds nuw %struct.TblNode, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.LNode, ptr %43, i64 %45
  %47 = getelementptr inbounds nuw %struct.LNode, ptr %46, i32 0, i32 2
  store ptr null, ptr %47, align 8
  br label %48

48:                                               ; preds = %24
  %49 = load i32, ptr %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %4, align 4
  br label %18

51:                                               ; preds = %18
  %52 = load ptr, ptr %3, align 8
  ret ptr %52
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Hash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store i64 0, ptr %5, align 8
  %8 = load ptr, ptr %3, align 8
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %14, %2
  %10 = load ptr, ptr %6, align 8
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i64, ptr %5, align 8
  %16 = shl i64 %15, 5
  %17 = load ptr, ptr %6, align 8
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i64
  %20 = add i64 %16, %19
  store i64 %20, ptr %5, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %22, ptr %6, align 8
  br label %9

23:                                               ; preds = %9
  %24 = load i64, ptr %5, align 8
  %25 = load i32, ptr %4, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %7, align 4
  %29 = load i32, ptr %7, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @Find(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.TblNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 @Hash(ptr noundef %7, i32 noundef %10)
  store i32 %11, ptr %6, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.TblNode, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.LNode, ptr %14, i64 %16
  %18 = getelementptr inbounds nuw %struct.LNode, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %5, align 8
  br label %20

20:                                               ; preds = %32, %2
  %21 = load ptr, ptr %5, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.LNode, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds [17 x i8], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8
  %28 = call i32 @strcmp(ptr noundef %26, ptr noundef %27) #7
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.LNode, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %5, align 8
  br label %20

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8
  ret ptr %37
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Insert(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call ptr @Find(ptr noundef %10, ptr noundef %11)
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %51, label %15

15:                                               ; preds = %3
  %16 = call noalias ptr @malloc(i64 noundef 48) #6
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %8, align 8
  %18 = getelementptr inbounds nuw %struct.LNode, ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds [17 x i8], ptr %18, i64 0, i64 0
  %20 = load ptr, ptr %5, align 8
  %21 = call ptr @strcpy(ptr noundef %19, ptr noundef %20) #5
  %22 = load ptr, ptr %8, align 8
  %23 = getelementptr inbounds nuw %struct.LNode, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds [17 x i8], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %6, align 8
  %26 = call ptr @strcpy(ptr noundef %24, ptr noundef %25) #5
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.TblNode, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = call i32 @Hash(ptr noundef %27, i32 noundef %30)
  store i32 %31, ptr %9, align 4
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.TblNode, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.LNode, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.LNode, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds nuw %struct.LNode, ptr %40, i32 0, i32 2
  store ptr %39, ptr %41, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.TblNode, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load i32, ptr %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.LNode, ptr %45, i64 %47
  %49 = getelementptr inbounds nuw %struct.LNode, ptr %48, i32 0, i32 2
  store ptr %42, ptr %49, align 8
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %53

51:                                               ; preds = %3
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %53

53:                                               ; preds = %51, %15
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DestroyTable(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, ptr %3, align 4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.TblNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.TblNode, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.LNode, ptr %15, i64 %17
  %19 = getelementptr inbounds nuw %struct.LNode, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %4, align 8
  br label %21

21:                                               ; preds = %24, %12
  %22 = load ptr, ptr %4, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds nuw %struct.LNode, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %5, align 8
  %28 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %28) #5
  %29 = load ptr, ptr %5, align 8
  store ptr %29, ptr %4, align 8
  br label %21

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, ptr %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %3, align 4
  br label %6

34:                                               ; preds = %6
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds nuw %struct.TblNode, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  call void @free(ptr noundef %37) #5
  %38 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %38) #5
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [11 x i8], align 1
  %7 = alloca [20 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %15 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %10)
  %16 = load i32, ptr %10, align 4
  %17 = sdiv i32 %16, 10
  store i32 %17, ptr %13, align 4
  %18 = load i32, ptr %13, align 4
  %19 = call ptr @CreateTable(i32 noundef %18)
  store ptr %19, ptr %14, align 8
  store i32 0, ptr %8, align 4
  br label %20

20:                                               ; preds = %60, %2
  %21 = load i32, ptr %8, align 4
  %22 = load i32, ptr %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = call i32 @getchar()
  %26 = call i32 @getchar()
  %27 = trunc i32 %26 to i8
  store i8 %27, ptr %11, align 1
  %28 = getelementptr inbounds [11 x i8], ptr %6, i64 0, i64 0
  %29 = getelementptr inbounds [20 x i8], ptr %7, i64 0, i64 0
  %30 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %28, ptr noundef %29)
  %31 = load i8, ptr %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 78
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load ptr, ptr %14, align 8
  %36 = getelementptr inbounds [11 x i8], ptr %6, i64 0, i64 0
  %37 = getelementptr inbounds [20 x i8], ptr %7, i64 0, i64 0
  call void @Insert(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  br label %59

38:                                               ; preds = %24
  %39 = load ptr, ptr %14, align 8
  %40 = getelementptr inbounds [11 x i8], ptr %6, i64 0, i64 0
  %41 = call ptr @Find(ptr noundef %39, ptr noundef %40)
  store ptr %41, ptr %12, align 8
  %42 = load ptr, ptr %12, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds nuw %struct.LNode, ptr %45, i32 0, i32 1
  %47 = getelementptr inbounds [17 x i8], ptr %46, i64 0, i64 0
  %48 = getelementptr inbounds [20 x i8], ptr %7, i64 0, i64 0
  %49 = call i32 @strcmp(ptr noundef %47, ptr noundef %48) #7
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %55

53:                                               ; preds = %44
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %55

55:                                               ; preds = %53, %51
  br label %58

56:                                               ; preds = %38
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %58

58:                                               ; preds = %56, %55
  br label %59

59:                                               ; preds = %58, %34
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %8, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load ptr, ptr %14, align 8
  call void @DestroyTable(ptr noundef %64)
  ret i32 0
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #4

declare i32 @getchar() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
