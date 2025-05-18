; ModuleID = './c_code/temp_compile/decimal_to_any_base.c'
source_filename = "./c_code/temp_compile/decimal_to_any_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"101010\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"52\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"01234567\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"2A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"[+] All tests have successfully passed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @isbad_alphabet(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call i64 @strlen(ptr noundef %6) #5
  store i64 %7, ptr %4, align 8
  %8 = load i64, ptr %4, align 8
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i1 true, ptr %2, align 1
  br label %37

11:                                               ; preds = %1
  store i32 0, ptr %5, align 4
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32, ptr %5, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, ptr %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %18, i64 %20
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  %23 = load ptr, ptr %3, align 8
  %24 = load i32, ptr %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  %27 = load i8, ptr %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call ptr @strchr(ptr noundef %22, i32 noundef %28) #5
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i1 true, ptr %2, align 1
  br label %37

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  br label %12

36:                                               ; preds = %12
  store i1 false, ptr %2, align 1
  br label %37

37:                                               ; preds = %36, %31, %10
  %38 = load i1, ptr %2, align 1
  ret i1 %38
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @converted_len(i64 noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store i64 %0, ptr %4, align 8
  store i16 %1, ptr %5, align 2
  %6 = load i64, ptr %4, align 8
  %7 = load i16, ptr %5, align 2
  %8 = sext i16 %7 to i32
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ugt i64 %6, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i64, ptr %4, align 8
  %14 = load i16, ptr %5, align 2
  %15 = sext i16 %14 to i64
  %16 = udiv i64 %13, %15
  %17 = load i16, ptr %5, align 2
  %18 = call i64 @converted_len(i64 noundef %16, i16 noundef signext %17)
  %19 = add i64 %18, 1
  store i64 %19, ptr %3, align 8
  br label %21

20:                                               ; preds = %2
  store i64 1, ptr %3, align 8
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i64, ptr %3, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convertion(i64 noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  store i64 %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i16 %2, ptr %7, align 2
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i64, ptr %5, align 8
  %11 = load i16, ptr %7, align 2
  %12 = sext i16 %11 to i64
  %13 = urem i64 %10, %12
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = load ptr, ptr %8, align 8
  store i8 %15, ptr %16, align 1
  %17 = load i64, ptr %5, align 8
  %18 = load i16, ptr %7, align 2
  %19 = sext i16 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %17, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i64, ptr %5, align 8
  %25 = load i16, ptr %7, align 2
  %26 = sext i16 %25 to i64
  %27 = udiv i64 %24, %26
  %28 = load ptr, ptr %6, align 8
  %29 = load i16, ptr %7, align 2
  %30 = load ptr, ptr %8, align 8
  %31 = getelementptr inbounds i8, ptr %30, i32 -1
  store ptr %31, ptr %8, align 8
  call void @convertion(i64 noundef %27, ptr noundef %28, i16 noundef signext %29, ptr noundef %31)
  br label %32

32:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @decimal_to_anybase(i64 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call zeroext i1 @isbad_alphabet(ptr noundef %9)
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store ptr null, ptr %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  store i64 %14, ptr %7, align 8
  %15 = load i64, ptr %4, align 8
  %16 = load i64, ptr %7, align 8
  %17 = trunc i64 %16 to i16
  %18 = call i64 @converted_len(i64 noundef %15, i16 noundef signext %17)
  store i64 %18, ptr %8, align 8
  %19 = load i64, ptr %8, align 8
  %20 = add i64 %19, 1
  %21 = mul i64 1, %20
  %22 = call noalias ptr @malloc(i64 noundef %21) #6
  store ptr %22, ptr %6, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = load i64, ptr %8, align 8
  %25 = getelementptr inbounds nuw i8, ptr %23, i64 %24
  store i8 0, ptr %25, align 1
  %26 = load i64, ptr %4, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = load i64, ptr %7, align 8
  %29 = trunc i64 %28 to i16
  %30 = load ptr, ptr %6, align 8
  %31 = load i64, ptr %8, align 8
  %32 = getelementptr inbounds nuw i8, ptr %30, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  call void @convertion(i64 noundef %26, ptr noundef %27, i16 noundef signext %29, ptr noundef %33)
  %34 = load ptr, ptr %6, align 8
  store ptr %34, ptr %3, align 8
  br label %35

35:                                               ; preds = %12, %11
  %36 = load ptr, ptr %3, align 8
  ret ptr %36
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

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
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr null, ptr %1, align 8
  store ptr null, ptr %2, align 8
  store ptr @.str, ptr %2, align 8
  %9 = call ptr @decimal_to_anybase(i64 noundef 0, ptr noundef @.str.1)
  store ptr %9, ptr %1, align 8
  store i32 0, ptr %3, align 4
  br label %10

10:                                               ; preds = %25, %0
  %11 = load i32, ptr %3, align 4
  %12 = sext i32 %11 to i64
  %13 = load ptr, ptr %2, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, ptr %3, align 4
  %18 = sext i32 %17 to i64
  %19 = load ptr, ptr %1, align 8
  %20 = call i64 @strlen(ptr noundef %19) #5
  %21 = icmp ult i64 %18, %20
  br label %22

22:                                               ; preds = %16, %10
  %23 = phi i1 [ false, %10 ], [ %21, %16 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %3, align 4
  br label %10

28:                                               ; preds = %22
  %29 = load ptr, ptr %1, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %31, %28
  store ptr @.str.2, ptr %2, align 8
  %34 = call ptr @decimal_to_anybase(i64 noundef -1, ptr noundef @.str.1)
  store ptr %34, ptr %1, align 8
  store i32 0, ptr %4, align 4
  br label %35

35:                                               ; preds = %50, %33
  %36 = load i32, ptr %4, align 4
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr %2, align 8
  %39 = call i64 @strlen(ptr noundef %38) #5
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load ptr, ptr %1, align 8
  %45 = call i64 @strlen(ptr noundef %44) #5
  %46 = icmp ult i64 %43, %45
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ false, %35 ], [ %46, %41 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load i32, ptr %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %4, align 4
  br label %35

53:                                               ; preds = %47
  %54 = load ptr, ptr %1, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %57) #7
  br label %58

58:                                               ; preds = %56, %53
  store ptr @.str.2, ptr %2, align 8
  %59 = call ptr @decimal_to_anybase(i64 noundef -1, ptr noundef @.str.1)
  store ptr %59, ptr %1, align 8
  store i32 0, ptr %5, align 4
  br label %60

60:                                               ; preds = %75, %58
  %61 = load i32, ptr %5, align 4
  %62 = sext i32 %61 to i64
  %63 = load ptr, ptr %2, align 8
  %64 = call i64 @strlen(ptr noundef %63) #5
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, ptr %5, align 4
  %68 = sext i32 %67 to i64
  %69 = load ptr, ptr %1, align 8
  %70 = call i64 @strlen(ptr noundef %69) #5
  %71 = icmp ult i64 %68, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74
  %76 = load i32, ptr %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %5, align 4
  br label %60

78:                                               ; preds = %72
  %79 = load ptr, ptr %1, align 8
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %82) #7
  br label %83

83:                                               ; preds = %81, %78
  store ptr @.str.3, ptr %2, align 8
  %84 = call ptr @decimal_to_anybase(i64 noundef 42, ptr noundef @.str.4)
  store ptr %84, ptr %1, align 8
  store i32 0, ptr %6, align 4
  br label %85

85:                                               ; preds = %100, %83
  %86 = load i32, ptr %6, align 4
  %87 = sext i32 %86 to i64
  %88 = load ptr, ptr %2, align 8
  %89 = call i64 @strlen(ptr noundef %88) #5
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, ptr %6, align 4
  %93 = sext i32 %92 to i64
  %94 = load ptr, ptr %1, align 8
  %95 = call i64 @strlen(ptr noundef %94) #5
  %96 = icmp ult i64 %93, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ false, %85 ], [ %96, %91 ]
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99
  %101 = load i32, ptr %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, ptr %6, align 4
  br label %85

103:                                              ; preds = %97
  %104 = load ptr, ptr %1, align 8
  %105 = icmp ne ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %107) #7
  br label %108

108:                                              ; preds = %106, %103
  store ptr @.str.5, ptr %2, align 8
  %109 = call ptr @decimal_to_anybase(i64 noundef 42, ptr noundef @.str.6)
  store ptr %109, ptr %1, align 8
  store i32 0, ptr %7, align 4
  br label %110

110:                                              ; preds = %125, %108
  %111 = load i32, ptr %7, align 4
  %112 = sext i32 %111 to i64
  %113 = load ptr, ptr %2, align 8
  %114 = call i64 @strlen(ptr noundef %113) #5
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, ptr %7, align 4
  %118 = sext i32 %117 to i64
  %119 = load ptr, ptr %1, align 8
  %120 = call i64 @strlen(ptr noundef %119) #5
  %121 = icmp ult i64 %118, %120
  br label %122

122:                                              ; preds = %116, %110
  %123 = phi i1 [ false, %110 ], [ %121, %116 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %7, align 4
  br label %110

128:                                              ; preds = %122
  %129 = load ptr, ptr %1, align 8
  %130 = icmp ne ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %132) #7
  br label %133

133:                                              ; preds = %131, %128
  store ptr @.str.7, ptr %2, align 8
  %134 = call ptr @decimal_to_anybase(i64 noundef 42, ptr noundef @.str.8)
  store ptr %134, ptr %1, align 8
  store i32 0, ptr %8, align 4
  br label %135

135:                                              ; preds = %150, %133
  %136 = load i32, ptr %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load ptr, ptr %2, align 8
  %139 = call i64 @strlen(ptr noundef %138) #5
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, ptr %8, align 4
  %143 = sext i32 %142 to i64
  %144 = load ptr, ptr %1, align 8
  %145 = call i64 @strlen(ptr noundef %144) #5
  %146 = icmp ult i64 %143, %145
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i1 [ false, %135 ], [ %146, %141 ]
  br i1 %148, label %149, label %153

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %8, align 4
  br label %135

153:                                              ; preds = %147
  %154 = load ptr, ptr %1, align 8
  %155 = icmp ne ptr %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load ptr, ptr %1, align 8
  call void @free(ptr noundef %157) #7
  br label %158

158:                                              ; preds = %156, %153
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
