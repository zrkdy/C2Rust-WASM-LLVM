; ModuleID = './c_code/temp_compile/expresstree.c'
source_filename = "./c_code/temp_compile/expresstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ETree = type { i8, ptr, ptr }

@sp = dso_local global i32 -1, align 4
@stack = dso_local global [100 x i8] zeroinitializer, align 16
@stack_node = dso_local global [30 x ptr] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"a+b*c+(d*e+f)*g\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_ch(i8 noundef signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  %3 = load i8, ptr %2, align 1
  %4 = load i32, ptr @sp, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [100 x i8], ptr @stack, i64 0, i64 %6
  store i8 %3, ptr %7, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @pop_ch() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [100 x i8], ptr @stack, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @top_ch() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [100 x i8], ptr @stack, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @empty() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = icmp eq i32 %1, -1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_node(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr @sp, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @sp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [30 x ptr], ptr @stack_node, i64 0, i64 %6
  store ptr %3, ptr %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @pop_node() #0 {
  %1 = load i32, ptr @sp, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr @sp, align 4
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [30 x ptr], ptr @stack_node, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_infix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.ETree, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @display_infix(ptr noundef %9)
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds nuw %struct.ETree, ptr %10, i32 0, i32 0
  %12 = load i8, ptr %11, align 8
  %13 = sext i8 %12 to i32
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.ETree, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  call void @display_infix(ptr noundef %17)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %19

19:                                               ; preds = %5, %1
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_suffix(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.ETree, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @display_suffix(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.ETree, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @display_suffix(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct.ETree, ptr %12, i32 0, i32 0
  %14 = load i8, ptr %13, align 8
  %15 = sext i8 %14 to i32
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15)
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @create_expresstree(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  store ptr null, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %6, align 1
  %18 = call noalias ptr @malloc(i64 noundef 24) #5
  store ptr %18, ptr %7, align 8
  %19 = load i8, ptr %6, align 1
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds nuw %struct.ETree, ptr %20, i32 0, i32 0
  store i8 %19, ptr %21, align 8
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds nuw %struct.ETree, ptr %22, i32 0, i32 2
  store ptr null, ptr %23, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds nuw %struct.ETree, ptr %24, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = load i8, ptr %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 43
  br i1 %28, label %41, label %29

29:                                               ; preds = %12
  %30 = load i8, ptr %6, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 42
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8, ptr %6, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %33, %29, %12
  %42 = call ptr @pop_node()
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds nuw %struct.ETree, ptr %43, i32 0, i32 2
  store ptr %42, ptr %44, align 8
  %45 = call ptr @pop_node()
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw %struct.ETree, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 8
  br label %48

48:                                               ; preds = %41, %37
  %49 = load ptr, ptr %7, align 8
  call void @push_node(ptr noundef %49)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %5, align 4
  br label %8

53:                                               ; preds = %8
  %54 = call i32 @empty()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call ptr @pop_node()
  store ptr %57, ptr %7, align 8
  br label %58

58:                                               ; preds = %56, %53
  %59 = load ptr, ptr %7, align 8
  ret ptr %59
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @infix2suffix(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %10, align 4
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %141, %4
  %13 = load i32, ptr %9, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %144

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %17, i64 %19
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %11, align 1
  %22 = load i8, ptr %11, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 43
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = load i8, ptr %11, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %11, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8, ptr %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 47
  br i1 %36, label %37, label %98

37:                                               ; preds = %33, %29, %25, %16
  %38 = call i32 @empty()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8, ptr %11, align 1
  call void @push_ch(i8 noundef signext %41)
  br label %97

42:                                               ; preds = %37
  %43 = load i8, ptr %11, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, ptr %11, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 45
  br i1 %49, label %50, label %69

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %60, %50
  %52 = call i32 @empty()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = call signext i8 @top_ch()
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %67

60:                                               ; preds = %55
  %61 = call signext i8 @pop_ch()
  %62 = load ptr, ptr %7, align 8
  %63 = load i32, ptr %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %10, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  store i8 %61, ptr %66, align 1
  br label %51

67:                                               ; preds = %59, %51
  %68 = load i8, ptr %11, align 1
  call void @push_ch(i8 noundef signext %68)
  br label %96

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %87, %69
  %71 = call i32 @empty()
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = call signext i8 @top_ch()
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 40
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = call signext i8 @top_ch()
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 43
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = call signext i8 @top_ch()
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 45
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78, %74
  br label %94

87:                                               ; preds = %82
  %88 = call signext i8 @pop_ch()
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %10, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, ptr %89, i64 %92
  store i8 %88, ptr %93, align 1
  br label %70

94:                                               ; preds = %86, %70
  %95 = load i8, ptr %11, align 1
  call void @push_ch(i8 noundef signext %95)
  br label %96

96:                                               ; preds = %94, %67
  br label %97

97:                                               ; preds = %96, %40
  br label %140

98:                                               ; preds = %33
  %99 = load i8, ptr %11, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 40
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i8, ptr %11, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 41
  br i1 %105, label %106, label %132

106:                                              ; preds = %102, %98
  %107 = load i8, ptr %11, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 40
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i8, ptr %11, align 1
  call void @push_ch(i8 noundef signext %111)
  br label %131

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %123, %112
  %114 = call i32 @empty()
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = call signext i8 @pop_ch()
  store i8 %118, ptr %11, align 1
  %119 = load i8, ptr %11, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 40
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %130

123:                                              ; preds = %117
  %124 = load i8, ptr %11, align 1
  %125 = load ptr, ptr %7, align 8
  %126 = load i32, ptr %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, ptr %10, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 %128
  store i8 %124, ptr %129, align 1
  br label %113

130:                                              ; preds = %122, %113
  br label %131

131:                                              ; preds = %130, %110
  br label %139

132:                                              ; preds = %102
  %133 = load i8, ptr %11, align 1
  %134 = load ptr, ptr %7, align 8
  %135 = load i32, ptr %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, ptr %134, i64 %137
  store i8 %133, ptr %138, align 1
  br label %139

139:                                              ; preds = %132, %131
  br label %140

140:                                              ; preds = %139, %97
  br label %141

141:                                              ; preds = %140
  %142 = load i32, ptr %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %9, align 4
  br label %12

144:                                              ; preds = %12
  br label %145

145:                                              ; preds = %149, %144
  %146 = call i32 @empty()
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = call signext i8 @pop_ch()
  %151 = load ptr, ptr %7, align 8
  %152 = load i32, ptr %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %10, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, ptr %151, i64 %154
  store i8 %150, ptr %155, align 1
  br label %145

156:                                              ; preds = %145
  %157 = load i32, ptr %10, align 4
  %158 = load ptr, ptr %8, align 8
  store i32 %157, ptr %158, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store ptr @.str.3, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = call i64 @strlen(ptr noundef %11) #6
  %13 = trunc i64 %12 to i32
  store i32 %13, ptr %7, align 4
  %14 = load i32, ptr %7, align 4
  %15 = sext i32 %14 to i64
  %16 = call noalias ptr @calloc(i64 noundef %15, i64 noundef 1) #7
  store ptr %16, ptr %8, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = load i32, ptr %7, align 4
  %19 = load ptr, ptr %8, align 8
  call void @infix2suffix(ptr noundef %17, i32 noundef %18, ptr noundef %19, ptr noundef %9)
  %20 = load ptr, ptr %8, align 8
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %20)
  %22 = load ptr, ptr %8, align 8
  %23 = load i32, ptr %9, align 4
  %24 = call ptr @create_expresstree(ptr noundef %22, i32 noundef %23)
  store ptr %24, ptr %10, align 8
  %25 = load ptr, ptr %10, align 8
  call void @display_infix(ptr noundef %25)
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %27 = load ptr, ptr %10, align 8
  call void @display_suffix(ptr noundef %27)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret i32 0
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
