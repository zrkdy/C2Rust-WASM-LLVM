; ModuleID = './c_code/temp_compile/naval_battle.c'
source_filename = "./c_code/temp_compile/naval_battle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d %c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Position unavailable!\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d %c %c\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"************************\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"* Player'S SCORE 1: %02d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"* Player'S SCORE 2: %02d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%02d \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@__const.printPositioning.msg1 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (1/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg2 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (2/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg3 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (3/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg4 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (4/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg5 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (5/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg6 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 1 (6/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg7 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 2 (1/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg8 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 2 (2/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg9 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 2 (3/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg10 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 2 (4/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg11 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 3 (1/2)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg12 = private unnamed_addr constant [60 x i8] c"Player 1 - Position the size boat 3 (2/2)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg1.15 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (1/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg2.16 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (2/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg3.17 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (3/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg4.18 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (4/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg5.19 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (5/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg6.20 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 1 (6/6)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg7.21 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 2 (1/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg8.22 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 2 (2/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg9.23 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 2 (3/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg10.24 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 2 (4/4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg11.25 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 3 (1/2)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.printPositioning.msg12.26 = private unnamed_addr constant [60 x i8] c"Player 2 - Position the size boat 3 (2/2)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.27 = private unnamed_addr constant [16 x i8] c"Player 1's turn\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"Player 1 DROPPED A BOAT!\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Player 2's turn\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Player 2 DROPPED A BOAT!\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"END GAME\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validEntryLineColumn(i32 noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i32 %0, ptr %4, align 4
  store i8 %1, ptr %5, align 1
  %6 = load i32, ptr %4, align 4
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = icmp sle i32 %9, 10
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sge i32 %13, 65
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i8, ptr %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sle i32 %17, 74
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, ptr %3, align 4
  br label %21

20:                                               ; preds = %15, %11, %8, %2
  store i32 0, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, ptr %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validatePosition(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i8 %4, ptr %11, align 1
  store i32 0, ptr %12, align 4
  %15 = load i32, ptr %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %5
  %18 = load i32, ptr %9, align 4
  %19 = icmp sgt i32 %18, 9
  br i1 %19, label %40, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %10, align 4
  %25 = icmp sgt i32 %24, 9
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %11, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 72
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8, ptr %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 86
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %26
  %35 = load i32, ptr %8, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %8, align 4
  %39 = icmp sgt i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %30, %23, %20, %17, %5
  store i32 0, ptr %6, align 4
  br label %121

41:                                               ; preds = %37
  %42 = load i8, ptr %11, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 72
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load i32, ptr %10, align 4
  %47 = sub nsw i32 10, %46
  %48 = load i32, ptr %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, ptr %6, align 4
  br label %121

51:                                               ; preds = %45
  %52 = load i32, ptr %10, align 4
  store i32 %52, ptr %14, align 4
  br label %53

53:                                               ; preds = %73, %51
  %54 = load i32, ptr %14, align 4
  %55 = load i32, ptr %10, align 4
  %56 = load i32, ptr %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = load ptr, ptr %7, align 8
  %61 = load i32, ptr %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], ptr %60, i64 %62
  %64 = load i32, ptr %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], ptr %63, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, ptr %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %12, align 4
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, ptr %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %14, align 4
  br label %53

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i8, ptr %11, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 86
  br i1 %81, label %82, label %115

82:                                               ; preds = %78
  %83 = load i32, ptr %9, align 4
  %84 = sub nsw i32 10, %83
  %85 = load i32, ptr %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, ptr %6, align 4
  br label %121

88:                                               ; preds = %82
  %89 = load i32, ptr %9, align 4
  store i32 %89, ptr %13, align 4
  br label %90

90:                                               ; preds = %110, %88
  %91 = load i32, ptr %13, align 4
  %92 = load i32, ptr %9, align 4
  %93 = load i32, ptr %8, align 4
  %94 = add nsw i32 %92, %93
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load ptr, ptr %7, align 8
  %98 = load i32, ptr %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x i32], ptr %97, i64 %99
  %101 = load i32, ptr %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i32], ptr %100, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load i32, ptr %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %12, align 4
  br label %109

109:                                              ; preds = %106, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %13, align 4
  br label %90

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %78
  %116 = load i32, ptr %12, align 4
  %117 = load i32, ptr %8, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 1, ptr %6, align 4
  br label %121

120:                                              ; preds = %115
  store i32 0, ptr %6, align 4
  br label %121

121:                                              ; preds = %120, %119, %87, %50, %40
  %122 = load i32, ptr %6, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @canShoot(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x i32], ptr %8, i64 %10
  %12 = load i32, ptr %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32], ptr %11, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -2
  br i1 %16, label %57, label %17

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 8
  %19 = load i32, ptr %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], ptr %18, i64 %20
  %22 = load i32, ptr %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], ptr %21, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %57, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [10 x i32], ptr %28, i64 %30
  %32 = load i32, ptr %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i32], ptr %31, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 20
  br i1 %36, label %57, label %37

37:                                               ; preds = %27
  %38 = load ptr, ptr %5, align 8
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], ptr %38, i64 %40
  %42 = load i32, ptr %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], ptr %41, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 30
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load ptr, ptr %5, align 8
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], ptr %48, i64 %50
  %52 = load i32, ptr %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], ptr %51, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 50
  br i1 %56, label %57, label %58

57:                                               ; preds = %47, %37, %27, %17, %3
  store i32 0, ptr %4, align 4
  br label %59

58:                                               ; preds = %47
  store i32 1, ptr %4, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, ptr %4, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @positionBoat(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %5, ptr noundef %7)
  br label %24

24:                                               ; preds = %41, %22
  %25 = load i32, ptr %5, align 4
  %26 = load i8, ptr %7, align 1
  %27 = call i32 @validEntryLineColumn(i32 noundef %25, i8 noundef signext %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i8, ptr %7, align 1
  %35 = sext i8 %34 to i32
  %36 = sub nsw i32 %35, 65
  %37 = call i32 @validatePosition(ptr noundef %30, i32 noundef %31, i32 noundef %33, i32 noundef %36, i8 noundef signext 72)
  %38 = icmp ne i32 %37, 1
  br label %39

39:                                               ; preds = %29, %24
  %40 = phi i1 [ true, %24 ], [ %38, %29 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %43 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %5, ptr noundef %7)
  br label %24

44:                                               ; preds = %39
  br label %69

45:                                               ; preds = %2
  %46 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %5, ptr noundef %7, ptr noundef %8)
  br label %47

47:                                               ; preds = %65, %45
  %48 = load i32, ptr %5, align 4
  %49 = load i8, ptr %7, align 1
  %50 = call i32 @validEntryLineColumn(i32 noundef %48, i8 noundef signext %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %3, align 8
  %54 = load i32, ptr %4, align 4
  %55 = load i32, ptr %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i8, ptr %7, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 65
  %60 = load i8, ptr %8, align 1
  %61 = call i32 @validatePosition(ptr noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %59, i8 noundef signext %60)
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %52, %47
  %64 = phi i1 [ true, %47 ], [ %62, %52 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %67 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.2, ptr noundef %5, ptr noundef %7, ptr noundef %8)
  br label %47

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i8, ptr %7, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 65
  store i32 %72, ptr %9, align 4
  %73 = load i32, ptr %5, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, ptr %5, align 4
  %75 = load i32, ptr %4, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %158

77:                                               ; preds = %69
  %78 = load i32, ptr %9, align 4
  store i32 %78, ptr %6, align 4
  br label %79

79:                                               ; preds = %94, %77
  %80 = load i32, ptr %6, align 4
  %81 = load i32, ptr %9, align 4
  %82 = load i32, ptr %4, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i32, ptr %4, align 4
  %87 = load ptr, ptr %3, align 8
  %88 = load i32, ptr %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], ptr %87, i64 %89
  %91 = load i32, ptr %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10 x i32], ptr %90, i64 0, i64 %92
  store i32 %86, ptr %93, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, ptr %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %6, align 4
  br label %79

97:                                               ; preds = %79
  %98 = load i32, ptr %5, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, ptr %10, align 4
  br label %100

100:                                              ; preds = %154, %97
  %101 = load i32, ptr %10, align 4
  %102 = load i32, ptr %5, align 4
  %103 = load i32, ptr %4, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %157

107:                                              ; preds = %100
  %108 = load i32, ptr %9, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, ptr %11, align 4
  br label %110

