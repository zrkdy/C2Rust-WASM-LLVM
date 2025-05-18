; ModuleID = './c_code/temp_compile/11-散列1 电话聊天狂人.c'
source_filename = "./c_code/temp_compile/11-\E6\95\A3\E5\88\971 \E7\94\B5\E8\AF\9D\E8\81\8A\E5\A4\A9\E7\8B\82\E4\BA\BA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TblNode = type { i32, ptr }
%struct.LNode = type { [12 x i8], i32, ptr }

@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPrime(i32 noundef %0) #0 {
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
  %18 = icmp slt i32 %17, 100000
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
  %7 = call i32 @GetPrime(i32 noundef %6)
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.TblNode, ptr %8, i32 0, i32 0
  store i32 %7, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.TblNode, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 24
  %15 = call noalias ptr @malloc(i64 noundef %14) #6
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.TblNode, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %47, %1
  %19 = load i32, ptr %4, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.TblNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.TblNode, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.LNode, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.LNode, ptr %30, i32 0, i32 0
  %32 = getelementptr inbounds [12 x i8], ptr %31, i64 0, i64 0
  store i8 0, ptr %32, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.TblNode, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.LNode, ptr %35, i64 %37
  %39 = getelementptr inbounds nuw %struct.LNode, ptr %38, i32 0, i32 2
  store ptr null, ptr %39, align 8
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds nuw %struct.TblNode, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.LNode, ptr %42, i64 %44
  %46 = getelementptr inbounds nuw %struct.LNode, ptr %45, i32 0, i32 1
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %24
  %48 = load i32, ptr %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %4, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load ptr, ptr %3, align 8
  ret ptr %51
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Hash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 11
  %7 = getelementptr inbounds i8, ptr %6, i64 -5
  %8 = call i32 @atoi(ptr noundef %7) #7
  %9 = load i32, ptr %4, align 4
  %10 = srem i32 %8, %9
  ret i32 %10
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @Find(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.TblNode, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = call i32 @Hash(ptr noundef %7, i32 noundef %10)
  store i32 %11, ptr %5, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.TblNode, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.LNode, ptr %14, i64 %16
  %18 = getelementptr inbounds nuw %struct.LNode, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %6, align 8
  br label %20

20:                                               ; preds = %32, %2
  %21 = load ptr, ptr %6, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.LNode, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds [12 x i8], ptr %25, i64 0, i64 0
  %27 = load ptr, ptr %4, align 8
  %28 = call i32 @strcmp(ptr noundef %26, ptr noundef %27) #7
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds nuw %struct.LNode, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %6, align 8
  br label %20

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8
  ret ptr %37
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call ptr @Find(ptr noundef %8, ptr noundef %9)
  store ptr %10, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.TblNode, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = call i32 @Hash(ptr noundef %14, i32 noundef %17)
  store i32 %18, ptr %7, align 4
  %19 = call noalias ptr @malloc(i64 noundef 24) #6
  store ptr %19, ptr %6, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds nuw %struct.LNode, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds [12 x i8], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %4, align 8
  %24 = call ptr @strcpy(ptr noundef %22, ptr noundef %23) #5
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds nuw %struct.LNode, ptr %25, i32 0, i32 1
  store i32 1, ptr %26, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw %struct.TblNode, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = load i32, ptr %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.LNode, ptr %29, i64 %31
  %33 = getelementptr inbounds nuw %struct.LNode, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds nuw %struct.LNode, ptr %35, i32 0, i32 2
  store ptr %34, ptr %36, align 8
  %37 = load ptr, ptr %6, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds nuw %struct.TblNode, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.LNode, ptr %40, i64 %42
  %44 = getelementptr inbounds nuw %struct.LNode, ptr %43, i32 0, i32 2
  store ptr %37, ptr %44, align 8
  br label %50

45:                                               ; preds = %2
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw %struct.LNode, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %13
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

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
define dso_local void @ScanAndOutput(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [12 x i8], align 1
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %69, %1
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.TblNode, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.TblNode, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.LNode, ptr %17, i64 %19
  %21 = getelementptr inbounds nuw %struct.LNode, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %7, align 8
  br label %23

23:                                               ; preds = %64, %14
  %24 = load ptr, ptr %7, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %68

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %struct.LNode, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %3, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load ptr, ptr %7, align 8
  %34 = getelementptr inbounds nuw %struct.LNode, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 0
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds nuw %struct.LNode, ptr %37, i32 0, i32 0
  %39 = getelementptr inbounds [12 x i8], ptr %38, i64 0, i64 0
  %40 = call ptr @strcpy(ptr noundef %36, ptr noundef %39) #5
  store i32 1, ptr %5, align 4
  br label %64

41:                                               ; preds = %26
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds nuw %struct.LNode, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %3, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds nuw %struct.LNode, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds [12 x i8], ptr %49, i64 0, i64 0
  %51 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 0
  %52 = call i32 @strcmp(ptr noundef %50, ptr noundef %51) #7
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 0
  %56 = load ptr, ptr %7, align 8
  %57 = getelementptr inbounds nuw %struct.LNode, ptr %56, i32 0, i32 0
  %58 = getelementptr inbounds [12 x i8], ptr %57, i64 0, i64 0
  %59 = call ptr @strcpy(ptr noundef %55, ptr noundef %58) #5
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i32, ptr %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %5, align 4
  br label %63

63:                                               ; preds = %60, %41
  br label %64

64:                                               ; preds = %63, %32
  %65 = load ptr, ptr %7, align 8
  %66 = getelementptr inbounds nuw %struct.LNode, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %7, align 8
  br label %23

68:                                               ; preds = %23
  br label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %4, align 4
  br label %8

72:                                               ; preds = %8
  %73 = getelementptr inbounds [12 x i8], ptr %6, i64 0, i64 0
  %74 = load i32, ptr %3, align 4
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %73, i32 noundef %74)
  %76 = load i32, ptr %5, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, ptr %5, align 4
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %79)
  br label %83

81:                                               ; preds = %72
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %83

83:                                               ; preds = %81, %78
  ret void
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [12 x i8], align 1
  %9 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %10 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.3, ptr noundef %6)
  %11 = load i32, ptr %6, align 4
  %12 = mul nsw i32 %11, 2
  %13 = call ptr @CreateTable(i32 noundef %12)
  store ptr %13, ptr %9, align 8
  store i32 0, ptr %7, align 4
  br label %14

14:                                               ; preds = %24, %2
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %6, align 4
  %17 = mul nsw i32 2, %16
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds [12 x i8], ptr %8, i64 0, i64 0
  %21 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.4, ptr noundef %20)
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds [12 x i8], ptr %8, i64 0, i64 0
  call void @Insert(ptr noundef %22, ptr noundef %23)
  br label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %7, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load ptr, ptr %9, align 8
  call void @ScanAndOutput(ptr noundef %28)
  %29 = load ptr, ptr %9, align 8
  call void @DestroyTable(ptr noundef %29)
  ret i32 0
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #4

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
