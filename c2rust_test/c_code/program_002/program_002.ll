; ModuleID = './c_code/temp_compile/affine.c'
source_filename = "./c_code/temp_compile/affine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.div_t = type { i32, i32 }
%struct.affine_key_t = type { i32, i32 }

@__const.modular_multiplicative_inverse.x = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@.str = private unnamed_addr constant [7 x i8] c"Hello!\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&3ddy2\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"TheAlgorithms/C\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DNC}=jHS2zN!7;E\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"840,($ {ws\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"7W@;cdeRT9uL\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"JDfa*we?z&bL\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"~Qr%^-+++$leM\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"r'qC0$sss;Ahf\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"The quick brown fox jumps over the lazy dog\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"K7: .*6<4 =-0(1 90' 5*2/, 0):- +7: 3>%& ;08\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"One-1, Two-2, Three-3, Four-4, Five-5, Six-6, Seven-7, Eight-8, Nine-9, Ten-10\00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"H&60>\\2*uY0q\\2*p4660E\\2XYn40x\\2XDB60L\\2VDI0 \\2V6B6&0S\\2%D=p;0'\\2tD&60Z\\2*6&0>j\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"All tests have successfully passed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modular_multiplicative_inverse(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca %struct.div_t, align 4
  %8 = alloca %struct.div_t, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 @__const.modular_multiplicative_inverse.x, i64 8, i1 false)
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %50

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 4
  %15 = load i32, ptr %4, align 4
  %16 = urem i32 %15, %14
  store i32 %16, ptr %4, align 4
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, ptr %3, align 4
  br label %50

20:                                               ; preds = %13
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr inbounds nuw %struct.div_t, ptr %7, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %27, %20
  %24 = getelementptr inbounds nuw %struct.div_t, ptr %7, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i32, ptr %5, align 4
  %29 = load i32, ptr %4, align 4
  %30 = call i64 @div(i32 noundef %28, i32 noundef %29) #7
  store i64 %30, ptr %8, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 %8, i64 8, i1 false)
  %31 = load i32, ptr %4, align 4
  store i32 %31, ptr %5, align 4
  %32 = getelementptr inbounds nuw %struct.div_t, ptr %7, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 0
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds nuw %struct.div_t, ptr %7, i32 0, i32 0
  %39 = load i32, ptr %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = sub nsw i32 %35, %40
  store i32 %41, ptr %9, align 4
  %42 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 0
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %9, align 4
  %46 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 0
  store i32 %45, ptr %46, align 4
  br label %23

47:                                               ; preds = %23
  %48 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %3, align 4
  br label %50

50:                                               ; preds = %47, %19, %12
  %51 = load i32, ptr %3, align 4
  ret i32 %51
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @inverse_key(i64 %0) #0 {
  %2 = alloca %struct.affine_key_t, align 4
  %3 = alloca %struct.affine_key_t, align 4
  store i64 %0, ptr %3, align 4
  %4 = getelementptr inbounds nuw %struct.affine_key_t, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 4
  %6 = call i32 @modular_multiplicative_inverse(i32 noundef %5, i32 noundef 95)
  %7 = getelementptr inbounds nuw %struct.affine_key_t, ptr %2, i32 0, i32 0
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds nuw %struct.affine_key_t, ptr %2, i32 0, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = add nsw i32 %9, 95
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds nuw %struct.affine_key_t, ptr %2, i32 0, i32 0
  %12 = load i32, ptr %11, align 4
  %13 = srem i32 %12, 95
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds nuw %struct.affine_key_t, ptr %3, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = srem i32 %15, 95
  %17 = sub nsw i32 0, %16
  %18 = add nsw i32 %17, 95
  %19 = getelementptr inbounds nuw %struct.affine_key_t, ptr %2, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = load i64, ptr %2, align 4
  ret i64 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affine_encrypt(ptr noundef %0, i64 %1) #0 {
  %3 = alloca %struct.affine_key_t, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  store i32 0, ptr %5, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %7
  %16 = load ptr, ptr %4, align 8
  %17 = load i32, ptr %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = sub nsw i32 %21, 32
  store i32 %22, ptr %6, align 4
  %23 = getelementptr inbounds nuw %struct.affine_key_t, ptr %3, i32 0, i32 0
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  %26 = mul nsw i32 %25, %24
  store i32 %26, ptr %6, align 4
  %27 = getelementptr inbounds nuw %struct.affine_key_t, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, ptr %6, align 4
  %31 = load i32, ptr %6, align 4
  %32 = srem i32 %31, 95
  store i32 %32, ptr %6, align 4
  %33 = load i32, ptr %6, align 4
  %34 = add nsw i32 %33, 32
  %35 = trunc i32 %34 to i8
  %36 = load ptr, ptr %4, align 8
  %37 = load i32, ptr %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 %35, ptr %39, align 1
  br label %40

