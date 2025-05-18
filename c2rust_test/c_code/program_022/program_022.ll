; ModuleID = './c_code/temp_compile/10-排序5 PAT Judge.c'
source_filename = "./c_code/temp_compile/10-\E6\8E\92\E5\BA\8F5 PAT Judge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NScore = type { i32, [6 x i32], i32, i32, i32, i8 }

@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@Student = dso_local global [10005 x %struct.NScore] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"%d %05d %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare3keys(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.NScore, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds nuw %struct.NScore, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, ptr %5, align 4
  br label %65

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.NScore, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds nuw %struct.NScore, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -1, ptr %5, align 4
  br label %64

23:                                               ; preds = %14
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds nuw %struct.NScore, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds nuw %struct.NScore, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, ptr %5, align 4
  br label %63

32:                                               ; preds = %23
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds nuw %struct.NScore, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds nuw %struct.NScore, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 -1, ptr %5, align 4
  br label %62

41:                                               ; preds = %32
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds nuw %struct.NScore, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds nuw %struct.NScore, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, ptr %5, align 4
  br label %61

50:                                               ; preds = %41
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds nuw %struct.NScore, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 4
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds nuw %struct.NScore, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, ptr %5, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, ptr %5, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %31
  br label %64

64:                                               ; preds = %63, %22
  br label %65

65:                                               ; preds = %64, %13
  %66 = load i32, ptr %5, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %16 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  store i32 1, ptr %9, align 4
  br label %17

17:                                               ; preds = %26, %2
  %18 = load i32, ptr %9, align 4
  %19 = load i32, ptr %7, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i32], ptr %15, i64 0, i64 %23
  %25 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.1, ptr noundef %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %9, align 4
  br label %17

29:                                               ; preds = %17
  store i32 1, ptr %9, align 4
  br label %30

30:                                               ; preds = %72, %29
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %6, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load i32, ptr %9, align 4
  %36 = load i32, ptr %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %37
  %39 = getelementptr inbounds nuw %struct.NScore, ptr %38, i32 0, i32 0
  store i32 %35, ptr %39, align 4
  %40 = load i32, ptr %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %41
  %43 = getelementptr inbounds nuw %struct.NScore, ptr %42, i32 0, i32 5
  store i8 0, ptr %43, align 4
  store i32 1, ptr %10, align 4
  br label %44

44:                                               ; preds = %56, %34
  %45 = load i32, ptr %10, align 4
  %46 = load i32, ptr %7, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, ptr %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %50
  %52 = getelementptr inbounds nuw %struct.NScore, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], ptr %52, i64 0, i64 %54
  store i32 -2, ptr %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, ptr %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %10, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load i32, ptr %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %61
  %63 = getelementptr inbounds nuw %struct.NScore, ptr %62, i32 0, i32 4
  store i32 0, ptr %63, align 4
  %64 = load i32, ptr %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %65
  %67 = getelementptr inbounds nuw %struct.NScore, ptr %66, i32 0, i32 3
  store i32 0, ptr %67, align 4
  %68 = load i32, ptr %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %69
  %71 = getelementptr inbounds nuw %struct.NScore, ptr %70, i32 0, i32 2
  store i32 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %59
  %73 = load i32, ptr %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %9, align 4
  br label %30

75:                                               ; preds = %30
  store i32 -1, ptr getelementptr inbounds nuw (%struct.NScore, ptr @Student, i32 0, i32 2), align 4
  store i32 0, ptr %9, align 4
  br label %76

76:                                               ; preds = %110, %75
  %77 = load i32, ptr %9, align 4
  %78 = load i32, ptr %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %76
  %81 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  %82 = load i32, ptr %14, align 4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32, ptr %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %86
  %88 = getelementptr inbounds nuw %struct.NScore, ptr %87, i32 0, i32 5
  store i8 1, ptr %88, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, ptr %14, align 4
  %91 = load i32, ptr %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %92
  %94 = getelementptr inbounds nuw %struct.NScore, ptr %93, i32 0, i32 1
  %95 = load i32, ptr %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [6 x i32], ptr %94, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  %99 = icmp sgt i32 %90, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = load i32, ptr %14, align 4
  %102 = load i32, ptr %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %103
  %105 = getelementptr inbounds nuw %struct.NScore, ptr %104, i32 0, i32 1
  %106 = load i32, ptr %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i32], ptr %105, i64 0, i64 %107
  store i32 %101, ptr %108, align 4
  br label %109

109:                                              ; preds = %100, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, ptr %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %9, align 4
  br label %76

113:                                              ; preds = %76
  store i32 1, ptr %9, align 4
  br label %114

114:                                              ; preds = %174, %113
  %115 = load i32, ptr %9, align 4
  %116 = load i32, ptr %6, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %177

118:                                              ; preds = %114
  store i32 1, ptr %10, align 4
  br label %119

119:                                              ; preds = %170, %118
  %120 = load i32, ptr %10, align 4
  %121 = load i32, ptr %7, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %173

123:                                              ; preds = %119
  %124 = load i32, ptr %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %125
  %127 = getelementptr inbounds nuw %struct.NScore, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [6 x i32], ptr %127, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %169