110:                                              ; preds = %150, %107
  %111 = load i32, ptr %11, align 4
  %112 = load i32, ptr %9, align 4
  %113 = load i32, ptr %4, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %114, 1
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %153

117:                                              ; preds = %110
  %118 = load i32, ptr %10, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %117
  %121 = load i32, ptr %10, align 4
  %122 = icmp sle i32 %121, 9
  br i1 %122, label %123, label %149

123:                                              ; preds = %120
  %124 = load i32, ptr %11, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load i32, ptr %11, align 4
  %128 = icmp sle i32 %127, 9
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load ptr, ptr %3, align 8
  %131 = load i32, ptr %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [10 x i32], ptr %130, i64 %132
  %134 = load i32, ptr %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x i32], ptr %133, i64 0, i64 %135
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr %4, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %129
  %141 = load ptr, ptr %3, align 8
  %142 = load i32, ptr %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x i32], ptr %141, i64 %143
  %145 = load i32, ptr %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10 x i32], ptr %144, i64 0, i64 %146
  store i32 -1, ptr %147, align 4
  br label %148

148:                                              ; preds = %140, %129
  br label %149

149:                                              ; preds = %148, %126, %123, %120, %117
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %11, align 4
  br label %110

153:                                              ; preds = %110
  br label %154

154:                                              ; preds = %153
  %155 = load i32, ptr %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %10, align 4
  br label %100

157:                                              ; preds = %100
  br label %158

158:                                              ; preds = %157, %69
  %159 = load i8, ptr %8, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 72
  br i1 %161, label %162, label %307

162:                                              ; preds = %158
  %163 = load i32, ptr %9, align 4
  store i32 %163, ptr %6, align 4
  br label %164

164:                                              ; preds = %179, %162
  %165 = load i32, ptr %6, align 4
  %166 = load i32, ptr %9, align 4
  %167 = load i32, ptr %4, align 4
  %168 = add nsw i32 %166, %167
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %164
  %171 = load i32, ptr %4, align 4
  %172 = load ptr, ptr %3, align 8
  %173 = load i32, ptr %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [10 x i32], ptr %172, i64 %174
  %176 = load i32, ptr %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x i32], ptr %175, i64 0, i64 %177
  store i32 %171, ptr %178, align 4
  br label %179

179:                                              ; preds = %170
  %180 = load i32, ptr %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, ptr %6, align 4
  br label %164

182:                                              ; preds = %164
  %183 = load i32, ptr %4, align 4
  %184 = icmp eq i32 %183, 3
  br i1 %184, label %185, label %246

185:                                              ; preds = %182
  %186 = load i32, ptr %5, align 4
  %187 = sub nsw i32 %186, 1
  store i32 %187, ptr %12, align 4
  br label %188

188:                                              ; preds = %242, %185
  %189 = load i32, ptr %12, align 4
  %190 = load i32, ptr %5, align 4
  %191 = load i32, ptr %4, align 4
  %192 = add nsw i32 %190, %191
  %193 = sub nsw i32 %192, 1
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %195, label %245

195:                                              ; preds = %188
  %196 = load i32, ptr %9, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, ptr %13, align 4
  br label %198

198:                                              ; preds = %238, %195
  %199 = load i32, ptr %13, align 4
  %200 = load i32, ptr %9, align 4
  %201 = load i32, ptr %4, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 1
  %204 = icmp slt i32 %199, %203
  br i1 %204, label %205, label %241

205:                                              ; preds = %198
  %206 = load i32, ptr %12, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %205
  %209 = load i32, ptr %12, align 4
  %210 = icmp sle i32 %209, 9
  br i1 %210, label %211, label %237

211:                                              ; preds = %208
  %212 = load i32, ptr %13, align 4
  %213 = icmp sge i32 %212, 0
  br i1 %213, label %214, label %237

214:                                              ; preds = %211
  %215 = load i32, ptr %13, align 4
  %216 = icmp sle i32 %215, 9
  br i1 %216, label %217, label %237

217:                                              ; preds = %214
  %218 = load ptr, ptr %3, align 8
  %219 = load i32, ptr %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [10 x i32], ptr %218, i64 %220
  %222 = load i32, ptr %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [10 x i32], ptr %221, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4
  %226 = load i32, ptr %4, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %217
  %229 = load ptr, ptr %3, align 8
  %230 = load i32, ptr %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [10 x i32], ptr %229, i64 %231
  %233 = load i32, ptr %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [10 x i32], ptr %232, i64 0, i64 %234
  store i32 -1, ptr %235, align 4
  br label %236

236:                                              ; preds = %228, %217
  br label %237

237:                                              ; preds = %236, %214, %211, %208, %205
  br label %238

238:                                              ; preds = %237
  %239 = load i32, ptr %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, ptr %13, align 4
  br label %198

241:                                              ; preds = %198
  br label %242

242:                                              ; preds = %241
  %243 = load i32, ptr %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %12, align 4
  br label %188

245:                                              ; preds = %188
  br label %306

246:                                              ; preds = %182
  %247 = load i32, ptr %5, align 4
  %248 = sub nsw i32 %247, 1
  store i32 %248, ptr %14, align 4
  br label %249

249:                                              ; preds = %302, %246
  %250 = load i32, ptr %14, align 4
  %251 = load i32, ptr %5, align 4
  %252 = load i32, ptr %4, align 4
  %253 = add nsw i32 %251, %252
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %305

255:                                              ; preds = %249
  %256 = load i32, ptr %9, align 4
  %257 = sub nsw i32 %256, 1
  store i32 %257, ptr %15, align 4
  br label %258

258:                                              ; preds = %298, %255
  %259 = load i32, ptr %15, align 4
  %260 = load i32, ptr %9, align 4
  %261 = load i32, ptr %4, align 4
  %262 = add nsw i32 %260, %261
  %263 = add nsw i32 %262, 1
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %301

265:                                              ; preds = %258
  %266 = load i32, ptr %14, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %297

268:                                              ; preds = %265
  %269 = load i32, ptr %14, align 4
  %270 = icmp sle i32 %269, 9
  br i1 %270, label %271, label %297

271:                                              ; preds = %268
  %272 = load i32, ptr %15, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %297

274:                                              ; preds = %271
  %275 = load i32, ptr %15, align 4
  %276 = icmp sle i32 %275, 9
  br i1 %276, label %277, label %297

277:                                              ; preds = %274
  %278 = load ptr, ptr %3, align 8
  %279 = load i32, ptr %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [10 x i32], ptr %278, i64 %280
  %282 = load i32, ptr %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [10 x i32], ptr %281, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4
  %286 = load i32, ptr %4, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %277
  %289 = load ptr, ptr %3, align 8
  %290 = load i32, ptr %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [10 x i32], ptr %289, i64 %291
  %293 = load i32, ptr %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [10 x i32], ptr %292, i64 0, i64 %294
  store i32 -1, ptr %295, align 4
  br label %296

296:                                              ; preds = %288, %277
  br label %297

297:                                              ; preds = %296, %274, %271, %268, %265
  br label %298

298:                                              ; preds = %297
  %299 = load i32, ptr %15, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, ptr %15, align 4
  br label %258

301:                                              ; preds = %258
  br label %302

302:                                              ; preds = %301
  %303 = load i32, ptr %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, ptr %14, align 4
  br label %249

305:                                              ; preds = %249
  br label %306

306:                                              ; preds = %305, %245
  br label %307

307:                                              ; preds = %306, %158
  %308 = load i8, ptr %8, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 86
  br i1 %310, label %311, label %456

311:                                              ; preds = %307
  %312 = load i32, ptr %5, align 4
  store i32 %312, ptr %6, align 4
  br label %313

313:                                              ; preds = %328, %311
  %314 = load i32, ptr %6, align 4
  %315 = load i32, ptr %5, align 4
  %316 = load i32, ptr %4, align 4
  %317 = add nsw i32 %315, %316
  %318 = icmp slt i32 %314, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load i32, ptr %4, align 4
  %321 = load ptr, ptr %3, align 8
  %322 = load i32, ptr %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [10 x i32], ptr %321, i64 %323
  %325 = load i32, ptr %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [10 x i32], ptr %324, i64 0, i64 %326
  store i32 %320, ptr %327, align 4
  br label %328

328:                                              ; preds = %319
  %329 = load i32, ptr %6, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, ptr %6, align 4
  br label %313

