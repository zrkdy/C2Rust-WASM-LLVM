; ModuleID = './c_code/temp_compile/hangman.c'
source_filename = "./c_code/temp_compile/hangman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.game_instance = type { [30 x i8], [30 x i8], i32, i32, [25 x i8], i32 }

@.str = private unnamed_addr constant [31 x i8] c"\0A****************************\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Your word: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\0ASo far, you have guessed: \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\0AYou have %d guesses left.\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0APlease enter a letter: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"That letter is in the word!\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"That letter is not in the word.\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\0AYou have already guessed that letter.\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"games/words.txt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external global ptr, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"File not found.\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"\0AYou lost! The word was: %s.\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"\0AYou won! You had %d guesses left.\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\0A      _\0A  __( ' )> \0A \\_ < _ ) \00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\0A      _\0A  __( ' )\0A \\_ < _ ) \00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"\0A      _\0A  __(   )\0A \\_ < _ ) \00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"\0A        \0A  __(   )\0A \\_ < _ ) \00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\0A        \0A  __(    \0A \\_ < _ ) \00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\0A        \0A  __     \0A \\_ < _ ) \00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\0A        \0A  _      \0A \\_ < _ ) \00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"\0A        \0A  _      \0A   _ < _ ) \00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"\0A        \0A         \0A   _ < _ ) \00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\0A        \0A         \0A     < _ ) \00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\0A        \0A         \0A       _ ) \00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"\0A        \0A         \0A         ) \00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"\0A      _\0A  __( ' )> QUACK!\0A \\_ < _ ) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.game_instance, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @new_game(ptr dead_on_unwind writable sret(%struct.game_instance) align 4 %2)
  br label %7

7:                                                ; preds = %130, %0
  %8 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds [30 x i8], ptr %8, i64 0, i64 0
  %10 = call ptr @strchr(ptr noundef %9, i32 noundef 95) #5
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp sle i32 %14, 12
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %133

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %72, %18
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %4, align 4
  br label %22

22:                                               ; preds = %35, %19
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [30 x i8], ptr %28, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, ptr %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %4, align 4
  br label %22

38:                                               ; preds = %22
  %39 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %5, align 4
  br label %44

44:                                               ; preds = %57, %42
  %45 = load i32, ptr %5, align 4
  %46 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [25 x i8], ptr %50, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  %56 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %55)
  br label %57

57:                                               ; preds = %49
  %58 = load i32, ptr %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %5, align 4
  br label %44

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %38
  %62 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = sub nsw i32 12, %63
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %64)
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %67 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %3)
  %68 = load i8, ptr %3, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 @tolower(i32 noundef %69) #5
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %3, align 1
  br label %72

72:                                               ; preds = %61
  %73 = load i8, ptr %3, align 1
  %74 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 4
  %75 = getelementptr inbounds [25 x i8], ptr %74, i64 0, i64 0
  %76 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @new_guess(i8 noundef signext %73, ptr noundef %75, i32 noundef %77)
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %19, label %80

80:                                               ; preds = %72
  %81 = load i8, ptr %3, align 1
  %82 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 4
  %83 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [25 x i8], ptr %82, i64 0, i64 %85
  store i8 %81, ptr %86, align 1
  %87 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %87, align 4
  %90 = load i8, ptr %3, align 1
  %91 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 0
  %92 = getelementptr inbounds [30 x i8], ptr %91, i64 0, i64 0
  %93 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = call i32 @in_word(i8 noundef signext %90, ptr noundef %92, i32 noundef %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %125

97:                                               ; preds = %80
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 0, ptr %6, align 4
  br label %99

99:                                               ; preds = %121, %97
  %100 = load i32, ptr %6, align 4
  %101 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %99
  %105 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 0
  %106 = load i32, ptr %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [30 x i8], ptr %105, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8, ptr %3, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load i8, ptr %3, align 1
  %116 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 1
  %117 = load i32, ptr %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [30 x i8], ptr %116, i64 0, i64 %118
  store i8 %115, ptr %119, align 1
  br label %120

120:                                              ; preds = %114, %104
  br label %121

121:                                              ; preds = %120
  %122 = load i32, ptr %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %6, align 4
  br label %99

124:                                              ; preds = %99
  br label %130

125:                                              ; preds = %80
  %126 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %127 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %127, align 4
  br label %130

130:                                              ; preds = %125, %124
  %131 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  call void @picture(i32 noundef %132)
  br label %7

133:                                              ; preds = %16
  %134 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 0
  %135 = getelementptr inbounds [30 x i8], ptr %134, i64 0, i64 0
  %136 = getelementptr inbounds nuw %struct.game_instance, ptr %2, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  call void @won(ptr noundef %135, i32 noundef %137)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_game(ptr dead_on_unwind noalias writable sret(%struct.game_instance) align 4 %0) #0 {
  %2 = alloca [30 x i8], align 16
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call ptr @fopen(ptr noundef @.str.10, ptr noundef @.str.11)
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load ptr, ptr @stderr, align 8
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.12) #6
  call void @exit(i32 noundef 1) #7
  unreachable

