; ModuleID = './c_code/temp_compile/emb-printf.c'
source_filename = "./c_code/temp_compile/emb-printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sfmt_info = type { i64, i64, i64, ptr, ptr, i8, i8, i8, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c" (null)\00", align 1
@hexout.__hexstr = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@hexout.__HEXstr = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_XPRINT(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.sfmt_info, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store ptr @.str, ptr %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds nuw %struct.sfmt_info, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds nuw %struct.sfmt_info, ptr %5, i32 0, i32 4
  store ptr @putb, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  call void @_print_internal(ptr noundef %5, ptr noundef %12, ptr noundef %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putb(ptr noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  call void @_sys_charout(i32 noundef %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_print_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  br label %9

9:                                                ; preds = %71, %3
  %10 = load ptr, ptr %5, align 8
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, ptr %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4
  %16 = icmp ne i32 %15, 37
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct.sfmt_info, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %struct.sfmt_info, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %8, align 4
  %24 = trunc i32 %23 to i8
  call void %20(ptr noundef %22, i8 noundef signext %24)
  br label %71

25:                                               ; preds = %14
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = call ptr @percent(ptr noundef %27, ptr noundef %28, ptr noundef %29)
  store ptr %30, ptr %5, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.sfmt_info, ptr %31, i32 0, i32 11
  %33 = load i8, ptr %32, align 2
  %34 = sext i8 %33 to i64
  store i64 %34, ptr %7, align 8
  switch i64 %34, label %62 [
    i64 99, label %35
    i64 72, label %38
    i64 78, label %41
    i64 100, label %44
    i64 120, label %47
    i64 88, label %47
    i64 112, label %47
    i64 115, label %50
    i64 117, label %53
    i64 37, label %56
  ]

35:                                               ; preds = %25
  %36 = load ptr, ptr %4, align 8
  %37 = load ptr, ptr %6, align 8
  call void @charout(ptr noundef %36, ptr noundef %37)
  br label %70

38:                                               ; preds = %25
  %39 = load ptr, ptr %4, align 8
  %40 = load ptr, ptr %6, align 8
  call void @ipout(ptr noundef %39, i32 noundef 0, ptr noundef %40)
  br label %70

41:                                               ; preds = %25
  %42 = load ptr, ptr %4, align 8
  %43 = load ptr, ptr %6, align 8
  call void @ipout(ptr noundef %42, i32 noundef 1, ptr noundef %43)
  br label %70

44:                                               ; preds = %25
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %6, align 8
  call void @decout(ptr noundef %45, i32 noundef 0, ptr noundef %46)
  br label %70

47:                                               ; preds = %25, %25, %25
  %48 = load ptr, ptr %4, align 8
  %49 = load ptr, ptr %6, align 8
  call void @hexout(ptr noundef %48, ptr noundef %49)
  br label %70

50:                                               ; preds = %25
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %6, align 8
  call void @stringout(ptr noundef %51, ptr noundef %52)
  br label %70

53:                                               ; preds = %25
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %6, align 8
  call void @decout(ptr noundef %54, i32 noundef 1, ptr noundef %55)
  br label %70

56:                                               ; preds = %25
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds nuw %struct.sfmt_info, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 8
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds nuw %struct.sfmt_info, ptr %60, i32 0, i32 3
  call void %59(ptr noundef %61, i8 noundef signext 37)
  br label %70

62:                                               ; preds = %25
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds nuw %struct.sfmt_info, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds nuw %struct.sfmt_info, ptr %66, i32 0, i32 3
  %68 = load i64, ptr %7, align 8
  %69 = trunc i64 %68 to i8
  call void %65(ptr noundef %67, i8 noundef signext %69)
  br label %70

70:                                               ; preds = %62, %56, %53, %50, %47, %44, %41, %38, %35
  br label %71

71:                                               ; preds = %70, %17
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %73, ptr %5, align 8
  br label %9

74:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.sfmt_info, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds nuw %struct.sfmt_info, ptr %6, i32 0, i32 3
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.sfmt_info, ptr %6, i32 0, i32 4
  store ptr @putstr, ptr %9, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %10)
  %11 = load ptr, ptr %4, align 8
  call void @_print_internal(ptr noundef %6, ptr noundef %11, ptr noundef %5)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %5, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %12)
  %13 = getelementptr inbounds nuw %struct.sfmt_info, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  store i8 0, ptr %14, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putstr(ptr noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %6 = load ptr, ptr %3, align 8
  store ptr %6, ptr %5, align 8
  %7 = load i8, ptr %4, align 1
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %10, ptr %8, align 8
  store i8 %7, ptr %9, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.sfmt_info, align 8
  store ptr %0, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.sfmt_info, ptr %4, i32 0, i32 3
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.sfmt_info, ptr %4, i32 0, i32 4
  store ptr @putb, ptr %6, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %7)
  %8 = load ptr, ptr %2, align 8
  call void @_print_internal(ptr noundef %4, ptr noundef %8, ptr noundef %3)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %9)
  ret void
}