331:                                              ; preds = %313
  %332 = load i32, ptr %4, align 4
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %395

334:                                              ; preds = %331
  %335 = load i32, ptr %5, align 4
  %336 = sub nsw i32 %335, 1
  store i32 %336, ptr %16, align 4
  br label %337

337:                                              ; preds = %391, %334
  %338 = load i32, ptr %16, align 4
  %339 = load i32, ptr %5, align 4
  %340 = load i32, ptr %4, align 4
  %341 = add nsw i32 %339, %340
  %342 = add nsw i32 %341, 1
  %343 = icmp slt i32 %338, %342
  br i1 %343, label %344, label %394

344:                                              ; preds = %337
  %345 = load i32, ptr %9, align 4
  %346 = sub nsw i32 %345, 1
  store i32 %346, ptr %17, align 4
  br label %347

347:                                              ; preds = %387, %344
  %348 = load i32, ptr %17, align 4
  %349 = load i32, ptr %9, align 4
  %350 = load i32, ptr %4, align 4
  %351 = add nsw i32 %349, %350
  %352 = sub nsw i32 %351, 1
  %353 = icmp slt i32 %348, %352
  br i1 %353, label %354, label %390

354:                                              ; preds = %347
  %355 = load i32, ptr %16, align 4
  %356 = icmp sge i32 %355, 0
  br i1 %356, label %357, label %386

357:                                              ; preds = %354
  %358 = load i32, ptr %16, align 4
  %359 = icmp sle i32 %358, 9
  br i1 %359, label %360, label %386

360:                                              ; preds = %357
  %361 = load i32, ptr %17, align 4
  %362 = icmp sge i32 %361, 0
  br i1 %362, label %363, label %386

363:                                              ; preds = %360
  %364 = load i32, ptr %17, align 4
  %365 = icmp sle i32 %364, 9
  br i1 %365, label %366, label %386

366:                                              ; preds = %363
  %367 = load ptr, ptr %3, align 8
  %368 = load i32, ptr %16, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [10 x i32], ptr %367, i64 %369
  %371 = load i32, ptr %17, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [10 x i32], ptr %370, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4
  %375 = load i32, ptr %4, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %385

377:                                              ; preds = %366
  %378 = load ptr, ptr %3, align 8
  %379 = load i32, ptr %16, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [10 x i32], ptr %378, i64 %380
  %382 = load i32, ptr %17, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [10 x i32], ptr %381, i64 0, i64 %383
  store i32 -1, ptr %384, align 4
  br label %385

385:                                              ; preds = %377, %366
  br label %386

386:                                              ; preds = %385, %363, %360, %357, %354
  br label %387

387:                                              ; preds = %386
  %388 = load i32, ptr %17, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, ptr %17, align 4
  br label %347

390:                                              ; preds = %347
  br label %391

391:                                              ; preds = %390
  %392 = load i32, ptr %16, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, ptr %16, align 4
  br label %337

394:                                              ; preds = %337
  br label %455

395:                                              ; preds = %331
  %396 = load i32, ptr %5, align 4
  %397 = sub nsw i32 %396, 1
  store i32 %397, ptr %18, align 4
  br label %398

398:                                              ; preds = %451, %395
  %399 = load i32, ptr %18, align 4
  %400 = load i32, ptr %5, align 4
  %401 = load i32, ptr %4, align 4
  %402 = add nsw i32 %400, %401
  %403 = add nsw i32 %402, 1
  %404 = icmp slt i32 %399, %403
  br i1 %404, label %405, label %454

405:                                              ; preds = %398
  %406 = load i32, ptr %9, align 4
  %407 = sub nsw i32 %406, 1
  store i32 %407, ptr %19, align 4
  br label %408

408:                                              ; preds = %447, %405
  %409 = load i32, ptr %19, align 4
  %410 = load i32, ptr %9, align 4
  %411 = load i32, ptr %4, align 4
  %412 = add nsw i32 %410, %411
  %413 = icmp slt i32 %409, %412
  br i1 %413, label %414, label %450

414:                                              ; preds = %408
  %415 = load i32, ptr %18, align 4
  %416 = icmp sge i32 %415, 0
  br i1 %416, label %417, label %446

417:                                              ; preds = %414
  %418 = load i32, ptr %18, align 4
  %419 = icmp sle i32 %418, 9
  br i1 %419, label %420, label %446

420:                                              ; preds = %417
  %421 = load i32, ptr %19, align 4
  %422 = icmp sge i32 %421, 0
  br i1 %422, label %423, label %446

423:                                              ; preds = %420
  %424 = load i32, ptr %19, align 4
  %425 = icmp sle i32 %424, 9
  br i1 %425, label %426, label %446

426:                                              ; preds = %423
  %427 = load ptr, ptr %3, align 8
  %428 = load i32, ptr %18, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [10 x i32], ptr %427, i64 %429
  %431 = load i32, ptr %19, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [10 x i32], ptr %430, i64 0, i64 %432
  %434 = load i32, ptr %433, align 4
  %435 = load i32, ptr %4, align 4
  %436 = icmp ne i32 %434, %435
  br i1 %436, label %437, label %445

437:                                              ; preds = %426
  %438 = load ptr, ptr %3, align 8
  %439 = load i32, ptr %18, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [10 x i32], ptr %438, i64 %440
  %442 = load i32, ptr %19, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [10 x i32], ptr %441, i64 0, i64 %443
  store i32 -1, ptr %444, align 4
  br label %445

445:                                              ; preds = %437, %426
  br label %446

446:                                              ; preds = %445, %423, %420, %417, %414
  br label %447

447:                                              ; preds = %446
  %448 = load i32, ptr %19, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr %19, align 4
  br label %408

450:                                              ; preds = %408
  br label %451

451:                                              ; preds = %450
  %452 = load i32, ptr %18, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr %18, align 4
  br label %398

454:                                              ; preds = %398
  br label %455

455:                                              ; preds = %454, %394
  br label %456

456:                                              ; preds = %455, %307
  ret void
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printMessage(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %5 = load ptr, ptr %2, align 8
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %5)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printMessageScore(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %7 = load i32, ptr %3, align 4
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %7)
  %9 = load i32, ptr %4, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %9)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @printTable(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i8 46, ptr %3, align 1
  br label %56

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8 42, ptr %3, align 1
  br label %56

16:                                               ; preds = %12
  %17 = load i32, ptr %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i8 49, ptr %3, align 1
  br label %56

20:                                               ; preds = %16
  %21 = load i32, ptr %4, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8 50, ptr %3, align 1
  br label %56

24:                                               ; preds = %20
  store i8 51, ptr %3, align 1
  br label %56

25:                                               ; preds = %2
  %26 = load i32, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %4, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %4, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %31, %28, %25
  store i8 46, ptr %3, align 1
  br label %56

41:                                               ; preds = %37
  %42 = load i32, ptr %4, align 4
  %43 = icmp eq i32 %42, -2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8 120, ptr %3, align 1
  br label %56

45:                                               ; preds = %41
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, 20
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %4, align 4
  %53 = icmp eq i32 %52, 30
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48, %45
  store i8 78, ptr %3, align 1
  br label %56

55:                                               ; preds = %51
  store i8 65, ptr %3, align 1
  br label %56

56:                                               ; preds = %55, %54, %44, %40, %24, %23, %19, %15, %11
  %57 = load i8, ptr %3, align 1
  ret i8 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printsTray(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 65, ptr %7, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 75
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %15)
  %17 = load i32, ptr %7, align 4
  %18 = icmp slt i32 %17, 74
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %21

21:                                               ; preds = %19, %14
  br label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %7, align 4
  br label %11

25:                                               ; preds = %11
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  store i32 0, ptr %8, align 4
  br label %27

27:                                               ; preds = %87, %25
  %28 = load i32, ptr %8, align 4
  %29 = icmp slt i32 %28, 12
  br i1 %29, label %30, label %90

30:                                               ; preds = %27
  %31 = load i32, ptr %8, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, ptr %8, align 4
  %35 = icmp slt i32 %34, 11
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %37)
  br label %41

39:                                               ; preds = %33, %30
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  br label %41

