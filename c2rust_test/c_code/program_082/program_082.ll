; ModuleID = './c_code/temp_compile/infixToPostfix.c'
source_filename = "./c_code/temp_compile/infixToPostfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Stack = type { i32, i32, i32* }
%struct.AdvancedStack = type { %struct.Stack*, %struct.Stack* }

@.str = private unnamed_addr constant [16 x i8] c"Stack is Empty\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Stack is Empty\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Top element is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Stack size is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Popped element is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Minimum element is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Stack is empty\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Stack is not empty\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Stack* @createStack(i32 %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Stack*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 16) #3
  %6 = bitcast i8* %5 to %struct.Stack*
  store %struct.Stack* %6, %struct.Stack** %4, align 8
  %7 = load %struct.Stack*, %struct.Stack** %4, align 8
  %8 = icmp ne %struct.Stack* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.Stack* null, %struct.Stack** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.Stack*, %struct.Stack** %4, align 8
  %13 = getelementptr inbounds %struct.Stack, %struct.Stack* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.Stack*, %struct.Stack** %4, align 8
  %15 = getelementptr inbounds %struct.Stack, %struct.Stack* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 8
  %16 = load %struct.Stack*, %struct.Stack** %4, align 8
  %17 = getelementptr inbounds %struct.Stack, %struct.Stack* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = call noalias i8* @malloc(i64 %20) #3
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.Stack*, %struct.Stack** %4, align 8
  %24 = getelementptr inbounds %struct.Stack, %struct.Stack* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.Stack*, %struct.Stack** %4, align 8
  %26 = getelementptr inbounds %struct.Stack, %struct.Stack* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %10
  store %struct.Stack* null, %struct.Stack** %2, align 8
  br label %32

30:                                               ; preds = %10
  %31 = load %struct.Stack*, %struct.Stack** %4, align 8
  store %struct.Stack* %31, %struct.Stack** %2, align 8
  br label %32

