; ModuleID = './c_code/temp_compile/non_preemptive_priority_scheduling.c'
source_filename = "./c_code/temp_compile/non_preemptive_priority_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i32, i32, i32, i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [35 x i8] c"Process Priority AT BT CT TAT WT \0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"P%d. %d %d %d %d %d %d \0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"[+] All tests have successfully passed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %13 = call noalias ptr @malloc(i64 noundef 40) #4
  store ptr %13, ptr %11, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %12, align 8
  %16 = load i32, ptr %7, align 4
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds nuw %struct.node, ptr %17, i32 0, i32 0
  store i32 %16, ptr %18, align 8
  %19 = load i32, ptr %8, align 4
  %20 = load ptr, ptr %11, align 8
  %21 = getelementptr inbounds nuw %struct.node, ptr %20, i32 0, i32 1
  store i32 %19, ptr %21, align 4
  %22 = load i32, ptr %9, align 4
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds nuw %struct.node, ptr %23, i32 0, i32 2
  store i32 %22, ptr %24, align 8
  %25 = load i32, ptr %10, align 4
  %26 = load ptr, ptr %11, align 8
  %27 = getelementptr inbounds nuw %struct.node, ptr %26, i32 0, i32 3
  store i32 %25, ptr %27, align 4
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds nuw %struct.node, ptr %28, i32 0, i32 7
  store ptr null, ptr %29, align 8
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds nuw %struct.node, ptr %30, i32 0, i32 4
  store i32 0, ptr %31, align 8
  %32 = load ptr, ptr %11, align 8
  %33 = getelementptr inbounds nuw %struct.node, ptr %32, i32 0, i32 5
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds nuw %struct.node, ptr %34, i32 0, i32 6
  store i32 0, ptr %35, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load ptr, ptr %11, align 8
  %41 = load ptr, ptr %6, align 8
  store ptr %40, ptr %41, align 8
  br label %56

42:                                               ; preds = %5
  br label %43

43:                                               ; preds = %48, %42
  %44 = load ptr, ptr %12, align 8
  %45 = getelementptr inbounds nuw %struct.node, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 8
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load ptr, ptr %12, align 8
  %50 = getelementptr inbounds nuw %struct.node, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %12, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load ptr, ptr %11, align 8
  %54 = load ptr, ptr %12, align 8
  %55 = getelementptr inbounds nuw %struct.node, ptr %54, i32 0, i32 7
  store ptr %53, ptr %55, align 8
  br label %56

56:                                               ; preds = %52, %39
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %52

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.node, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = load i32, ptr %4, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.node, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %3, align 8
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %23) #5
  br label %52

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %36, %24
  %26 = load ptr, ptr %5, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds nuw %struct.node, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8
  %32 = load i32, ptr %4, align 4
  %33 = icmp ne i32 %31, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = load ptr, ptr %5, align 8
  store ptr %37, ptr %6, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.node, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %5, align 8
  br label %25

41:                                               ; preds = %34
  %42 = load ptr, ptr %5, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %52

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw %struct.node, ptr %46, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct.node, ptr %49, i32 0, i32 7
  store ptr %48, ptr %50, align 8
  %51 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %51) #5
  br label %52

52:                                               ; preds = %45, %44, %18, %11
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %4

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr %2, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds nuw %struct.node, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.node, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.node, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct.node, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds nuw %struct.node, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds nuw %struct.node, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds nuw %struct.node, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28)
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds nuw %struct.node, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %2, align 8
  br label %4