40:                                               ; preds = %15
  %41 = load i32, ptr %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %5, align 4
  br label %7

43:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @affine_decrypt(ptr noundef %0, i64 %1) #0 {
  %3 = alloca %struct.affine_key_t, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.affine_key_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %1, ptr %3, align 4
  store ptr %0, ptr %4, align 8
  %8 = load i64, ptr %3, align 4
  %9 = call i64 @inverse_key(i64 %8)
  store i64 %9, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  %15 = load i8, ptr %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8
  %20 = load i32, ptr %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 32
  store i32 %25, ptr %7, align 4
  %26 = getelementptr inbounds nuw %struct.affine_key_t, ptr %5, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, ptr %7, align 4
  %30 = getelementptr inbounds nuw %struct.affine_key_t, ptr %5, i32 0, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %7, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, ptr %7, align 4
  %34 = load i32, ptr %7, align 4
  %35 = srem i32 %34, 95
  store i32 %35, ptr %7, align 4
  %36 = load i32, ptr %7, align 4
  %37 = add nsw i32 %36, 32
  %38 = trunc i32 %37 to i8
  %39 = load ptr, ptr %4, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %39, i64 %41
  store i8 %38, ptr %42, align 1
  br label %43

43:                                               ; preds = %18
  %44 = load i32, ptr %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %6, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca %struct.affine_key_t, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @strlen(ptr noundef %11) #8
  %13 = add i64 %12, 1
  %14 = mul i64 %13, 1
  %15 = call noalias ptr @malloc(i64 noundef %14) #9
  store ptr %15, ptr %9, align 8
  %16 = load ptr, ptr %9, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = call ptr @strcpy(ptr noundef %16, ptr noundef %17) #10
  %19 = getelementptr inbounds nuw %struct.affine_key_t, ptr %10, i32 0, i32 0
  %20 = load i32, ptr %7, align 4
  store i32 %20, ptr %19, align 4
  %21 = getelementptr inbounds nuw %struct.affine_key_t, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %8, align 4
  store i32 %22, ptr %21, align 4
  %23 = load ptr, ptr %9, align 8
  %24 = load i64, ptr %10, align 4
  call void @affine_encrypt(ptr noundef %23, i64 %24)
  %25 = load ptr, ptr %9, align 8
  %26 = load i64, ptr %10, align 4
  call void @affine_decrypt(ptr noundef %25, i64 %26)
  %27 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %27) #10
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @tests()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tests() #0 {
  call void @test_string(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 7, i32 noundef 11)
  call void @test_string(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 67, i32 noundef 67)
  call void @test_string(ptr noundef @.str.4, ptr noundef @.str.5, i32 noundef 91, i32 noundef 88)
  call void @test_string(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 77, i32 noundef 76)
  call void @test_string(ptr noundef @.str.8, ptr noundef @.str.9, i32 noundef 8, i32 noundef 90)
  call void @test_string(ptr noundef @.str.10, ptr noundef @.str.11, i32 noundef 94, i32 noundef 0)
  call void @test_string(ptr noundef @.str.12, ptr noundef @.str.13, i32 noundef 51, i32 noundef 18)
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  ret void
}

declare i32 @printf(ptr noundef, ...) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
