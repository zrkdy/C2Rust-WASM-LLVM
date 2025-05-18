; ModuleID = './c_code/temp_compile/sol1.c'
source_filename = "./c_code/temp_compile/sol1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Error reading line.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"found inavlid character in the number!\00", align 1
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"invalid number of digits argumet!\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"num.txt\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Unable to open file 'num.txt'.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\0ASum   : \00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"first 10 digits: \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_number(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %11, ptr noundef @.str, ptr noundef %12)
  %14 = sext i32 %13 to i64
  store i64 %14, ptr %8, align 8
  %15 = load i64, ptr %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  call void @perror(ptr noundef @.str.1)
  store i32 -1, ptr %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load ptr, ptr %6, align 8
  %20 = call i64 @strlen(ptr noundef %19) #5
  store i64 %20, ptr %9, align 8
  store i32 0, ptr %10, align 4
  br label %21

21:                                               ; preds = %60, %18
  %22 = load i32, ptr %10, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, ptr %9, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %21
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %32, 48
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load ptr, ptr %6, align 8
  %36 = load i32, ptr %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp sgt i32 %40, 57
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  call void @perror(ptr noundef @.str.2)
  store i32 -1, ptr %4, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load ptr, ptr %6, align 8
  %45 = load i32, ptr %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = trunc i32 %50 to i8
  %52 = load ptr, ptr %7, align 8
  %53 = load i64, ptr %9, align 8
  %54 = load i32, ptr %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = sub nsw i64 %56, 1
  %58 = getelementptr inbounds i8, ptr %52, i64 %57
  store i8 %51, ptr %58, align 1
  br label %59

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %10, align 4
  br label %21

63:                                               ; preds = %21
  store i32 0, ptr %4, align 4
  br label %64

64:                                               ; preds = %63, %42, %17
  %65 = load i32, ptr %4, align 4
  ret i32 %65
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #1

