; ModuleID = './c_code/temp_compile/LinearChainingImplementation.c'
source_filename = "./c_code/temp_compile/LinearChainingImplementation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.list = type { %struct.element*, %struct.list* }
%struct.element = type { i32, i32 }
%struct.chain = type { %struct.list* }
%struct.table = type { i32, i32, %struct.chain** }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [19 x i8] c"allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Testing buckets of capacity %d with %d values, %d times\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"All tests passed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #4
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  call void @abort() #5
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xcalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #4
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  call void @abort() #5
  unreachable

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteList(%struct.list* %0) #0 {
  %2 = alloca %struct.list*, align 8
  %3 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %2, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load %struct.list*, %struct.list** %2, align 8
  %6 = icmp ne %struct.list* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = load %struct.list*, %struct.list** %2, align 8
  %9 = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 0
  %10 = load %struct.element*, %struct.element** %9, align 8
  %11 = icmp ne %struct.element* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.list*, %struct.list** %2, align 8
  %14 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 0
  %15 = load %struct.element*, %struct.element** %14, align 8
  %16 = bitcast %struct.element* %15 to i8*
  call void @free(i8* %16) #4
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.list*, %struct.list** %2, align 8
  %19 = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 1
  %20 = load %struct.list*, %struct.list** %19, align 8
  store %struct.list* %20, %struct.list** %3, align 8
  %21 = load %struct.list*, %struct.list** %2, align 8
  %22 = bitcast %struct.list* %21 to i8*
  call void @free(i8* %22) #4
  %23 = load %struct.list*, %struct.list** %3, align 8
  store %struct.list* %23, %struct.list** %2, align 8
  br label %4

24:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.chain* @newChain() #0 {
  %1 = alloca %struct.chain*, align 8
  %2 = call i8* @xmalloc(i64 8)
  %3 = bitcast i8* %2 to %struct.chain*
  store %struct.chain* %3, %struct.chain** %1, align 8
  %4 = load %struct.chain*, %struct.chain** %1, align 8
  %5 = getelementptr inbounds %struct.chain, %struct.chain* %4, i32 0, i32 0
  store %struct.list* null, %struct.list** %5, align 8
  %6 = load %struct.chain*, %struct.chain** %1, align 8
  ret %struct.chain* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @findInChain(%struct.table* %0, %struct.chain* %1, i32 %2) #0 {
  %4 = alloca %struct.list*, align 8
  %5 = alloca %struct.table*, align 8
  %6 = alloca %struct.chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list*, align 8
  store %struct.table* %0, %struct.table** %5, align 8
  store %struct.chain* %1, %struct.chain** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.chain*, %struct.chain** %6, align 8
  %10 = getelementptr inbounds %struct.chain, %struct.chain* %9, i32 0, i32 0
  %11 = load %struct.list*, %struct.list** %10, align 8
  store %struct.list* %11, %struct.list** %8, align 8
  br label %12

12:                                               ; preds = %25, %3
  %13 = load %struct.list*, %struct.list** %8, align 8
  %14 = icmp ne %struct.list* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.list*, %struct.list** %8, align 8
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 0
  %19 = load %struct.element*, %struct.element** %18, align 8
  %20 = getelementptr inbounds %struct.element, %struct.element* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load %struct.list*, %struct.list** %8, align 8
  store %struct.list* %24, %struct.list** %4, align 8
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.list*, %struct.list** %8, align 8
  %27 = getelementptr inbounds %struct.list, %struct.list* %26, i32 0, i32 1
  %28 = load %struct.list*, %struct.list** %27, align 8
  store %struct.list* %28, %struct.list** %8, align 8
  br label %12

