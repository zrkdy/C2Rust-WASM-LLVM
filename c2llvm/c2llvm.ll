; ModuleID = 'c2llvm.c'
source_filename = "c2llvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Person = type { i32, [100 x i8] }

@__const.main.numbers = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@.str = private unnamed_addr constant [18 x i8] c"Sum of array: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Alice\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to create person\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Person ID: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Person Name: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Person*, align 8
  store i32 0, i32* %1, align 4
  %7 = bitcast [5 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([5 x i32]* @__const.main.numbers to i8*), i64 20, i1 false)
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %20, %0
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %9

23:                                               ; preds = %9
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call %struct.Person* @create_person(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.Person* %26, %struct.Person** %6, align 8
  %27 = load %struct.Person*, %struct.Person** %6, align 8
  %28 = icmp eq %struct.Person* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.Person*, %struct.Person** %6, align 8
  call void @print_person(%struct.Person* %33)
  %34 = load %struct.Person*, %struct.Person** %6, align 8
  call void @free_person(%struct.Person* %34)
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Person* @create_person(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.Person*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.Person*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = call noalias i8* @malloc(i64 104) #4
  %8 = bitcast i8* %7 to %struct.Person*
  store %struct.Person* %8, %struct.Person** %6, align 8
  %9 = load %struct.Person*, %struct.Person** %6, align 8
  %10 = icmp eq %struct.Person* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.Person* null, %struct.Person** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.Person*, %struct.Person** %6, align 8
  %15 = getelementptr inbounds %struct.Person, %struct.Person* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.Person*, %struct.Person** %6, align 8
  %17 = getelementptr inbounds %struct.Person, %struct.Person* %16, i32 0, i32 1
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strncpy(i8* %18, i8* %19, i64 99) #4
  %21 = load %struct.Person*, %struct.Person** %6, align 8
  %22 = getelementptr inbounds %struct.Person, %struct.Person* %21, i32 0, i32 1
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %22, i64 0, i64 99
  store i8 0, i8* %23, align 1
  %24 = load %struct.Person*, %struct.Person** %6, align 8
  store %struct.Person* %24, %struct.Person** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.Person*, %struct.Person** %3, align 8
  ret %struct.Person* %26
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_person(%struct.Person* %0) #0 {
  %2 = alloca %struct.Person*, align 8
  store %struct.Person* %0, %struct.Person** %2, align 8
  %3 = load %struct.Person*, %struct.Person** %2, align 8
  %4 = getelementptr inbounds %struct.Person, %struct.Person* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  %7 = load %struct.Person*, %struct.Person** %2, align 8
  %8 = getelementptr inbounds %struct.Person, %struct.Person* %7, i32 0, i32 1
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_person(%struct.Person* %0) #0 {
  %2 = alloca %struct.Person*, align 8
  store %struct.Person* %0, %struct.Person** %2, align 8
  %3 = load %struct.Person*, %struct.Person** %2, align 8
  %4 = icmp ne %struct.Person* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.Person*, %struct.Person** %2, align 8
  %7 = bitcast %struct.Person* %6 to i8*
  call void @free(i8* %7) #4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