declare void @perror(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_numbers(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  store i32 0, ptr %7, align 4
  %11 = load ptr, ptr %5, align 8
  store ptr %11, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i32, ptr %9, align 4
  %14 = load i8, ptr %6, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %12
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %18, %24
  %26 = load ptr, ptr %5, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %25, %31
  %33 = trunc i32 %32 to i8
  %34 = load ptr, ptr %8, align 8
  %35 = load i32, ptr %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  store i8 %33, ptr %37, align 1
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sgt i32 %43, 9
  br i1 %44, label %45, label %54

45:                                               ; preds = %17
  store i32 1, ptr %7, align 4
  %46 = load ptr, ptr %8, align 8
  %47 = load i32, ptr %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 10
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %49, align 1
  br label %55

54:                                               ; preds = %17
  store i32 0, ptr %7, align 4
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, ptr %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %9, align 4
  br label %12

59:                                               ; preds = %12
  %60 = load i8, ptr %6, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, ptr %10, align 4
  br label %62

62:                                               ; preds = %104, %59
  %63 = load i32, ptr %10, align 4
  %64 = load i8, ptr %6, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 10
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %107

68:                                               ; preds = %62
  %69 = load i32, ptr %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %107

72:                                               ; preds = %68
  %73 = load i32, ptr %7, align 4
  %74 = load ptr, ptr %8, align 8
  %75 = load i32, ptr %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %73, %79
  %81 = trunc i32 %80 to i8
  %82 = load ptr, ptr %8, align 8
  %83 = load i32, ptr %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %82, i64 %84
  store i8 %81, ptr %85, align 1
  %86 = load ptr, ptr %8, align 8
  %87 = load i32, ptr %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %86, i64 %88
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sgt i32 %91, 9
  br i1 %92, label %93, label %102

93:                                               ; preds = %72
  store i32 1, ptr %7, align 4
  %94 = load ptr, ptr %8, align 8
  %95 = load i32, ptr %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %94, i64 %96
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = sub nsw i32 %99, 10
  %101 = trunc i32 %100 to i8
  store i8 %101, ptr %97, align 1
  br label %103

102:                                              ; preds = %72
  store i32 0, ptr %7, align 4
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %10, align 4
  br label %62

107:                                              ; preds = %71, %62
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_number(ptr noundef %0, i8 noundef zeroext %1, i8 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i8 %1, ptr %6, align 1
  store i8 %2, ptr %7, align 1
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 %12, 1
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %8, align 1
  br label %15

15:                                               ; preds = %23, %3
  %16 = load ptr, ptr %5, align 8
  %17 = load i8, ptr %8, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i8, ptr %8, align 1
  %25 = add i8 %24, -1
  store i8 %25, ptr %8, align 1
  br label %15

26:                                               ; preds = %15
  %27 = load i8, ptr %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8 0, ptr %9, align 1
  br label %49

31:                                               ; preds = %26
  %32 = load i8, ptr %7, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, ptr %8, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i8, ptr %8, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr %7, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %39, %41
  %43 = add nsw i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %9, align 1
  br label %48

45:                                               ; preds = %31
  %46 = load ptr, ptr @stderr, align 8
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.3) #6
  store i32 -1, ptr %4, align 4
  br label %71

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %30
  %50 = load i8, ptr %8, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, ptr %10, align 4
  br label %52

52:                                               ; preds = %66, %49
  %53 = load i32, ptr %10, align 4
  %54 = load i8, ptr %9, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sge i32 %53, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = load ptr, ptr %5, align 8
  %59 = load i32, ptr %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, 48
  %65 = call i32 @putchar(i32 noundef %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, ptr %10, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, ptr %10, align 4
  br label %52

69:                                               ; preds = %52
  %70 = call i32 @putchar(i32 noundef 10)
  store i32 0, ptr %4, align 4
  br label %71

71:                                               ; preds = %69, %45
  %72 = load i32, ptr %4, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 10, ptr %2, align 4
  store i32 20, ptr %3, align 4
  %9 = call noalias ptr @calloc(i64 noundef 15, i64 noundef 1) #7
  store ptr %9, ptr %4, align 8
  %10 = call noalias ptr @calloc(i64 noundef 10, i64 noundef 1) #7
  store ptr %10, ptr %5, align 8
  %11 = call noalias ptr @calloc(i64 noundef 20, i64 noundef 1) #7
  store ptr %11, ptr %6, align 8
  %12 = call ptr @fopen(ptr noundef @.str.4, ptr noundef @.str.5)
  store ptr %12, ptr %7, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  call void @perror(ptr noundef @.str.6)
  %16 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %16) #6
  %17 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %17) #6
  %18 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %18) #6
  store i32 -1, ptr %1, align 4
  br label %54

19:                                               ; preds = %0
  store i32 0, ptr %8, align 4
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 @get_number(ptr noundef %20, ptr noundef %21, ptr noundef %22)
  br label %24

24:                                               ; preds = %37, %19
  %25 = load i32, ptr %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %8, align 4
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = call i32 @get_number(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %42

33:                                               ; preds = %24
  %34 = load ptr, ptr %5, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = call i32 @add_numbers(ptr noundef %34, ptr noundef %35, i8 noundef zeroext 10)
  br label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8
  %39 = call i32 @feof(ptr noundef %38) #6
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %24, label %42

42:                                               ; preds = %37, %32
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %44 = load ptr, ptr %6, align 8
  %45 = call i32 @print_number(ptr noundef %44, i8 noundef zeroext 20, i8 noundef signext -1)
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %47 = load ptr, ptr %6, align 8
  %48 = call i32 @print_number(ptr noundef %47, i8 noundef zeroext 20, i8 noundef signext 10)
  %49 = load ptr, ptr %7, align 8
  %50 = call i32 @fclose(ptr noundef %49)
  %51 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %51) #6
  %52 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %52) #6
  %53 = load ptr, ptr %5, align 8
  call void @free(ptr noundef %53) #6
  store i32 0, ptr %1, align 4
  br label %54

54:                                               ; preds = %42, %15
  %55 = load i32, ptr %1, align 4
  ret i32 %55
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
