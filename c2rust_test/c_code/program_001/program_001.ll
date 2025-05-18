; ModuleID = './c_code/temp_compile/alaw.c'
source_filename = "./c_code/temp_compile/alaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pcm = dso_local global [8 x i16] [i16 1000, i16 -1000, i16 1234, i16 3200, i16 -1314, i16 0, i16 32767, i16 -32768], align 16
@r_coded = dso_local global [8 x i8] c"\FAz\E6\9Ca\D5\AA*", align 1
@r_decoded = dso_local global [8 x i16] [i16 1008, i16 -1008, i16 1248, i16 3264, i16 -1312, i16 8, i16 32256, i16 -32256], align 16
@.str = private unnamed_addr constant [9 x i8] c"inputs: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"encode: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"decode: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i8 0, ptr %7, align 1
  store i16 0, ptr %8, align 2
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i64 0, ptr %13, align 8
  br label %14

14:                                               ; preds = %82, %3
  %15 = load i64, ptr %13, align 8
  %16 = load i64, ptr %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %85

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw i16, ptr %19, i32 1
  store ptr %20, ptr %5, align 8
  %21 = load i16, ptr %19, align 2
  store i16 %21, ptr %8, align 2
  store i32 7, ptr %11, align 4
  store i32 16384, ptr %12, align 4
  %22 = load i16, ptr %8, align 2
  %23 = sext i16 %22 to i32
  %24 = and i32 %23, 32768
  %25 = ashr i32 %24, 8
  store i32 %25, ptr %9, align 4
  %26 = load i32, ptr %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i16, ptr %8, align 2
  %30 = sext i16 %29 to i32
  %31 = sub nsw i32 0, %30
  %32 = sub nsw i32 %31, 1
  br label %36

33:                                               ; preds = %18
  %34 = load i16, ptr %8, align 2
  %35 = sext i16 %34 to i32
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %32, %28 ], [ %35, %33 ]
  %38 = trunc i32 %37 to i16
  store i16 %38, ptr %8, align 2
  br label %39

39:                                               ; preds = %50, %36
  %40 = load i16, ptr %8, align 2
  %41 = sext i16 %40 to i32
  %42 = load i32, ptr %12, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, ptr %11, align 4
  %47 = icmp sgt i32 %46, 0
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i1 [ false, %39 ], [ %47, %45 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load i32, ptr %11, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, ptr %11, align 4
  %53 = load i32, ptr %12, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, ptr %12, align 4
  br label %39

55:                                               ; preds = %48
  %56 = load i16, ptr %8, align 2
  %57 = sext i16 %56 to i32
  %58 = load i32, ptr %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, ptr %11, align 4
  %62 = add nsw i32 %61, 3
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 4, %63 ]
  %66 = ashr i32 %57, %65
  %67 = and i32 %66, 15
  store i32 %67, ptr %10, align 4
  %68 = load i32, ptr %11, align 4
  %69 = shl i32 %68, 4
  store i32 %69, ptr %11, align 4
  %70 = load i32, ptr %9, align 4
  %71 = load i32, ptr %11, align 4
  %72 = or i32 %70, %71
  %73 = load i32, ptr %10, align 4
  %74 = or i32 %72, %73
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr %7, align 1
  %76 = load i8, ptr %7, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, 213
  %79 = trunc i32 %78 to i8
  %80 = load ptr, ptr %4, align 8
  %81 = getelementptr inbounds nuw i8, ptr %80, i32 1
  store ptr %81, ptr %4, align 8
  store i8 %79, ptr %80, align 1
  br label %82

82:                                               ; preds = %64
  %83 = load i64, ptr %13, align 8
  %84 = add i64 %83, 1
  store i64 %84, ptr %13, align 8
  br label %14

85:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i8 0, ptr %7, align 1
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i64 0, ptr %11, align 8
  br label %12