41:                                               ; preds = %39, %36
  store i32 0, ptr %9, align 4
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i32, ptr %9, align 4
  %44 = icmp slt i32 %43, 12
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load i32, ptr %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load i32, ptr %8, align 4
  %50 = icmp slt i32 %49, 11
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i32, ptr %9, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, ptr %9, align 4
  %56 = icmp slt i32 %55, 11
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8
  %59 = load i32, ptr %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i32], ptr %58, i64 %61
  %63 = load i32, ptr %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], ptr %62, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %5, align 4
  %68 = load i32, ptr %5, align 4
  %69 = load i32, ptr %4, align 4
  %70 = call signext i8 @printTable(i32 noundef %68, i32 noundef %69)
  store i8 %70, ptr %6, align 1
  %71 = load i8, ptr %6, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %72)
  br label %76

74:                                               ; preds = %54, %51, %48, %45
  %75 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  br label %76

76:                                               ; preds = %74, %57
  %77 = load i32, ptr %9, align 4
  %78 = icmp slt i32 %77, 11
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %81

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %9, align 4
  br label %42

85:                                               ; preds = %42
  %86 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, ptr %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %8, align 4
  br label %27

90:                                               ; preds = %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shoot(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], ptr %7, i64 %9
  %11 = load i32, ptr %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i32], ptr %10, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8
  %18 = load i32, ptr %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], ptr %17, i64 %19
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x i32], ptr %20, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %34

26:                                               ; preds = %16, %3
  %27 = load ptr, ptr %4, align 8
  %28 = load i32, ptr %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], ptr %27, i64 %29
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], ptr %30, i64 0, i64 %32
  store i32 -2, ptr %33, align 4
  br label %91

34:                                               ; preds = %16
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i32], ptr %35, i64 %37
  %39 = load i32, ptr %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], ptr %38, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load ptr, ptr %4, align 8
  %46 = load i32, ptr %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], ptr %45, i64 %47
  %49 = load i32, ptr %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10 x i32], ptr %48, i64 0, i64 %50
  store i32 10, ptr %51, align 4
  br label %90

52:                                               ; preds = %34
  %53 = load ptr, ptr %4, align 8
  %54 = load i32, ptr %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i32], ptr %53, i64 %55
  %57 = load i32, ptr %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], ptr %56, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load ptr, ptr %4, align 8
  %64 = load i32, ptr %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], ptr %63, i64 %65
  %67 = load i32, ptr %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [10 x i32], ptr %66, i64 0, i64 %68
  store i32 20, ptr %69, align 4
  br label %89

70:                                               ; preds = %52
  %71 = load ptr, ptr %4, align 8
  %72 = load i32, ptr %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], ptr %71, i64 %73
  %75 = load i32, ptr %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], ptr %74, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load ptr, ptr %4, align 8
  %82 = load i32, ptr %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i32], ptr %81, i64 %83
  %85 = load i32, ptr %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], ptr %84, i64 0, i64 %86
  store i32 30, ptr %87, align 4
  br label %88

88:                                               ; preds = %80, %70
  br label %89

89:                                               ; preds = %88, %62
  br label %90

90:                                               ; preds = %89, %44
  br label %91

91:                                               ; preds = %90, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculateScore(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = load i32, ptr %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i32], ptr %12, i64 %14
  %16 = load i32, ptr %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x i32], ptr %15, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [10 x i32], ptr %22, i64 %24
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x i32], ptr %25, i64 0, i64 %27
  store i32 50, ptr %28, align 4
  store i32 2, ptr %4, align 4
  br label %585

29:                                               ; preds = %3
  %30 = load ptr, ptr %5, align 8
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [10 x i32], ptr %30, i64 %32
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], ptr %33, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 20
  br i1 %38, label %39, label %212

39:                                               ; preds = %29
  %40 = load ptr, ptr %5, align 8
  %41 = load i32, ptr %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], ptr %40, i64 %43
  %45 = load i32, ptr %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], ptr %44, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 20
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, ptr %9, align 4
  br label %51

51:                                               ; preds = %50, %39
  %52 = load ptr, ptr %5, align 8
  %53 = load i32, ptr %6, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i32], ptr %52, i64 %55
  %57 = load i32, ptr %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], ptr %56, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 20
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, ptr %8, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load ptr, ptr %5, align 8
  %65 = load i32, ptr %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i32], ptr %64, i64 %66
  %68 = load i32, ptr %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [10 x i32], ptr %67, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 20
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 1, ptr %11, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = load ptr, ptr %5, align 8
  %77 = load i32, ptr %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], ptr %76, i64 %78
  %80 = load i32, ptr %7, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], ptr %79, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 20
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i32 1, ptr %10, align 4
  br label %87

87:                                               ; preds = %86, %75
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %118

90:                                               ; preds = %87
  %91 = load ptr, ptr %5, align 8
  %92 = load i32, ptr %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i32], ptr %91, i64 %94
  %96 = load i32, ptr %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [10 x i32], ptr %95, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 20
  br i1 %100, label %101, label %117

101:                                              ; preds = %90
  %102 = load ptr, ptr %5, align 8
  %103 = load i32, ptr %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], ptr %102, i64 %104
  %106 = load i32, ptr %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x i32], ptr %105, i64 0, i64 %107
  store i32 50, ptr %108, align 4
  %109 = load ptr, ptr %5, align 8
  %110 = load i32, ptr %6, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i32], ptr %109, i64 %112
  %114 = load i32, ptr %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [10 x i32], ptr %113, i64 0, i64 %115
  store i32 50, ptr %116, align 4
  store i32 4, ptr %4, align 4
  br label %585

117:                                              ; preds = %90
  store i32 0, ptr %4, align 4
  br label %585

118:                                              ; preds = %87
  %119 = load i32, ptr %8, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load ptr, ptr %5, align 8
  %123 = load i32, ptr %6, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x i32], ptr %122, i64 %125
  %127 = load i32, ptr %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [10 x i32], ptr %126, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 20
  br i1 %131, label %132, label %148

132:                                              ; preds = %121
  %133 = load ptr, ptr %5, align 8
  %134 = load i32, ptr %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x i32], ptr %133, i64 %135
  %137 = load i32, ptr %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [10 x i32], ptr %136, i64 0, i64 %138
  store i32 50, ptr %139, align 4
  %140 = load ptr, ptr %5, align 8
  %141 = load i32, ptr %6, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x i32], ptr %140, i64 %143
  %145 = load i32, ptr %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10 x i32], ptr %144, i64 0, i64 %146
  store i32 50, ptr %147, align 4
  store i32 4, ptr %4, align 4
  br label %585

148:                                              ; preds = %121
  store i32 0, ptr %4, align 4
  br label %585

149:                                              ; preds = %118
  %150 = load i32, ptr %11, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %180

152:                                              ; preds = %149
  %153 = load ptr, ptr %5, align 8
  %154 = load i32, ptr %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [10 x i32], ptr %153, i64 %155
  %157 = load i32, ptr %7, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], ptr %156, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 20
  br i1 %162, label %163, label %179

163:                                              ; preds = %152
  %164 = load ptr, ptr %5, align 8
  %165 = load i32, ptr %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x i32], ptr %164, i64 %166
  %168 = load i32, ptr %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10 x i32], ptr %167, i64 0, i64 %169
  store i32 50, ptr %170, align 4
  %171 = load ptr, ptr %5, align 8
  %172 = load i32, ptr %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], ptr %171, i64 %173
  %175 = load i32, ptr %7, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x i32], ptr %174, i64 0, i64 %177
  store i32 50, ptr %178, align 4
  store i32 4, ptr %4, align 4
  br label %585

179:                                              ; preds = %152
  store i32 0, ptr %4, align 4
  br label %585

180:                                              ; preds = %149
  %181 = load i32, ptr %10, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %211

183:                                              ; preds = %180
  %184 = load ptr, ptr %5, align 8
  %185 = load i32, ptr %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [10 x i32], ptr %184, i64 %186
  %188 = load i32, ptr %7, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [10 x i32], ptr %187, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 20
  br i1 %193, label %194, label %210

194:                                              ; preds = %183
  %195 = load ptr, ptr %5, align 8
  %196 = load i32, ptr %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [10 x i32], ptr %195, i64 %197
  %199 = load i32, ptr %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [10 x i32], ptr %198, i64 0, i64 %200
  store i32 50, ptr %201, align 4
  %202 = load ptr, ptr %5, align 8
  %203 = load i32, ptr %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [10 x i32], ptr %202, i64 %204
  %206 = load i32, ptr %7, align 4
  %207 = sub nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [10 x i32], ptr %205, i64 0, i64 %208
  store i32 50, ptr %209, align 4
  store i32 4, ptr %4, align 4
  br label %585

