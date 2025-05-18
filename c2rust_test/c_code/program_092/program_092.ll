; ModuleID = './c_code/temp_compile/Doubly Linked List (Insert, print: forward and revesre order).c'
source_filename = "./c_code/temp_compile/Doubly Linked List (Insert, print: forward and revesre order).c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.linked_list = type { i32, %struct.linked_list*, %struct.linked_list* }

@head = dso_local global %struct.linked_list* null, align 8
@tail = dso_local global %struct.linked_list* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Insert nodes at tail: %d, %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Insert node: %d at middle. Position: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Insert nodes at front: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Insert nodes at tail: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Insert nodes at tail: %d, %d, %d, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\0AYour updated linked list in FORWARD ORDER:\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\0AYour full linked list in REVERSE ORDER:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 5, i32* %2, align 4
  store i32 15, i32* %3, align 4
  store i32 43, i32* %4, align 4
  store i32 23, i32* %5, align 4
  store i32 12, i32* %6, align 4
  store i32 66, i32* %7, align 4
  store i32 99, i32* %8, align 4
  store i32 65, i32* %9, align 4
  store i32 20, i32* %10, align 4
  store i32 8, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 500, i32* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  call void @insert_at_tail(i32 %18)
  %19 = load i32, i32* %3, align 4
  call void @insert_at_tail(i32 %19)
  %20 = load i32, i32* %4, align 4
  call void @insert_at_tail(i32 %20)
  call void @printLinkedListForward()
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  call void @insert_at_middle(i32 %24, i32 %25)
  call void @printLinkedListForward()
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  call void @insert_at_first(i32 %28)
  call void @printLinkedListForward()
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %6, align 4
  call void @insert_at_tail(i32 %31)
  call void @printLinkedListForward()
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  call void @insert_at_first(i32 %34)
  call void @printLinkedListForward()
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  call void @insert_at_tail(i32 %40)
  %41 = load i32, i32* %9, align 4
  call void @insert_at_tail(i32 %41)
  %42 = load i32, i32* %10, align 4
  call void @insert_at_tail(i32 %42)
  %43 = load i32, i32* %11, align 4
  call void @insert_at_tail(i32 %43)
  call void @printLinkedListForward()
  call void @printLinkedListBackward()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_tail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.linked_list* @getNewNode(i32 %4)
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %7 = icmp eq %struct.linked_list* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %9, %struct.linked_list** @head, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %10, %struct.linked_list** @tail, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %14 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %13, i32 0, i32 1
  store %struct.linked_list* %12, %struct.linked_list** %14, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %16 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %17 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %16, i32 0, i32 2
  store %struct.linked_list* %15, %struct.linked_list** %17, align 8
  %18 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %18, %struct.linked_list** @tail, align 8
  br label %19

19:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_middle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.linked_list*, align 8
  %6 = alloca %struct.linked_list*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.linked_list* @getNewNode(i32 %8)
  store %struct.linked_list* %9, %struct.linked_list** %5, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %11 = icmp eq %struct.linked_list* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  store %struct.linked_list* %13, %struct.linked_list** @head, align 8
  %14 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  store %struct.linked_list* %14, %struct.linked_list** @tail, align 8
  br label %60

