; ModuleID = './c_code/temp_compile/Binary Search Tree - Delete any node.c'
source_filename = "./c_code/temp_compile/Binary Search Tree - Delete any node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bst = type { i32, %struct.bst*, %struct.bst* }

@root = dso_local global %struct.bst* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"\0APre-Order Tree printing:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0APre-Order Tree printing after deletion:\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @insertNode(i32 47)
  call void @insertNode(i32 40)
  call void @insertNode(i32 54)
  call void @insertNode(i32 38)
  call void @insertNode(i32 43)
  call void @insertNode(i32 49)
  call void @insertNode(i32 39)
  call void @insertNode(i32 45)
  call void @insertNode(i32 44)
  call void @insertNode(i32 30)
  call void @insertNode(i32 41)
  call void @insertNode(i32 70)
  call void @insertNode(i32 46)
  call void @insertNode(i32 59)
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.bst*, %struct.bst** @root, align 8
  call void @preOrderPrint(%struct.bst* %3)
  %4 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %5 = load %struct.bst*, %struct.bst** @root, align 8
  %6 = call %struct.bst* @deleteNode(%struct.bst* %5, i32 43)
  store %struct.bst* %6, %struct.bst** @root, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %8 = load %struct.bst*, %struct.bst** @root, align 8
  call void @preOrderPrint(%struct.bst* %8)
  %9 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bst*, align 8
  %4 = alloca %struct.bst*, align 8
  %5 = alloca %struct.bst*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call noalias i8* @malloc(i64 24) #3
  %7 = bitcast i8* %6 to %struct.bst*
  store %struct.bst* %7, %struct.bst** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  %10 = getelementptr inbounds %struct.bst, %struct.bst* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bst*, %struct.bst** %3, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  store %struct.bst* null, %struct.bst** %12, align 8
  %13 = load %struct.bst*, %struct.bst** %3, align 8
  %14 = getelementptr inbounds %struct.bst, %struct.bst* %13, i32 0, i32 2
  store %struct.bst* null, %struct.bst** %14, align 8
  %15 = load %struct.bst*, %struct.bst** @root, align 8
  %16 = icmp eq %struct.bst* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %18, %struct.bst** @root, align 8
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.bst*, %struct.bst** @root, align 8
  store %struct.bst* %20, %struct.bst** %4, align 8
  store %struct.bst* null, %struct.bst** %5, align 8
  br label %21

21:                                               ; preds = %19, %50
  %22 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %22, %struct.bst** %5, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.bst*, %struct.bst** %5, align 8
  %25 = getelementptr inbounds %struct.bst, %struct.bst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.bst*, %struct.bst** %4, align 8
  %30 = getelementptr inbounds %struct.bst, %struct.bst* %29, i32 0, i32 1
  %31 = load %struct.bst*, %struct.bst** %30, align 8
  store %struct.bst* %31, %struct.bst** %4, align 8
  %32 = load %struct.bst*, %struct.bst** %4, align 8
  %33 = icmp eq %struct.bst* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.bst*, %struct.bst** %3, align 8
  %36 = load %struct.bst*, %struct.bst** %5, align 8
  %37 = getelementptr inbounds %struct.bst, %struct.bst* %36, i32 0, i32 1
  store %struct.bst* %35, %struct.bst** %37, align 8
  br label %51

38:                                               ; preds = %28
  br label %50

39:                                               ; preds = %21
  %40 = load %struct.bst*, %struct.bst** %4, align 8
  %41 = getelementptr inbounds %struct.bst, %struct.bst* %40, i32 0, i32 2
  %42 = load %struct.bst*, %struct.bst** %41, align 8
  store %struct.bst* %42, %struct.bst** %4, align 8
  %43 = load %struct.bst*, %struct.bst** %4, align 8
  %44 = icmp eq %struct.bst* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.bst*, %struct.bst** %3, align 8
  %47 = load %struct.bst*, %struct.bst** %5, align 8
  %48 = getelementptr inbounds %struct.bst, %struct.bst* %47, i32 0, i32 2
  store %struct.bst* %46, %struct.bst** %48, align 8
  br label %51

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %38
  br label %21