210:                                              ; preds = %183
  store i32 0, ptr %4, align 4
  br label %585

211:                                              ; preds = %180
  br label %583

212:                                              ; preds = %29
  %213 = load ptr, ptr %5, align 8
  %214 = load i32, ptr %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [10 x i32], ptr %213, i64 %215
  %217 = load i32, ptr %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [10 x i32], ptr %216, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 30
  br i1 %221, label %222, label %582

222:                                              ; preds = %212
  %223 = load ptr, ptr %5, align 8
  %224 = load i32, ptr %6, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10 x i32], ptr %223, i64 %226
  %228 = load i32, ptr %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [10 x i32], ptr %227, i64 0, i64 %229
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 30
  br i1 %232, label %233, label %234

233:                                              ; preds = %222
  store i32 1, ptr %9, align 4
  br label %234

234:                                              ; preds = %233, %222
  %235 = load ptr, ptr %5, align 8
  %236 = load i32, ptr %6, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [10 x i32], ptr %235, i64 %238
  %240 = load i32, ptr %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [10 x i32], ptr %239, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4
  %244 = icmp eq i32 %243, 30
  br i1 %244, label %245, label %246

245:                                              ; preds = %234
  store i32 1, ptr %8, align 4
  br label %246

246:                                              ; preds = %245, %234
  %247 = load ptr, ptr %5, align 8
  %248 = load i32, ptr %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [10 x i32], ptr %247, i64 %249
  %251 = load i32, ptr %7, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [10 x i32], ptr %250, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 30
  br i1 %256, label %257, label %258

257:                                              ; preds = %246
  store i32 1, ptr %11, align 4
  br label %258

258:                                              ; preds = %257, %246
  %259 = load ptr, ptr %5, align 8
  %260 = load i32, ptr %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [10 x i32], ptr %259, i64 %261
  %263 = load i32, ptr %7, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [10 x i32], ptr %262, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 30
  br i1 %268, label %269, label %270

269:                                              ; preds = %258
  store i32 1, ptr %10, align 4
  br label %270

270:                                              ; preds = %269, %258
  %271 = load i32, ptr %9, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %323

273:                                              ; preds = %270
  %274 = load i32, ptr %8, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %323

276:                                              ; preds = %273
  %277 = load ptr, ptr %5, align 8
  %278 = load i32, ptr %6, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [10 x i32], ptr %277, i64 %280
  %282 = load i32, ptr %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [10 x i32], ptr %281, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4
  %286 = icmp eq i32 %285, 30
  br i1 %286, label %287, label %322

287:                                              ; preds = %276
  %288 = load ptr, ptr %5, align 8
  %289 = load i32, ptr %6, align 4
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [10 x i32], ptr %288, i64 %291
  %293 = load i32, ptr %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [10 x i32], ptr %292, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 30
  br i1 %297, label %298, label %322

298:                                              ; preds = %287
  %299 = load ptr, ptr %5, align 8
  %300 = load i32, ptr %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [10 x i32], ptr %299, i64 %301
  %303 = load i32, ptr %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [10 x i32], ptr %302, i64 0, i64 %304
  store i32 50, ptr %305, align 4
  %306 = load ptr, ptr %5, align 8
  %307 = load i32, ptr %6, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [10 x i32], ptr %306, i64 %309
  %311 = load i32, ptr %7, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [10 x i32], ptr %310, i64 0, i64 %312
  store i32 50, ptr %313, align 4
  %314 = load ptr, ptr %5, align 8
  %315 = load i32, ptr %6, align 4
  %316 = sub nsw i32 %315, 1
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [10 x i32], ptr %314, i64 %317
  %319 = load i32, ptr %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [10 x i32], ptr %318, i64 0, i64 %320
  store i32 50, ptr %321, align 4
  store i32 7, ptr %4, align 4
  br label %585

322:                                              ; preds = %287, %276
  store i32 0, ptr %4, align 4
  br label %585

323:                                              ; preds = %273, %270
  %324 = load i32, ptr %11, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %376

326:                                              ; preds = %323
  %327 = load i32, ptr %10, align 4
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %376

329:                                              ; preds = %326
  %330 = load ptr, ptr %5, align 8
  %331 = load i32, ptr %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [10 x i32], ptr %330, i64 %332
  %334 = load i32, ptr %7, align 4
  %335 = add nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [10 x i32], ptr %333, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = icmp eq i32 %338, 30
  br i1 %339, label %340, label %375

340:                                              ; preds = %329
  %341 = load ptr, ptr %5, align 8
  %342 = load i32, ptr %6, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [10 x i32], ptr %341, i64 %343
  %345 = load i32, ptr %7, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [10 x i32], ptr %344, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, 30
  br i1 %350, label %351, label %375

351:                                              ; preds = %340
  %352 = load ptr, ptr %5, align 8
  %353 = load i32, ptr %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [10 x i32], ptr %352, i64 %354
  %356 = load i32, ptr %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [10 x i32], ptr %355, i64 0, i64 %357
  store i32 50, ptr %358, align 4
  %359 = load ptr, ptr %5, align 8
  %360 = load i32, ptr %6, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [10 x i32], ptr %359, i64 %361
  %363 = load i32, ptr %7, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [10 x i32], ptr %362, i64 0, i64 %365
  store i32 50, ptr %366, align 4
  %367 = load ptr, ptr %5, align 8
  %368 = load i32, ptr %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [10 x i32], ptr %367, i64 %369
  %371 = load i32, ptr %7, align 4
  %372 = add nsw i32 %371, 1
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [10 x i32], ptr %370, i64 0, i64 %373
  store i32 50, ptr %374, align 4
  store i32 7, ptr %4, align 4
  br label %585

375:                                              ; preds = %340, %329
  store i32 0, ptr %4, align 4
  br label %585

376:                                              ; preds = %326, %323
  %377 = load i32, ptr %11, align 4
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %426

379:                                              ; preds = %376
  %380 = load ptr, ptr %5, align 8
  %381 = load i32, ptr %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [10 x i32], ptr %380, i64 %382
  %384 = load i32, ptr %7, align 4
  %385 = add nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [10 x i32], ptr %383, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4
  %389 = icmp eq i32 %388, 30
  br i1 %389, label %390, label %425

390:                                              ; preds = %379
  %391 = load ptr, ptr %5, align 8
  %392 = load i32, ptr %6, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [10 x i32], ptr %391, i64 %393
  %395 = load i32, ptr %7, align 4
  %396 = add nsw i32 %395, 2
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [10 x i32], ptr %394, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4
  %400 = icmp eq i32 %399, 30
  br i1 %400, label %401, label %425

401:                                              ; preds = %390
  %402 = load ptr, ptr %5, align 8
  %403 = load i32, ptr %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [10 x i32], ptr %402, i64 %404
  %406 = load i32, ptr %7, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [10 x i32], ptr %405, i64 0, i64 %407
  store i32 50, ptr %408, align 4
  %409 = load ptr, ptr %5, align 8
  %410 = load i32, ptr %6, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [10 x i32], ptr %409, i64 %411
  %413 = load i32, ptr %7, align 4
  %414 = add nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [10 x i32], ptr %412, i64 0, i64 %415
  store i32 50, ptr %416, align 4
  %417 = load ptr, ptr %5, align 8
  %418 = load i32, ptr %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [10 x i32], ptr %417, i64 %419
  %421 = load i32, ptr %7, align 4
  %422 = add nsw i32 %421, 2
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [10 x i32], ptr %420, i64 0, i64 %423
  store i32 50, ptr %424, align 4
  store i32 7, ptr %4, align 4
  br label %585

425:                                              ; preds = %390, %379
  store i32 0, ptr %4, align 4
  br label %585

426:                                              ; preds = %376
  %427 = load i32, ptr %10, align 4
  %428 = icmp eq i32 %427, 1
  br i1 %428, label %429, label %476

429:                                              ; preds = %426
  %430 = load ptr, ptr %5, align 8
  %431 = load i32, ptr %6, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [10 x i32], ptr %430, i64 %432
  %434 = load i32, ptr %7, align 4
  %435 = sub nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [10 x i32], ptr %433, i64 0, i64 %436
  %438 = load i32, ptr %437, align 4
  %439 = icmp eq i32 %438, 30
  br i1 %439, label %440, label %475