33:                                               ; preds = %4
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l_length(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %3, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.node, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %4, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load i32, ptr %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i32 %4, ptr %10, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  %14 = load ptr, ptr %11, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %5
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr inbounds nuw %struct.node, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load i32, ptr %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, ptr %8, align 4
  %27 = load ptr, ptr %11, align 8
  %28 = getelementptr inbounds nuw %struct.node, ptr %27, i32 0, i32 4
  store i32 %26, ptr %28, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, ptr %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, ptr %9, align 4
  %34 = load ptr, ptr %11, align 8
  %35 = getelementptr inbounds nuw %struct.node, ptr %34, i32 0, i32 5
  store i32 %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = load i32, ptr %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, ptr %10, align 4
  %41 = load ptr, ptr %11, align 8
  %42 = getelementptr inbounds nuw %struct.node, ptr %41, i32 0, i32 6
  store i32 %40, ptr %42, align 8
  br label %43

43:                                               ; preds = %39, %36
  br label %82

44:                                               ; preds = %16, %5
  br label %45

45:                                               ; preds = %56, %44
  %46 = load ptr, ptr %11, align 8
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds nuw %struct.node, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8
  %52 = load i32, ptr %7, align 4
  %53 = icmp ne i32 %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ false, %45 ], [ %53, %48 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds nuw %struct.node, ptr %57, i32 0, i32 7
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %11, align 8
  br label %45

60:                                               ; preds = %54
  %61 = load i32, ptr %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, ptr %8, align 4
  %65 = load ptr, ptr %11, align 8
  %66 = getelementptr inbounds nuw %struct.node, ptr %65, i32 0, i32 4
  store i32 %64, ptr %66, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, ptr %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, ptr %9, align 4
  %72 = load ptr, ptr %11, align 8
  %73 = getelementptr inbounds nuw %struct.node, ptr %72, i32 0, i32 5
  store i32 %71, ptr %73, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, ptr %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, ptr %10, align 4
  %79 = load ptr, ptr %11, align 8
  %80 = getelementptr inbounds nuw %struct.node, ptr %79, i32 0, i32 6
  store i32 %78, ptr %80, align 8
  br label %81

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %43
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @compare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds nuw %struct.node, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %5, align 8
  %10 = getelementptr inbounds nuw %struct.node, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct.node, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.node, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %16, %19
  store i1 %20, ptr %3, align 1
  br label %29

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.node, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds nuw %struct.node, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %24, %27
  store i1 %28, ptr %3, align 1
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i1, ptr %3, align 1
  ret i1 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calculate_ct(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  store i32 0, ptr %6, align 4
  store i32 0, ptr %8, align 4
  %15 = load ptr, ptr %2, align 8
  %16 = call i32 @l_length(ptr noundef %15)
  store i32 %16, ptr %9, align 4
  store float 0.000000e+00, ptr %11, align 4
  store ptr null, ptr %12, align 8
  br label %17

17:                                               ; preds = %20, %1
  %18 = load ptr, ptr %3, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds nuw %struct.node, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.node, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw %struct.node, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.node, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  call void @insert(ptr noundef %12, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.node, ptr %33, i32 0, i32 7
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %3, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load ptr, ptr %12, align 8
  store ptr %37, ptr %3, align 8
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds nuw %struct.node, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %5, align 8
  br label %41

41:                                               ; preds = %50, %36
  %42 = load ptr, ptr %5, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = call zeroext i1 @compare(ptr noundef %45, ptr noundef %46)
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 8
  store ptr %49, ptr %3, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds nuw %struct.node, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 8
  store ptr %53, ptr %5, align 8
  br label %41

54:                                               ; preds = %41
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds nuw %struct.node, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds nuw %struct.node, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 8
  %61 = add nsw i32 %57, %60
  store i32 %61, ptr %6, align 4
  %62 = load i32, ptr %6, align 4
  store i32 %62, ptr %8, align 4
  %63 = load i32, ptr %6, align 4
  %64 = sitofp i32 %63 to float
  %65 = load float, ptr %11, align 4
  %66 = fadd float %65, %64
  store float %66, ptr %11, align 4
  %67 = load ptr, ptr %2, align 8
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds nuw %struct.node, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8
  %71 = load i32, ptr %6, align 4
  call void @update(ptr noundef %67, i32 noundef %70, i32 noundef %71, i32 noundef 0, i32 noundef 0)
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds nuw %struct.node, ptr %72, i32 0, i32 0
  %74 = load i32, ptr %73, align 8
  call void @delete(ptr noundef %12, i32 noundef %74)
  store i32 0, ptr %7, align 4
  br label %75

75:                                               ; preds = %148, %54
  %76 = load i32, ptr %7, align 4
  %77 = load i32, ptr %9, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %151

80:                                               ; preds = %75
  %81 = load ptr, ptr %12, align 8
  store ptr %81, ptr %3, align 8
  br label %82

82:                                               ; preds = %93, %80
  %83 = load ptr, ptr %3, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds nuw %struct.node, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %8, align 4
  %90 = icmp sgt i32 %88, %89
  br label %91

91:                                               ; preds = %85, %82
  %92 = phi i1 [ false, %82 ], [ %90, %85 ]
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds nuw %struct.node, ptr %94, i32 0, i32 7
  %96 = load ptr, ptr %95, align 8
  store ptr %96, ptr %3, align 8
  br label %82

97:                                               ; preds = %91
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds nuw %struct.node, ptr %98, i32 0, i32 7
  %100 = load ptr, ptr %99, align 8
  store ptr %100, ptr %5, align 8
  br label %101

101:                                              ; preds = %121, %97
  %102 = load ptr, ptr %5, align 8
  %103 = icmp ne ptr %102, null
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds nuw %struct.node, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = load i32, ptr %8, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds nuw %struct.node, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds nuw %struct.node, ptr %114, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load ptr, ptr %5, align 8
  store ptr %119, ptr %3, align 8
  br label %120

120:                                              ; preds = %118, %110
  br label %121

121:                                              ; preds = %120, %104
  %122 = load ptr, ptr %5, align 8
  %123 = getelementptr inbounds nuw %struct.node, ptr %122, i32 0, i32 7
  %124 = load ptr, ptr %123, align 8
  store ptr %124, ptr %5, align 8
  br label %101

125:                                              ; preds = %101
  %126 = load ptr, ptr %3, align 8
  %127 = getelementptr inbounds nuw %struct.node, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = load i32, ptr %6, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, ptr %6, align 4
  %131 = load ptr, ptr %3, align 8
  %132 = getelementptr inbounds nuw %struct.node, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = load i32, ptr %8, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, ptr %8, align 4
  %136 = load i32, ptr %6, align 4
  %137 = sitofp i32 %136 to float
  %138 = load float, ptr %11, align 4
  %139 = fadd float %138, %137
  store float %139, ptr %11, align 4
  %140 = load ptr, ptr %2, align 8
  %141 = load ptr, ptr %3, align 8
  %142 = getelementptr inbounds nuw %struct.node, ptr %141, i32 0, i32 0
  %143 = load i32, ptr %142, align 8
  %144 = load i32, ptr %6, align 4
  call void @update(ptr noundef %140, i32 noundef %143, i32 noundef %144, i32 noundef 0, i32 noundef 0)
  %145 = load ptr, ptr %3, align 8
  %146 = getelementptr inbounds nuw %struct.node, ptr %145, i32 0, i32 0
  %147 = load i32, ptr %146, align 8
  call void @delete(ptr noundef %12, i32 noundef %147)
  br label %148

148:                                              ; preds = %125
  %149 = load i32, ptr %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %7, align 4
  br label %75

151:                                              ; preds = %75
  %152 = load float, ptr %11, align 4
  %153 = load i32, ptr %9, align 4
  %154 = sitofp i32 %153 to float
  %155 = fdiv float %152, %154
  store float %155, ptr %10, align 4
  %156 = load float, ptr %10, align 4
  ret float %156
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calculate_tat(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store float 0.000000e+00, ptr %4, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = call i32 @l_length(ptr noundef %7)
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct.node, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = call float @calculate_ct(ptr noundef %16)
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %22, %18
  %20 = load ptr, ptr %6, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.node, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %struct.node, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub nsw i32 %25, %28
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %struct.node, ptr %30, i32 0, i32 6
  store i32 %29, ptr %31, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds nuw %struct.node, ptr %32, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = sitofp i32 %34 to float
  %36 = load float, ptr %4, align 4
  %37 = fadd float %36, %35
  store float %37, ptr %4, align 4
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds nuw %struct.node, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %6, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load float, ptr %4, align 4
  %43 = load i32, ptr %5, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %42, %44
  store float %45, ptr %3, align 4
  %46 = load float, ptr %3, align 4
  ret float %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @calculate_wt(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store float 0.000000e+00, ptr %4, align 4
  %7 = load ptr, ptr %2, align 8
  %8 = call i32 @l_length(ptr noundef %7)
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw %struct.node, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = call float @calculate_ct(ptr noundef %16)
  br label %18

18:                                               ; preds = %15, %1
  br label %19

19:                                               ; preds = %22, %18
  %20 = load ptr, ptr %6, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.node, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %struct.node, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = sub nsw i32 %25, %28
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %struct.node, ptr %30, i32 0, i32 5
  store i32 %29, ptr %31, align 4
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds nuw %struct.node, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = sitofp i32 %34 to float
  %36 = load float, ptr %4, align 4
  %37 = fadd float %36, %35
  store float %37, ptr %4, align 4
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds nuw %struct.node, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %6, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load float, ptr %4, align 4
  %43 = load i32, ptr %5, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %42, %44
  store float %45, ptr %3, align 4
  %46 = load float, ptr %3, align 4
  ret float %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @test()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store ptr null, ptr %1, align 8
  call void @insert(ptr noundef %1, i32 noundef 1, i32 noundef 0, i32 noundef 5, i32 noundef 1)
  call void @insert(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef 4, i32 noundef 2)
  call void @insert(ptr noundef %1, i32 noundef 3, i32 noundef 2, i32 noundef 3, i32 noundef 3)
  call void @insert(ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef 2, i32 noundef 4)
  call void @insert(ptr noundef %1, i32 noundef 5, i32 noundef 4, i32 noundef 1, i32 noundef 5)
  %5 = call float @calculate_ct(ptr noundef %1)
  store float %5, ptr %2, align 4
  %6 = call float @calculate_tat(ptr noundef %1)
  store float %6, ptr %3, align 4
  %7 = call float @calculate_wt(ptr noundef %1)
  store float %7, ptr %4, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