32:                                               ; preds = %30, %29, %9
  %33 = load %struct.Stack*, %struct.Stack** %2, align 8
  ret %struct.Stack* %33
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmpty(%struct.Stack* %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %2, align 8
  %3 = load %struct.Stack*, %struct.Stack** %2, align 8
  %4 = getelementptr inbounds %struct.Stack, %struct.Stack* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, -1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @size(%struct.Stack* %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %2, align 8
  %3 = load %struct.Stack*, %struct.Stack** %2, align 8
  %4 = getelementptr inbounds %struct.Stack, %struct.Stack* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isFull(%struct.Stack* %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %2, align 8
  %3 = load %struct.Stack*, %struct.Stack** %2, align 8
  %4 = getelementptr inbounds %struct.Stack, %struct.Stack* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.Stack*, %struct.Stack** %2, align 8
  %7 = getelementptr inbounds %struct.Stack, %struct.Stack* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp eq i32 %5, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doubleStack(%struct.Stack* %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %2, align 8
  %3 = load %struct.Stack*, %struct.Stack** %2, align 8
  %4 = getelementptr inbounds %struct.Stack, %struct.Stack* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %4, align 4
  %7 = load %struct.Stack*, %struct.Stack** %2, align 8
  %8 = getelementptr inbounds %struct.Stack, %struct.Stack* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.Stack*, %struct.Stack** %2, align 8
  %12 = getelementptr inbounds %struct.Stack, %struct.Stack* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = call i8* @realloc(i8* %10, i64 %15) #3
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.Stack*, %struct.Stack** %2, align 8
  %19 = getelementptr inbounds %struct.Stack, %struct.Stack* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push(%struct.Stack* %0, i32 %1) #0 {
  %3 = alloca %struct.Stack*, align 8
  %4 = alloca i32, align 4
  store %struct.Stack* %0, %struct.Stack** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Stack*, %struct.Stack** %3, align 8
  %6 = call i32 @isFull(%struct.Stack* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct.Stack*, %struct.Stack** %3, align 8
  call void @doubleStack(%struct.Stack* %9)
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.Stack*, %struct.Stack** %3, align 8
  %13 = getelementptr inbounds %struct.Stack, %struct.Stack* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.Stack*, %struct.Stack** %3, align 8
  %16 = getelementptr inbounds %struct.Stack, %struct.Stack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  store i32 %11, i32* %20, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pop(%struct.Stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %3, align 8
  %4 = load %struct.Stack*, %struct.Stack** %3, align 8
  %5 = call i32 @isEmpty(%struct.Stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -2147483648, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.Stack*, %struct.Stack** %3, align 8
  %11 = getelementptr inbounds %struct.Stack, %struct.Stack* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.Stack*, %struct.Stack** %3, align 8
  %14 = getelementptr inbounds %struct.Stack, %struct.Stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %9, %7
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peek(%struct.Stack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %3, align 8
  %4 = load %struct.Stack*, %struct.Stack** %3, align 8
  %5 = call i32 @isEmpty(%struct.Stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -2147483648, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.Stack*, %struct.Stack** %3, align 8
  %11 = getelementptr inbounds %struct.Stack, %struct.Stack* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.Stack*, %struct.Stack** %3, align 8
  %14 = getelementptr inbounds %struct.Stack, %struct.Stack* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %7
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteStack(%struct.Stack* %0) #0 {
  %2 = alloca %struct.Stack*, align 8
  store %struct.Stack* %0, %struct.Stack** %2, align 8
  %3 = load %struct.Stack*, %struct.Stack** %2, align 8
  %4 = icmp ne %struct.Stack* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.Stack*, %struct.Stack** %2, align 8
  %7 = getelementptr inbounds %struct.Stack, %struct.Stack* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.Stack*, %struct.Stack** %2, align 8
  %12 = getelementptr inbounds %struct.Stack, %struct.Stack* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #3
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.Stack*, %struct.Stack** %2, align 8
  %17 = bitcast %struct.Stack* %16 to i8*
  call void @free(i8* %17) #3
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmptyA(%struct.AdvancedStack* %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %2, align 8
  %3 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %4 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %3, i32 0, i32 0
  %5 = load %struct.Stack*, %struct.Stack** %4, align 8
  %6 = getelementptr inbounds %struct.Stack, %struct.Stack* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sizeA(%struct.AdvancedStack* %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %2, align 8
  %3 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %4 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %3, i32 0, i32 0
  %5 = load %struct.Stack*, %struct.Stack** %4, align 8
  %6 = getelementptr inbounds %struct.Stack, %struct.Stack* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isFullA(%struct.AdvancedStack* %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %2, align 8
  %3 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %4 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %3, i32 0, i32 0
  %5 = load %struct.Stack*, %struct.Stack** %4, align 8
  %6 = getelementptr inbounds %struct.Stack, %struct.Stack* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %9 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %8, i32 0, i32 0
  %10 = load %struct.Stack*, %struct.Stack** %9, align 8
  %11 = getelementptr inbounds %struct.Stack, %struct.Stack* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %7, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pushA(%struct.AdvancedStack* %0, i32 %1) #0 {
  %3 = alloca %struct.AdvancedStack*, align 8
  %4 = alloca i32, align 4
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %6 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %5, i32 0, i32 0
  %7 = load %struct.Stack*, %struct.Stack** %6, align 8
  %8 = load i32, i32* %4, align 4
  call void @push(%struct.Stack* %7, i32 %8)
  %9 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %10 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %9, i32 0, i32 1
  %11 = load %struct.Stack*, %struct.Stack** %10, align 8
  %12 = call i32 @isEmpty(%struct.Stack* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %16 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %15, i32 0, i32 1
  %17 = load %struct.Stack*, %struct.Stack** %16, align 8
  %18 = call i32 @peek(%struct.Stack* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14, %2
  %22 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %23 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %22, i32 0, i32 1
  %24 = load %struct.Stack*, %struct.Stack** %23, align 8
  %25 = load i32, i32* %4, align 4
  call void @push(%struct.Stack* %24, i32 %25)
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %28 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %27, i32 0, i32 1
  %29 = load %struct.Stack*, %struct.Stack** %28, align 8
  %30 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %31 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %30, i32 0, i32 1
  %32 = load %struct.Stack*, %struct.Stack** %31, align 8
  %33 = call i32 @peek(%struct.Stack* %32)
  call void @push(%struct.Stack* %29, i32 %33)
  br label %34

34:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @popA(%struct.AdvancedStack* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AdvancedStack*, align 8
  %4 = alloca i32, align 4
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %3, align 8
  %5 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %6 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %5, i32 0, i32 0
  %7 = load %struct.Stack*, %struct.Stack** %6, align 8
  %8 = call i32 @isEmpty(%struct.Stack* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -2147483648, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %13 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %12, i32 0, i32 0
  %14 = load %struct.Stack*, %struct.Stack** %13, align 8
  %15 = call i32 @peek(%struct.Stack* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %17 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %16, i32 0, i32 1
  %18 = load %struct.Stack*, %struct.Stack** %17, align 8
  %19 = call i32 @peek(%struct.Stack* %18)
  %20 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %21 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %20, i32 0, i32 0
  %22 = load %struct.Stack*, %struct.Stack** %21, align 8
  %23 = call i32 @pop(%struct.Stack* %22)
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %11
  %26 = load %struct.AdvancedStack*, %struct.AdvancedStack** %3, align 8
  %27 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %26, i32 0, i32 1
  %28 = load %struct.Stack*, %struct.Stack** %27, align 8
  %29 = call i32 @pop(%struct.Stack* %28)
  br label %30

30:                                               ; preds = %25, %11
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @peekA(%struct.AdvancedStack* %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %2, align 8
  %3 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %4 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %3, i32 0, i32 0
  %5 = load %struct.Stack*, %struct.Stack** %4, align 8
  %6 = call i32 @peek(%struct.Stack* %5)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getMinimum(%struct.AdvancedStack* %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  store %struct.AdvancedStack* %0, %struct.AdvancedStack** %2, align 8
  %3 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  %4 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %3, i32 0, i32 1
  %5 = load %struct.Stack*, %struct.Stack** %4, align 8
  %6 = call i32 @peek(%struct.Stack* %5)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.AdvancedStack* @createAdvancedStack(i32 %0) #0 {
  %2 = alloca %struct.AdvancedStack*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.AdvancedStack*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 16) #3
  %6 = bitcast i8* %5 to %struct.AdvancedStack*
  store %struct.AdvancedStack* %6, %struct.AdvancedStack** %4, align 8
  %7 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %8 = icmp ne %struct.AdvancedStack* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.AdvancedStack* null, %struct.AdvancedStack** %2, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.Stack* @createStack(i32 %11)
  %13 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %14 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %13, i32 0, i32 0
  store %struct.Stack* %12, %struct.Stack** %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.Stack* @createStack(i32 %15)
  %17 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %18 = getelementptr inbounds %struct.AdvancedStack, %struct.AdvancedStack* %17, i32 0, i32 1
  store %struct.Stack* %16, %struct.Stack** %18, align 8
  %19 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  store %struct.AdvancedStack* %19, %struct.AdvancedStack** %2, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load %struct.AdvancedStack*, %struct.AdvancedStack** %2, align 8
  ret %struct.AdvancedStack* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.AdvancedStack*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.AdvancedStack* @createAdvancedStack(i32 %5)
  store %struct.AdvancedStack* %6, %struct.AdvancedStack** %4, align 8
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 2, %9
  %11 = icmp sle i32 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 7, %14
  %16 = srem i32 %15, 4
  call void @pushA(%struct.AdvancedStack* %13, i32 %16)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %22 = call i32 @peekA(%struct.AdvancedStack* %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %25 = call i32 @sizeA(%struct.AdvancedStack* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %38, %20
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %33 = call i32 @popA(%struct.AdvancedStack* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %36 = call i32 @getMinimum(%struct.AdvancedStack* %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %43 = call i32 @isEmptyA(%struct.AdvancedStack* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.AdvancedStack*, %struct.AdvancedStack** %4, align 8
  %51 = bitcast %struct.AdvancedStack* %50 to %struct.Stack*
  call void @deleteStack(%struct.Stack* %51)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