51:                                               ; preds = %34, %45, %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrderPrint(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %2, align 8
  %3 = load %struct.bst*, %struct.bst** %2, align 8
  %4 = icmp eq %struct.bst* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.bst*, %struct.bst** %2, align 8
  %8 = getelementptr inbounds %struct.bst, %struct.bst* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load %struct.bst*, %struct.bst** %2, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  %13 = load %struct.bst*, %struct.bst** %12, align 8
  call void @preOrderPrint(%struct.bst* %13)
  %14 = load %struct.bst*, %struct.bst** %2, align 8
  %15 = getelementptr inbounds %struct.bst, %struct.bst* %14, i32 0, i32 2
  %16 = load %struct.bst*, %struct.bst** %15, align 8
  call void @preOrderPrint(%struct.bst* %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @deleteNode(%struct.bst* %0, i32 %1) #0 {
  %3 = alloca %struct.bst*, align 8
  %4 = alloca %struct.bst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bst*, %struct.bst** %4, align 8
  %8 = icmp eq %struct.bst* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.bst* null, %struct.bst** %3, align 8
  br label %93

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.bst*, %struct.bst** %4, align 8
  %13 = getelementptr inbounds %struct.bst, %struct.bst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.bst*, %struct.bst** %4, align 8
  %18 = getelementptr inbounds %struct.bst, %struct.bst* %17, i32 0, i32 1
  %19 = load %struct.bst*, %struct.bst** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.bst* @deleteNode(%struct.bst* %19, i32 %20)
  %22 = load %struct.bst*, %struct.bst** %4, align 8
  %23 = getelementptr inbounds %struct.bst, %struct.bst* %22, i32 0, i32 1
  store %struct.bst* %21, %struct.bst** %23, align 8
  br label %90

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.bst*, %struct.bst** %4, align 8
  %27 = getelementptr inbounds %struct.bst, %struct.bst* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.bst*, %struct.bst** %4, align 8
  %32 = getelementptr inbounds %struct.bst, %struct.bst* %31, i32 0, i32 2
  %33 = load %struct.bst*, %struct.bst** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.bst* @deleteNode(%struct.bst* %33, i32 %34)
  %36 = load %struct.bst*, %struct.bst** %4, align 8
  %37 = getelementptr inbounds %struct.bst, %struct.bst* %36, i32 0, i32 2
  store %struct.bst* %35, %struct.bst** %37, align 8
  br label %89

38:                                               ; preds = %24
  %39 = load %struct.bst*, %struct.bst** %4, align 8
  %40 = getelementptr inbounds %struct.bst, %struct.bst* %39, i32 0, i32 1
  %41 = load %struct.bst*, %struct.bst** %40, align 8
  %42 = icmp eq %struct.bst* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.bst*, %struct.bst** %4, align 8
  %45 = getelementptr inbounds %struct.bst, %struct.bst* %44, i32 0, i32 2
  %46 = load %struct.bst*, %struct.bst** %45, align 8
  %47 = icmp eq %struct.bst* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store %struct.bst* null, %struct.bst** %4, align 8
  br label %88

49:                                               ; preds = %43, %38
  %50 = load %struct.bst*, %struct.bst** %4, align 8
  %51 = getelementptr inbounds %struct.bst, %struct.bst* %50, i32 0, i32 1
  %52 = load %struct.bst*, %struct.bst** %51, align 8
  %53 = icmp eq %struct.bst* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.bst*, %struct.bst** %4, align 8
  %56 = getelementptr inbounds %struct.bst, %struct.bst* %55, i32 0, i32 2
  %57 = load %struct.bst*, %struct.bst** %56, align 8
  store %struct.bst* %57, %struct.bst** %4, align 8
  br label %87

58:                                               ; preds = %49
  %59 = load %struct.bst*, %struct.bst** %4, align 8
  %60 = getelementptr inbounds %struct.bst, %struct.bst* %59, i32 0, i32 2
  %61 = load %struct.bst*, %struct.bst** %60, align 8
  %62 = icmp eq %struct.bst* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.bst*, %struct.bst** %4, align 8
  %65 = getelementptr inbounds %struct.bst, %struct.bst* %64, i32 0, i32 1
  %66 = load %struct.bst*, %struct.bst** %65, align 8
  store %struct.bst* %66, %struct.bst** %4, align 8
  br label %86

67:                                               ; preds = %58
  %68 = load %struct.bst*, %struct.bst** %4, align 8
  %69 = getelementptr inbounds %struct.bst, %struct.bst* %68, i32 0, i32 2
  %70 = load %struct.bst*, %struct.bst** %69, align 8
  %71 = call %struct.bst* @findMinimum(%struct.bst* %70)
  store %struct.bst* %71, %struct.bst** %6, align 8
  %72 = load %struct.bst*, %struct.bst** %6, align 8
  %73 = getelementptr inbounds %struct.bst, %struct.bst* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bst*, %struct.bst** %4, align 8
  %76 = getelementptr inbounds %struct.bst, %struct.bst* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bst*, %struct.bst** %4, align 8
  %78 = getelementptr inbounds %struct.bst, %struct.bst* %77, i32 0, i32 2
  %79 = load %struct.bst*, %struct.bst** %78, align 8
  %80 = load %struct.bst*, %struct.bst** %6, align 8
  %81 = getelementptr inbounds %struct.bst, %struct.bst* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.bst* @deleteNode(%struct.bst* %79, i32 %82)
  %84 = load %struct.bst*, %struct.bst** %4, align 8
  %85 = getelementptr inbounds %struct.bst, %struct.bst* %84, i32 0, i32 2
  store %struct.bst* %83, %struct.bst** %85, align 8
  br label %86

86:                                               ; preds = %67, %63
  br label %87

87:                                               ; preds = %86, %54
  br label %88

88:                                               ; preds = %87, %48
  br label %89

89:                                               ; preds = %88, %30
  br label %90

90:                                               ; preds = %89, %16
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.bst*, %struct.bst** %4, align 8
  store %struct.bst* %92, %struct.bst** %3, align 8
  br label %93

93:                                               ; preds = %91, %9
  %94 = load %struct.bst*, %struct.bst** %3, align 8
  ret %struct.bst* %94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bst* @findMinimum(%struct.bst* %0) #0 {
  %2 = alloca %struct.bst*, align 8
  %3 = alloca %struct.bst*, align 8
  store %struct.bst* %0, %struct.bst** %3, align 8
  %4 = load %struct.bst*, %struct.bst** %3, align 8
  %5 = getelementptr inbounds %struct.bst, %struct.bst* %4, i32 0, i32 1
  %6 = load %struct.bst*, %struct.bst** %5, align 8
  %7 = icmp eq %struct.bst* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.bst*, %struct.bst** %3, align 8
  store %struct.bst* %9, %struct.bst** %2, align 8
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.bst*, %struct.bst** %3, align 8
  %12 = getelementptr inbounds %struct.bst, %struct.bst* %11, i32 0, i32 1
  %13 = load %struct.bst*, %struct.bst** %12, align 8
  %14 = call %struct.bst* @findMinimum(%struct.bst* %13)
  store %struct.bst* %14, %struct.bst** %2, align 8
  br label %15

15:                                               ; preds = %10, %8
  %16 = load %struct.bst*, %struct.bst** %2, align 8
  ret %struct.bst* %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