15:                                               ; preds = %2
  %16 = call noalias i8* @malloc(i64 24) #3
  %17 = bitcast i8* %16 to %struct.linked_list*
  store %struct.linked_list* %17, %struct.linked_list** %6, align 8
  %18 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %18, %struct.linked_list** %6, align 8
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %31, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %26 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %25, i32 0, i32 1
  %27 = load %struct.linked_list*, %struct.linked_list** %26, align 8
  %28 = icmp ne %struct.linked_list* %27, null
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ false, %19 ], [ %28, %24 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %33 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %32, i32 0, i32 1
  %34 = load %struct.linked_list*, %struct.linked_list** %33, align 8
  store %struct.linked_list* %34, %struct.linked_list** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %19

37:                                               ; preds = %29
  %38 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %39 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %38, i32 0, i32 1
  %40 = load %struct.linked_list*, %struct.linked_list** %39, align 8
  %41 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %42 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %41, i32 0, i32 1
  store %struct.linked_list* %40, %struct.linked_list** %42, align 8
  %43 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %44 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %45 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %44, i32 0, i32 2
  store %struct.linked_list* %43, %struct.linked_list** %45, align 8
  %46 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %47 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %46, i32 0, i32 1
  %48 = load %struct.linked_list*, %struct.linked_list** %47, align 8
  %49 = icmp ne %struct.linked_list* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %52 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %53 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %52, i32 0, i32 1
  %54 = load %struct.linked_list*, %struct.linked_list** %53, align 8
  %55 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %54, i32 0, i32 2
  store %struct.linked_list* %51, %struct.linked_list** %55, align 8
  br label %56

56:                                               ; preds = %50, %37
  %57 = load %struct.linked_list*, %struct.linked_list** %5, align 8
  %58 = load %struct.linked_list*, %struct.linked_list** %6, align 8
  %59 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %58, i32 0, i32 1
  store %struct.linked_list* %57, %struct.linked_list** %59, align 8
  br label %60

60:                                               ; preds = %56, %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_at_first(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.linked_list* @getNewNode(i32 %4)
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %7 = icmp eq %struct.linked_list* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %9, %struct.linked_list** @head, align 8
  %10 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %10, %struct.linked_list** @tail, align 8
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %14 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %13, i32 0, i32 1
  store %struct.linked_list* %12, %struct.linked_list** %14, align 8
  %15 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %16 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %17 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %16, i32 0, i32 2
  store %struct.linked_list* %15, %struct.linked_list** %17, align 8
  %18 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  store %struct.linked_list* %18, %struct.linked_list** @head, align 8
  br label %19

19:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.linked_list* @getNewNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linked_list*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.linked_list*
  store %struct.linked_list* %5, %struct.linked_list** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %8 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %10 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %9, i32 0, i32 1
  store %struct.linked_list* null, %struct.linked_list** %10, align 8
  %11 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  %12 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %11, i32 0, i32 2
  store %struct.linked_list* null, %struct.linked_list** %12, align 8
  %13 = load %struct.linked_list*, %struct.linked_list** %3, align 8
  ret %struct.linked_list* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLinkedListForward() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %3 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  store %struct.linked_list* %3, %struct.linked_list** %1, align 8
  br label %4

4:                                                ; preds = %0, %20
  %5 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %6 = icmp eq %struct.linked_list* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %9 = icmp eq %struct.linked_list* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  br label %24

11:                                               ; preds = %7
  %12 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %14)
  %16 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %17 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %18 = icmp eq %struct.linked_list* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %24

20:                                               ; preds = %11
  %21 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %22 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %21, i32 0, i32 1
  %23 = load %struct.linked_list*, %struct.linked_list** %22, align 8
  store %struct.linked_list* %23, %struct.linked_list** %1, align 8
  br label %4

24:                                               ; preds = %19, %10
  %25 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLinkedListBackward() #0 {
  %1 = alloca %struct.linked_list*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %3 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  store %struct.linked_list* %3, %struct.linked_list** %1, align 8
  br label %4

4:                                                ; preds = %0, %21
  %5 = load %struct.linked_list*, %struct.linked_list** @head, align 8
  %6 = icmp eq %struct.linked_list* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load %struct.linked_list*, %struct.linked_list** @tail, align 8
  %9 = icmp eq %struct.linked_list* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4
  br label %25

11:                                               ; preds = %7
  %12 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %13 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %14)
  %16 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %17 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %16, i32 0, i32 2
  %18 = load %struct.linked_list*, %struct.linked_list** %17, align 8
  %19 = icmp eq %struct.linked_list* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %25

21:                                               ; preds = %11
  %22 = load %struct.linked_list*, %struct.linked_list** %1, align 8
  %23 = getelementptr inbounds %struct.linked_list, %struct.linked_list* %22, i32 0, i32 2
  %24 = load %struct.linked_list*, %struct.linked_list** %23, align 8
  store %struct.linked_list* %24, %struct.linked_list** %1, align 8
  br label %4

25:                                               ; preds = %20, %10
  %26 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
