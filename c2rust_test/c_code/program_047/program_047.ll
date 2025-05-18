; ModuleID = './c_code/temp_compile/AVLTree.c'
source_filename = "./c_code/temp_compile/AVLTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Node = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0APreorder traversal of tree is : \00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0APreorder traversal after deleting 10 is : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @NewNode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  %4 = call noalias ptr @malloc(i64 noundef 24) #4
  store ptr %4, ptr %3, align 8
  %5 = load i32, ptr %2, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.Node, ptr %6, i32 0, i32 0
  store i32 %5, ptr %7, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 2
  store ptr null, ptr %9, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds nuw %struct.Node, ptr %10, i32 0, i32 3
  store ptr null, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 1
  store i32 1, ptr %13, align 4
  %14 = load ptr, ptr %3, align 8
  ret ptr %14
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @height(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i32, ptr %2, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Balance(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 @height(ptr noundef %10)
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @height(ptr noundef %14)
  %16 = sub nsw i32 %11, %15
  store i32 %16, ptr %2, align 4
  br label %17

17:                                               ; preds = %7, %6
  %18 = load i32, ptr %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @LeftRotate(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %4, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 2
  store ptr %11, ptr %13, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 3
  store ptr %14, ptr %16, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @height(ptr noundef %19)
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @height(ptr noundef %23)
  %25 = call i32 @max(i32 noundef %20, i32 noundef %24)
  %26 = add nsw i32 %25, 1
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @height(ptr noundef %31)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @height(ptr noundef %35)
  %37 = call i32 @max(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds nuw %struct.Node, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = load ptr, ptr %3, align 8
  ret ptr %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @RightRotate(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct.Node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.Node, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %4, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.Node, ptr %12, i32 0, i32 3
  store ptr %11, ptr %13, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.Node, ptr %15, i32 0, i32 2
  store ptr %14, ptr %16, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds nuw %struct.Node, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @height(ptr noundef %19)
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @height(ptr noundef %23)
  %25 = call i32 @max(i32 noundef %20, i32 noundef %24)
  %26 = add nsw i32 %25, 1
  %27 = load ptr, ptr %2, align 8
  %28 = getelementptr inbounds nuw %struct.Node, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds nuw %struct.Node, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @height(ptr noundef %31)
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @height(ptr noundef %35)
  %37 = call i32 @max(i32 noundef %32, i32 noundef %36)
  %38 = add nsw i32 %37, 1
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds nuw %struct.Node, ptr %39, i32 0, i32 1
  store i32 %38, ptr %40, align 4
  %41 = load ptr, ptr %3, align 8
  ret ptr %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preorder(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.Node, ptr %7, i32 0, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.Node, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @preorder(ptr noundef %13)
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  call void @preorder(ptr noundef %16)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @FindMin(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.Node, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.Node, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %2, align 8
  br label %3

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8
  ret ptr %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @Delete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %10 = load ptr, ptr %4, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  store ptr %13, ptr %3, align 8
  br label %194

14:                                               ; preds = %2
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct.Node, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %struct.Node, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %5, align 4
  %25 = call ptr @Delete(ptr noundef %23, i32 noundef %24)
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.Node, ptr %26, i32 0, i32 2
  store ptr %25, ptr %27, align 8
  br label %113

28:                                               ; preds = %14
  %29 = load i32, ptr %5, align 4
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds nuw %struct.Node, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds nuw %struct.Node, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %5, align 4
  %39 = call ptr @Delete(ptr noundef %37, i32 noundef %38)
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.Node, ptr %40, i32 0, i32 3
  store ptr %39, ptr %41, align 8
  br label %112

42:                                               ; preds = %28
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.Node, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load ptr, ptr %4, align 8
  call void @free(ptr noundef %53) #5
  store ptr null, ptr %4, align 8
  br label %111

54:                                               ; preds = %47, %42
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.Node, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds nuw %struct.Node, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds nuw %struct.Node, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %6, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds nuw %struct.Node, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr %4, align 8
  %71 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %71) #5
  br label %110

72:                                               ; preds = %59, %54
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds nuw %struct.Node, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds nuw %struct.Node, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load ptr, ptr %4, align 8
  %84 = getelementptr inbounds nuw %struct.Node, ptr %83, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %7, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds nuw %struct.Node, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  store ptr %88, ptr %4, align 8
  %89 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %89) #5
  br label %109

90:                                               ; preds = %77, %72
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr inbounds nuw %struct.Node, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = call ptr @FindMin(ptr noundef %93)
  store ptr %94, ptr %8, align 8
  %95 = load ptr, ptr %8, align 8
  %96 = getelementptr inbounds nuw %struct.Node, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8
  %98 = load ptr, ptr %4, align 8
  %99 = getelementptr inbounds nuw %struct.Node, ptr %98, i32 0, i32 0
  store i32 %97, ptr %99, align 8
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds nuw %struct.Node, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %8, align 8
  %104 = getelementptr inbounds nuw %struct.Node, ptr %103, i32 0, i32 0
  %105 = load i32, ptr %104, align 8
  %106 = call ptr @Delete(ptr noundef %102, i32 noundef %105)
  %107 = load ptr, ptr %4, align 8
  %108 = getelementptr inbounds nuw %struct.Node, ptr %107, i32 0, i32 3
  store ptr %106, ptr %108, align 8
  br label %109

109:                                              ; preds = %90, %82
  br label %110

110:                                              ; preds = %109, %64
  br label %111

111:                                              ; preds = %110, %52
  br label %112

112:                                              ; preds = %111, %34
  br label %113

113:                                              ; preds = %112, %20
  %114 = load ptr, ptr %4, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load ptr, ptr %4, align 8
  store ptr %117, ptr %3, align 8
  br label %194

118:                                              ; preds = %113
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds nuw %struct.Node, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = call i32 @height(ptr noundef %121)
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds nuw %struct.Node, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = call i32 @height(ptr noundef %125)
  %127 = call i32 @max(i32 noundef %122, i32 noundef %126)
  %128 = add nsw i32 1, %127
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr inbounds nuw %struct.Node, ptr %129, i32 0, i32 1
  store i32 %128, ptr %130, align 4
  %131 = load ptr, ptr %4, align 8
  %132 = call i32 @Balance(ptr noundef %131)
  store i32 %132, ptr %9, align 4
  %133 = load i32, ptr %9, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %144

135:                                              ; preds = %118
  %136 = load ptr, ptr %4, align 8
  %137 = getelementptr inbounds nuw %struct.Node, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = call i32 @Balance(ptr noundef %138)
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load ptr, ptr %4, align 8
  %143 = call ptr @RightRotate(ptr noundef %142)
  store ptr %143, ptr %3, align 8
  br label %194

144:                                              ; preds = %135, %118
  %145 = load i32, ptr %9, align 4
  %146 = icmp slt i32 %145, -1
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load ptr, ptr %4, align 8
  %149 = getelementptr inbounds nuw %struct.Node, ptr %148, i32 0, i32 3
  %150 = load ptr, ptr %149, align 8
  %151 = call i32 @Balance(ptr noundef %150)
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load ptr, ptr %4, align 8
  %155 = call ptr @LeftRotate(ptr noundef %154)
  store ptr %155, ptr %3, align 8
  br label %194

156:                                              ; preds = %147, %144
  %157 = load i32, ptr %9, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load ptr, ptr %4, align 8
  %161 = getelementptr inbounds nuw %struct.Node, ptr %160, i32 0, i32 2
  %162 = load ptr, ptr %161, align 8
  %163 = call i32 @Balance(ptr noundef %162)
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load ptr, ptr %4, align 8
  %167 = getelementptr inbounds nuw %struct.Node, ptr %166, i32 0, i32 2
  %168 = load ptr, ptr %167, align 8
  %169 = call ptr @LeftRotate(ptr noundef %168)
  %170 = load ptr, ptr %4, align 8
  %171 = getelementptr inbounds nuw %struct.Node, ptr %170, i32 0, i32 2
  store ptr %169, ptr %171, align 8
  %172 = load ptr, ptr %4, align 8
  %173 = call ptr @RightRotate(ptr noundef %172)
  store ptr %173, ptr %3, align 8
  br label %194

174:                                              ; preds = %159, %156
  %175 = load i32, ptr %9, align 4
  %176 = icmp slt i32 %175, -1
  br i1 %176, label %177, label %192

177:                                              ; preds = %174
  %178 = load ptr, ptr %4, align 8
  %179 = getelementptr inbounds nuw %struct.Node, ptr %178, i32 0, i32 3
  %180 = load ptr, ptr %179, align 8
  %181 = call i32 @Balance(ptr noundef %180)
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load ptr, ptr %4, align 8
  %185 = getelementptr inbounds nuw %struct.Node, ptr %184, i32 0, i32 3
  %186 = load ptr, ptr %185, align 8
  %187 = call ptr @RightRotate(ptr noundef %186)
  %188 = load ptr, ptr %4, align 8
  %189 = getelementptr inbounds nuw %struct.Node, ptr %188, i32 0, i32 3
  store ptr %187, ptr %189, align 8
  %190 = load ptr, ptr %4, align 8
  %191 = call ptr @LeftRotate(ptr noundef %190)
  store ptr %191, ptr %3, align 8
  br label %194

192:                                              ; preds = %177, %174
  %193 = load ptr, ptr %4, align 8
  store ptr %193, ptr %3, align 8
  br label %194

194:                                              ; preds = %192, %183, %165, %153, %141, %116, %12
  %195 = load ptr, ptr %3, align 8
  ret ptr %195
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @Insert(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  %11 = call ptr @NewNode(i32 noundef %10)
  store ptr %11, ptr %3, align 8
  br label %127

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct.Node, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds nuw %struct.Node, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %5, align 4
  %23 = call ptr @Insert(ptr noundef %21, i32 noundef %22)
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds nuw %struct.Node, ptr %24, i32 0, i32 2
  store ptr %23, ptr %25, align 8
  br label %43

26:                                               ; preds = %12
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.Node, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds nuw %struct.Node, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %5, align 4
  %37 = call ptr @Insert(ptr noundef %35, i32 noundef %36)
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.Node, ptr %38, i32 0, i32 3
  store ptr %37, ptr %39, align 8
  br label %42

40:                                               ; preds = %26
  %41 = load ptr, ptr %4, align 8
  store ptr %41, ptr %3, align 8
  br label %127

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %18
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds nuw %struct.Node, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @height(ptr noundef %46)
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds nuw %struct.Node, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @height(ptr noundef %50)
  %52 = call i32 @max(i32 noundef %47, i32 noundef %51)
  %53 = add nsw i32 %52, 1
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds nuw %struct.Node, ptr %54, i32 0, i32 1
  store i32 %53, ptr %55, align 4
  %56 = load ptr, ptr %4, align 8
  %57 = call i32 @Balance(ptr noundef %56)
  store i32 %57, ptr %6, align 4
  %58 = load i32, ptr %6, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %71

60:                                               ; preds = %43
  %61 = load i32, ptr %5, align 4
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds nuw %struct.Node, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds nuw %struct.Node, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load ptr, ptr %4, align 8
  %70 = call ptr @RightRotate(ptr noundef %69)
  store ptr %70, ptr %3, align 8
  br label %127

71:                                               ; preds = %60, %43
  %72 = load i32, ptr %6, align 4
  %73 = icmp slt i32 %72, -1
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, ptr %5, align 4
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds nuw %struct.Node, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds nuw %struct.Node, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 8
  %81 = icmp sgt i32 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load ptr, ptr %4, align 8
  %84 = call ptr @LeftRotate(ptr noundef %83)
  store ptr %84, ptr %3, align 8
  br label %127

85:                                               ; preds = %74, %71
  %86 = load i32, ptr %6, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load i32, ptr %5, align 4
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds nuw %struct.Node, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.Node, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8
  %95 = icmp sgt i32 %89, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds nuw %struct.Node, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = call ptr @LeftRotate(ptr noundef %99)
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds nuw %struct.Node, ptr %101, i32 0, i32 2
  store ptr %100, ptr %102, align 8
  %103 = load ptr, ptr %4, align 8
  %104 = call ptr @RightRotate(ptr noundef %103)
  store ptr %104, ptr %3, align 8
  br label %127

105:                                              ; preds = %88, %85
  %106 = load i32, ptr %6, align 4
  %107 = icmp slt i32 %106, -1
  br i1 %107, label %108, label %125

108:                                              ; preds = %105
  %109 = load i32, ptr %5, align 4
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds nuw %struct.Node, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds nuw %struct.Node, ptr %112, i32 0, i32 0
  %114 = load i32, ptr %113, align 8
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds nuw %struct.Node, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = call ptr @RightRotate(ptr noundef %119)
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds nuw %struct.Node, ptr %121, i32 0, i32 3
  store ptr %120, ptr %122, align 8
  %123 = load ptr, ptr %4, align 8
  %124 = call ptr @LeftRotate(ptr noundef %123)
  store ptr %124, ptr %3, align 8
  br label %127

125:                                              ; preds = %108, %105
  %126 = load ptr, ptr %4, align 8
  store ptr %126, ptr %3, align 8
  br label %127

127:                                              ; preds = %125, %116, %96, %82, %68, %40, %9
  %128 = load ptr, ptr %3, align 8
  ret ptr %128
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @Insert(ptr noundef %3, i32 noundef 5)
  store ptr %4, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call ptr @Insert(ptr noundef %5, i32 noundef 10)
  store ptr %6, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = call ptr @Insert(ptr noundef %7, i32 noundef 15)
  store ptr %8, ptr %2, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = call ptr @Insert(ptr noundef %9, i32 noundef 25)
  store ptr %10, ptr %2, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = call ptr @Insert(ptr noundef %11, i32 noundef 30)
  store ptr %12, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = call ptr @Insert(ptr noundef %13, i32 noundef 14)
  store ptr %14, ptr %2, align 8
  %15 = load ptr, ptr %2, align 8
  %16 = call ptr @Insert(ptr noundef %15, i32 noundef 23)
  store ptr %16, ptr %2, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = call ptr @Insert(ptr noundef %17, i32 noundef 6)
  store ptr %18, ptr %2, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = call ptr @Insert(ptr noundef %19, i32 noundef 24)
  store ptr %20, ptr %2, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = call ptr @Insert(ptr noundef %21, i32 noundef 30)
  store ptr %22, ptr %2, align 8
  %23 = load ptr, ptr %2, align 8
  %24 = call ptr @Insert(ptr noundef %23, i32 noundef 3)
  store ptr %24, ptr %2, align 8
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %26 = load ptr, ptr %2, align 8
  call void @preorder(ptr noundef %26)
  %27 = load ptr, ptr %2, align 8
  %28 = call ptr @Delete(ptr noundef %27, i32 noundef 10)
  store ptr %28, ptr %2, align 8
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %30 = load ptr, ptr %2, align 8
  call void @preorder(ptr noundef %30)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
