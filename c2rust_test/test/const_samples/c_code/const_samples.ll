; ModuleID = 'c_code/const_samples.c'
source_filename = "c_code/const_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Point = type { i32, i32 }
%struct.Person = type { i32, i8* }
%struct.Record = type { i32, i32* }
%struct.Complex = type { %struct.Point, i8* }

@SIMPLE_INT = dso_local constant i32 42, align 4
@SIMPLE_FLOAT = dso_local constant float 0x40091EB860000000, align 4
@SIMPLE_CHAR = dso_local constant i8 65, align 1
@.str = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1
@STRING_LITERAL = dso_local global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), align 8
@ANOTHER_CONST = dso_local constant i32 100, align 4
@POINTER_TO_CONST = dso_local global i32* @ANOTHER_CONST, align 8
@mutable_var = dso_local global i32 200, align 4
@POINTER_TO_MUTABLE = dso_local global i32* @mutable_var, align 8
@INTTOPTR_EXAMPLE = dso_local global i8* inttoptr (i64 3735928559 to i8*), align 8
@SIMPLE_STRUCT = dso_local constant %struct.Point { i32 10, i32 20 }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@STRUCT_WITH_CONST_PTR = dso_local constant %struct.Person { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, align 8
@STRUCT_WITH_MUTABLE_PTR = dso_local constant %struct.Record { i32 2, i32* @mutable_var }, align 8
@INT_ARRAY = dso_local constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"First\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Second\00", align 1
@STRING_ARRAY = dso_local global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0)], align 16
@MUTABLE_PTR_ARRAY = dso_local global [2 x i32*] [i32* @mutable_var, i32* @mutable_var], align 16
@NON_CONST_VAR = dso_local global i32 300, align 4
@COMPLEX_STRUCT = dso_local constant %struct.Complex { %struct.Point { i32 30, i32 40 }, i8* inttoptr (i64 4096 to i8*) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