declare void @_sys_charout(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @percent(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds nuw %struct.sfmt_info, ptr %8, i32 0, i32 0
  store i64 -1, ptr %9, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.sfmt_info, ptr %10, i32 0, i32 1
  store i64 6, ptr %11, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds nuw %struct.sfmt_info, ptr %12, i32 0, i32 6
  store i8 1, ptr %13, align 1
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw %struct.sfmt_info, ptr %14, i32 0, i32 8
  store i8 0, ptr %15, align 1
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.sfmt_info, ptr %16, i32 0, i32 7
  store i8 0, ptr %17, align 2
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.sfmt_info, ptr %18, i32 0, i32 9
  store i8 0, ptr %19, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.sfmt_info, ptr %20, i32 0, i32 5
  store i8 0, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.sfmt_info, ptr %22, i32 0, i32 11
  store i8 0, ptr %23, align 2
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.sfmt_info, ptr %24, i32 0, i32 10
  store i8 0, ptr %25, align 1
  %26 = load ptr, ptr %4, align 8
  %27 = load i8, ptr %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds nuw %struct.sfmt_info, ptr %31, i32 0, i32 6
  store i8 0, ptr %32, align 1
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %34, ptr %4, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load ptr, ptr %4, align 8
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds nuw %struct.sfmt_info, ptr %41, i32 0, i32 8
  store i8 1, ptr %42, align 1
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %44, ptr %4, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load ptr, ptr %4, align 8
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 8
  %52 = getelementptr inbounds nuw %struct.sfmt_info, ptr %51, i32 0, i32 8
  %53 = load i8, ptr %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load ptr, ptr %5, align 8
  %57 = getelementptr inbounds nuw %struct.sfmt_info, ptr %56, i32 0, i32 5
  store i8 1, ptr %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %60, ptr %4, align 8
  br label %61

61:                                               ; preds = %58, %45
  %62 = load ptr, ptr %4, align 8
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds nuw %struct.sfmt_info, ptr %67, i32 0, i32 7
  store i8 1, ptr %68, align 2
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %70, ptr %4, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load ptr, ptr %4, align 8
  %73 = load i8, ptr %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 48
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds nuw %struct.sfmt_info, ptr %77, i32 0, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds nuw %struct.sfmt_info, ptr %82, i32 0, i32 9
  store i8 1, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds nuw i8, ptr %85, i32 1
  store ptr %86, ptr %4, align 8
  br label %87

87:                                               ; preds = %84, %71
  %88 = load ptr, ptr %4, align 8
  %89 = load i8, ptr %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 42
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %93, i64 0, i64 0
  %95 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8
  %97 = icmp ule i32 %96, 40
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %94, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr i8, ptr %100, i32 %96
  %102 = add i32 %96, 8
  store i32 %102, ptr %95, align 8
  br label %107

103:                                              ; preds = %92
  %104 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %94, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr i8, ptr %105, i32 8
  store ptr %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi ptr [ %101, %98 ], [ %105, %103 ]
  %109 = load i32, ptr %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds nuw %struct.sfmt_info, ptr %111, i32 0, i32 0
  store i64 %110, ptr %112, align 8
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr inbounds nuw %struct.sfmt_info, ptr %113, i32 0, i32 0
  %115 = load i64, ptr %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr inbounds nuw %struct.sfmt_info, ptr %118, i32 0, i32 6
  store i8 0, ptr %119, align 1
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr inbounds nuw %struct.sfmt_info, ptr %120, i32 0, i32 0
  %122 = load i64, ptr %121, align 8
  %123 = sub nsw i64 0, %122
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds nuw %struct.sfmt_info, ptr %124, i32 0, i32 0
  store i64 %123, ptr %125, align 8
  br label %126

126:                                              ; preds = %117, %107
  %127 = load ptr, ptr %4, align 8
  %128 = getelementptr inbounds nuw i8, ptr %127, i32 1
  store ptr %128, ptr %4, align 8
  br label %171

129:                                              ; preds = %87
  %130 = call ptr @__ctype_b_loc() #5
  %131 = load ptr, ptr %130, align 8
  %132 = load ptr, ptr %4, align 8
  %133 = load i8, ptr %132, align 1
  %134 = sext i8 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i16, ptr %131, i64 %135
  %137 = load i16, ptr %136, align 2
  %138 = zext i16 %137 to i32
  %139 = and i32 %138, 2048
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %129
  %142 = load ptr, ptr %5, align 8
  %143 = getelementptr inbounds nuw %struct.sfmt_info, ptr %142, i32 0, i32 0
  store i64 0, ptr %143, align 8
  br label %144

144:                                              ; preds = %156, %141
  %145 = call ptr @__ctype_b_loc() #5
  %146 = load ptr, ptr %145, align 8
  %147 = load ptr, ptr %4, align 8
  %148 = load i8, ptr %147, align 1
  %149 = sext i8 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %146, i64 %150
  %152 = load i16, ptr %151, align 2
  %153 = zext i16 %152 to i32
  %154 = and i32 %153, 2048
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %144
  %157 = load ptr, ptr %5, align 8
  %158 = getelementptr inbounds nuw %struct.sfmt_info, ptr %157, i32 0, i32 0
  %159 = load i64, ptr %158, align 8
  %160 = mul nsw i64 %159, 10
  %161 = load ptr, ptr %4, align 8
  %162 = getelementptr inbounds nuw i8, ptr %161, i32 1
  store ptr %162, ptr %4, align 8
  %163 = load i8, ptr %161, align 1
  %164 = sext i8 %163 to i64
  %165 = add nsw i64 %160, %164
  %166 = sub nsw i64 %165, 48
  %167 = load ptr, ptr %5, align 8
  %168 = getelementptr inbounds nuw %struct.sfmt_info, ptr %167, i32 0, i32 0
  store i64 %166, ptr %168, align 8
  br label %144

169:                                              ; preds = %144
  br label %170

170:                                              ; preds = %169, %129
  br label %171

171:                                              ; preds = %170, %126
  %172 = load ptr, ptr %4, align 8
  %173 = load i8, ptr %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 46
  br i1 %175, label %176, label %236

176:                                              ; preds = %171
  store i8 1, ptr %7, align 1
  %177 = load ptr, ptr %4, align 8
  %178 = getelementptr inbounds nuw i8, ptr %177, i32 1
  store ptr %178, ptr %4, align 8
  %179 = load ptr, ptr %4, align 8
  %180 = load i8, ptr %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 42
  br i1 %182, label %183, label %206

183:                                              ; preds = %176
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %184, i64 0, i64 0
  %186 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 0
  %187 = load i32, ptr %186, align 8
  %188 = icmp ule i32 %187, 40
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 3
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr i8, ptr %191, i32 %187
  %193 = add i32 %187, 8
  store i32 %193, ptr %186, align 8
  br label %198

194:                                              ; preds = %183
  %195 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr i8, ptr %196, i32 8
  store ptr %197, ptr %195, align 8
  br label %198

198:                                              ; preds = %194, %189
  %199 = phi ptr [ %192, %189 ], [ %196, %194 ]
  %200 = load i32, ptr %199, align 4
  %201 = sext i32 %200 to i64
  %202 = load ptr, ptr %5, align 8
  %203 = getelementptr inbounds nuw %struct.sfmt_info, ptr %202, i32 0, i32 1
  store i64 %201, ptr %203, align 8
  %204 = load ptr, ptr %4, align 8
  %205 = getelementptr inbounds nuw i8, ptr %204, i32 1
  store ptr %205, ptr %4, align 8
  br label %235

206:                                              ; preds = %176
  %207 = load ptr, ptr %5, align 8
  %208 = getelementptr inbounds nuw %struct.sfmt_info, ptr %207, i32 0, i32 1
  store i64 0, ptr %208, align 8
  br label %209

209:                                              ; preds = %221, %206
  %210 = call ptr @__ctype_b_loc() #5
  %211 = load ptr, ptr %210, align 8
  %212 = load ptr, ptr %4, align 8
  %213 = load i8, ptr %212, align 1
  %214 = sext i8 %213 to i32
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i16, ptr %211, i64 %215
  %217 = load i16, ptr %216, align 2
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, 2048
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %209
  %222 = load ptr, ptr %5, align 8
  %223 = getelementptr inbounds nuw %struct.sfmt_info, ptr %222, i32 0, i32 1
  %224 = load i64, ptr %223, align 8
  %225 = mul nsw i64 %224, 10
  %226 = load ptr, ptr %4, align 8
  %227 = getelementptr inbounds nuw i8, ptr %226, i32 1
  store ptr %227, ptr %4, align 8
  %228 = load i8, ptr %226, align 1
  %229 = sext i8 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = sub nsw i64 %230, 48
  %232 = load ptr, ptr %5, align 8
  %233 = getelementptr inbounds nuw %struct.sfmt_info, ptr %232, i32 0, i32 1
  store i64 %231, ptr %233, align 8
  br label %209

234:                                              ; preds = %209
  br label %235

235:                                              ; preds = %234, %198
  br label %236

236:                                              ; preds = %235, %171
  %237 = load ptr, ptr %4, align 8
  %238 = load i8, ptr %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 104
  br i1 %240, label %251, label %241

241:                                              ; preds = %236
  %242 = load ptr, ptr %4, align 8
  %243 = load i8, ptr %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 108
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load ptr, ptr %4, align 8
  %248 = load i8, ptr %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 76
  br i1 %250, label %251, label %257

251:                                              ; preds = %246, %241, %236
  %252 = load ptr, ptr %4, align 8
  %253 = getelementptr inbounds nuw i8, ptr %252, i32 1
  store ptr %253, ptr %4, align 8
  %254 = load i8, ptr %252, align 1
  %255 = load ptr, ptr %5, align 8
  %256 = getelementptr inbounds nuw %struct.sfmt_info, ptr %255, i32 0, i32 10
  store i8 %254, ptr %256, align 1
  br label %257

257:                                              ; preds = %251, %246
  %258 = load i8, ptr %7, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %257
  %262 = load ptr, ptr %4, align 8
  %263 = load i8, ptr %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 99
  br i1 %265, label %266, label %274

266:                                              ; preds = %261
  %267 = load ptr, ptr %4, align 8
  %268 = load i8, ptr %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 37
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load ptr, ptr %5, align 8
  %273 = getelementptr inbounds nuw %struct.sfmt_info, ptr %272, i32 0, i32 1
  store i64 0, ptr %273, align 8
  br label %274

274:                                              ; preds = %271, %266, %261, %257
  %275 = load ptr, ptr %4, align 8
  %276 = load i8, ptr %275, align 1
  %277 = load ptr, ptr %5, align 8
  %278 = getelementptr inbounds nuw %struct.sfmt_info, ptr %277, i32 0, i32 11
  store i8 %276, ptr %278, align 2
  %279 = load ptr, ptr %4, align 8
  ret ptr %279
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [2 x i8], align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0
  %8 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 %9
  %15 = add i32 %9, 8
  store i32 %15, ptr %8, align 8
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %14, %11 ], [ %18, %16 ]
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i8
  %24 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  store i8 0, ptr %25, align 1
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 0
  call void @strout(ptr noundef %26, ptr noundef %27, i64 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipout(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %14, i64 0, i64 0
  %16 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %17
  %23 = add i32 %17, 8
  store i32 %23, ptr %16, align 8
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %15, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 8
  store ptr %27, ptr %25, align 8
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi ptr [ %22, %19 ], [ %26, %24 ]
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %7, align 4
  %31 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 0
  store ptr %31, ptr %9, align 8
  %32 = load i32, ptr %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load i32, ptr %7, align 4
  %36 = lshr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, ptr %10, align 4
  %38 = load i32, ptr %7, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  store i32 %40, ptr %11, align 4
  %41 = load i32, ptr %7, align 4
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 255
  store i32 %43, ptr %12, align 4
  %44 = load i32, ptr %7, align 4
  %45 = lshr i32 %44, 0
  %46 = and i32 %45, 255
  store i32 %46, ptr %13, align 4
  %47 = load i32, ptr %10, align 4
  %48 = load i32, ptr %11, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %47, %49
  %51 = load i32, ptr %12, align 4
  %52 = shl i32 %51, 16
  %53 = or i32 %50, %52
  %54 = load i32, ptr %13, align 4
  %55 = shl i32 %54, 24
  %56 = or i32 %53, %55
  store i32 %56, ptr %7, align 4
  br label %57

57:                                               ; preds = %34, %28
  %58 = load ptr, ptr %9, align 8
  %59 = load i32, ptr %7, align 4
  %60 = and i32 %59, 255
  %61 = call ptr @write_oct(ptr noundef %58, i32 noundef %60)
  store ptr %61, ptr %9, align 8
  %62 = load i32, ptr %7, align 4
  %63 = lshr i32 %62, 8
  store i32 %63, ptr %7, align 4
  %64 = load ptr, ptr %9, align 8
  %65 = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %65, ptr %9, align 8
  store i8 46, ptr %64, align 1
  %66 = load ptr, ptr %9, align 8
  %67 = load i32, ptr %7, align 4
  %68 = and i32 %67, 255
  %69 = call ptr @write_oct(ptr noundef %66, i32 noundef %68)
  store ptr %69, ptr %9, align 8
  %70 = load i32, ptr %7, align 4
  %71 = lshr i32 %70, 8
  store i32 %71, ptr %7, align 4
  %72 = load ptr, ptr %9, align 8
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %73, ptr %9, align 8
  store i8 46, ptr %72, align 1
  %74 = load ptr, ptr %9, align 8
  %75 = load i32, ptr %7, align 4
  %76 = and i32 %75, 255
  %77 = call ptr @write_oct(ptr noundef %74, i32 noundef %76)
  store ptr %77, ptr %9, align 8
  %78 = load i32, ptr %7, align 4
  %79 = lshr i32 %78, 8
  store i32 %79, ptr %7, align 4
  %80 = load ptr, ptr %9, align 8
  %81 = getelementptr inbounds nuw i8, ptr %80, i32 1
  store ptr %81, ptr %9, align 8
  store i8 46, ptr %80, align 1
  %82 = load ptr, ptr %9, align 8
  %83 = load i32, ptr %7, align 4
  %84 = and i32 %83, 255
  %85 = call ptr @write_oct(ptr noundef %82, i32 noundef %84)
  store ptr %85, ptr %9, align 8
  %86 = load ptr, ptr %9, align 8
  store i8 0, ptr %86, align 1
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 0
  %89 = load ptr, ptr %9, align 8
  %90 = getelementptr inbounds [32 x i8], ptr %8, i64 0, i64 0
  %91 = ptrtoint ptr %89 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  call void @strout(ptr noundef %87, ptr noundef %88, i64 noundef %93)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decout(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  store i64 0, ptr %12, align 8
  %15 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 19
  store ptr %15, ptr %8, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds i8, ptr %16, i32 -1
  store ptr %17, ptr %8, align 8
  store i8 0, ptr %16, align 1
  %18 = load i32, ptr %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %struct.sfmt_info, ptr %21, i32 0, i32 10
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 104
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %27, i64 0, i64 0
  %29 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %28, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 %30
  %36 = add i32 %30, 8
  store i32 %36, ptr %29, align 8
  br label %41

37:                                               ; preds = %26
  %38 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %28, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %39, i32 8
  store ptr %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi ptr [ %35, %32 ], [ %39, %37 ]
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i16
  %45 = zext i16 %44 to i64
  store i64 %45, ptr %11, align 8
  br label %64

46:                                               ; preds = %20
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %47, i64 0, i64 0
  %49 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8
  %51 = icmp ule i32 %50, 40
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %48, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr i8, ptr %54, i32 %50
  %56 = add i32 %50, 8
  store i32 %56, ptr %49, align 8
  br label %61

57:                                               ; preds = %46
  %58 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %48, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %59, i32 8
  store ptr %60, ptr %58, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi ptr [ %55, %52 ], [ %59, %57 ]
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %11, align 8
  br label %64

64:                                               ; preds = %61, %41
  store i8 0, ptr %10, align 1
  br label %118

65:                                               ; preds = %3
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds nuw %struct.sfmt_info, ptr %66, i32 0, i32 10
  %68 = load i8, ptr %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 104
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load ptr, ptr %6, align 8
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %72, i64 0, i64 0
  %74 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %73, i32 0, i32 0
  %75 = load i32, ptr %74, align 8
  %76 = icmp ule i32 %75, 40
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %73, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr i8, ptr %79, i32 %75
  %81 = add i32 %75, 8
  store i32 %81, ptr %74, align 8
  br label %86

82:                                               ; preds = %71
  %83 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %73, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr i8, ptr %84, i32 8
  store ptr %85, ptr %83, align 8
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi ptr [ %80, %77 ], [ %84, %82 ]
  %88 = load i64, ptr %87, align 8
  %89 = trunc i64 %88 to i16
  %90 = sext i16 %89 to i64
  store i64 %90, ptr %14, align 8
  br label %109

91:                                               ; preds = %65
  %92 = load ptr, ptr %6, align 8
  %93 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %92, i64 0, i64 0
  %94 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 8
  %96 = icmp ule i32 %95, 40
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %93, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %99, i32 %95
  %101 = add i32 %95, 8
  store i32 %101, ptr %94, align 8
  br label %106

102:                                              ; preds = %91
  %103 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %93, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr i8, ptr %104, i32 8
  store ptr %105, ptr %103, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi ptr [ %100, %97 ], [ %104, %102 ]
  %108 = load i64, ptr %107, align 8
  store i64 %108, ptr %14, align 8
  br label %109

109:                                              ; preds = %106, %86
  %110 = load i64, ptr %14, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  store i8 1, ptr %10, align 1
  %113 = load i64, ptr %14, align 8
  %114 = sub nsw i64 0, %113
  store i64 %114, ptr %14, align 8
  br label %116

115:                                              ; preds = %109
  store i8 0, ptr %10, align 1
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i64, ptr %14, align 8
  store i64 %117, ptr %11, align 8
  br label %118

118:                                              ; preds = %116, %64
  %119 = load ptr, ptr %8, align 8
  %120 = load i64, ptr %11, align 8
  %121 = call ptr @write_u(ptr noundef %119, i64 noundef %120)
  store ptr %121, ptr %9, align 8
  %122 = load ptr, ptr %8, align 8
  %123 = load ptr, ptr %9, align 8
  %124 = ptrtoint ptr %122 to i64
  %125 = ptrtoint ptr %123 to i64
  %126 = sub i64 %124, %125
  store i64 %126, ptr %12, align 8
  %127 = load ptr, ptr %9, align 8
  store ptr %127, ptr %8, align 8
  br label %128

128:                                              ; preds = %134, %118
  %129 = load i64, ptr %12, align 8
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds nuw %struct.sfmt_info, ptr %130, i32 0, i32 1
  %132 = load i64, ptr %131, align 8
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load ptr, ptr %8, align 8
  %136 = getelementptr inbounds i8, ptr %135, i32 -1
  store ptr %136, ptr %8, align 8
  store i8 48, ptr %135, align 1
  %137 = load i64, ptr %12, align 8
  %138 = add i64 %137, 1
  store i64 %138, ptr %12, align 8
  br label %128

139:                                              ; preds = %128
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds nuw i8, ptr %140, i32 1
  store ptr %141, ptr %8, align 8
  %142 = load ptr, ptr %4, align 8
  %143 = getelementptr inbounds nuw %struct.sfmt_info, ptr %142, i32 0, i32 9
  %144 = load i8, ptr %143, align 4
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %139
  %147 = load ptr, ptr %8, align 8
  %148 = call i64 @strlen(ptr noundef %147) #6
  %149 = add i64 1, %148
  store i64 %149, ptr %13, align 8
  br label %150

150:                                              ; preds = %156, %146
  %151 = load ptr, ptr %4, align 8
  %152 = getelementptr inbounds nuw %struct.sfmt_info, ptr %151, i32 0, i32 0
  %153 = load i64, ptr %152, align 8
  %154 = load i64, ptr %13, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load ptr, ptr %8, align 8
  %158 = getelementptr inbounds i8, ptr %157, i32 -1
  store ptr %158, ptr %8, align 8
  store i8 48, ptr %158, align 1
  %159 = load i64, ptr %13, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, ptr %13, align 8
  br label %150

161:                                              ; preds = %150
  %162 = load i64, ptr %13, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, ptr %13, align 8
  br label %164

164:                                              ; preds = %161, %139
  %165 = load i8, ptr %10, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load ptr, ptr %8, align 8
  %169 = getelementptr inbounds i8, ptr %168, i32 -1
  store ptr %169, ptr %8, align 8
  store i8 45, ptr %169, align 1
  br label %204

170:                                              ; preds = %164
  %171 = load ptr, ptr %4, align 8
  %172 = getelementptr inbounds nuw %struct.sfmt_info, ptr %171, i32 0, i32 8
  %173 = load i8, ptr %172, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load ptr, ptr %8, align 8
  %177 = getelementptr inbounds i8, ptr %176, i32 -1
  store ptr %177, ptr %8, align 8
  store i8 43, ptr %177, align 1
  br label %203

178:                                              ; preds = %170
  %179 = load ptr, ptr %4, align 8
  %180 = getelementptr inbounds nuw %struct.sfmt_info, ptr %179, i32 0, i32 5
  %181 = load i8, ptr %180, align 8
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load ptr, ptr %8, align 8
  %185 = getelementptr inbounds i8, ptr %184, i32 -1
  store ptr %185, ptr %8, align 8
  store i8 32, ptr %185, align 1
  br label %202

186:                                              ; preds = %178
  %187 = load ptr, ptr %4, align 8
  %188 = getelementptr inbounds nuw %struct.sfmt_info, ptr %187, i32 0, i32 9
  %189 = load i8, ptr %188, align 4
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %186
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr inbounds nuw %struct.sfmt_info, ptr %193, i32 0, i32 0
  %195 = load i64, ptr %194, align 8
  %196 = load i64, ptr %13, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load ptr, ptr %8, align 8
  %200 = getelementptr inbounds i8, ptr %199, i32 -1
  store ptr %200, ptr %8, align 8
  store i8 48, ptr %200, align 1
  br label %201

201:                                              ; preds = %198, %192, %186
  br label %202

202:                                              ; preds = %201, %183
  br label %203

203:                                              ; preds = %202, %175
  br label %204

204:                                              ; preds = %203, %167
  %205 = load ptr, ptr %4, align 8
  %206 = getelementptr inbounds nuw %struct.sfmt_info, ptr %205, i32 0, i32 1
  store i64 -1, ptr %206, align 8
  %207 = load ptr, ptr %4, align 8
  %208 = load ptr, ptr %8, align 8
  %209 = load ptr, ptr %8, align 8
  %210 = call i64 @strlen(ptr noundef %209) #6
  call void @strout(ptr noundef %207, ptr noundef %208, i64 noundef %210)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.sfmt_info, ptr %11, i32 0, i32 11
  %13 = load i8, ptr %12, align 2
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 88
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, ptr @hexout.__HEXstr, ptr @hexout.__hexstr
  store ptr %17, ptr %7, align 8
  store i64 0, ptr %9, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.sfmt_info, ptr %18, i32 0, i32 10
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 104
  br i1 %22, label %23, label %43

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %24, i64 0, i64 0
  %26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 0
  %27 = load i32, ptr %26, align 8
  %28 = icmp ule i32 %27, 40
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 %27
  %33 = add i32 %27, 8
  store i32 %33, ptr %26, align 8
  br label %38

34:                                               ; preds = %23
  %35 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %25, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 8
  store ptr %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi ptr [ %32, %29 ], [ %36, %34 ]
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  %42 = zext i16 %41 to i64
  store i64 %42, ptr %8, align 8
  br label %61

43:                                               ; preds = %2
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %44, i64 0, i64 0
  %46 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8
  %48 = icmp ule i32 %47, 40
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i32 %47
  %53 = add i32 %47, 8
  store i32 %53, ptr %46, align 8
  br label %58

54:                                               ; preds = %43
  %55 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %45, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 8
  store ptr %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi ptr [ %52, %49 ], [ %56, %54 ]
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %8, align 8
  br label %61

61:                                               ; preds = %58, %38
  %62 = getelementptr inbounds [32 x i8], ptr %5, i64 0, i64 15
  store ptr %62, ptr %6, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds i8, ptr %63, i32 -1
  store ptr %64, ptr %6, align 8
  store i8 0, ptr %63, align 1
  br label %65

65:                                               ; preds = %75, %61
  %66 = load ptr, ptr %7, align 8
  %67 = load i64, ptr %8, align 8
  %68 = and i64 %67, 15
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 %68
  %70 = load i8, ptr %69, align 1
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds i8, ptr %71, i32 -1
  store ptr %72, ptr %6, align 8
  store i8 %70, ptr %71, align 1
  %73 = load i64, ptr %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, ptr %9, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load i64, ptr %8, align 8
  %77 = lshr i64 %76, 4
  store i64 %77, ptr %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %65, label %79

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %86, %79
  %81 = load i64, ptr %9, align 8
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr inbounds nuw %struct.sfmt_info, ptr %82, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  %85 = icmp ult i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds i8, ptr %87, i32 -1
  store ptr %88, ptr %6, align 8
  store i8 48, ptr %87, align 1
  %89 = load i64, ptr %9, align 8
  %90 = add i64 %89, 1
  store i64 %90, ptr %9, align 8
  br label %80

91:                                               ; preds = %80
  %92 = load ptr, ptr %6, align 8
  %93 = getelementptr inbounds nuw i8, ptr %92, i32 1
  store ptr %93, ptr %6, align 8
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds nuw %struct.sfmt_info, ptr %94, i32 0, i32 9
  %96 = load i8, ptr %95, align 4
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %136

98:                                               ; preds = %91
  %99 = load ptr, ptr %6, align 8
  %100 = call i64 @strlen(ptr noundef %99) #6
  store i64 %100, ptr %10, align 8
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds nuw %struct.sfmt_info, ptr %101, i32 0, i32 7
  %103 = load i8, ptr %102, align 2
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load i64, ptr %10, align 8
  %107 = add nsw i64 %106, 2
  store i64 %107, ptr %10, align 8
  br label %108

108:                                              ; preds = %114, %105
  %109 = load ptr, ptr %3, align 8
  %110 = getelementptr inbounds nuw %struct.sfmt_info, ptr %109, i32 0, i32 0
  %111 = load i64, ptr %110, align 8
  %112 = load i64, ptr %10, align 8
  %113 = icmp sgt i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load ptr, ptr %6, align 8
  %116 = getelementptr inbounds i8, ptr %115, i32 -1
  store ptr %116, ptr %6, align 8
  store i8 48, ptr %116, align 1
  %117 = load i64, ptr %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, ptr %10, align 8
  br label %108

119:                                              ; preds = %108
  %120 = load i64, ptr %10, align 8
  %121 = sub nsw i64 %120, 2
  store i64 %121, ptr %10, align 8
  br label %135

122:                                              ; preds = %98
  br label %123

123:                                              ; preds = %129, %122
  %124 = load ptr, ptr %3, align 8
  %125 = getelementptr inbounds nuw %struct.sfmt_info, ptr %124, i32 0, i32 0
  %126 = load i64, ptr %125, align 8
  %127 = load i64, ptr %10, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr inbounds i8, ptr %130, i32 -1
  store ptr %131, ptr %6, align 8
  store i8 48, ptr %131, align 1
  %132 = load i64, ptr %10, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, ptr %10, align 8
  br label %123

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %91
  %137 = load ptr, ptr %3, align 8
  %138 = getelementptr inbounds nuw %struct.sfmt_info, ptr %137, i32 0, i32 7
  %139 = load i8, ptr %138, align 2
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %3, align 8
  %144 = getelementptr inbounds nuw %struct.sfmt_info, ptr %143, i32 0, i32 11
  %145 = load i8, ptr %144, align 2
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 112
  br i1 %147, label %148, label %169

148:                                              ; preds = %142, %136
  %149 = load ptr, ptr %3, align 8
  %150 = getelementptr inbounds nuw %struct.sfmt_info, ptr %149, i32 0, i32 11
  %151 = load i8, ptr %150, align 2
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 120
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load ptr, ptr %3, align 8
  %156 = getelementptr inbounds nuw %struct.sfmt_info, ptr %155, i32 0, i32 11
  %157 = load i8, ptr %156, align 2
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 112
  br i1 %159, label %160, label %163

160:                                              ; preds = %154, %148
  %161 = load ptr, ptr %6, align 8
  %162 = getelementptr inbounds i8, ptr %161, i32 -1
  store ptr %162, ptr %6, align 8
  store i8 120, ptr %162, align 1
  br label %166

163:                                              ; preds = %154
  %164 = load ptr, ptr %6, align 8
  %165 = getelementptr inbounds i8, ptr %164, i32 -1
  store ptr %165, ptr %6, align 8
  store i8 88, ptr %165, align 1
  br label %166

166:                                              ; preds = %163, %160
  %167 = load ptr, ptr %6, align 8
  %168 = getelementptr inbounds i8, ptr %167, i32 -1
  store ptr %168, ptr %6, align 8
  store i8 48, ptr %168, align 1
  br label %169

169:                                              ; preds = %166, %142
  %170 = load ptr, ptr %3, align 8
  %171 = getelementptr inbounds nuw %struct.sfmt_info, ptr %170, i32 0, i32 1
  store i64 -1, ptr %171, align 8
  %172 = load ptr, ptr %3, align 8
  %173 = load ptr, ptr %6, align 8
  %174 = load ptr, ptr %6, align 8
  %175 = call i64 @strlen(ptr noundef %174) #6
  call void @strout(ptr noundef %172, ptr noundef %173, i64 noundef %175)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stringout(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0
  %8 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %13, i32 %9
  %15 = add i32 %9, 8
  store i32 %15, ptr %8, align 8
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  store ptr %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi ptr [ %14, %11 ], [ %18, %16 ]
  %22 = load i32, ptr %21, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to ptr
  store ptr %24, ptr %5, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store ptr @.str.1, ptr %5, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = call i64 @strlen(ptr noundef %31) #6
  call void @strout(ptr noundef %29, ptr noundef %30, i64 noundef %32)
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i8 32, ptr %9, align 1
  %11 = load i64, ptr %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store ptr @.str, ptr %5, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.sfmt_info, ptr %15, i32 0, i32 0
  %17 = load i64, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, ptr %6, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds nuw %struct.sfmt_info, ptr %23, i32 0, i32 0
  %25 = load i64, ptr %24, align 8
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %22 ]
  store i64 %27, ptr %7, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.sfmt_info, ptr %28, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load i64, ptr %7, align 8
  %34 = load i64, ptr %6, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, ptr %8, align 8
  br label %36

36:                                               ; preds = %46, %32
  %37 = load i64, ptr %8, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.sfmt_info, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.sfmt_info, ptr %43, i32 0, i32 3
  %45 = load i8, ptr %9, align 1
  call void %42(ptr noundef %44, i8 noundef signext %45)
  br label %46

46:                                               ; preds = %39
  %47 = load i64, ptr %8, align 8
  %48 = add i64 %47, -1
  store i64 %48, ptr %8, align 8
  br label %36

49:                                               ; preds = %36
  %50 = load i64, ptr %6, align 8
  store i64 %50, ptr %7, align 8
  br label %51

51:                                               ; preds = %49, %26
  br label %52

52:                                               ; preds = %72, %51
  %53 = load ptr, ptr %5, align 8
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  store i32 %55, ptr %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, ptr %6, align 8
  %59 = icmp sgt i64 %58, 0
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i1 [ false, %52 ], [ %59, %57 ]
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds nuw %struct.sfmt_info, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds nuw %struct.sfmt_info, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %10, align 4
  %69 = trunc i32 %68 to i8
  call void %65(ptr noundef %67, i8 noundef signext %69)
  %70 = load i64, ptr %7, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, ptr %7, align 8
  br label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %74, ptr %5, align 8
  %75 = load i64, ptr %6, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, ptr %6, align 8
  br label %52

77:                                               ; preds = %60
  %78 = load i64, ptr %7, align 8
  %79 = load i64, ptr %6, align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, ptr %8, align 8
  br label %81

81:                                               ; preds = %91, %77
  %82 = load i64, ptr %8, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds nuw %struct.sfmt_info, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds nuw %struct.sfmt_info, ptr %88, i32 0, i32 3
  %90 = load i8, ptr %9, align 1
  call void %87(ptr noundef %89, i8 noundef signext %90)
  br label %91

91:                                               ; preds = %84
  %92 = load i64, ptr %8, align 8
  %93 = add i64 %92, -1
  store i64 %93, ptr %8, align 8
  br label %81

94:                                               ; preds = %81
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @write_oct(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 99
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %9, ptr %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %7
  %18 = load ptr, ptr %3, align 8
  %19 = load i32, ptr %4, align 4
  %20 = zext i32 %19 to i64
  %21 = call ptr @write_u(ptr noundef %18, i64 noundef %20)
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  ret ptr %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @write_u(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load i64, ptr %4, align 8
  %7 = urem i64 %6, 10
  %8 = add i64 %7, 48
  %9 = trunc i64 %8 to i8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds i8, ptr %10, i32 -1
  store ptr %11, ptr %3, align 8
  store i8 %9, ptr %10, align 1
  %12 = load i64, ptr %4, align 8
  %13 = udiv i64 %12, 10
  store i64 %13, ptr %4, align 8
  br label %14

14:                                               ; preds = %5
  %15 = load i64, ptr %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %5, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8
  ret ptr %18
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