440:                                              ; preds = %429
  %441 = load ptr, ptr %5, align 8
  %442 = load i32, ptr %6, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [10 x i32], ptr %441, i64 %443
  %445 = load i32, ptr %7, align 4
  %446 = sub nsw i32 %445, 2
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [10 x i32], ptr %444, i64 0, i64 %447
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, 30
  br i1 %450, label %451, label %475

451:                                              ; preds = %440
  %452 = load ptr, ptr %5, align 8
  %453 = load i32, ptr %6, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [10 x i32], ptr %452, i64 %454
  %456 = load i32, ptr %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [10 x i32], ptr %455, i64 0, i64 %457
  store i32 50, ptr %458, align 4
  %459 = load ptr, ptr %5, align 8
  %460 = load i32, ptr %6, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [10 x i32], ptr %459, i64 %461
  %463 = load i32, ptr %7, align 4
  %464 = sub nsw i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [10 x i32], ptr %462, i64 0, i64 %465
  store i32 50, ptr %466, align 4
  %467 = load ptr, ptr %5, align 8
  %468 = load i32, ptr %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [10 x i32], ptr %467, i64 %469
  %471 = load i32, ptr %7, align 4
  %472 = sub nsw i32 %471, 2
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [10 x i32], ptr %470, i64 0, i64 %473
  store i32 50, ptr %474, align 4
  store i32 7, ptr %4, align 4
  br label %585

475:                                              ; preds = %440, %429
  store i32 0, ptr %4, align 4
  br label %585

476:                                              ; preds = %426
  %477 = load i32, ptr %8, align 4
  %478 = icmp eq i32 %477, 1
  br i1 %478, label %479, label %526

479:                                              ; preds = %476
  %480 = load ptr, ptr %5, align 8
  %481 = load i32, ptr %6, align 4
  %482 = sub nsw i32 %481, 1
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [10 x i32], ptr %480, i64 %483
  %485 = load i32, ptr %7, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [10 x i32], ptr %484, i64 0, i64 %486
  %488 = load i32, ptr %487, align 4
  %489 = icmp eq i32 %488, 30
  br i1 %489, label %490, label %525

490:                                              ; preds = %479
  %491 = load ptr, ptr %5, align 8
  %492 = load i32, ptr %6, align 4
  %493 = sub nsw i32 %492, 2
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [10 x i32], ptr %491, i64 %494
  %496 = load i32, ptr %7, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [10 x i32], ptr %495, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %499, 30
  br i1 %500, label %501, label %525

501:                                              ; preds = %490
  %502 = load ptr, ptr %5, align 8
  %503 = load i32, ptr %6, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [10 x i32], ptr %502, i64 %504
  %506 = load i32, ptr %7, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [10 x i32], ptr %505, i64 0, i64 %507
  store i32 50, ptr %508, align 4
  %509 = load ptr, ptr %5, align 8
  %510 = load i32, ptr %6, align 4
  %511 = sub nsw i32 %510, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [10 x i32], ptr %509, i64 %512
  %514 = load i32, ptr %7, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [10 x i32], ptr %513, i64 0, i64 %515
  store i32 50, ptr %516, align 4
  %517 = load ptr, ptr %5, align 8
  %518 = load i32, ptr %6, align 4
  %519 = sub nsw i32 %518, 2
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [10 x i32], ptr %517, i64 %520
  %522 = load i32, ptr %7, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [10 x i32], ptr %521, i64 0, i64 %523
  store i32 50, ptr %524, align 4
  store i32 7, ptr %4, align 4
  br label %585

525:                                              ; preds = %490, %479
  store i32 0, ptr %4, align 4
  br label %585

526:                                              ; preds = %476
  %527 = load i32, ptr %9, align 4
  %528 = icmp eq i32 %527, 1
  br i1 %528, label %529, label %576

529:                                              ; preds = %526
  %530 = load ptr, ptr %5, align 8
  %531 = load i32, ptr %6, align 4
  %532 = add nsw i32 %531, 1
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [10 x i32], ptr %530, i64 %533
  %535 = load i32, ptr %7, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [10 x i32], ptr %534, i64 0, i64 %536
  %538 = load i32, ptr %537, align 4
  %539 = icmp eq i32 %538, 30
  br i1 %539, label %540, label %575

540:                                              ; preds = %529
  %541 = load ptr, ptr %5, align 8
  %542 = load i32, ptr %6, align 4
  %543 = add nsw i32 %542, 2
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [10 x i32], ptr %541, i64 %544
  %546 = load i32, ptr %7, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [10 x i32], ptr %545, i64 0, i64 %547
  %549 = load i32, ptr %548, align 4
  %550 = icmp eq i32 %549, 30
  br i1 %550, label %551, label %575

551:                                              ; preds = %540
  %552 = load ptr, ptr %5, align 8
  %553 = load i32, ptr %6, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [10 x i32], ptr %552, i64 %554
  %556 = load i32, ptr %7, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [10 x i32], ptr %555, i64 0, i64 %557
  store i32 50, ptr %558, align 4
  %559 = load ptr, ptr %5, align 8
  %560 = load i32, ptr %6, align 4
  %561 = add nsw i32 %560, 1
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [10 x i32], ptr %559, i64 %562
  %564 = load i32, ptr %7, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [10 x i32], ptr %563, i64 0, i64 %565
  store i32 50, ptr %566, align 4
  %567 = load ptr, ptr %5, align 8
  %568 = load i32, ptr %6, align 4
  %569 = add nsw i32 %568, 2
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [10 x i32], ptr %567, i64 %570
  %572 = load i32, ptr %7, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [10 x i32], ptr %571, i64 0, i64 %573
  store i32 50, ptr %574, align 4
  store i32 7, ptr %4, align 4
  br label %585

575:                                              ; preds = %540, %529
  store i32 0, ptr %4, align 4
  br label %585

576:                                              ; preds = %526
  br label %577

577:                                              ; preds = %576
  br label %578

578:                                              ; preds = %577
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579
  br label %581

581:                                              ; preds = %580
  br label %582

582:                                              ; preds = %581, %212
  br label %583

583:                                              ; preds = %582, %211
  br label %584

584:                                              ; preds = %583
  store i32 0, ptr %4, align 4
  br label %585

585:                                              ; preds = %584, %575, %551, %525, %501, %475, %451, %425, %401, %375, %351, %322, %298, %210, %194, %179, %163, %148, %132, %117, %101, %21
  %586 = load i32, ptr %4, align 4
  ret i32 %586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printPositioning(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [60 x i8], align 16
  %8 = alloca [60 x i8], align 16
  %9 = alloca [60 x i8], align 16
  %10 = alloca [60 x i8], align 16
  %11 = alloca [60 x i8], align 16
  %12 = alloca [60 x i8], align 16
  %13 = alloca [60 x i8], align 16
  %14 = alloca [60 x i8], align 16
  %15 = alloca [60 x i8], align 16
  %16 = alloca [60 x i8], align 16
  %17 = alloca [60 x i8], align 16
  %18 = alloca [60 x i8], align 16
  %19 = alloca [60 x i8], align 16
  %20 = alloca [60 x i8], align 16
  %21 = alloca [60 x i8], align 16
  %22 = alloca [60 x i8], align 16
  %23 = alloca [60 x i8], align 16
  %24 = alloca [60 x i8], align 16
  %25 = alloca [60 x i8], align 16
  %26 = alloca [60 x i8], align 16
  %27 = alloca [60 x i8], align 16
  %28 = alloca [60 x i8], align 16
  %29 = alloca [60 x i8], align 16
  %30 = alloca [60 x i8], align 16
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %31 = load i32, ptr %4, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %116

33:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.printPositioning.msg1, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %8, ptr align 16 @__const.printPositioning.msg2, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %9, ptr align 16 @__const.printPositioning.msg3, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %10, ptr align 16 @__const.printPositioning.msg4, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %11, ptr align 16 @__const.printPositioning.msg5, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %12, ptr align 16 @__const.printPositioning.msg6, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %13, ptr align 16 @__const.printPositioning.msg7, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %14, ptr align 16 @__const.printPositioning.msg8, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %15, ptr align 16 @__const.printPositioning.msg9, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %16, ptr align 16 @__const.printPositioning.msg10, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %17, ptr align 16 @__const.printPositioning.msg11, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %18, ptr align 16 @__const.printPositioning.msg12, i64 60, i1 false)
  %34 = load i32, ptr %5, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32, ptr %6, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds [60 x i8], ptr %7, i64 0, i64 0
  call void @printMessage(ptr noundef %40)
  br label %71