133:                                              ; preds = %123
  %134 = load i32, ptr %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %135
  %137 = getelementptr inbounds nuw %struct.NScore, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [6 x i32], ptr %137, i64 0, i64 %139
  %141 = load i32, ptr %140, align 4
  %142 = load i32, ptr %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %143
  %145 = getelementptr inbounds nuw %struct.NScore, ptr %144, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = add nsw i32 %146, %141
  store i32 %147, ptr %145, align 4
  %148 = load i32, ptr %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %149
  %151 = getelementptr inbounds nuw %struct.NScore, ptr %150, i32 0, i32 1
  %152 = load i32, ptr %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [6 x i32], ptr %151, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [6 x i32], ptr %15, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %155, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %133
  %162 = load i32, ptr %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %163
  %165 = getelementptr inbounds nuw %struct.NScore, ptr %164, i32 0, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %165, align 4
  br label %168

168:                                              ; preds = %161, %133
  br label %169

169:                                              ; preds = %168, %123
  br label %170

170:                                              ; preds = %169
  %171 = load i32, ptr %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr %10, align 4
  br label %119

173:                                              ; preds = %119
  br label %174

174:                                              ; preds = %173
  %175 = load i32, ptr %9, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %9, align 4
  br label %114

177:                                              ; preds = %114
  %178 = load i32, ptr %6, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  call void @qsort(ptr noundef @Student, i64 noundef %180, i64 noundef 44, ptr noundef @compare3keys)
  store i32 0, ptr %11, align 4
  store i32 0, ptr %9, align 4
  br label %181

181:                                              ; preds = %219, %177
  %182 = load i32, ptr %9, align 4
  %183 = load i32, ptr %6, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %222

185:                                              ; preds = %181
  %186 = load i32, ptr %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %187
  %189 = getelementptr inbounds nuw %struct.NScore, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 4
  %191 = load i32, ptr %9, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %193
  %195 = getelementptr inbounds nuw %struct.NScore, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = icmp ne i32 %190, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %185
  %199 = load i32, ptr %9, align 4
  %200 = load i32, ptr %11, align 4
  %201 = sub nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = load i32, ptr %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %204
  %206 = getelementptr inbounds nuw %struct.NScore, ptr %205, i32 0, i32 4
  store i32 %202, ptr %206, align 4
  store i32 0, ptr %11, align 4
  br label %218

207:                                              ; preds = %185
  %208 = load i32, ptr %9, align 4
  %209 = load i32, ptr %11, align 4
  %210 = sub nsw i32 %208, %209
  %211 = add nsw i32 %210, 1
  %212 = load i32, ptr %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %213
  %215 = getelementptr inbounds nuw %struct.NScore, ptr %214, i32 0, i32 4
  store i32 %211, ptr %215, align 4
  %216 = load i32, ptr %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, ptr %11, align 4
  br label %218

218:                                              ; preds = %207, %198
  br label %219

219:                                              ; preds = %218
  %220 = load i32, ptr %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %9, align 4
  br label %181

222:                                              ; preds = %181
  store i32 0, ptr %9, align 4
  br label %223

223:                                              ; preds = %297, %222
  %224 = load i32, ptr %9, align 4
  %225 = load i32, ptr %6, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %300

227:                                              ; preds = %223
  %228 = load i32, ptr %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %229
  %231 = getelementptr inbounds nuw %struct.NScore, ptr %230, i32 0, i32 5
  %232 = load i8, ptr %231, align 4
  %233 = trunc i8 %232 to i1
  br i1 %233, label %234, label %296

234:                                              ; preds = %227
  %235 = load i32, ptr %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %236
  %238 = getelementptr inbounds nuw %struct.NScore, ptr %237, i32 0, i32 4
  %239 = load i32, ptr %238, align 4
  %240 = load i32, ptr %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %241
  %243 = getelementptr inbounds nuw %struct.NScore, ptr %242, i32 0, i32 0
  %244 = load i32, ptr %243, align 4
  %245 = load i32, ptr %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %246
  %248 = getelementptr inbounds nuw %struct.NScore, ptr %247, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %239, i32 noundef %244, i32 noundef %249)
  store i32 1, ptr %10, align 4
  br label %251

251:                                              ; preds = %291, %234
  %252 = load i32, ptr %10, align 4
  %253 = load i32, ptr %7, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %294

255:                                              ; preds = %251
  %256 = load i32, ptr %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %257
  %259 = getelementptr inbounds nuw %struct.NScore, ptr %258, i32 0, i32 1
  %260 = load i32, ptr %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [6 x i32], ptr %259, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4
  %264 = icmp eq i32 %263, -2
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %290

267:                                              ; preds = %255
  %268 = load i32, ptr %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %269
  %271 = getelementptr inbounds nuw %struct.NScore, ptr %270, i32 0, i32 1
  %272 = load i32, ptr %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [6 x i32], ptr %271, i64 0, i64 %273
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %279

277:                                              ; preds = %267
  %278 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %289

279:                                              ; preds = %267
  %280 = load i32, ptr %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [10005 x %struct.NScore], ptr @Student, i64 0, i64 %281
  %283 = getelementptr inbounds nuw %struct.NScore, ptr %282, i32 0, i32 1
  %284 = load i32, ptr %10, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [6 x i32], ptr %283, i64 0, i64 %285
  %287 = load i32, ptr %286, align 4
  %288 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %287)
  br label %289

289:                                              ; preds = %279, %277
  br label %290

290:                                              ; preds = %289, %265
  br label %291

291:                                              ; preds = %290
  %292 = load i32, ptr %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %10, align 4
  br label %251

294:                                              ; preds = %251
  %295 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %296

296:                                              ; preds = %294, %227
  br label %297

297:                                              ; preds = %296
  %298 = load i32, ptr %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr %9, align 4
  br label %223

300:                                              ; preds = %223
  ret i32 0
}

declare i32 @__isoc99_scanf(ptr noundef, ...) #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
