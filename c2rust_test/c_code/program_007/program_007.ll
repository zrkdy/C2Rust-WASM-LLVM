; ModuleID = './c_code/temp_compile/prim.c'
source_filename = "./c_code/temp_compile/prim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Enter the number of vertices: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %hd\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Enter the adj matrix\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"G[%d][%d]: \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"minimum spanning tree:\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-test\00", align 1
@__const.test.test = private unnamed_addr constant [4 x [4 x i16]] [[4 x i16] [i16 0, i16 1, i16 2, i16 3], [4 x i16] [i16 1, i16 0, i16 4, i16 6], [4 x i16] [i16 2, i16 4, i16 0, i16 5], [4 x i16] [i16 3, i16 6, i16 5, i16 0]], align 16
@__const.test.solution = private unnamed_addr constant [4 x [4 x i16]] [[4 x i16] [i16 0, i16 1, i16 2, i16 3], [4 x i16] [i16 1, i16 0, i16 0, i16 0], [4 x i16] [i16 2, i16 0, i16 0, i16 0], [4 x i16] [i16 3, i16 0, i16 0, i16 0]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @minimum(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  store i16 %1, ptr %4, align 2
  store i16 0, ptr %5, align 2
  store i16 999, ptr %6, align 2
  store i16 0, ptr %7, align 2
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i16, ptr %7, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, ptr %4, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8
  %16 = load i16, ptr %7, align 2
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds nuw i16, ptr %15, i64 %17
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, ptr %6, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %14
  %25 = load ptr, ptr %3, align 8
  %26 = load i16, ptr %7, align 2
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds nuw i16, ptr %25, i64 %27
  %29 = load i16, ptr %28, align 2
  store i16 %29, ptr %6, align 2
  %30 = load i16, ptr %7, align 2
  store i16 %30, ptr %5, align 2
  br label %31

31:                                               ; preds = %24, %14
  br label %32

32:                                               ; preds = %31
  %33 = load i16, ptr %7, align 2
  %34 = add i16 %33, 1
  store i16 %34, ptr %7, align 2
  br label %8

35:                                               ; preds = %8
  %36 = load i16, ptr %5, align 2
  ret i16 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prim(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca [20 x i16], align 16
  %10 = alloca [20 x i16], align 16
  %11 = alloca [20 x i16], align 16
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i16 %2, ptr %6, align 2
  %15 = getelementptr inbounds [20 x i16], ptr %9, i64 0, i64 0
  store i16 0, ptr %15, align 16
  %16 = getelementptr inbounds [20 x i16], ptr %11, i64 0, i64 0
  store i16 1, ptr %16, align 16
  store i16 1, ptr %13, align 2
  br label %17

17:                                               ; preds = %39, %3
  %18 = load i16, ptr %13, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, ptr %6, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8
  %25 = load i16, ptr %13, align 2
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds nuw [20 x i16], ptr %24, i64 %26
  %28 = getelementptr inbounds [20 x i16], ptr %27, i64 0, i64 0
  %29 = load i16, ptr %28, align 2
  %30 = load i16, ptr %13, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %31
  store i16 %29, ptr %32, align 2
  %33 = load i16, ptr %13, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds nuw [20 x i16], ptr %10, i64 0, i64 %34
  store i16 0, ptr %35, align 2
  %36 = load i16, ptr %13, align 2
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds nuw [20 x i16], ptr %11, i64 0, i64 %37
  store i16 0, ptr %38, align 2
  br label %39

39:                                               ; preds = %23
  %40 = load i16, ptr %13, align 2
  %41 = add i16 %40, 1
  store i16 %41, ptr %13, align 2
  br label %17

42:                                               ; preds = %17
  %43 = load i16, ptr %6, align 2
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 %44, 1
  %46 = trunc i32 %45 to i16
  store i16 %46, ptr %12, align 2
  br label %47

47:                                               ; preds = %150, %42
  %48 = load i16, ptr %12, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %151

51:                                               ; preds = %47
  %52 = getelementptr inbounds [20 x i16], ptr %9, i64 0, i64 0
  %53 = load i16, ptr %6, align 2
  %54 = call zeroext i16 @minimum(ptr noundef %52, i16 noundef zeroext %53)
  store i16 %54, ptr %7, align 2
  br label %55

55:                                               ; preds = %62, %51
  %56 = load i16, ptr %7, align 2
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds nuw [20 x i16], ptr %11, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i16, ptr %7, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %64
  store i16 999, ptr %65, align 2
  %66 = getelementptr inbounds [20 x i16], ptr %9, i64 0, i64 0
  %67 = load i16, ptr %6, align 2
  %68 = call zeroext i16 @minimum(ptr noundef %66, i16 noundef zeroext %67)
  store i16 %68, ptr %7, align 2
  br label %55

69:                                               ; preds = %55
  %70 = load i16, ptr %7, align 2
  %71 = zext i16 %70 to i64
  %72 = getelementptr inbounds nuw [20 x i16], ptr %10, i64 0, i64 %71
  %73 = load i16, ptr %72, align 2
  store i16 %73, ptr %8, align 2
  %74 = load i16, ptr %7, align 2
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %75
  %77 = load i16, ptr %76, align 2
  %78 = load ptr, ptr %5, align 8
  %79 = load i16, ptr %8, align 2
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds nuw [20 x i16], ptr %78, i64 %80
  %82 = load i16, ptr %7, align 2
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds nuw [20 x i16], ptr %81, i64 0, i64 %83
  store i16 %77, ptr %84, align 2
  %85 = load i16, ptr %7, align 2
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %86
  %88 = load i16, ptr %87, align 2
  %89 = load ptr, ptr %5, align 8
  %90 = load i16, ptr %7, align 2
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds nuw [20 x i16], ptr %89, i64 %91
  %93 = load i16, ptr %8, align 2
  %94 = zext i16 %93 to i64
  %95 = getelementptr inbounds nuw [20 x i16], ptr %92, i64 0, i64 %94
  store i16 %88, ptr %95, align 2
  %96 = load i16, ptr %12, align 2
  %97 = add i16 %96, -1
  store i16 %97, ptr %12, align 2
  %98 = load i16, ptr %7, align 2
  %99 = zext i16 %98 to i64
  %100 = getelementptr inbounds nuw [20 x i16], ptr %11, i64 0, i64 %99
  store i16 1, ptr %100, align 2
  store i16 1, ptr %14, align 2
  br label %101

101:                                              ; preds = %147, %69
  %102 = load i16, ptr %14, align 2
  %103 = zext i16 %102 to i32
  %104 = load i16, ptr %6, align 2
  %105 = zext i16 %104 to i32
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %150

107:                                              ; preds = %101
  %108 = load i16, ptr %14, align 2
  %109 = zext i16 %108 to i64
  %110 = getelementptr inbounds nuw [20 x i16], ptr %11, i64 0, i64 %109
  %111 = load i16, ptr %110, align 2
  %112 = zext i16 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %107
  %115 = load ptr, ptr %4, align 8
  %116 = load i16, ptr %7, align 2
  %117 = zext i16 %116 to i64
  %118 = getelementptr inbounds nuw [20 x i16], ptr %115, i64 %117
  %119 = load i16, ptr %14, align 2
  %120 = zext i16 %119 to i64
  %121 = getelementptr inbounds nuw [20 x i16], ptr %118, i64 0, i64 %120
  %122 = load i16, ptr %121, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, ptr %14, align 2
  %125 = zext i16 %124 to i64
  %126 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %125
  %127 = load i16, ptr %126, align 2
  %128 = zext i16 %127 to i32
  %129 = icmp slt i32 %123, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %114
  %131 = load ptr, ptr %4, align 8
  %132 = load i16, ptr %7, align 2
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds nuw [20 x i16], ptr %131, i64 %133
  %135 = load i16, ptr %14, align 2
  %136 = zext i16 %135 to i64
  %137 = getelementptr inbounds nuw [20 x i16], ptr %134, i64 0, i64 %136
  %138 = load i16, ptr %137, align 2
  %139 = load i16, ptr %14, align 2
  %140 = zext i16 %139 to i64
  %141 = getelementptr inbounds nuw [20 x i16], ptr %9, i64 0, i64 %140
  store i16 %138, ptr %141, align 2
  %142 = load i16, ptr %8, align 2
  %143 = load i16, ptr %14, align 2
  %144 = zext i16 %143 to i64
  %145 = getelementptr inbounds nuw [20 x i16], ptr %10, i64 0, i64 %144
  store i16 %142, ptr %145, align 2
  br label %146

146:                                              ; preds = %130, %114, %107
  br label %147

147:                                              ; preds = %146
  %148 = load i16, ptr %14, align 2
  %149 = add i16 %148, 1
  store i16 %149, ptr %14, align 2
  br label %101

150:                                              ; preds = %101
  br label %47

151:                                              ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_graph(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i16 %2, ptr %6, align 2
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %10 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %6)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i16 0, ptr %7, align 2
  br label %12

12:                                               ; preds = %62, %3
  %13 = load i16, ptr %7, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, ptr %6, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %12
  store i16 0, ptr %8, align 2
  br label %19

19:                                               ; preds = %58, %18
  %20 = load i16, ptr %8, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, ptr %6, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i16, ptr %7, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, ptr %8, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %27, i32 noundef %29)
  %31 = load ptr, ptr %4, align 8
  %32 = load i16, ptr %7, align 2
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds nuw [20 x i16], ptr %31, i64 %33
  %35 = load i16, ptr %8, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds nuw [20 x i16], ptr %34, i64 0, i64 %36
  %38 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %37)
  %39 = load ptr, ptr %4, align 8
  %40 = load i16, ptr %7, align 2
  %41 = zext i16 %40 to i64
  %42 = getelementptr inbounds nuw [20 x i16], ptr %39, i64 %41
  %43 = load i16, ptr %8, align 2
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds nuw [20 x i16], ptr %42, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %25
  %50 = load ptr, ptr %4, align 8
  %51 = load i16, ptr %7, align 2
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds nuw [20 x i16], ptr %50, i64 %52
  %54 = load i16, ptr %8, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds nuw [20 x i16], ptr %53, i64 0, i64 %55
  store i16 999, ptr %56, align 2
  br label %57

57:                                               ; preds = %49, %25
  br label %58

58:                                               ; preds = %57
  %59 = load i16, ptr %8, align 2
  %60 = add i16 %59, 1
  store i16 %60, ptr %8, align 2
  br label %19

61:                                               ; preds = %19
  br label %62

62:                                               ; preds = %61
  %63 = load i16, ptr %7, align 2
  %64 = add i16 %63, 1
  store i16 %64, ptr %7, align 2
  br label %12

65:                                               ; preds = %12
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = load i16, ptr %6, align 2
  call void @prim(ptr noundef %66, ptr noundef %67, i16 noundef zeroext %68)
  %69 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i16 0, ptr %7, align 2
  br label %70

70:                                               ; preds = %99, %65
  %71 = load i16, ptr %7, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, ptr %6, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i16 0, ptr %8, align 2
  br label %78

78:                                               ; preds = %95, %76
  %79 = load i16, ptr %8, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, ptr %6, align 2
  %82 = zext i16 %81 to i32
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load ptr, ptr %5, align 8
  %86 = load i16, ptr %7, align 2
  %87 = zext i16 %86 to i64
  %88 = getelementptr inbounds nuw [20 x i16], ptr %85, i64 %87
  %89 = load i16, ptr %8, align 2
  %90 = zext i16 %89 to i64
  %91 = getelementptr inbounds nuw [20 x i16], ptr %88, i64 0, i64 %90
  %92 = load i16, ptr %91, align 2
  %93 = zext i16 %92 to i32
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i16, ptr %8, align 2
  %97 = add i16 %96, 1
  store i16 %97, ptr %8, align 2
  br label %78

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98
  %100 = load i16, ptr %7, align 2
  %101 = add i16 %100, 1
  store i16 %101, ptr %7, align 2
  br label %70

102:                                              ; preds = %70
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [20 x [20 x i16]], align 16
  %7 = alloca [20 x [20 x i16]], align 16
  %8 = alloca i16, align 2
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.7) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds [20 x [20 x i16]], ptr %6, i64 0, i64 0
  %19 = getelementptr inbounds [20 x [20 x i16]], ptr %7, i64 0, i64 0
  %20 = load i16, ptr %8, align 2
  call void @test(ptr noundef %18, ptr noundef %19, i16 noundef zeroext %20)
  br label %25