29:                                               ; preds = %12
  store %struct.list* null, %struct.list** %4, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.list*, %struct.list** %4, align 8
  ret %struct.list* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @insertInChain(%struct.table* %0, %struct.chain* %1, %struct.element* %2) #0 {
  %4 = alloca %struct.element*, align 8
  %5 = alloca %struct.table*, align 8
  %6 = alloca %struct.chain*, align 8
  %7 = alloca %struct.element*, align 8
  %8 = alloca %struct.list*, align 8
  %9 = alloca %struct.list*, align 8
  %10 = alloca %struct.element*, align 8
  store %struct.table* %0, %struct.table** %5, align 8
  store %struct.chain* %1, %struct.chain** %6, align 8
  store %struct.element* %2, %struct.element** %7, align 8
  %11 = load %struct.table*, %struct.table** %5, align 8
  %12 = load %struct.chain*, %struct.chain** %6, align 8
  %13 = load %struct.element*, %struct.element** %7, align 8
  %14 = getelementptr inbounds %struct.element, %struct.element* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.list* @findInChain(%struct.table* %11, %struct.chain* %12, i32 %15)
  store %struct.list* %16, %struct.list** %8, align 8
  %17 = load %struct.list*, %struct.list** %8, align 8
  %18 = icmp eq %struct.list* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = call i8* @xmalloc(i64 16)
  %21 = bitcast i8* %20 to %struct.list*
  store %struct.list* %21, %struct.list** %9, align 8
  %22 = load %struct.element*, %struct.element** %7, align 8
  %23 = load %struct.list*, %struct.list** %9, align 8
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 0
  store %struct.element* %22, %struct.element** %24, align 8
  %25 = load %struct.chain*, %struct.chain** %6, align 8
  %26 = getelementptr inbounds %struct.chain, %struct.chain* %25, i32 0, i32 0
  %27 = load %struct.list*, %struct.list** %26, align 8
  %28 = load %struct.list*, %struct.list** %9, align 8
  %29 = getelementptr inbounds %struct.list, %struct.list* %28, i32 0, i32 1
  store %struct.list* %27, %struct.list** %29, align 8
  %30 = load %struct.list*, %struct.list** %9, align 8
  %31 = load %struct.chain*, %struct.chain** %6, align 8
  %32 = getelementptr inbounds %struct.chain, %struct.chain* %31, i32 0, i32 0
  store %struct.list* %30, %struct.list** %32, align 8
  store %struct.element* null, %struct.element** %4, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.list*, %struct.list** %8, align 8
  %35 = getelementptr inbounds %struct.list, %struct.list* %34, i32 0, i32 0
  %36 = load %struct.element*, %struct.element** %35, align 8
  store %struct.element* %36, %struct.element** %10, align 8
  %37 = load %struct.element*, %struct.element** %7, align 8
  %38 = load %struct.list*, %struct.list** %8, align 8
  %39 = getelementptr inbounds %struct.list, %struct.list* %38, i32 0, i32 0
  store %struct.element* %37, %struct.element** %39, align 8
  %40 = load %struct.element*, %struct.element** %10, align 8
  store %struct.element* %40, %struct.element** %4, align 8
  br label %41