14:                                               ; preds = %1
  store i32 0, ptr %4, align 4
  br label %15

15:                                               ; preds = %20, %14
  %16 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %17 = load ptr, ptr %3, align 8
  %18 = call ptr @fgets(ptr noundef %16, i32 noundef 30, ptr noundef %17)
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %4, align 4
  br label %15

23:                                               ; preds = %15
  %24 = load ptr, ptr %3, align 8
  call void @rewind(ptr noundef %24)
  %25 = call i64 @time(ptr noundef null) #6
  %26 = trunc i64 %25 to i32
  call void @srand(i32 noundef %26) #6
  %27 = call i32 @rand() #6
  %28 = load i32, ptr %4, align 4
  %29 = srem i32 %27, %28
  store i32 %29, ptr %5, align 4
  store i32 0, ptr %6, align 4
  br label %30

30:                                               ; preds = %34, %23
  %31 = load i32, ptr %6, align 4
  %32 = load i32, ptr %5, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %36 = load ptr, ptr %3, align 8
  %37 = call ptr @fgets(ptr noundef %35, i32 noundef 30, ptr noundef %36)
  %38 = load i32, ptr %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %6, align 4
  br label %30

40:                                               ; preds = %30
  %41 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %42 = call ptr @strchr(ptr noundef %41, i32 noundef 10) #5
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %46 = call i64 @strlen(ptr noundef %45) #5
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds nuw [30 x i8], ptr %2, i64 0, i64 %47
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %44, %40
  %50 = load ptr, ptr %3, align 8
  %51 = call i32 @fclose(ptr noundef %50)
  %52 = getelementptr inbounds nuw %struct.game_instance, ptr %0, i32 0, i32 0
  %53 = getelementptr inbounds [30 x i8], ptr %52, i64 0, i64 0
  %54 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %55 = call ptr @strcpy(ptr noundef %53, ptr noundef %54) #6
  %56 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %57 = call i64 @strlen(ptr noundef %56) #5
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds nuw %struct.game_instance, ptr %0, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  store i32 0, ptr %7, align 4
  br label %60

60:                                               ; preds = %71, %49
  %61 = load i32, ptr %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [30 x i8], ptr %2, i64 0, i64 0
  %64 = call i64 @strlen(ptr noundef %63) #5
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = getelementptr inbounds nuw %struct.game_instance, ptr %0, i32 0, i32 1
  %68 = load i32, ptr %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x i8], ptr %67, i64 0, i64 %69
  store i8 95, ptr %70, align 1
  br label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 4
  br label %60

74:                                               ; preds = %60
  %75 = getelementptr inbounds nuw %struct.game_instance, ptr %0, i32 0, i32 3
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds nuw %struct.game_instance, ptr %0, i32 0, i32 5
  store i32 0, ptr %76, align 4
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @__isoc99_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @new_guess(i8 noundef signext %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, ptr %5, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 1, ptr %4, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %8, align 4
  br label %9

29:                                               ; preds = %9
  store i32 -1, ptr %4, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, ptr %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_word(i8 noundef signext %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8 %0, ptr %5, align 1
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i32, ptr %8, align 4
  %11 = load i32, ptr %7, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8, ptr %5, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 1, ptr %4, align 4
  br label %29

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %8, align 4
  br label %9

28:                                               ; preds = %9
  store i32 -1, ptr %4, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, ptr %4, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picture(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %29 [
    i32 12, label %4
    i32 11, label %6
    i32 10, label %8
    i32 9, label %10
    i32 8, label %12
    i32 7, label %14
    i32 6, label %16
    i32 5, label %18
    i32 4, label %20
    i32 3, label %22
    i32 2, label %24
    i32 1, label %26
    i32 0, label %28
  ]

4:                                                ; preds = %1
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  br label %31

6:                                                ; preds = %1
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  br label %31

8:                                                ; preds = %1
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  br label %31

10:                                               ; preds = %1
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.18)
  br label %31

12:                                               ; preds = %1
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  br label %31

14:                                               ; preds = %1
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  br label %31

16:                                               ; preds = %1
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %31

18:                                               ; preds = %1
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  br label %31

20:                                               ; preds = %1
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  br label %31

22:                                               ; preds = %1
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  br label %31

24:                                               ; preds = %1
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  br label %31

26:                                               ; preds = %1
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  br label %31

28:                                               ; preds = %1
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.27)
  br label %31

31:                                               ; preds = %29, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @won(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 12
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, ptr noundef %8)
  br label %14

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = sub nsw i32 12, %11
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %7
  ret void
}

declare ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare void @rewind(ptr noundef) #2

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