12:                                               ; preds = %64, %3
  %13 = load i64, ptr %11, align 8
  %14 = load i64, ptr %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %18, ptr %5, align 8
  %19 = load i8, ptr %17, align 1
  store i8 %19, ptr %7, align 1
  %20 = load i8, ptr %7, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %21, 213
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %7, align 1
  %24 = load i8, ptr %7, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 128
  store i32 %26, ptr %9, align 4
  %27 = load i8, ptr %7, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 112
  %30 = ashr i32 %29, 4
  store i32 %30, ptr %10, align 4
  %31 = load i8, ptr %7, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 15
  %34 = shl i32 %33, 4
  %35 = or i32 %34, 8
  store i32 %35, ptr %8, align 4
  %36 = load i32, ptr %10, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 256, i32 0
  %40 = load i32, ptr %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, ptr %8, align 4
  %42 = load i32, ptr %10, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %16
  %45 = load i32, ptr %10, align 4
  %46 = sub nsw i32 %45, 1
  br label %48

47:                                               ; preds = %16
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  %50 = load i32, ptr %8, align 4
  %51 = shl i32 %50, %49
  store i32 %51, ptr %8, align 4
  %52 = load i32, ptr %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, ptr %8, align 4
  %56 = sub nsw i32 0, %55
  br label %59

57:                                               ; preds = %48
  %58 = load i32, ptr %8, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %56, %54 ], [ %58, %57 ]
  %61 = trunc i32 %60 to i16
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds nuw i16, ptr %62, i32 1
  store ptr %63, ptr %4, align 8
  store i16 %61, ptr %62, align 2
  br label %64

64:                                               ; preds = %59
  %65 = load i64, ptr %11, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr %11, align 8
  br label %12

67:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca [8 x i16], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %11 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0
  %12 = getelementptr inbounds [8 x i16], ptr %7, i64 0, i64 0
  call void @test(ptr noundef @pcm, ptr noundef %11, ptr noundef %12, i64 noundef 8)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i64 0, ptr %8, align 8
  br label %14

14:                                               ; preds = %23, %2
  %15 = load i64, ptr %8, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i64, ptr %8, align 8
  %19 = getelementptr inbounds nuw [8 x i16], ptr @pcm, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %8, align 8
  %25 = add i64 %24, 1
  store i64 %25, ptr %8, align 8
  br label %14

26:                                               ; preds = %14
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i64 0, ptr %9, align 8
  br label %29

29:                                               ; preds = %38, %26
  %30 = load i64, ptr %9, align 8
  %31 = icmp ult i64 %30, 8
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i64, ptr %9, align 8
  %34 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i64, ptr %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %9, align 8
  br label %29

41:                                               ; preds = %29
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i64 0, ptr %10, align 8
  br label %44

44:                                               ; preds = %53, %41
  %45 = load i64, ptr %10, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, ptr %10, align 8
  %49 = getelementptr inbounds nuw [8 x i16], ptr %7, i64 0, i64 %48
  %50 = load i16, ptr %49, align 2
  %51 = sext i16 %50 to i32
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i64, ptr %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, ptr %10, align 8
  br label %44

56:                                               ; preds = %44
  %57 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = load i64, ptr %8, align 8
  call void @encode(ptr noundef %11, ptr noundef %12, i64 noundef %13)
  store i64 0, ptr %9, align 8
  br label %14

14:                                               ; preds = %19, %4
  %15 = load i64, ptr %9, align 8
  %16 = load i64, ptr %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load i64, ptr %9, align 8
  %21 = add i64 %20, 1
  store i64 %21, ptr %9, align 8
  br label %14

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %8, align 8
  call void @decode(ptr noundef %23, ptr noundef %24, i64 noundef %25)
  store i64 0, ptr %10, align 8
  br label %26

26:                                               ; preds = %31, %22
  %27 = load i64, ptr %10, align 8
  %28 = load i64, ptr %8, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = load i64, ptr %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, ptr %10, align 8
  br label %26

34:                                               ; preds = %26
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
