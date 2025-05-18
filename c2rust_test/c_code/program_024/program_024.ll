; ModuleID = './c_code/temp_compile/11-散列2 Hashing.c'
source_filename = "./c_code/temp_compile/11-\E6\95\A3\E5\88\972 Hashing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TblNode = type { i32, ptr }
%struct.Cell = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPrime(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  %6 = load i32, ptr %3, align 4
  %7 = srem i32 %6, 2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32, ptr %3, align 4
  %13 = add nsw i32 %12, 1
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ %10, %9 ], [ %13, %11 ]
  store i32 %15, ptr %5, align 4
  %16 = load i32, ptr %3, align 4
  %17 = icmp sle i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 2, ptr %2, align 4
  br label %56

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4
  store i32 %23, ptr %2, align 4
  br label %56

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, ptr %5, align 4
  %27 = icmp slt i32 %26, 100000
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4
  %30 = sitofp i32 %29 to double
  %31 = call double @sqrt(double noundef %30) #4
  %32 = fptosi double %31 to i32
  store i32 %32, ptr %4, align 4
  br label %33

33:                                               ; preds = %43, %28
  %34 = load i32, ptr %4, align 4
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, ptr %5, align 4
  %38 = load i32, ptr %4, align 4
  %39 = srem i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %4, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %4, align 4
  br label %33

46:                                               ; preds = %41, %33
  %47 = load i32, ptr %4, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %54

50:                                               ; preds = %46
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, ptr %5, align 4
  br label %53

53:                                               ; preds = %50
  br label %25

54:                                               ; preds = %49, %25
  %55 = load i32, ptr %5, align 4
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %54, %22, %18
  %57 = load i32, ptr %2, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @CreateTable(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %5 = call noalias ptr @malloc(i64 noundef 16) #5
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
  %14 = mul i64 %13, 8
  %15 = call noalias ptr @malloc(i64 noundef %14) #5
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.TblNode, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %39, %1
  %19 = load i32, ptr %4, align 4
  %20 = load ptr, ptr %3, align 8
  %21 = getelementptr inbounds nuw %struct.TblNode, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.TblNode, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.Cell, ptr %27, i64 %29
  %31 = getelementptr inbounds nuw %struct.Cell, ptr %30, i32 0, i32 0
  store i32 0, ptr %31, align 4
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds nuw %struct.TblNode, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.Cell, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.Cell, ptr %37, i32 0, i32 1
  store i32 1, ptr %38, align 4
  br label %39

39:                                               ; preds = %24
  %40 = load i32, ptr %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load ptr, ptr %3, align 8
  ret ptr %43
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Hash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.TblNode, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8
  %9 = srem i32 %5, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %5, align 4
  %11 = call i32 @Hash(ptr noundef %9, i32 noundef %10)
  store i32 %11, ptr %7, align 4
  store i32 %11, ptr %6, align 4
  br label %12

12:                                               ; preds = %61, %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.TblNode, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.Cell, ptr %15, i64 %17
  %19 = getelementptr inbounds nuw %struct.Cell, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %40

22:                                               ; preds = %12
  %23 = load i32, ptr %8, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds nuw %struct.TblNode, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8
  %27 = mul nsw i32 2, %26
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds nuw %struct.TblNode, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Cell, ptr %32, i64 %34
  %36 = getelementptr inbounds nuw %struct.Cell, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %5, align 4
  %39 = icmp ne i32 %37, %38
  br label %40

40:                                               ; preds = %29, %22, %12
  %41 = phi i1 [ false, %22 ], [ false, %12 ], [ %39, %29 ]
  br i1 %41, label %42, label %62

42:                                               ; preds = %40
  %43 = load i32, ptr %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %8, align 4
  %45 = load i32, ptr %6, align 4
  %46 = load i32, ptr %8, align 4
  %47 = load i32, ptr %8, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  store i32 %49, ptr %7, align 4
  %50 = load i32, ptr %7, align 4
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds nuw %struct.TblNode, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds nuw %struct.TblNode, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %57, align 8
  %59 = load i32, ptr %7, align 4
  %60 = srem i32 %59, %58
  store i32 %60, ptr %7, align 4
  br label %61

61:                                               ; preds = %55, %42
  br label %12

62:                                               ; preds = %40
  %63 = load i32, ptr %8, align 4
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds nuw %struct.TblNode, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8
  %67 = mul nsw i32 2, %66
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, ptr %7, align 4
  store i32 %70, ptr %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 -1, ptr %3, align 4
  br label %72

72:                                               ; preds = %71, %69
  %73 = load i32, ptr %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = load i32, ptr %4, align 4
  %8 = call i32 @Find(ptr noundef %6, i32 noundef %7)
  store i32 %8, ptr %5, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.TblNode, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.Cell, ptr %14, i64 %16
  %18 = getelementptr inbounds nuw %struct.Cell, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct.TblNode, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load i32, ptr %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.Cell, ptr %24, i64 %26
  %28 = getelementptr inbounds nuw %struct.Cell, ptr %27, i32 0, i32 1
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr %4, align 4
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.TblNode, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Cell, ptr %32, i64 %34
  %36 = getelementptr inbounds nuw %struct.Cell, ptr %35, i32 0, i32 0
  store i32 %29, ptr %36, align 4
  br label %37

37:                                               ; preds = %21, %11
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, ptr %5, align 4
  ret i32 %39
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
  %12 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 0, ptr %11, align 4
  %13 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %6, ptr noundef %7)
  %14 = load i32, ptr %6, align 4
  %15 = call ptr @CreateTable(i32 noundef %14)
  store ptr %15, ptr %12, align 8
  store i32 0, ptr %8, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, ptr %8, align 4
  %18 = load i32, ptr %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %9)
  %22 = load ptr, ptr %12, align 8
  %23 = load i32, ptr %9, align 4
  %24 = call i32 @Insert(ptr noundef %22, i32 noundef %23)
  store i32 %24, ptr %10, align 4
  %25 = load i32, ptr %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, ptr %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, ptr %11, align 4
  br label %33

31:                                               ; preds = %27
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %33

33:                                               ; preds = %31, %30
  %34 = load i32, ptr %10, align 4
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %44

36:                                               ; preds = %20
  %37 = load i32, ptr %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %11, align 4
  br label %42

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %42

42:                                               ; preds = %40, %39
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %44

44:                                               ; preds = %42, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %8, align 4
  br label %16

48:                                               ; preds = %16
  %49 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  ret i32 0
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
