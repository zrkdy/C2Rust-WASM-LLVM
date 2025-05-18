; ModuleID = './c_code/temp_compile/emb-printf.c'
source_filename = "./c_code/temp_compile/emb-printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.sfmt_info = type { i64, i64, i64, i8*, void (i8*, i8)*, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c" (null)\00", align 1
@hexout.__hexstr = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@hexout.__HEXstr = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_XPRINT(i8* %0, [1 x %struct.__va_list_tag]* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca [1 x %struct.__va_list_tag]*, align 8
  %5 = alloca %struct.sfmt_info, align 8
  store i8* %0, i8** %3, align 8
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %5, i32 0, i32 3
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %5, i32 0, i32 4
  store void (i8*, i8)* @putb, void (i8*, i8)** %11, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  call void @_print_internal(%struct.sfmt_info* %5, i8* %12, [1 x %struct.__va_list_tag]* %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putb(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  call void @_sys_charout(i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_print_internal(%struct.sfmt_info* %0, i8* %1, [1 x %struct.__va_list_tag]* %2) #0 {
  %4 = alloca %struct.sfmt_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x %struct.__va_list_tag]*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sfmt_info* %0, %struct.sfmt_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** %6, align 8
  br label %9

9:                                                ; preds = %74, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 37
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %19 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %18, i32 0, i32 4
  %20 = load void (i8*, i8)*, void (i8*, i8)** %19, align 8
  %21 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %22 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %21, i32 0, i32 3
  %23 = bitcast i8** %22 to i8*
  %24 = load i32, i32* %8, align 4
  %25 = trunc i32 %24 to i8
  call void %20(i8* %23, i8 signext %25)
  br label %74

26:                                               ; preds = %14
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %30 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %31 = call i8* @percent(i8* %28, %struct.sfmt_info* %29, [1 x %struct.__va_list_tag]* %30)
  store i8* %31, i8** %5, align 8
  %32 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %33 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %32, i32 0, i32 11
  %34 = load i8, i8* %33, align 2
  %35 = sext i8 %34 to i64
  store i64 %35, i64* %7, align 8
  switch i64 %35, label %64 [
    i64 99, label %36
    i64 72, label %39
    i64 78, label %42
    i64 100, label %45
    i64 120, label %48
    i64 88, label %48
    i64 112, label %48
    i64 115, label %51
    i64 117, label %54
    i64 37, label %57
  ]

36:                                               ; preds = %26
  %37 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %38 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @charout(%struct.sfmt_info* %37, [1 x %struct.__va_list_tag]* %38)
  br label %73

39:                                               ; preds = %26
  %40 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %41 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @ipout(%struct.sfmt_info* %40, i32 0, [1 x %struct.__va_list_tag]* %41)
  br label %73

42:                                               ; preds = %26
  %43 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %44 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @ipout(%struct.sfmt_info* %43, i32 1, [1 x %struct.__va_list_tag]* %44)
  br label %73

45:                                               ; preds = %26
  %46 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %47 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @decout(%struct.sfmt_info* %46, i32 0, [1 x %struct.__va_list_tag]* %47)
  br label %73

48:                                               ; preds = %26, %26, %26
  %49 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %50 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @hexout(%struct.sfmt_info* %49, [1 x %struct.__va_list_tag]* %50)
  br label %73

51:                                               ; preds = %26
  %52 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %53 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @stringout(%struct.sfmt_info* %52, [1 x %struct.__va_list_tag]* %53)
  br label %73

54:                                               ; preds = %26
  %55 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %56 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  call void @decout(%struct.sfmt_info* %55, i32 1, [1 x %struct.__va_list_tag]* %56)
  br label %73

57:                                               ; preds = %26
  %58 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %59 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %58, i32 0, i32 4
  %60 = load void (i8*, i8)*, void (i8*, i8)** %59, align 8
  %61 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %62 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %61, i32 0, i32 3
  %63 = bitcast i8** %62 to i8*
  call void %60(i8* %63, i8 signext 37)
  br label %73

64:                                               ; preds = %26
  %65 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %66 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %65, i32 0, i32 4
  %67 = load void (i8*, i8)*, void (i8*, i8)** %66, align 8
  %68 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %69 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %68, i32 0, i32 3
  %70 = bitcast i8** %69 to i8*
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i8
  call void %67(i8* %70, i8 signext %72)
  br label %73

73:                                               ; preds = %64, %57, %54, %51, %48, %45, %42, %39, %36
  br label %74

74:                                               ; preds = %73, %17
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  br label %9

77:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprintf(i8* %0, i8* %1, ...) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.sfmt_info, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %6, i32 0, i32 3
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %6, i32 0, i32 4
  store void (i8*, i8)* @putstr, void (i8*, i8)** %9, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load i8*, i8** %4, align 8
  call void @_print_internal(%struct.sfmt_info* %6, i8* %12, [1 x %struct.__va_list_tag]* %5)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %14 = bitcast %struct.__va_list_tag* %13 to i8*
  call void @llvm.va_end(i8* %14)
  %15 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %6, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  store i8 0, i8* %16, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putstr(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i8**
  store i8** %7, i8*** %5, align 8
  %8 = load i8, i8* %4, align 1
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  store i8 %8, i8* %10, align 1
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.sfmt_info, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %4, i32 0, i32 3
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %4, i32 0, i32 4
  store void (i8*, i8)* @putb, void (i8*, i8)** %6, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_start(i8* %8)
  %9 = load i8*, i8** %2, align 8
  call void @_print_internal(%struct.sfmt_info* %4, i8* %9, [1 x %struct.__va_list_tag]* %3)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_end(i8* %11)
  ret void
}

declare dso_local void @_sys_charout(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @percent(i8* %0, %struct.sfmt_info* %1, [1 x %struct.__va_list_tag]* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sfmt_info*, align 8
  %6 = alloca [1 x %struct.__va_list_tag]*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.sfmt_info* %1, %struct.sfmt_info** %5, align 8
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** %6, align 8
  store i8 0, i8* %7, align 1
  %8 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %9 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %8, i32 0, i32 0
  store i64 -1, i64* %9, align 8
  %10 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %11 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %10, i32 0, i32 1
  store i64 6, i64* %11, align 8
  %12 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %13 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %12, i32 0, i32 6
  store i8 1, i8* %13, align 1
  %14 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %15 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %14, i32 0, i32 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %17 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %16, i32 0, i32 7
  store i8 0, i8* %17, align 2
  %18 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %19 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %18, i32 0, i32 9
  store i8 0, i8* %19, align 4
  %20 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %21 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %20, i32 0, i32 5
  store i8 0, i8* %21, align 8
  %22 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %23 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %22, i32 0, i32 11
  store i8 0, i8* %23, align 2
  %24 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %25 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %24, i32 0, i32 10
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %32 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %31, i32 0, i32 6
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %42 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %41, i32 0, i32 8
  store i8 1, i8* %42, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i8*, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %52 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %51, i32 0, i32 8
  %53 = load i8, i8* %52, align 1
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %57 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %56, i32 0, i32 5
  store i8 1, i8* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %58, %45
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 35
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %68 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %67, i32 0, i32 7
  store i8 1, i8* %68, align 2
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 48
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %78 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %77, i32 0, i32 6
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %83 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %82, i32 0, i32 9
  store i8 1, i8* %83, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %84, %71
  %88 = load i8*, i8** %4, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 42
  br i1 %91, label %92, label %131

92:                                               ; preds = %87
  %93 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %94 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %93, i64 0, i64 0
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ule i32 %96, 40
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr i8, i8* %100, i32 %96
  %102 = bitcast i8* %101 to i32*
  %103 = add i32 %96, 8
  store i32 %103, i32* %95, align 8
  br label %109

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = getelementptr i8, i8* %106, i32 8
  store i8* %108, i8** %105, align 8
  br label %109

109:                                              ; preds = %104, %98
  %110 = phi i32* [ %102, %98 ], [ %107, %104 ]
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %114 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %116 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %121 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %120, i32 0, i32 6
  store i8 0, i8* %121, align 1
  %122 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %123 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 0, %124
  %126 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %127 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %119, %109
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %4, align 8
  br label %173

131:                                              ; preds = %87
  %132 = call i16** @__ctype_b_loc() #5
  %133 = load i16*, i16** %132, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %133, i64 %137
  %139 = load i16, i16* %138, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %140, 2048
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %131
  %144 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %145 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %158, %143
  %147 = call i16** @__ctype_b_loc() #5
  %148 = load i16*, i16** %147, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i16, i16* %148, i64 %152
  %154 = load i16, i16* %153, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %155, 2048
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %160 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = mul nsw i64 %161, 10
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  %165 = load i8, i8* %163, align 1
  %166 = sext i8 %165 to i64
  %167 = add nsw i64 %162, %166
  %168 = sub nsw i64 %167, 48
  %169 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %170 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  br label %146

171:                                              ; preds = %146
  br label %172

172:                                              ; preds = %171, %131
  br label %173

173:                                              ; preds = %172, %128
  %174 = load i8*, i8** %4, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 46
  br i1 %177, label %178, label %240

178:                                              ; preds = %173
  store i8 1, i8* %7, align 1
  %179 = load i8*, i8** %4, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %4, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 42
  br i1 %184, label %185, label %210

185:                                              ; preds = %178
  %186 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %187 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %186, i64 0, i64 0
  %188 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ule i32 %189, 40
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr i8, i8* %193, i32 %189
  %195 = bitcast i8* %194 to i32*
  %196 = add i32 %189, 8
  store i32 %196, i32* %188, align 8
  br label %202

197:                                              ; preds = %185
  %198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %187, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = bitcast i8* %199 to i32*
  %201 = getelementptr i8, i8* %199, i32 8
  store i8* %201, i8** %198, align 8
  br label %202

202:                                              ; preds = %197, %191
  %203 = phi i32* [ %195, %191 ], [ %200, %197 ]
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %207 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  %208 = load i8*, i8** %4, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %4, align 8
  br label %239

210:                                              ; preds = %178
  %211 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %212 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %211, i32 0, i32 1
  store i64 0, i64* %212, align 8
  br label %213

213:                                              ; preds = %225, %210
  %214 = call i16** @__ctype_b_loc() #5
  %215 = load i16*, i16** %214, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, i16* %215, i64 %219
  %221 = load i16, i16* %220, align 2
  %222 = zext i16 %221 to i32
  %223 = and i32 %222, 2048
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %213
  %226 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %227 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = mul nsw i64 %228, 10
  %230 = load i8*, i8** %4, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %4, align 8
  %232 = load i8, i8* %230, align 1
  %233 = sext i8 %232 to i64
  %234 = add nsw i64 %229, %233
  %235 = sub nsw i64 %234, 48
  %236 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %237 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %236, i32 0, i32 1
  store i64 %235, i64* %237, align 8
  br label %213

238:                                              ; preds = %213
  br label %239

239:                                              ; preds = %238, %202
  br label %240

240:                                              ; preds = %239, %173
  %241 = load i8*, i8** %4, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 104
  br i1 %244, label %255, label %245

245:                                              ; preds = %240
  %246 = load i8*, i8** %4, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 108
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = load i8*, i8** %4, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 76
  br i1 %254, label %255, label %261

255:                                              ; preds = %250, %245, %240
  %256 = load i8*, i8** %4, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %4, align 8
  %258 = load i8, i8* %256, align 1
  %259 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %260 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %259, i32 0, i32 10
  store i8 %258, i8* %260, align 1
  br label %261

261:                                              ; preds = %255, %250
  %262 = load i8, i8* %7, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %261
  %266 = load i8*, i8** %4, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp ne i32 %268, 99
  br i1 %269, label %270, label %278

270:                                              ; preds = %265
  %271 = load i8*, i8** %4, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 37
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %277 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %276, i32 0, i32 1
  store i64 0, i64* %277, align 8
  br label %278

278:                                              ; preds = %275, %270, %265, %261
  %279 = load i8*, i8** %4, align 8
  %280 = load i8, i8* %279, align 1
  %281 = load %struct.sfmt_info*, %struct.sfmt_info** %5, align 8
  %282 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %281, i32 0, i32 11
  store i8 %280, i8* %282, align 2
  %283 = load i8*, i8** %4, align 8
  ret i8* %283
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charout(%struct.sfmt_info* %0, [1 x %struct.__va_list_tag]* %1) #0 {
  %3 = alloca %struct.sfmt_info*, align 8
  %4 = alloca [1 x %struct.__va_list_tag]*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.sfmt_info* %0, %struct.sfmt_info** %3, align 8
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %4, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i64*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 8
  br label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i64*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i64* [ %15, %11 ], [ %20, %17 ]
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %27, align 1
  %28 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  call void @strout(%struct.sfmt_info* %28, i8* %29, i64 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipout(%struct.sfmt_info* %0, i32 %1, [1 x %struct.__va_list_tag]* %2) #0 {
  %4 = alloca %struct.sfmt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sfmt_info* %0, %struct.sfmt_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** %6, align 8
  %14 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 8
  br label %30

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 24
  %39 = and i32 %38, 255
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 255
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = lshr i32 %46, 0
  %48 = and i32 %47, 255
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %52, %54
  %56 = load i32, i32* %13, align 4
  %57 = shl i32 %56, 24
  %58 = or i32 %55, %57
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %36, %30
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = call i8* @write_oct(i8* %60, i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i32, i32* %7, align 4
  %65 = lshr i32 %64, 8
  store i32 %65, i32* %7, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 46, i8* %66, align 1
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 255
  %71 = call i8* @write_oct(i8* %68, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = lshr i32 %72, 8
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %9, align 8
  store i8 46, i8* %74, align 1
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 255
  %79 = call i8* @write_oct(i8* %76, i32 %78)
  store i8* %79, i8** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = lshr i32 %80, 8
  store i32 %81, i32* %7, align 4
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %9, align 8
  store i8 46, i8* %82, align 1
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 255
  %87 = call i8* @write_oct(i8* %84, i32 %86)
  store i8* %87, i8** %9, align 8
  %88 = load i8*, i8** %9, align 8
  store i8 0, i8* %88, align 1
  %89 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  call void @strout(%struct.sfmt_info* %89, i8* %90, i64 %95)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decout(%struct.sfmt_info* %0, i32 %1, [1 x %struct.__va_list_tag]* %2) #0 {
  %4 = alloca %struct.sfmt_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag]*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sfmt_info* %0, %struct.sfmt_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** %6, align 8
  store i64 0, i64* %12, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 19
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %17, i8** %8, align 8
  store i8 0, i8* %16, align 1
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %3
  %21 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %22 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %21, i32 0, i32 10
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 104
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %27, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i64*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 8
  br label %43

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i64* [ %36, %32 ], [ %41, %38 ]
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i16
  %47 = zext i16 %46 to i64
  store i64 %47, i64* %11, align 8
  br label %68

48:                                               ; preds = %20
  %49 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %49, i64 0, i64 0
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i64*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 8
  br label %65

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i64*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i64* [ %58, %54 ], [ %63, %60 ]
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %65, %43
  store i8 0, i8* %10, align 1
  br label %126

69:                                               ; preds = %3
  %70 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %71 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %70, i32 0, i32 10
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 104
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %76, i64 0, i64 0
  %78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ule i32 %79, 40
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr i8, i8* %83, i32 %79
  %85 = bitcast i8* %84 to i64*
  %86 = add i32 %79, 8
  store i32 %86, i32* %78, align 8
  br label %92

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %77, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = bitcast i8* %89 to i64*
  %91 = getelementptr i8, i8* %89, i32 8
  store i8* %91, i8** %88, align 8
  br label %92

92:                                               ; preds = %87, %81
  %93 = phi i64* [ %85, %81 ], [ %90, %87 ]
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i16
  %96 = sext i16 %95 to i64
  store i64 %96, i64* %14, align 8
  br label %117

97:                                               ; preds = %69
  %98 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %6, align 8
  %99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %98, i64 0, i64 0
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ule i32 %101, 40
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr i8, i8* %105, i32 %101
  %107 = bitcast i8* %106 to i64*
  %108 = add i32 %101, 8
  store i32 %108, i32* %100, align 8
  br label %114

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %99, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = bitcast i8* %111 to i64*
  %113 = getelementptr i8, i8* %111, i32 8
  store i8* %113, i8** %110, align 8
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i64* [ %107, %103 ], [ %112, %109 ]
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %114, %92
  %118 = load i64, i64* %14, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  store i8 1, i8* %10, align 1
  %121 = load i64, i64* %14, align 8
  %122 = sub nsw i64 0, %121
  store i64 %122, i64* %14, align 8
  br label %124

123:                                              ; preds = %117
  store i8 0, i8* %10, align 1
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i64, i64* %14, align 8
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %124, %68
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = call i8* @write_u(i8* %127, i64 %128)
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = ptrtoint i8* %130 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  store i64 %134, i64* %12, align 8
  %135 = load i8*, i8** %9, align 8
  store i8* %135, i8** %8, align 8
  br label %136

136:                                              ; preds = %142, %126
  %137 = load i64, i64* %12, align 8
  %138 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %139 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %137, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %8, align 8
  store i8 48, i8* %143, align 1
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %12, align 8
  br label %136

147:                                              ; preds = %136
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %8, align 8
  %150 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %151 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %150, i32 0, i32 9
  %152 = load i8, i8* %151, align 4
  %153 = icmp ne i8 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %147
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strlen(i8* %155) #6
  %157 = add i64 1, %156
  store i64 %157, i64* %13, align 8
  br label %158

158:                                              ; preds = %164, %154
  %159 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %160 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %13, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %166, i8** %8, align 8
  store i8 48, i8* %166, align 1
  %167 = load i64, i64* %13, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %13, align 8
  br label %158

169:                                              ; preds = %158
  %170 = load i64, i64* %13, align 8
  %171 = add nsw i64 %170, -1
  store i64 %171, i64* %13, align 8
  br label %172

172:                                              ; preds = %169, %147
  %173 = load i8, i8* %10, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 -1
  store i8* %177, i8** %8, align 8
  store i8 45, i8* %177, align 1
  br label %212

178:                                              ; preds = %172
  %179 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %180 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %179, i32 0, i32 8
  %181 = load i8, i8* %180, align 1
  %182 = icmp ne i8 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %8, align 8
  store i8 43, i8* %185, align 1
  br label %211

186:                                              ; preds = %178
  %187 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %188 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %187, i32 0, i32 5
  %189 = load i8, i8* %188, align 8
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 -1
  store i8* %193, i8** %8, align 8
  store i8 32, i8* %193, align 1
  br label %210

194:                                              ; preds = %186
  %195 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %196 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %195, i32 0, i32 9
  %197 = load i8, i8* %196, align 4
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %194
  %201 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %202 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %13, align 8
  %205 = icmp sgt i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %200
  %207 = load i8*, i8** %8, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %8, align 8
  store i8 48, i8* %208, align 1
  br label %209

209:                                              ; preds = %206, %200, %194
  br label %210

210:                                              ; preds = %209, %191
  br label %211

211:                                              ; preds = %210, %183
  br label %212

212:                                              ; preds = %211, %175
  %213 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %214 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %213, i32 0, i32 1
  store i64 -1, i64* %214, align 8
  %215 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = load i8*, i8** %8, align 8
  %218 = call i64 @strlen(i8* %217) #6
  call void @strout(%struct.sfmt_info* %215, i8* %216, i64 %218)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexout(%struct.sfmt_info* %0, [1 x %struct.__va_list_tag]* %1) #0 {
  %3 = alloca %struct.sfmt_info*, align 8
  %4 = alloca [1 x %struct.__va_list_tag]*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sfmt_info* %0, %struct.sfmt_info** %3, align 8
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %4, align 8
  %11 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %12 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %11, i32 0, i32 11
  %13 = load i8, i8* %12, align 2
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 88
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @hexout.__HEXstr, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @hexout.__hexstr, i64 0, i64 0)
  store i8* %17, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %19 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %18, i32 0, i32 10
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 104
  br i1 %22, label %23, label %45

23:                                               ; preds = %2
  %24 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %24, i64 0, i64 0
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ule i32 %27, 40
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i32 %27
  %33 = bitcast i8* %32 to i64*
  %34 = add i32 %27, 8
  store i32 %34, i32* %26, align 8
  br label %40

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i64*
  %39 = getelementptr i8, i8* %37, i32 8
  store i8* %39, i8** %36, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi i64* [ %33, %29 ], [ %38, %35 ]
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i16
  %44 = zext i16 %43 to i64
  store i64 %44, i64* %8, align 8
  br label %65

45:                                               ; preds = %2
  %46 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %46, i64 0, i64 0
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ule i32 %49, 40
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i32 %49
  %55 = bitcast i8* %54 to i64*
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 8
  br label %62

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = getelementptr i8, i8* %59, i32 8
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i64* [ %55, %51 ], [ %60, %57 ]
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %62, %40
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 15
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 -1
  store i8* %68, i8** %6, align 8
  store i8 0, i8* %67, align 1
  br label %69

69:                                               ; preds = %79, %65
  %70 = load i8*, i8** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = and i64 %71, 15
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %69
  %80 = load i64, i64* %8, align 8
  %81 = lshr i64 %80, 4
  store i64 %81, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %69, label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %90, %83
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %87 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %6, align 8
  store i8 48, i8* %91, align 1
  %93 = load i64, i64* %9, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %84

95:                                               ; preds = %84
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  %98 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %99 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %98, i32 0, i32 9
  %100 = load i8, i8* %99, align 4
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %140

102:                                              ; preds = %95
  %103 = load i8*, i8** %6, align 8
  %104 = call i64 @strlen(i8* %103) #6
  store i64 %104, i64* %10, align 8
  %105 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %106 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %105, i32 0, i32 7
  %107 = load i8, i8* %106, align 2
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %102
  %110 = load i64, i64* %10, align 8
  %111 = add nsw i64 %110, 2
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %118, %109
  %113 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %114 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %6, align 8
  store i8 48, i8* %120, align 1
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %112

123:                                              ; preds = %112
  %124 = load i64, i64* %10, align 8
  %125 = sub nsw i64 %124, 2
  store i64 %125, i64* %10, align 8
  br label %139

126:                                              ; preds = %102
  br label %127

127:                                              ; preds = %133, %126
  %128 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %129 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp sgt i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %135, i8** %6, align 8
  store i8 48, i8* %135, align 1
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %127

138:                                              ; preds = %127
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %95
  %141 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %142 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %141, i32 0, i32 7
  %143 = load i8, i8* %142, align 2
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %148 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %147, i32 0, i32 11
  %149 = load i8, i8* %148, align 2
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 112
  br i1 %151, label %152, label %173

152:                                              ; preds = %146, %140
  %153 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %154 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %153, i32 0, i32 11
  %155 = load i8, i8* %154, align 2
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 120
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %160 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %159, i32 0, i32 11
  %161 = load i8, i8* %160, align 2
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 112
  br i1 %163, label %164, label %167

164:                                              ; preds = %158, %152
  %165 = load i8*, i8** %6, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %166, i8** %6, align 8
  store i8 120, i8* %166, align 1
  br label %170

167:                                              ; preds = %158
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 -1
  store i8* %169, i8** %6, align 8
  store i8 88, i8* %169, align 1
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 -1
  store i8* %172, i8** %6, align 8
  store i8 48, i8* %172, align 1
  br label %173

173:                                              ; preds = %170, %146
  %174 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %175 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %174, i32 0, i32 1
  store i64 -1, i64* %175, align 8
  %176 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = call i64 @strlen(i8* %178) #6
  call void @strout(%struct.sfmt_info* %176, i8* %177, i64 %179)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stringout(%struct.sfmt_info* %0, [1 x %struct.__va_list_tag]* %1) #0 {
  %3 = alloca %struct.sfmt_info*, align 8
  %4 = alloca [1 x %struct.__va_list_tag]*, align 8
  %5 = alloca i8*, align 8
  store %struct.sfmt_info* %0, %struct.sfmt_info** %3, align 8
  store [1 x %struct.__va_list_tag]* %1, [1 x %struct.__va_list_tag]** %4, align 8
  %6 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %4, align 8
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 8
  br label %22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32* [ %15, %11 ], [ %20, %17 ]
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %30

30:                                               ; preds = %29, %22
  %31 = load %struct.sfmt_info*, %struct.sfmt_info** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strlen(i8* %33) #6
  call void @strout(%struct.sfmt_info* %31, i8* %32, i64 %34)
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strout(%struct.sfmt_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.sfmt_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.sfmt_info* %0, %struct.sfmt_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 32, i8* %9, align 1
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %3
  %15 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %16 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  br label %26

22:                                               ; preds = %14
  %23 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %24 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %22 ]
  store i64 %27, i64* %7, align 8
  %28 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %29 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %28, i32 0, i32 6
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %47, %32
  %37 = load i64, i64* %8, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %41 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %40, i32 0, i32 4
  %42 = load void (i8*, i8)*, void (i8*, i8)** %41, align 8
  %43 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %44 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %43, i32 0, i32 3
  %45 = bitcast i8** %44 to i8*
  %46 = load i8, i8* %9, align 1
  call void %42(i8* %45, i8 signext %46)
  br label %47

47:                                               ; preds = %39
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %8, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %50, %26
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = icmp sgt i64 %59, 0
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i1 [ false, %53 ], [ %60, %58 ]
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  %64 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %65 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %64, i32 0, i32 4
  %66 = load void (i8*, i8)*, void (i8*, i8)** %65, align 8
  %67 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %68 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %67, i32 0, i32 3
  %69 = bitcast i8** %68 to i8*
  %70 = load i32, i32* %10, align 4
  %71 = trunc i32 %70 to i8
  call void %66(i8* %69, i8 signext %71)
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %63
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %6, align 8
  br label %53

79:                                               ; preds = %61
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %80, %81
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %94, %79
  %84 = load i64, i64* %8, align 8
  %85 = icmp ugt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %88 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %87, i32 0, i32 4
  %89 = load void (i8*, i8)*, void (i8*, i8)** %88, align 8
  %90 = load %struct.sfmt_info*, %struct.sfmt_info** %4, align 8
  %91 = getelementptr inbounds %struct.sfmt_info, %struct.sfmt_info* %90, i32 0, i32 3
  %92 = bitcast i8** %91 to i8*
  %93 = load i8, i8* %9, align 1
  call void %89(i8* %92, i8 signext %93)
  br label %94

94:                                               ; preds = %86
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %8, align 8
  br label %83

97:                                               ; preds = %83
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @write_oct(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ugt i32 %5, 99
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 2
  store i8* %9, i8** %3, align 8
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %11, 9
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %7
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @write_u(i8* %18, i64 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  ret i8* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @write_u(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %14, %2
  %6 = load i64, i64* %4, align 8
  %7 = urem i64 %6, 10
  %8 = add i64 %7, 48
  %9 = trunc i64 %8 to i8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %11, i8** %3, align 8
  store i8 %9, i8* %10, align 1
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 10
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %5
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %5, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