41:                                               ; preds = %33, %19
  %42 = load %struct.element*, %struct.element** %4, align 8
  ret %struct.element* %42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @searchInChain(%struct.table* %0, %struct.chain* %1, i32 %2) #0 {
  %4 = alloca %struct.element*, align 8
  %5 = alloca %struct.table*, align 8
  %6 = alloca %struct.chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.list*, align 8
  store %struct.table* %0, %struct.table** %5, align 8
  store %struct.chain* %1, %struct.chain** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.table*, %struct.table** %5, align 8
  %10 = load %struct.chain*, %struct.chain** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.list* @findInChain(%struct.table* %9, %struct.chain* %10, i32 %11)
  store %struct.list* %12, %struct.list** %8, align 8
  %13 = load %struct.list*, %struct.list** %8, align 8
  %14 = icmp eq %struct.list* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.element* null, %struct.element** %4, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.list*, %struct.list** %8, align 8
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 0
  %19 = load %struct.element*, %struct.element** %18, align 8
  store %struct.element* %19, %struct.element** %4, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load %struct.element*, %struct.element** %4, align 8
  ret %struct.element* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteChain(%struct.chain* %0) #0 {
  %2 = alloca %struct.chain*, align 8
  store %struct.chain* %0, %struct.chain** %2, align 8
  %3 = load %struct.chain*, %struct.chain** %2, align 8
  %4 = getelementptr inbounds %struct.chain, %struct.chain* %3, i32 0, i32 0
  %5 = load %struct.list*, %struct.list** %4, align 8
  call void @deleteList(%struct.list* %5)
  %6 = load %struct.chain*, %struct.chain** %2, align 8
  %7 = bitcast %struct.chain* %6 to i8*
  call void @free(i8* %7) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = srem i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.table* @newHashTable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chain**, align 8
  %4 = alloca %struct.table*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = call i8* @xcalloc(i64 %6, i64 8)
  %8 = bitcast i8* %7 to %struct.chain**
  store %struct.chain** %8, %struct.chain*** %3, align 8
  %9 = call i8* @xmalloc(i64 16)
  %10 = bitcast i8* %9 to %struct.table*
  store %struct.table* %10, %struct.table** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load %struct.table*, %struct.table** %4, align 8
  %13 = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.table*, %struct.table** %4, align 8
  %15 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.chain**, %struct.chain*** %3, align 8
  %17 = load %struct.table*, %struct.table** %4, align 8
  %18 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 2
  store %struct.chain** %16, %struct.chain*** %18, align 8
  %19 = load %struct.table*, %struct.table** %4, align 8
  ret %struct.table* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @put(%struct.table* %0, %struct.element* %1) #0 {
  %3 = alloca %struct.element*, align 8
  %4 = alloca %struct.table*, align 8
  %5 = alloca %struct.element*, align 8
  %6 = alloca %struct.element*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.table* %0, %struct.table** %4, align 8
  store %struct.element* %1, %struct.element** %5, align 8
  %9 = load %struct.element*, %struct.element** %5, align 8
  %10 = getelementptr inbounds %struct.element, %struct.element* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.table*, %struct.table** %4, align 8
  %14 = getelementptr inbounds %struct.table, %struct.table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @hash(i32 %12, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.table*, %struct.table** %4, align 8
  %18 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 2
  %19 = load %struct.chain**, %struct.chain*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.chain*, %struct.chain** %19, i64 %21
  %23 = load %struct.chain*, %struct.chain** %22, align 8
  %24 = icmp eq %struct.chain* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = call %struct.chain* @newChain()
  %27 = load %struct.table*, %struct.table** %4, align 8
  %28 = getelementptr inbounds %struct.table, %struct.table* %27, i32 0, i32 2
  %29 = load %struct.chain**, %struct.chain*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.chain*, %struct.chain** %29, i64 %31
  store %struct.chain* %26, %struct.chain** %32, align 8
  br label %33

33:                                               ; preds = %25, %2
  %34 = load %struct.table*, %struct.table** %4, align 8
  %35 = load %struct.table*, %struct.table** %4, align 8
  %36 = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 2
  %37 = load %struct.chain**, %struct.chain*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.chain*, %struct.chain** %37, i64 %39
  %41 = load %struct.chain*, %struct.chain** %40, align 8
  %42 = load %struct.element*, %struct.element** %5, align 8
  %43 = call %struct.element* @insertInChain(%struct.table* %34, %struct.chain* %41, %struct.element* %42)
  store %struct.element* %43, %struct.element** %6, align 8
  %44 = load %struct.element*, %struct.element** %6, align 8
  %45 = icmp ne %struct.element* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load %struct.element*, %struct.element** %6, align 8
  store %struct.element* %47, %struct.element** %3, align 8
  br label %53

48:                                               ; preds = %33
  %49 = load %struct.table*, %struct.table** %4, align 8
  %50 = getelementptr inbounds %struct.table, %struct.table* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store %struct.element* null, %struct.element** %3, align 8
  br label %53

53:                                               ; preds = %48, %46
  %54 = load %struct.element*, %struct.element** %3, align 8
  ret %struct.element* %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.element* @get(%struct.table* %0, i32 %1) #0 {
  %3 = alloca %struct.element*, align 8
  %4 = alloca %struct.table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.element*, align 8
  store %struct.table* %0, %struct.table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.table*, %struct.table** %4, align 8
  %10 = getelementptr inbounds %struct.table, %struct.table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @hash(i32 %8, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.table*, %struct.table** %4, align 8
  %14 = getelementptr inbounds %struct.table, %struct.table* %13, i32 0, i32 2
  %15 = load %struct.chain**, %struct.chain*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.chain*, %struct.chain** %15, i64 %17
  %19 = load %struct.chain*, %struct.chain** %18, align 8
  %20 = icmp eq %struct.chain* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.element* null, %struct.element** %3, align 8
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.table*, %struct.table** %4, align 8
  %24 = load %struct.table*, %struct.table** %4, align 8
  %25 = getelementptr inbounds %struct.table, %struct.table* %24, i32 0, i32 2
  %26 = load %struct.chain**, %struct.chain*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.chain*, %struct.chain** %26, i64 %28
  %30 = load %struct.chain*, %struct.chain** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.element* @searchInChain(%struct.table* %23, %struct.chain* %30, i32 %31)
  store %struct.element* %32, %struct.element** %7, align 8
  %33 = load %struct.element*, %struct.element** %7, align 8
  store %struct.element* %33, %struct.element** %3, align 8
  br label %34

34:                                               ; preds = %22, %21
  %35 = load %struct.element*, %struct.element** %3, align 8
  ret %struct.element* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteHashTable(%struct.table* %0) #0 {
  %2 = alloca %struct.table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.chain*, align 8
  store %struct.table* %0, %struct.table** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.table*, %struct.table** %2, align 8
  %8 = getelementptr inbounds %struct.table, %struct.table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  %12 = load %struct.table*, %struct.table** %2, align 8
  %13 = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 2
  %14 = load %struct.chain**, %struct.chain*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.chain*, %struct.chain** %14, i64 %16
  %18 = load %struct.chain*, %struct.chain** %17, align 8
  store %struct.chain* %18, %struct.chain** %4, align 8
  %19 = load %struct.chain*, %struct.chain** %4, align 8
  %20 = icmp ne %struct.chain* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.chain*, %struct.chain** %4, align 8
  call void @deleteChain(%struct.chain* %22)
  br label %23

23:                                               ; preds = %21, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.table*, %struct.table** %2, align 8
  %29 = getelementptr inbounds %struct.table, %struct.table* %28, i32 0, i32 2
  %30 = load %struct.chain**, %struct.chain*** %29, align 8
  %31 = bitcast %struct.chain** %30 to i8*
  call void @free(i8* %31) #4
  %32 = load %struct.table*, %struct.table** %2, align 8
  %33 = bitcast %struct.table* %32 to i8*
  call void @free(i8* %33) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deleteElement(%struct.element* %0) #0 {
  %2 = alloca %struct.element*, align 8
  store %struct.element* %0, %struct.element** %2, align 8
  %3 = load %struct.element*, %struct.element** %2, align 8
  %4 = bitcast %struct.element* %3 to i8*
  call void @free(i8* %4) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.table*, align 8
  %8 = alloca %struct.element*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 100, i32* %2, align 4
  store i32 5, i32* %3, align 4
  store i32 5, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %80, %0
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.table* @newHashTable(i32 %20)
  store %struct.table* %21, %struct.table** %7, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = call i8* @xmalloc(i64 8)
  %28 = bitcast i8* %27 to %struct.element*
  store %struct.element* %28, %struct.element** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %2, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.element*, %struct.element** %8, align 8
  %35 = getelementptr inbounds %struct.element, %struct.element* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %2, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.element*, %struct.element** %8, align 8
  %42 = getelementptr inbounds %struct.element, %struct.element* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.table*, %struct.table** %7, align 8
  %44 = load %struct.element*, %struct.element** %8, align 8
  %45 = call %struct.element* @put(%struct.table* %43, %struct.element* %44)
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %60, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %2, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %50

63:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %2, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %64

78:                                               ; preds = %64
  %79 = load %struct.table*, %struct.table** %7, align 8
  call void @deleteHashTable(%struct.table* %79)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %15

83:                                               ; preds = %15
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