41:                                               ; preds = %36
  %42 = load i32, ptr %6, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds [60 x i8], ptr %8, i64 0, i64 0
  call void @printMessage(ptr noundef %45)
  br label %70

46:                                               ; preds = %41
  %47 = load i32, ptr %6, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds [60 x i8], ptr %9, i64 0, i64 0
  call void @printMessage(ptr noundef %50)
  br label %69

51:                                               ; preds = %46
  %52 = load i32, ptr %6, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = getelementptr inbounds [60 x i8], ptr %10, i64 0, i64 0
  call void @printMessage(ptr noundef %55)
  br label %68

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = getelementptr inbounds [60 x i8], ptr %11, i64 0, i64 0
  call void @printMessage(ptr noundef %60)
  br label %67

61:                                               ; preds = %56
  %62 = load i32, ptr %6, align 4
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds [60 x i8], ptr %12, i64 0, i64 0
  call void @printMessage(ptr noundef %65)
  br label %66

66:                                               ; preds = %64, %61
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %54
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %39
  br label %115

72:                                               ; preds = %33
  %73 = load i32, ptr %5, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load i32, ptr %6, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = getelementptr inbounds [60 x i8], ptr %13, i64 0, i64 0
  call void @printMessage(ptr noundef %79)
  br label %98

80:                                               ; preds = %75
  %81 = load i32, ptr %6, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = getelementptr inbounds [60 x i8], ptr %14, i64 0, i64 0
  call void @printMessage(ptr noundef %84)
  br label %97

85:                                               ; preds = %80
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = getelementptr inbounds [60 x i8], ptr %15, i64 0, i64 0
  call void @printMessage(ptr noundef %89)
  br label %96

90:                                               ; preds = %85
  %91 = load i32, ptr %6, align 4
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = getelementptr inbounds [60 x i8], ptr %16, i64 0, i64 0
  call void @printMessage(ptr noundef %94)
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %88
  br label %97

97:                                               ; preds = %96, %83
  br label %98

98:                                               ; preds = %97, %78
  br label %114

99:                                               ; preds = %72
  %100 = load i32, ptr %5, align 4
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, ptr %6, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = getelementptr inbounds [60 x i8], ptr %17, i64 0, i64 0
  call void @printMessage(ptr noundef %106)
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i32, ptr %6, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = getelementptr inbounds [60 x i8], ptr %18, i64 0, i64 0
  call void @printMessage(ptr noundef %111)
  br label %112

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %99
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %71
  br label %116

116:                                              ; preds = %115, %3
  %117 = load i32, ptr %4, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %203

119:                                              ; preds = %116
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %19, ptr align 16 @__const.printPositioning.msg1.15, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %20, ptr align 16 @__const.printPositioning.msg2.16, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %21, ptr align 16 @__const.printPositioning.msg3.17, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %22, ptr align 16 @__const.printPositioning.msg4.18, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %23, ptr align 16 @__const.printPositioning.msg5.19, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %24, ptr align 16 @__const.printPositioning.msg6.20, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %25, ptr align 16 @__const.printPositioning.msg7.21, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %26, ptr align 16 @__const.printPositioning.msg8.22, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %27, ptr align 16 @__const.printPositioning.msg9.23, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %28, ptr align 16 @__const.printPositioning.msg10.24, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %29, ptr align 16 @__const.printPositioning.msg11.25, i64 60, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %30, ptr align 16 @__const.printPositioning.msg12.26, i64 60, i1 false)
  %120 = load i32, ptr %5, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %158

122:                                              ; preds = %119
  %123 = load i32, ptr %6, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = getelementptr inbounds [60 x i8], ptr %19, i64 0, i64 0
  call void @printMessage(ptr noundef %126)
  br label %157

127:                                              ; preds = %122
  %128 = load i32, ptr %6, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = getelementptr inbounds [60 x i8], ptr %20, i64 0, i64 0
  call void @printMessage(ptr noundef %131)
  br label %156

132:                                              ; preds = %127
  %133 = load i32, ptr %6, align 4
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = getelementptr inbounds [60 x i8], ptr %21, i64 0, i64 0
  call void @printMessage(ptr noundef %136)
  br label %155

137:                                              ; preds = %132
  %138 = load i32, ptr %6, align 4
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = getelementptr inbounds [60 x i8], ptr %22, i64 0, i64 0
  call void @printMessage(ptr noundef %141)
  br label %154

142:                                              ; preds = %137
  %143 = load i32, ptr %6, align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = getelementptr inbounds [60 x i8], ptr %23, i64 0, i64 0
  call void @printMessage(ptr noundef %146)
  br label %153

147:                                              ; preds = %142
  %148 = load i32, ptr %6, align 4
  %149 = icmp eq i32 %148, 6
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = getelementptr inbounds [60 x i8], ptr %24, i64 0, i64 0
  call void @printMessage(ptr noundef %151)
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %145
  br label %154

154:                                              ; preds = %153, %140
  br label %155

155:                                              ; preds = %154, %135
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %125
  br label %202

158:                                              ; preds = %119
  %159 = load i32, ptr %5, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  %162 = load i32, ptr %6, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = getelementptr inbounds [60 x i8], ptr %25, i64 0, i64 0
  call void @printMessage(ptr noundef %165)
  br label %184

166:                                              ; preds = %161
  %167 = load i32, ptr %6, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = getelementptr inbounds [60 x i8], ptr %26, i64 0, i64 0
  call void @printMessage(ptr noundef %170)
  br label %183

171:                                              ; preds = %166
  %172 = load i32, ptr %6, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = getelementptr inbounds [60 x i8], ptr %27, i64 0, i64 0
  call void @printMessage(ptr noundef %175)
  br label %182

176:                                              ; preds = %171
  %177 = load i32, ptr %6, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds [60 x i8], ptr %28, i64 0, i64 0
  call void @printMessage(ptr noundef %180)
  br label %181

181:                                              ; preds = %179, %176
  br label %182

182:                                              ; preds = %181, %174
  br label %183

183:                                              ; preds = %182, %169
  br label %184

184:                                              ; preds = %183, %164
  br label %201

185:                                              ; preds = %158
  %186 = load i32, ptr %5, align 4
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i32, ptr %6, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = getelementptr inbounds [60 x i8], ptr %29, i64 0, i64 0
  call void @printMessage(ptr noundef %192)
  br label %199

193:                                              ; preds = %188
  %194 = load i32, ptr %6, align 4
  %195 = icmp eq i32 %194, 2
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = getelementptr inbounds [60 x i8], ptr %30, i64 0, i64 0
  call void @printMessage(ptr noundef %197)
  br label %198

198:                                              ; preds = %196, %193
  br label %199

199:                                              ; preds = %198, %191
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %184
  br label %202

202:                                              ; preds = %201, %157
  br label %203

203:                                              ; preds = %202, %116
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x [10 x i32]], align 16
  %3 = alloca [10 x [10 x i32]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 1, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  store i32 0, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %13, align 4
  br label %19

19:                                               ; preds = %43, %0
  %20 = load i32, ptr %13, align 4
  %21 = icmp slt i32 %20, 10
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  store i32 0, ptr %14, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, ptr %14, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32, ptr %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 %28
  %30 = load i32, ptr %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i32], ptr %29, i64 0, i64 %31
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 %34
  %36 = load i32, ptr %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10 x i32], ptr %35, i64 0, i64 %37
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %26
  %40 = load i32, ptr %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %14, align 4
  br label %23

42:                                               ; preds = %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %13, align 4
  br label %19

46:                                               ; preds = %19
  store i32 1, ptr %15, align 4
  br label %47

47:                                               ; preds = %126, %46
  %48 = load i32, ptr %15, align 4
  %49 = icmp sle i32 %48, 2
  br i1 %49, label %50, label %129

50:                                               ; preds = %47
  store i32 1, ptr %16, align 4
  br label %51

51:                                               ; preds = %72, %50
  %52 = load i32, ptr %16, align 4
  %53 = icmp sle i32 %52, 6
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = load i32, ptr %15, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, ptr %15, align 4
  %59 = load i32, ptr %16, align 4
  call void @printPositioning(i32 noundef %58, i32 noundef 1, i32 noundef %59)
  %60 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @printsTray(ptr noundef %60, i32 noundef 0)
  %61 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @positionBoat(ptr noundef %61, i32 noundef 1)
  br label %71