21:                                               ; preds = %11, %2
  %22 = getelementptr inbounds [20 x [20 x i16]], ptr %6, i64 0, i64 0
  %23 = getelementptr inbounds [20 x [20 x i16]], ptr %7, i64 0, i64 0
  %24 = load i16, ptr %8, align 2
  call void @user_graph(ptr noundef %22, ptr noundef %23, i16 noundef zeroext %24)
  br label %25

25:                                               ; preds = %21, %17
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca [4 x [4 x i16]], align 16
  %8 = alloca [4 x [4 x i16]], align 16
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i16 %2, ptr %6, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.test.test, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %8, ptr align 16 @__const.test.solution, i64 32, i1 false)
  store i16 4, ptr %6, align 2
  store i16 0, ptr %9, align 2
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i16, ptr %9, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, ptr %6, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  store i16 0, ptr %10, align 2
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i16, ptr %10, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, ptr %6, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load i16, ptr %9, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds nuw [4 x [4 x i16]], ptr %7, i64 0, i64 %28
  %30 = load i16, ptr %10, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds nuw [4 x i16], ptr %29, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2
  %34 = load ptr, ptr %4, align 8
  %35 = load i16, ptr %9, align 2
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds nuw [20 x i16], ptr %34, i64 %36
  %38 = load i16, ptr %10, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds nuw [20 x i16], ptr %37, i64 0, i64 %39
  store i16 %33, ptr %40, align 2
  br label %41

41:                                               ; preds = %26
  %42 = load i16, ptr %10, align 2
  %43 = add i16 %42, 1
  store i16 %43, ptr %10, align 2
  br label %20

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i16, ptr %9, align 2
  %47 = add i16 %46, 1
  store i16 %47, ptr %9, align 2
  br label %13

48:                                               ; preds = %13
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %5, align 8
  %51 = load i16, ptr %6, align 2
  call void @prim(ptr noundef %49, ptr noundef %50, i16 noundef zeroext %51)
  store i16 0, ptr %11, align 2
  br label %52

52:                                               ; preds = %70, %48
  %53 = load i16, ptr %11, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, ptr %6, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  store i16 0, ptr %12, align 2
  br label %59

59:                                               ; preds = %66, %58
  %60 = load i16, ptr %12, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, ptr %6, align 2
  %63 = zext i16 %62 to i32
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65
  %67 = load i16, ptr %12, align 2
  %68 = add i16 %67, 1
  store i16 %68, ptr %12, align 2
  br label %59

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i16, ptr %11, align 2
  %72 = add i16 %71, 1
  store i16 %72, ptr %11, align 2
  br label %52

73:                                               ; preds = %52
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
