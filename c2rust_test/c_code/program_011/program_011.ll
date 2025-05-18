; ModuleID = './c_code/temp_compile/sol1.c'
source_filename = "./c_code/temp_compile/sol1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._big_int = type { i8, ptr, ptr }
%struct.div_t = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unable to allocate memory!\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\0ATime taken: %.4g millisecond\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Digit Sum = %lu\09Number of digits = %lu\09Storage space = %.3gkb\09 \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @add_digit(ptr noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store i8 %1, ptr %5, align 1
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = call noalias ptr @malloc(i64 noundef 24) #6
  store ptr %9, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call void @perror(ptr noundef @.str)
  store ptr null, ptr %3, align 8
  br label %63

13:                                               ; preds = %8
  %14 = load i8, ptr %5, align 1
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct._big_int, ptr %15, i32 0, i32 0
  store i8 %14, ptr %16, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct._big_int, ptr %17, i32 0, i32 1
  store ptr null, ptr %18, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds nuw %struct._big_int, ptr %19, i32 0, i32 2
  store ptr null, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %3, align 8
  br label %63

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct._big_int, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i8, ptr %5, align 1
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds nuw %struct._big_int, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds nuw %struct._big_int, ptr %31, i32 0, i32 0
  store i8 %28, ptr %32, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw %struct._big_int, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %3, align 8
  br label %63

36:                                               ; preds = %22
  %37 = call noalias ptr @malloc(i64 noundef 24) #6
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct._big_int, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct._big_int, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  call void @perror(ptr noundef @.str)
  store ptr null, ptr %3, align 8
  br label %63

45:                                               ; preds = %36
  %46 = load i8, ptr %5, align 1
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds nuw %struct._big_int, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds nuw %struct._big_int, ptr %49, i32 0, i32 0
  store i8 %46, ptr %50, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = getelementptr inbounds nuw %struct._big_int, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds nuw %struct._big_int, ptr %53, i32 0, i32 1
  store ptr null, ptr %54, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds nuw %struct._big_int, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds nuw %struct._big_int, ptr %58, i32 0, i32 2
  store ptr %55, ptr %59, align 8
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds nuw %struct._big_int, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  store ptr %62, ptr %3, align 8
  br label %63

63:                                               ; preds = %45, %44, %27, %13, %12
  %64 = load ptr, ptr %3, align 8
  ret ptr %64
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

declare void @perror(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @remove_digits(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %4, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i8 0, ptr %3, align 1
  br label %31

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct._big_int, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %15) #7
  store ptr null, ptr %4, align 8
  store i8 0, ptr %3, align 1
  br label %31

16:                                               ; preds = %9
  %17 = load i32, ptr %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds nuw %struct._big_int, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %5, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call signext i8 @remove_digits(ptr noundef %22, i32 noundef %24)
  store i8 %25, ptr %3, align 1
  br label %31

26:                                               ; preds = %16
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds nuw %struct._big_int, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call signext i8 @remove_digits(ptr noundef %29, i32 noundef 0)
  store i8 %30, ptr %3, align 1
  br label %31

31:                                               ; preds = %26, %19, %14, %8
  %32 = load i8, ptr %3, align 1
  ret i8 %32
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.div_t, align 4
  %16 = alloca i64, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i32 5, ptr %6, align 4
  %17 = call ptr @add_digit(ptr noundef null, i8 noundef signext 1)
  store ptr %17, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  store ptr %18, ptr %8, align 8
  store i64 0, ptr %9, align 8
  store i64 0, ptr %10, align 8
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @atoi(ptr noundef %24) #8
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = call i64 @clock() #7
  store i64 %27, ptr %11, align 8
  store i32 1, ptr %12, align 4
  br label %28

28:                                               ; preds = %92, %26
  %29 = load i32, ptr %12, align 4
  %30 = load i32, ptr %6, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %28
  store i32 0, ptr %13, align 4
  %33 = load ptr, ptr %8, align 8
  store ptr %33, ptr %7, align 8
  br label %34

34:                                               ; preds = %90, %32
  %35 = load ptr, ptr %7, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %37, label %91

37:                                               ; preds = %34
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %struct._big_int, ptr %38, i32 0, i32 0
  %40 = load i8, ptr %39, align 8
  %41 = sext i8 %40 to i32
  %42 = load i32, ptr %12, align 4
  %43 = mul i32 %41, %42
  %44 = load i32, ptr %13, align 4
  %45 = add i32 %43, %44
  store i32 %45, ptr %14, align 4
  %46 = load i32, ptr %14, align 4
  %47 = icmp uge i32 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, ptr %14, align 4
  %50 = call i64 @div(i32 noundef %49, i32 noundef 10) #9
  store i64 %50, ptr %15, align 4
  %51 = getelementptr inbounds nuw %struct.div_t, ptr %15, i32 0, i32 0
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %13, align 4
  %53 = getelementptr inbounds nuw %struct.div_t, ptr %15, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr %14, align 4
  br label %56

55:                                               ; preds = %37
  store i32 0, ptr %13, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, ptr %13, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load ptr, ptr %7, align 8
  %61 = getelementptr inbounds nuw %struct._big_int, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load ptr, ptr %7, align 8
  %66 = call ptr @add_digit(ptr noundef %65, i8 noundef signext 0)
  br label %67

67:                                               ; preds = %64, %59, %56
  %68 = load i32, ptr %14, align 4
  %69 = trunc i32 %68 to i8
  %70 = load ptr, ptr %7, align 8
  %71 = getelementptr inbounds nuw %struct._big_int, ptr %70, i32 0, i32 0
  store i8 %69, ptr %71, align 8
  %72 = load i32, ptr %12, align 4
  %73 = load i32, ptr %6, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i32, ptr %14, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, ptr %9, align 8
  %79 = add i64 %78, %77
  store i64 %79, ptr %9, align 8
  br label %80

80:                                               ; preds = %75, %67
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds nuw %struct._big_int, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp ne ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8
  %87 = getelementptr inbounds nuw %struct._big_int, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8
  store ptr %88, ptr %7, align 8
  br label %90

89:                                               ; preds = %80
  br label %91

90:                                               ; preds = %85
  br label %34

91:                                               ; preds = %89, %34
  br label %92

92:                                               ; preds = %91
  %93 = load i32, ptr %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %12, align 4
  br label %28

95:                                               ; preds = %28
  %96 = call i64 @clock() #7
  store i64 %96, ptr %16, align 8
  br label %97

97:                                               ; preds = %109, %95
  %98 = load ptr, ptr %7, align 8
  %99 = getelementptr inbounds nuw %struct._big_int, ptr %98, i32 0, i32 0
  %100 = load i8, ptr %99, align 8
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %101, 48
  %103 = call i32 @putchar(i32 noundef %102)
  %104 = load ptr, ptr %7, align 8
  %105 = getelementptr inbounds nuw %struct._big_int, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  store ptr %106, ptr %7, align 8
  %107 = load i64, ptr %10, align 8
  %108 = add i64 %107, 1
  store i64 %108, ptr %10, align 8
  br label %109

109:                                              ; preds = %97
  %110 = load ptr, ptr %7, align 8
  %111 = icmp ne ptr %110, null
  br i1 %111, label %97, label %112

112:                                              ; preds = %109
  %113 = load i64, ptr %16, align 8
  %114 = load i64, ptr %11, align 8
  %115 = sub nsw i64 %113, %114
  %116 = sitofp i64 %115 to double
  %117 = fmul double 1.000000e+03, %116
  %118 = fdiv double %117, 1.000000e+06
  %119 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %118)
  %120 = load i64, ptr %9, align 8
  %121 = load i64, ptr %10, align 8
  %122 = load i64, ptr %10, align 8
  %123 = mul i64 %122, 24
  %124 = uitofp i64 %123 to double
  %125 = fdiv double %124, 1.024000e+03
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %120, i64 noundef %121, double noundef %125)
  %127 = load ptr, ptr %8, align 8
  %128 = call signext i8 @remove_digits(ptr noundef %127, i32 noundef -1)
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

; Function Attrs: nounwind
declare i64 @clock() #3

; Function Attrs: nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) #5

declare i32 @putchar(i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