62:                                               ; preds = %54
  %63 = load i32, ptr %15, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, ptr %15, align 4
  %67 = load i32, ptr %16, align 4
  call void @printPositioning(i32 noundef %66, i32 noundef 1, i32 noundef %67)
  %68 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @printsTray(ptr noundef %68, i32 noundef 0)
  %69 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @positionBoat(ptr noundef %69, i32 noundef 1)
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %16, align 4
  br label %51

75:                                               ; preds = %51
  store i32 1, ptr %17, align 4
  br label %76

76:                                               ; preds = %97, %75
  %77 = load i32, ptr %17, align 4
  %78 = icmp sle i32 %77, 4
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load i32, ptr %15, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, ptr %15, align 4
  %84 = load i32, ptr %17, align 4
  call void @printPositioning(i32 noundef %83, i32 noundef 2, i32 noundef %84)
  %85 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @printsTray(ptr noundef %85, i32 noundef 0)
  %86 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @positionBoat(ptr noundef %86, i32 noundef 2)
  br label %96

87:                                               ; preds = %79
  %88 = load i32, ptr %15, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32, ptr %15, align 4
  %92 = load i32, ptr %17, align 4
  call void @printPositioning(i32 noundef %91, i32 noundef 2, i32 noundef %92)
  %93 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @printsTray(ptr noundef %93, i32 noundef 0)
  %94 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @positionBoat(ptr noundef %94, i32 noundef 2)
  br label %95

95:                                               ; preds = %90, %87
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %17, align 4
  br label %76

100:                                              ; preds = %76
  store i32 1, ptr %18, align 4
  br label %101

101:                                              ; preds = %122, %100
  %102 = load i32, ptr %18, align 4
  %103 = icmp sle i32 %102, 2
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load i32, ptr %15, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, ptr %15, align 4
  %109 = load i32, ptr %18, align 4
  call void @printPositioning(i32 noundef %108, i32 noundef 3, i32 noundef %109)
  %110 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @printsTray(ptr noundef %110, i32 noundef 0)
  %111 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @positionBoat(ptr noundef %111, i32 noundef 3)
  br label %121

112:                                              ; preds = %104
  %113 = load i32, ptr %15, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, ptr %15, align 4
  %117 = load i32, ptr %18, align 4
  call void @printPositioning(i32 noundef %116, i32 noundef 3, i32 noundef %117)
  %118 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @printsTray(ptr noundef %118, i32 noundef 0)
  %119 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @positionBoat(ptr noundef %119, i32 noundef 3)
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121
  %123 = load i32, ptr %18, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %18, align 4
  br label %101

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %15, align 4
  br label %47

129:                                              ; preds = %47
  br label %130

130:                                              ; preds = %227, %129
  %131 = load i32, ptr %4, align 4
  %132 = icmp sle i32 %131, 40
  br i1 %132, label %133, label %230

133:                                              ; preds = %130
  %134 = load i32, ptr %4, align 4
  %135 = srem i32 %134, 2
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %182

137:                                              ; preds = %133
  %138 = load i32, ptr %5, align 4
  %139 = load i32, ptr %6, align 4
  call void @printMessageScore(i32 noundef %138, i32 noundef %139)
  call void @printMessage(ptr noundef @.str.27)
  %140 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  call void @printsTray(ptr noundef %140, i32 noundef 1)
  %141 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %9, ptr noundef %12)
  br label %142

142:                                              ; preds = %158, %137
  %143 = load i32, ptr %9, align 4
  %144 = load i8, ptr %12, align 1
  %145 = call i32 @validEntryLineColumn(i32 noundef %143, i8 noundef signext %144)
  %146 = icmp ne i32 %145, 1
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  %149 = load i32, ptr %9, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i8, ptr %12, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 65
  %154 = call i32 @canShoot(ptr noundef %148, i32 noundef %150, i32 noundef %153)
  %155 = icmp ne i32 %154, 1
  br label %156

156:                                              ; preds = %147, %142
  %157 = phi i1 [ true, %142 ], [ %155, %147 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  store i32 0, ptr %9, align 4
  store i8 97, ptr %12, align 1
  %159 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %160 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %9, ptr noundef %12)
  br label %142

161:                                              ; preds = %156
  %162 = load i32, ptr %9, align 4
  %163 = sub nsw i32 %162, 1
  store i32 %163, ptr %11, align 4
  %164 = load i8, ptr %12, align 1
  %165 = sext i8 %164 to i32
  %166 = sub nsw i32 %165, 65
  store i32 %166, ptr %10, align 4
  %167 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  %168 = load i32, ptr %11, align 4
  %169 = load i32, ptr %10, align 4
  call void @shoot(ptr noundef %167, i32 noundef %168, i32 noundef %169)
  %170 = load i32, ptr %5, align 4
  store i32 %170, ptr %7, align 4
  %171 = getelementptr inbounds [10 x [10 x i32]], ptr %3, i64 0, i64 0
  %172 = load i32, ptr %11, align 4
  %173 = load i32, ptr %10, align 4
  %174 = call i32 @calculateScore(ptr noundef %171, i32 noundef %172, i32 noundef %173)
  %175 = load i32, ptr %5, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, ptr %5, align 4
  %177 = load i32, ptr %7, align 4
  %178 = load i32, ptr %5, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %161
  call void @printMessage(ptr noundef @.str.28)
  br label %181

181:                                              ; preds = %180, %161
  br label %227

182:                                              ; preds = %133
  %183 = load i32, ptr %5, align 4
  %184 = load i32, ptr %6, align 4
  call void @printMessageScore(i32 noundef %183, i32 noundef %184)
  call void @printMessage(ptr noundef @.str.29)
  %185 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  call void @printsTray(ptr noundef %185, i32 noundef 1)
  %186 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %9, ptr noundef %12)
  br label %187

187:                                              ; preds = %203, %182
  %188 = load i32, ptr %9, align 4
  %189 = load i8, ptr %12, align 1
  %190 = call i32 @validEntryLineColumn(i32 noundef %188, i8 noundef signext %189)
  %191 = icmp ne i32 %190, 1
  br i1 %191, label %201, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  %194 = load i32, ptr %9, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load i8, ptr %12, align 1
  %197 = sext i8 %196 to i32
  %198 = sub nsw i32 %197, 65
  %199 = call i32 @canShoot(ptr noundef %193, i32 noundef %195, i32 noundef %198)
  %200 = icmp ne i32 %199, 1
  br label %201

201:                                              ; preds = %192, %187
  %202 = phi i1 [ true, %187 ], [ %200, %192 ]
  br i1 %202, label %203, label %206

203:                                              ; preds = %201
  %204 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %205 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %9, ptr noundef %12)
  br label %187

206:                                              ; preds = %201
  %207 = load i32, ptr %9, align 4
  %208 = sub nsw i32 %207, 1
  store i32 %208, ptr %11, align 4
  %209 = load i8, ptr %12, align 1
  %210 = sext i8 %209 to i32
  %211 = sub nsw i32 %210, 65
  store i32 %211, ptr %10, align 4
  %212 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  %213 = load i32, ptr %11, align 4
  %214 = load i32, ptr %10, align 4
  call void @shoot(ptr noundef %212, i32 noundef %213, i32 noundef %214)
  %215 = load i32, ptr %6, align 4
  store i32 %215, ptr %8, align 4
  %216 = getelementptr inbounds [10 x [10 x i32]], ptr %2, i64 0, i64 0
  %217 = load i32, ptr %11, align 4
  %218 = load i32, ptr %10, align 4
  %219 = call i32 @calculateScore(ptr noundef %216, i32 noundef %217, i32 noundef %218)
  %220 = load i32, ptr %6, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, ptr %6, align 4
  %222 = load i32, ptr %8, align 4
  %223 = load i32, ptr %6, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %206
  call void @printMessage(ptr noundef @.str.30)
  br label %226

226:                                              ; preds = %225, %206
  br label %227

227:                                              ; preds = %226, %181
  %228 = load i32, ptr %4, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, ptr %4, align 4
  br label %130

230:                                              ; preds = %130
  call void @printMessage(ptr noundef @.str.31)
  %231 = load i32, ptr %5, align 4
  %232 = load i32, ptr %6, align 4
  call void @printMessageScore(i32 noundef %231, i32 noundef %232)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
