; ModuleID = './c_code/temp_compile/Linked List [create, insert, delete, search].c'
source_filename = "./c_code/temp_compile/Linked List [create, insert, delete, search].c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, %struct.linked_list* }

@head = dso_local global %struct.linked_list* null, align 8
@last = dso_local global %struct.linked_list* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Create Linked List\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AInsert new item at last\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0AInsert new item at first\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"\0AEnter a KEY (existing item of List), after that you want to insert a value\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\0AInsert new item after %d KEY\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\0AEnter an item to search it from List\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\0AEnter a value, which you want to delete from list\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Input a number. (Enter -1 to exit)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%d is inserted after %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Key not found!\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"%d is deleted from list\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%d is present in this list. Memory address is %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Item not found\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\0AYour full linked list is\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  call void @create_linked_list()
  call void @print_linked_list()
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %7 = load i32, i32* %3, align 4
  call void @insert_at_last(i32 %7)
  call void @print_linked_list()
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %10 = load i32, i32* %3, align 4
  call void @insert_at_first(i32 %10)
  call void @print_linked_list()
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  call void @insert_after(i32 %16, i32 %17)
  call void @print_linked_list()
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %20 = load i32, i32* %3, align 4
  call void @search_item(i32 %20)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %23 = load i32, i32* %3, align 4
  call void @delete_item(i32 %23)
  call void @print_linked_list()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_last(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 16) #3
  %5 = bitcast i8* %4 to %struct.linked_list*
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %10 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %9, i32 0, i32 1
  store %struct.linked_list* null, %struct.linked_list** %10, align 8
  %11 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %12 = icmp eq %struct.linked_list* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %14, %struct.linked_list** @head, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %15, %struct.linked_list** @last, align 8
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %18 = load %struct.linked_list*, %struct.linked_list** @last, align 8
  %19 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %18, i32 0, i32 1
  store %struct.linked_list* %17, %struct.linked_list** %19, align 8
  %20 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %20, %struct.linked_list** @last, align 8
  br label %21

21:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_first(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 16) #3
  %5 = bitcast i8* %4 to %struct.linked_list*
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 1
  store %struct.linked_list* %9, %struct.linked_list** %11, align 8
  %12 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %12, %struct.linked_list** @head, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_after(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.linked_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %8, %struct.linked_list** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %2
  %10 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %11 = icmp ne %struct.linked_list* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %14 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = call noalias i8* @malloc(i64 16) #3
  %20 = bitcast i8* %19 to %struct.linked_list*
  store %struct.linked_list* %20, %struct.linked_list** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.linked_list*, %struct.linked_list** %7, align 8
  %23 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %25 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %24, i32 0, i32 1
  %26 = load %struct.linked_list*, %struct.linked_list** %25, align 8
  %27 = load %struct.linked_list*, %struct.linked_list** %7, align 8
  %28 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %27, i32 0, i32 1
  store %struct.linked_list* %26, %struct.linked_list** %28, align 8
  %29 = load %struct.linked_list*, %struct.linked_list** %7, align 8
  %30 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %31 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %30, i32 0, i32 1
  store %struct.linked_list* %29, %struct.linked_list** %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %32, i32 %33)
  store i32 1, i32* %6, align 4
  br label %40

35:                                               ; preds = %12
  %36 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %37 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %36, i32 0, i32 1
  %38 = load %struct.linked_list*, %struct.linked_list** %37, align 8
  store %struct.linked_list* %38, %struct.linked_list** %5, align 8
  br label %39

39:                                               ; preds = %35
  br label %9

40:                                               ; preds = %18, %9
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_item(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = icmp ne %struct.linked_list* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %11 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %16, %struct.linked_list* %17)
  store i32 1, i32* %4, align 4
  br label %24

19:                                               ; preds = %9
  %20 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %21 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %20, i32 0, i32 1
  %22 = load %struct.linked_list*, %struct.linked_list** %21, align 8
  store %struct.linked_list* %22, %struct.linked_list** %3, align 8
  br label %23

23:                                               ; preds = %19
  br label %6

24:                                               ; preds = %15, %6
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_item(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  %4 = alloca %struct.linked_list*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %6, %struct.linked_list** %3, align 8
  store %struct.linked_list* null, %struct.linked_list** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %9 = icmp ne %struct.linked_list* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %12 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.linked_list*, %struct.linked_list** %4, align 8
  %18 = icmp eq %struct.linked_list* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %21 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %20, i32 0, i32 1
  %22 = load %struct.linked_list*, %struct.linked_list** %21, align 8
  store %struct.linked_list* %22, %struct.linked_list** @head, align 8
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %25 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %24, i32 0, i32 1
  %26 = load %struct.linked_list*, %struct.linked_list** %25, align 8
  %27 = load %struct.linked_list*, %struct.linked_list** %4, align 8
  %28 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %27, i32 0, i32 1
  store %struct.linked_list* %26, %struct.linked_list** %28, align 8
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %30)
  store i32 1, i32* %5, align 4
  %32 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %33 = bitcast %struct.linked_list* %32 to i8*
  call void @free(i8* %33) #3
  br label %39

34:                                               ; preds = %10
  %35 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %35, %struct.linked_list** %4, align 8
  %36 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %37 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %36, i32 0, i32 1
  %38 = load %struct.linked_list*, %struct.linked_list** %37, align 8
  store %struct.linked_list* %38, %struct.linked_list** %3, align 8
  br label %7

39:                                               ; preds = %29, %7
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_linked_list() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %1, align 4
  call void @insert_at_last(i32 %9)
  br label %2

10:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_linked_list() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %3 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %3, %struct.linked_list** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %6 = icmp ne %struct.linked_list* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %9 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %10)
  %12 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 1
  %14 = load %struct.linked_list*, %struct.linked_list** %13, align 8
  store %struct.linked_list* %14, %struct.linked_list** %1, align 8
  br label %4

15:                                               ; preds = %4
  %16 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
