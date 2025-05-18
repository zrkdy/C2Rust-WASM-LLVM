; ModuleID = './c_code/temp_compile/multikey_quick_sort.c'
source_filename = "./c_code/temp_compile/multikey_quick_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tnode = type { i8, ptr, ptr, ptr }

@storestring = dso_local global i32 0, align 4
@root = dso_local global ptr null, align 8
@bufn = dso_local global i32 0, align 4
@buffer = dso_local global ptr null, align 8
@freearr = dso_local global [10000 x ptr] zeroinitializer, align 16
@freen = dso_local global i32 0, align 4
@nodecnt = dso_local global i32 0, align 4
@srcharr = dso_local global [100000 x ptr] zeroinitializer, align 16
@srchtop = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"boy\00", align 1
@__const.main.arr = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vecswap(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 %0, ptr %5, align 4
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  store ptr %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %14, %4
  %11 = load i32, ptr %7, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %7, align 4
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %9, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %8, align 8
  %26 = load i32, ptr %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  store ptr %24, ptr %28, align 8
  %29 = load ptr, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load i32, ptr %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  store ptr %29, ptr %33, align 8
  %34 = load i32, ptr %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %5, align 4
  %36 = load i32, ptr %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %6, align 4
  br label %10

38:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssort1(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %17 = load i32, ptr %5, align 4
  %18 = icmp sle i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %264

20:                                               ; preds = %3
  %21 = call i32 @rand() #6
  %22 = load i32, ptr %5, align 4
  %23 = srem i32 %21, %22
  store i32 %23, ptr %7, align 4
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 0
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %13, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = load i32, ptr %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i64 0
  store ptr %31, ptr %33, align 8
  %34 = load ptr, ptr %13, align 8
  %35 = load ptr, ptr %4, align 8
  %36 = load i32, ptr %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  store ptr %34, ptr %38, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds ptr, ptr %39, i64 0
  %41 = load ptr, ptr %40, align 8
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, ptr %12, align 4
  store i32 1, ptr %8, align 4
  store i32 1, ptr %7, align 4
  %47 = load i32, ptr %5, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, ptr %10, align 4
  store i32 %48, ptr %9, align 4
  br label %49

49:                                               ; preds = %152, %20
  br label %50

50:                                               ; preds = %95, %49
  %51 = load i32, ptr %8, align 4
  %52 = load i32, ptr %9, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load ptr, ptr %4, align 8
  %56 = load i32, ptr %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i32, ptr %12, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, ptr %11, align 4
  %67 = icmp sle i32 %66, 0
  br label %68

68:                                               ; preds = %54, %50
  %69 = phi i1 [ false, %50 ], [ %67, %54 ]
  br i1 %69, label %70, label %98

70:                                               ; preds = %68
  %71 = load i32, ptr %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load ptr, ptr %4, align 8
  %75 = load i32, ptr %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = load ptr, ptr %77, align 8
  store ptr %78, ptr %14, align 8
  %79 = load ptr, ptr %4, align 8
  %80 = load i32, ptr %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = load i32, ptr %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  store ptr %83, ptr %87, align 8
  %88 = load ptr, ptr %14, align 8
  %89 = load ptr, ptr %4, align 8
  %90 = load i32, ptr %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  store ptr %88, ptr %92, align 8
  %93 = load i32, ptr %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %7, align 4
  br label %95

95:                                               ; preds = %73, %70
  %96 = load i32, ptr %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %8, align 4
  br label %50

98:                                               ; preds = %68
  br label %99

99:                                               ; preds = %144, %98
  %100 = load i32, ptr %8, align 4
  %101 = load i32, ptr %9, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load ptr, ptr %4, align 8
  %105 = load i32, ptr %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %104, i64 %106
  %108 = load ptr, ptr %107, align 8
  %109 = load i32, ptr %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  %112 = load i8, ptr %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i32, ptr %12, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, ptr %11, align 4
  %116 = icmp sge i32 %115, 0
  br label %117

117:                                              ; preds = %103, %99
  %118 = phi i1 [ false, %99 ], [ %116, %103 ]
  br i1 %118, label %119, label %147

119:                                              ; preds = %117
  %120 = load i32, ptr %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %119
  %123 = load ptr, ptr %4, align 8
  %124 = load i32, ptr %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  %127 = load ptr, ptr %126, align 8
  store ptr %127, ptr %15, align 8
  %128 = load ptr, ptr %4, align 8
  %129 = load i32, ptr %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8
  %133 = load ptr, ptr %4, align 8
  %134 = load i32, ptr %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  store ptr %132, ptr %136, align 8
  %137 = load ptr, ptr %15, align 8
  %138 = load ptr, ptr %4, align 8
  %139 = load i32, ptr %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  store ptr %137, ptr %141, align 8
  %142 = load i32, ptr %10, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, ptr %10, align 4
  br label %144

144:                                              ; preds = %122, %119
  %145 = load i32, ptr %9, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, ptr %9, align 4
  br label %99

147:                                              ; preds = %117
  %148 = load i32, ptr %8, align 4
  %149 = load i32, ptr %9, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %176

152:                                              ; preds = %147
  %153 = load ptr, ptr %4, align 8
  %154 = load i32, ptr %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8
  store ptr %157, ptr %16, align 8
  %158 = load ptr, ptr %4, align 8
  %159 = load i32, ptr %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %158, i64 %160
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %4, align 8
  %164 = load i32, ptr %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165
  store ptr %162, ptr %166, align 8
  %167 = load ptr, ptr %16, align 8
  %168 = load ptr, ptr %4, align 8
  %169 = load i32, ptr %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %168, i64 %170
  store ptr %167, ptr %171, align 8
  %172 = load i32, ptr %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %8, align 4
  %174 = load i32, ptr %9, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, ptr %9, align 4
  br label %49

176:                                              ; preds = %151
  %177 = load i32, ptr %7, align 4
  %178 = load i32, ptr %8, align 4
  %179 = load i32, ptr %7, align 4
  %180 = sub nsw i32 %178, %179
  %181 = icmp sle i32 %177, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i32, ptr %7, align 4
  br label %188

184:                                              ; preds = %176
  %185 = load i32, ptr %8, align 4
  %186 = load i32, ptr %7, align 4
  %187 = sub nsw i32 %185, %186
  br label %188

188:                                              ; preds = %184, %182
  %189 = phi i32 [ %183, %182 ], [ %187, %184 ]
  store i32 %189, ptr %11, align 4
  %190 = load i32, ptr %8, align 4
  %191 = load i32, ptr %11, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, ptr %11, align 4
  %194 = load ptr, ptr %4, align 8
  call void @vecswap(i32 noundef 0, i32 noundef %192, i32 noundef %193, ptr noundef %194)
  %195 = load i32, ptr %10, align 4
  %196 = load i32, ptr %9, align 4
  %197 = sub nsw i32 %195, %196
  %198 = load i32, ptr %5, align 4
  %199 = load i32, ptr %10, align 4
  %200 = sub nsw i32 %198, %199
  %201 = sub nsw i32 %200, 1
  %202 = icmp sle i32 %197, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %188
  %204 = load i32, ptr %10, align 4
  %205 = load i32, ptr %9, align 4
  %206 = sub nsw i32 %204, %205
  br label %212

207:                                              ; preds = %188
  %208 = load i32, ptr %5, align 4
  %209 = load i32, ptr %10, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sub nsw i32 %210, 1
  br label %212

212:                                              ; preds = %207, %203
  %213 = phi i32 [ %206, %203 ], [ %211, %207 ]
  store i32 %213, ptr %11, align 4
  %214 = load i32, ptr %8, align 4
  %215 = load i32, ptr %5, align 4
  %216 = load i32, ptr %11, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load i32, ptr %11, align 4
  %219 = load ptr, ptr %4, align 8
  call void @vecswap(i32 noundef %214, i32 noundef %217, i32 noundef %218, ptr noundef %219)
  %220 = load i32, ptr %8, align 4
  %221 = load i32, ptr %7, align 4
  %222 = sub nsw i32 %220, %221
  store i32 %222, ptr %11, align 4
  %223 = load ptr, ptr %4, align 8
  %224 = load i32, ptr %11, align 4
  %225 = load i32, ptr %6, align 4
  call void @ssort1(ptr noundef %223, i32 noundef %224, i32 noundef %225)
  %226 = load ptr, ptr %4, align 8
  %227 = load i32, ptr %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8
  %231 = load i32, ptr %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, ptr %230, i64 %232
  %234 = load i8, ptr %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %212
  %238 = load ptr, ptr %4, align 8
  %239 = load i32, ptr %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds ptr, ptr %238, i64 %240
  %242 = load i32, ptr %7, align 4
  %243 = load i32, ptr %5, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, ptr %10, align 4
  %246 = sub nsw i32 %244, %245
  %247 = sub nsw i32 %246, 1
  %248 = load i32, ptr %6, align 4
  %249 = add nsw i32 %248, 1
  call void @ssort1(ptr noundef %241, i32 noundef %247, i32 noundef %249)
  br label %250

250:                                              ; preds = %237, %212
  %251 = load i32, ptr %10, align 4
  %252 = load i32, ptr %9, align 4
  %253 = sub nsw i32 %251, %252
  store i32 %253, ptr %11, align 4
  %254 = load ptr, ptr %4, align 8
  %255 = load i32, ptr %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds ptr, ptr %254, i64 %256
  %258 = load i32, ptr %11, align 4
  %259 = sext i32 %258 to i64
  %260 = sub i64 0, %259
  %261 = getelementptr inbounds ptr, ptr %257, i64 %260
  %262 = load i32, ptr %11, align 4
  %263 = load i32, ptr %6, align 4
  call void @ssort1(ptr noundef %261, i32 noundef %262, i32 noundef %263)
  br label %264

264:                                              ; preds = %250, %19
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssort1main(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  call void @ssort1(ptr noundef %5, i32 noundef %6, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vecswap2(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, ptr %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %6, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %7, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw ptr, ptr %17, i32 1
  store ptr %18, ptr %4, align 8
  store ptr %16, ptr %17, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw ptr, ptr %20, i32 1
  store ptr %21, ptr %5, align 8
  store ptr %19, ptr %20, align 8
  br label %8

22:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @med3func(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i32 %3, ptr %9, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load i32, ptr %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = load i8, ptr %17, align 1
  %19 = sext i8 %18 to i32
  store i32 %19, ptr %10, align 4
  %20 = load ptr, ptr %7, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, ptr %11, align 4
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load ptr, ptr %6, align 8
  store ptr %29, ptr %5, align 8
  br label %88

30:                                               ; preds = %4
  %31 = load ptr, ptr %8, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  store i32 %37, ptr %12, align 4
  %38 = load i32, ptr %10, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i32, ptr %12, align 4
  %42 = load i32, ptr %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %30
  %45 = load ptr, ptr %8, align 8
  store ptr %45, ptr %5, align 8
  br label %88

46:                                               ; preds = %40
  %47 = load i32, ptr %10, align 4
  %48 = load i32, ptr %11, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, ptr %11, align 4
  %52 = load i32, ptr %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load ptr, ptr %7, align 8
  br label %66

56:                                               ; preds = %50
  %57 = load i32, ptr %10, align 4
  %58 = load i32, ptr %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %8, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load ptr, ptr %6, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi ptr [ %61, %60 ], [ %63, %62 ]
  br label %66

66:                                               ; preds = %64, %54
  %67 = phi ptr [ %55, %54 ], [ %65, %64 ]
  br label %86

68:                                               ; preds = %46
  %69 = load i32, ptr %11, align 4
  %70 = load i32, ptr %12, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load ptr, ptr %7, align 8
  br label %84

74:                                               ; preds = %68
  %75 = load i32, ptr %10, align 4
  %76 = load i32, ptr %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load ptr, ptr %6, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load ptr, ptr %8, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %79, %78 ], [ %81, %80 ]
  br label %84

84:                                               ; preds = %82, %72
  %85 = phi ptr [ %73, %72 ], [ %83, %82 ]
  br label %86

86:                                               ; preds = %84, %66
  %87 = phi ptr [ %67, %66 ], [ %85, %84 ]
  store ptr %87, ptr %5, align 8
  br label %88

88:                                               ; preds = %86, %44, %28
  %89 = load ptr, ptr %5, align 8
  ret ptr %89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inssort(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %12, ptr %7, align 8
  br label %13

13:                                               ; preds = %79, %3
  %14 = load i32, ptr %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %5, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8
  store ptr %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %75, %17
  %20 = load ptr, ptr %8, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = icmp ugt ptr %20, %21
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store ptr %29, ptr %9, align 8
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %34, ptr %10, align 8
  br label %35

35:                                               ; preds = %51, %23
  %36 = load ptr, ptr %9, align 8
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load ptr, ptr %10, align 8
  %40 = load i8, ptr %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load ptr, ptr %9, align 8
  %45 = load i8, ptr %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %35
  %49 = phi i1 [ false, %35 ], [ %47, %43 ]
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds nuw i8, ptr %52, i32 1
  store ptr %53, ptr %9, align 8
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %55, ptr %10, align 8
  br label %35

56:                                               ; preds = %48
  %57 = load ptr, ptr %9, align 8
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = load ptr, ptr %10, align 8
  %61 = load i8, ptr %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %78

65:                                               ; preds = %56
  %66 = load ptr, ptr %8, align 8
  %67 = load ptr, ptr %66, align 8
  store ptr %67, ptr %10, align 8
  %68 = load ptr, ptr %8, align 8
  %69 = getelementptr inbounds ptr, ptr %68, i64 -1
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %8, align 8
  store ptr %70, ptr %71, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = load ptr, ptr %8, align 8
  %74 = getelementptr inbounds ptr, ptr %73, i64 -1
  store ptr %72, ptr %74, align 8
  br label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %8, align 8
  %77 = getelementptr inbounds ptr, ptr %76, i32 -1
  store ptr %77, ptr %8, align 8
  br label %19

78:                                               ; preds = %64, %19
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %7, align 8
  %81 = getelementptr inbounds nuw ptr, ptr %80, i32 1
  store ptr %81, ptr %7, align 8
  br label %13

82:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssort2(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %18 = load i32, ptr %5, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  call void @inssort(ptr noundef %21, i32 noundef %22, i32 noundef %23)
  br label %338

24:                                               ; preds = %3
  %25 = load ptr, ptr %4, align 8
  store ptr %25, ptr %14, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = load i32, ptr %5, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  store ptr %30, ptr %15, align 8
  %31 = load ptr, ptr %4, align 8
  %32 = load i32, ptr %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  store ptr %35, ptr %16, align 8
  %36 = load i32, ptr %5, align 4
  %37 = icmp sgt i32 %36, 30
  br i1 %37, label %38, label %79

38:                                               ; preds = %24
  %39 = load i32, ptr %5, align 4
  %40 = sdiv i32 %39, 8
  store i32 %40, ptr %7, align 4
  %41 = load ptr, ptr %14, align 8
  %42 = load ptr, ptr %14, align 8
  %43 = load i32, ptr %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %14, align 8
  %47 = load i32, ptr %7, align 4
  %48 = mul nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %46, i64 %49
  %51 = load i32, ptr %6, align 4
  %52 = call ptr @med3func(ptr noundef %41, ptr noundef %45, ptr noundef %50, i32 noundef %51)
  store ptr %52, ptr %14, align 8
  %53 = load ptr, ptr %15, align 8
  %54 = load i32, ptr %7, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  %58 = load ptr, ptr %15, align 8
  %59 = load ptr, ptr %15, align 8
  %60 = load i32, ptr %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %59, i64 %61
  %63 = load i32, ptr %6, align 4
  %64 = call ptr @med3func(ptr noundef %57, ptr noundef %58, ptr noundef %62, i32 noundef %63)
  store ptr %64, ptr %15, align 8
  %65 = load ptr, ptr %16, align 8
  %66 = load i32, ptr %7, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds ptr, ptr %65, i64 %69
  %71 = load ptr, ptr %16, align 8
  %72 = load i32, ptr %7, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds ptr, ptr %71, i64 %74
  %76 = load ptr, ptr %16, align 8
  %77 = load i32, ptr %6, align 4
  %78 = call ptr @med3func(ptr noundef %70, ptr noundef %75, ptr noundef %76, i32 noundef %77)
  store ptr %78, ptr %16, align 8
  br label %79

79:                                               ; preds = %38, %24
  %80 = load ptr, ptr %14, align 8
  %81 = load ptr, ptr %15, align 8
  %82 = load ptr, ptr %16, align 8
  %83 = load i32, ptr %6, align 4
  %84 = call ptr @med3func(ptr noundef %80, ptr noundef %81, ptr noundef %82, i32 noundef %83)
  store ptr %84, ptr %15, align 8
  %85 = load ptr, ptr %4, align 8
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %17, align 8
  %87 = load ptr, ptr %15, align 8
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %4, align 8
  store ptr %88, ptr %89, align 8
  %90 = load ptr, ptr %17, align 8
  %91 = load ptr, ptr %15, align 8
  store ptr %90, ptr %91, align 8
  %92 = load ptr, ptr %4, align 8
  %93 = load ptr, ptr %92, align 8
  %94 = load i32, ptr %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  %97 = load i8, ptr %96, align 1
  %98 = sext i8 %97 to i32
  store i32 %98, ptr %9, align 4
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  store ptr %100, ptr %11, align 8
  store ptr %100, ptr %10, align 8
  %101 = load ptr, ptr %4, align 8
  %102 = load i32, ptr %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = getelementptr inbounds ptr, ptr %104, i64 -1
  store ptr %105, ptr %13, align 8
  store ptr %105, ptr %12, align 8
  br label %106

106:                                              ; preds = %179, %79
  br label %107

107:                                              ; preds = %137, %106
  %108 = load ptr, ptr %11, align 8
  %109 = load ptr, ptr %12, align 8
  %110 = icmp ule ptr %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load ptr, ptr %11, align 8
  %113 = load ptr, ptr %112, align 8
  %114 = load i32, ptr %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %113, i64 %115
  %117 = load i8, ptr %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i32, ptr %9, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, ptr %8, align 4
  %121 = icmp sle i32 %120, 0
  br label %122

122:                                              ; preds = %111, %107
  %123 = phi i1 [ false, %107 ], [ %121, %111 ]
  br i1 %123, label %124, label %140

124:                                              ; preds = %122
  %125 = load i32, ptr %8, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load ptr, ptr %10, align 8
  %129 = load ptr, ptr %128, align 8
  store ptr %129, ptr %17, align 8
  %130 = load ptr, ptr %11, align 8
  %131 = load ptr, ptr %130, align 8
  %132 = load ptr, ptr %10, align 8
  store ptr %131, ptr %132, align 8
  %133 = load ptr, ptr %17, align 8
  %134 = load ptr, ptr %11, align 8
  store ptr %133, ptr %134, align 8
  %135 = load ptr, ptr %10, align 8
  %136 = getelementptr inbounds nuw ptr, ptr %135, i32 1
  store ptr %136, ptr %10, align 8
  br label %137

137:                                              ; preds = %127, %124
  %138 = load ptr, ptr %11, align 8
  %139 = getelementptr inbounds nuw ptr, ptr %138, i32 1
  store ptr %139, ptr %11, align 8
  br label %107

140:                                              ; preds = %122
  br label %141

141:                                              ; preds = %171, %140
  %142 = load ptr, ptr %11, align 8
  %143 = load ptr, ptr %12, align 8
  %144 = icmp ule ptr %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load ptr, ptr %12, align 8
  %147 = load ptr, ptr %146, align 8
  %148 = load i32, ptr %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  %151 = load i8, ptr %150, align 1
  %152 = sext i8 %151 to i32
  %153 = load i32, ptr %9, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, ptr %8, align 4
  %155 = icmp sge i32 %154, 0
  br label %156

156:                                              ; preds = %145, %141
  %157 = phi i1 [ false, %141 ], [ %155, %145 ]
  br i1 %157, label %158, label %174

158:                                              ; preds = %156
  %159 = load i32, ptr %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load ptr, ptr %12, align 8
  %163 = load ptr, ptr %162, align 8
  store ptr %163, ptr %17, align 8
  %164 = load ptr, ptr %13, align 8
  %165 = load ptr, ptr %164, align 8
  %166 = load ptr, ptr %12, align 8
  store ptr %165, ptr %166, align 8
  %167 = load ptr, ptr %17, align 8
  %168 = load ptr, ptr %13, align 8
  store ptr %167, ptr %168, align 8
  %169 = load ptr, ptr %13, align 8
  %170 = getelementptr inbounds ptr, ptr %169, i32 -1
  store ptr %170, ptr %13, align 8
  br label %171

171:                                              ; preds = %161, %158
  %172 = load ptr, ptr %12, align 8
  %173 = getelementptr inbounds ptr, ptr %172, i32 -1
  store ptr %173, ptr %12, align 8
  br label %141

174:                                              ; preds = %156
  %175 = load ptr, ptr %11, align 8
  %176 = load ptr, ptr %12, align 8
  %177 = icmp ugt ptr %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %191

179:                                              ; preds = %174
  %180 = load ptr, ptr %11, align 8
  %181 = load ptr, ptr %180, align 8
  store ptr %181, ptr %17, align 8
  %182 = load ptr, ptr %12, align 8
  %183 = load ptr, ptr %182, align 8
  %184 = load ptr, ptr %11, align 8
  store ptr %183, ptr %184, align 8
  %185 = load ptr, ptr %17, align 8
  %186 = load ptr, ptr %12, align 8
  store ptr %185, ptr %186, align 8
  %187 = load ptr, ptr %11, align 8
  %188 = getelementptr inbounds nuw ptr, ptr %187, i32 1
  store ptr %188, ptr %11, align 8
  %189 = load ptr, ptr %12, align 8
  %190 = getelementptr inbounds ptr, ptr %189, i32 -1
  store ptr %190, ptr %12, align 8
  br label %106

191:                                              ; preds = %178
  %192 = load ptr, ptr %4, align 8
  %193 = load i32, ptr %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %192, i64 %194
  store ptr %195, ptr %16, align 8
  %196 = load ptr, ptr %10, align 8
  %197 = load ptr, ptr %4, align 8
  %198 = ptrtoint ptr %196 to i64
  %199 = ptrtoint ptr %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 8
  %202 = load ptr, ptr %11, align 8
  %203 = load ptr, ptr %10, align 8
  %204 = ptrtoint ptr %202 to i64
  %205 = ptrtoint ptr %203 to i64
  %206 = sub i64 %204, %205
  %207 = sdiv exact i64 %206, 8
  %208 = icmp sle i64 %201, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %191
  %210 = load ptr, ptr %10, align 8
  %211 = load ptr, ptr %4, align 8
  %212 = ptrtoint ptr %210 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = sdiv exact i64 %214, 8
  br label %223

216:                                              ; preds = %191
  %217 = load ptr, ptr %11, align 8
  %218 = load ptr, ptr %10, align 8
  %219 = ptrtoint ptr %217 to i64
  %220 = ptrtoint ptr %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 8
  br label %223

223:                                              ; preds = %216, %209
  %224 = phi i64 [ %215, %209 ], [ %222, %216 ]
  %225 = trunc i64 %224 to i32
  store i32 %225, ptr %8, align 4
  %226 = load ptr, ptr %4, align 8
  %227 = load ptr, ptr %11, align 8
  %228 = load i32, ptr %8, align 4
  %229 = sext i32 %228 to i64
  %230 = sub i64 0, %229
  %231 = getelementptr inbounds ptr, ptr %227, i64 %230
  %232 = load i32, ptr %8, align 4
  call void @vecswap2(ptr noundef %226, ptr noundef %231, i32 noundef %232)
  %233 = load ptr, ptr %13, align 8
  %234 = load ptr, ptr %12, align 8
  %235 = ptrtoint ptr %233 to i64
  %236 = ptrtoint ptr %234 to i64
  %237 = sub i64 %235, %236
  %238 = sdiv exact i64 %237, 8
  %239 = load ptr, ptr %16, align 8
  %240 = load ptr, ptr %13, align 8
  %241 = ptrtoint ptr %239 to i64
  %242 = ptrtoint ptr %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 8
  %245 = sub nsw i64 %244, 1
  %246 = icmp sle i64 %238, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %223
  %248 = load ptr, ptr %13, align 8
  %249 = load ptr, ptr %12, align 8
  %250 = ptrtoint ptr %248 to i64
  %251 = ptrtoint ptr %249 to i64
  %252 = sub i64 %250, %251
  %253 = sdiv exact i64 %252, 8
  br label %262

254:                                              ; preds = %223
  %255 = load ptr, ptr %16, align 8
  %256 = load ptr, ptr %13, align 8
  %257 = ptrtoint ptr %255 to i64
  %258 = ptrtoint ptr %256 to i64
  %259 = sub i64 %257, %258
  %260 = sdiv exact i64 %259, 8
  %261 = sub nsw i64 %260, 1
  br label %262

262:                                              ; preds = %254, %247
  %263 = phi i64 [ %253, %247 ], [ %261, %254 ]
  %264 = trunc i64 %263 to i32
  store i32 %264, ptr %8, align 4
  %265 = load ptr, ptr %11, align 8
  %266 = load ptr, ptr %16, align 8
  %267 = load i32, ptr %8, align 4
  %268 = sext i32 %267 to i64
  %269 = sub i64 0, %268
  %270 = getelementptr inbounds ptr, ptr %266, i64 %269
  %271 = load i32, ptr %8, align 4
  call void @vecswap2(ptr noundef %265, ptr noundef %270, i32 noundef %271)
  %272 = load ptr, ptr %11, align 8
  %273 = load ptr, ptr %10, align 8
  %274 = ptrtoint ptr %272 to i64
  %275 = ptrtoint ptr %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 8
  %278 = trunc i64 %277 to i32
  store i32 %278, ptr %8, align 4
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %280, label %284

280:                                              ; preds = %262
  %281 = load ptr, ptr %4, align 8
  %282 = load i32, ptr %8, align 4
  %283 = load i32, ptr %6, align 4
  call void @ssort2(ptr noundef %281, i32 noundef %282, i32 noundef %283)
  br label %284

284:                                              ; preds = %280, %262
  %285 = load ptr, ptr %4, align 8
  %286 = load i32, ptr %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %285, i64 %287
  %289 = load ptr, ptr %288, align 8
  %290 = load i32, ptr %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %289, i64 %291
  %293 = load i8, ptr %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %318

296:                                              ; preds = %284
  %297 = load ptr, ptr %4, align 8
  %298 = load i32, ptr %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds ptr, ptr %297, i64 %299
  %301 = load ptr, ptr %10, align 8
  %302 = load ptr, ptr %4, align 8
  %303 = ptrtoint ptr %301 to i64
  %304 = ptrtoint ptr %302 to i64
  %305 = sub i64 %303, %304
  %306 = sdiv exact i64 %305, 8
  %307 = load ptr, ptr %16, align 8
  %308 = getelementptr inbounds ptr, ptr %307, i64 %306
  %309 = load ptr, ptr %13, align 8
  %310 = ptrtoint ptr %308 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = sdiv exact i64 %312, 8
  %314 = sub nsw i64 %313, 1
  %315 = trunc i64 %314 to i32
  %316 = load i32, ptr %6, align 4
  %317 = add nsw i32 %316, 1
  call void @ssort2(ptr noundef %300, i32 noundef %315, i32 noundef %317)
  br label %318

318:                                              ; preds = %296, %284
  %319 = load ptr, ptr %13, align 8
  %320 = load ptr, ptr %12, align 8
  %321 = ptrtoint ptr %319 to i64
  %322 = ptrtoint ptr %320 to i64
  %323 = sub i64 %321, %322
  %324 = sdiv exact i64 %323, 8
  %325 = trunc i64 %324 to i32
  store i32 %325, ptr %8, align 4
  %326 = icmp sgt i32 %325, 1
  br i1 %326, label %327, label %338

327:                                              ; preds = %318
  %328 = load ptr, ptr %4, align 8
  %329 = load i32, ptr %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds ptr, ptr %328, i64 %330
  %332 = load i32, ptr %8, align 4
  %333 = sext i32 %332 to i64
  %334 = sub i64 0, %333
  %335 = getelementptr inbounds ptr, ptr %331, i64 %334
  %336 = load i32, ptr %8, align 4
  %337 = load i32, ptr %6, align 4
  call void @ssort2(ptr noundef %335, i32 noundef %336, i32 noundef %337)
  br label %338

338:                                              ; preds = %20, %327, %318
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssort2main(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  call void @ssort2(ptr noundef %5, i32 noundef %6, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @insert1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = call noalias ptr @malloc(i64 noundef 32) #7
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load i8, ptr %9, align 1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds nuw %struct.tnode, ptr %11, i32 0, i32 0
  store i8 %10, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.tnode, ptr %13, i32 0, i32 3
  store ptr null, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.tnode, ptr %15, i32 0, i32 2
  store ptr null, ptr %16, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds nuw %struct.tnode, ptr %17, i32 0, i32 1
  store ptr null, ptr %18, align 8
  br label %19

19:                                               ; preds = %7, %2
  %20 = load ptr, ptr %4, align 8
  %21 = load i8, ptr %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.tnode, ptr %23, i32 0, i32 0
  %25 = load i8, ptr %24, align 8
  %26 = sext i8 %25 to i32
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds nuw %struct.tnode, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = call ptr @insert1(ptr noundef %31, ptr noundef %32)
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds nuw %struct.tnode, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  br label %69

36:                                               ; preds = %19
  %37 = load ptr, ptr %4, align 8
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds nuw %struct.tnode, ptr %40, i32 0, i32 0
  %42 = load i8, ptr %41, align 8
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load ptr, ptr %4, align 8
  %47 = load i8, ptr %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds nuw %struct.tnode, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %55, ptr %4, align 8
  %56 = call ptr @insert1(ptr noundef %53, ptr noundef %55)
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds nuw %struct.tnode, ptr %57, i32 0, i32 2
  store ptr %56, ptr %58, align 8
  br label %59

59:                                               ; preds = %50, %45
  br label %68

60:                                               ; preds = %36
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds nuw %struct.tnode, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %4, align 8
  %65 = call ptr @insert1(ptr noundef %63, ptr noundef %64)
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds nuw %struct.tnode, ptr %66, i32 0, i32 3
  store ptr %65, ptr %67, align 8
  br label %68

68:                                               ; preds = %60, %59
  br label %69

69:                                               ; preds = %68, %28
  %70 = load ptr, ptr %3, align 8
  ret ptr %70
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup1(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.tnode, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @cleanup1(ptr noundef %8)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.tnode, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  call void @cleanup1(ptr noundef %11)
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds nuw %struct.tnode, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  call void @cleanup1(ptr noundef %14)
  %15 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %15) #6
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert2(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  store ptr %7, ptr %4, align 8
  store ptr @root, ptr %6, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %5, align 8
  br label %10

10:                                               ; preds = %45, %1
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 8
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.tnode, ptr %19, i32 0, i32 0
  %21 = load i8, ptr %20, align 8
  %22 = sext i8 %21 to i32
  %23 = sub nsw i32 %18, %22
  store i32 %23, ptr %3, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %27, ptr %2, align 8
  %28 = load i8, ptr %26, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %90

32:                                               ; preds = %25
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.tnode, ptr %33, i32 0, i32 2
  store ptr %34, ptr %6, align 8
  br label %45

35:                                               ; preds = %15
  %36 = load i32, ptr %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds nuw %struct.tnode, ptr %39, i32 0, i32 1
  store ptr %40, ptr %6, align 8
  br label %44

41:                                               ; preds = %35
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds nuw %struct.tnode, ptr %42, i32 0, i32 3
  store ptr %43, ptr %6, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %32
  br label %10

46:                                               ; preds = %10
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, ptr @bufn, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, ptr @bufn, align 4
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = call noalias ptr @malloc(i64 noundef 32000) #7
  store ptr %52, ptr @buffer, align 8
  %53 = load ptr, ptr @buffer, align 8
  %54 = load i32, ptr @freen, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr @freen, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds [10000 x ptr], ptr @freearr, i64 0, i64 %56
  store ptr %53, ptr %57, align 8
  store i32 999, ptr @bufn, align 4
  br label %58

58:                                               ; preds = %51, %47
  %59 = load ptr, ptr @buffer, align 8
  %60 = getelementptr inbounds nuw %struct.tnode, ptr %59, i32 1
  store ptr %60, ptr @buffer, align 8
  %61 = load ptr, ptr %6, align 8
  store ptr %59, ptr %61, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %5, align 8
  %64 = load ptr, ptr %2, align 8
  %65 = load i8, ptr %64, align 1
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds nuw %struct.tnode, ptr %66, i32 0, i32 0
  store i8 %65, ptr %67, align 8
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds nuw %struct.tnode, ptr %68, i32 0, i32 3
  store ptr null, ptr %69, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds nuw %struct.tnode, ptr %70, i32 0, i32 2
  store ptr null, ptr %71, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds nuw %struct.tnode, ptr %72, i32 0, i32 1
  store ptr null, ptr %73, align 8
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1
  store ptr %75, ptr %2, align 8
  %76 = load i8, ptr %74, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %58
  %80 = load i32, ptr @storestring, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load ptr, ptr %4, align 8
  %84 = load ptr, ptr %5, align 8
  %85 = getelementptr inbounds nuw %struct.tnode, ptr %84, i32 0, i32 2
  store ptr %83, ptr %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  br label %90

87:                                               ; preds = %58
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.tnode, ptr %88, i32 0, i32 2
  store ptr %89, ptr %6, align 8
  br label %47

90:                                               ; preds = %86, %31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup2() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, ptr %1, align 4
  %4 = load i32, ptr @freen, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [10000 x ptr], ptr @freearr, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10) #6
  br label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4
  br label %2

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search1(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr @root, align 8
  store ptr %5, ptr %4, align 8
  br label %6

6:                                                ; preds = %47, %1
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.tnode, ptr %13, i32 0, i32 0
  %15 = load i8, ptr %14, align 8
  %16 = sext i8 %15 to i32
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds nuw %struct.tnode, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %4, align 8
  br label %47

22:                                               ; preds = %9
  %23 = load ptr, ptr %3, align 8
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.tnode, ptr %26, i32 0, i32 0
  %28 = load i8, ptr %27, align 8
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %33, ptr %3, align 8
  %34 = load i8, ptr %32, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, ptr %2, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds nuw %struct.tnode, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %4, align 8
  br label %46

42:                                               ; preds = %22
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds nuw %struct.tnode, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %4, align 8
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %18
  br label %6

48:                                               ; preds = %6
  store i32 0, ptr %2, align 4
  br label %49

49:                                               ; preds = %48, %37
  %50 = load i32, ptr %2, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search2(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  store i32 %9, ptr %5, align 4
  %10 = load ptr, ptr @root, align 8
  store ptr %10, ptr %6, align 8
  br label %11

11:                                               ; preds = %46, %1
  %12 = load ptr, ptr %6, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32, ptr %5, align 4
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %struct.tnode, ptr %16, i32 0, i32 0
  %18 = load i8, ptr %17, align 8
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %15, %19
  store i32 %20, ptr %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, ptr %2, align 4
  br label %48

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8
  %28 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %28, ptr %3, align 8
  %29 = load i8, ptr %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, ptr %5, align 4
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds nuw %struct.tnode, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  store ptr %33, ptr %6, align 8
  br label %46

34:                                               ; preds = %14
  %35 = load i32, ptr %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds nuw %struct.tnode, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %6, align 8
  br label %45

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds nuw %struct.tnode, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  store ptr %44, ptr %6, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %26
  br label %11

47:                                               ; preds = %11
  store i32 0, ptr %2, align 4
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, ptr %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmsearch(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %99

8:                                                ; preds = %2
  %9 = load i32, ptr @nodecnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @nodecnt, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 46
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = load i8, ptr %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.tnode, ptr %19, i32 0, i32 0
  %21 = load i8, ptr %20, align 8
  %22 = sext i8 %21 to i32
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15, %8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.tnode, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %4, align 8
  call void @pmsearch(ptr noundef %27, ptr noundef %28)
  br label %29

29:                                               ; preds = %24, %15
  %30 = load ptr, ptr %4, align 8
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %43, label %34

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load ptr, ptr %3, align 8
  %39 = getelementptr inbounds nuw %struct.tnode, ptr %38, i32 0, i32 0
  %40 = load i8, ptr %39, align 8
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %34, %29
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds nuw %struct.tnode, ptr %44, i32 0, i32 0
  %46 = load i8, ptr %45, align 8
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load ptr, ptr %4, align 8
  %51 = load i8, ptr %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds nuw %struct.tnode, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  call void @pmsearch(ptr noundef %57, ptr noundef %59)
  br label %60

60:                                               ; preds = %54, %49, %43
  br label %61

61:                                               ; preds = %60, %34
  %62 = load ptr, ptr %4, align 8
  %63 = load i8, ptr %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds nuw %struct.tnode, ptr %67, i32 0, i32 0
  %69 = load i8, ptr %68, align 8
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds nuw %struct.tnode, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = load i32, ptr @srchtop, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr @srchtop, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [100000 x ptr], ptr @srcharr, i64 0, i64 %78
  store ptr %75, ptr %79, align 8
  br label %80

80:                                               ; preds = %72, %66, %61
  %81 = load ptr, ptr %4, align 8
  %82 = load i8, ptr %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %4, align 8
  %87 = load i8, ptr %86, align 1
  %88 = sext i8 %87 to i32
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds nuw %struct.tnode, ptr %89, i32 0, i32 0
  %91 = load i8, ptr %90, align 8
  %92 = sext i8 %91 to i32
  %93 = icmp sgt i32 %88, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85, %80
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds nuw %struct.tnode, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 8
  %98 = load ptr, ptr %4, align 8
  call void @pmsearch(ptr noundef %97, ptr noundef %98)
  br label %99

99:                                               ; preds = %7, %94, %85
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nearsearch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %102

13:                                               ; preds = %9
  %14 = load i32, ptr @nodecnt, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @nodecnt, align 4
  %16 = load i32, ptr %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 8
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.tnode, ptr %22, i32 0, i32 0
  %24 = load i8, ptr %23, align 8
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %18, %13
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.tnode, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = load i32, ptr %6, align 4
  call void @nearsearch(ptr noundef %30, ptr noundef %31, i32 noundef %32)
  br label %33

33:                                               ; preds = %27, %18
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds nuw %struct.tnode, ptr %34, i32 0, i32 0
  %36 = load i8, ptr %35, align 8
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load ptr, ptr %5, align 8
  %41 = call i64 @strlen(ptr noundef %40) #8
  %42 = trunc i64 %41 to i32
  %43 = load i32, ptr %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds nuw %struct.tnode, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = load i32, ptr @srchtop, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr @srchtop, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [100000 x ptr], ptr @srcharr, i64 0, i64 %51
  store ptr %48, ptr %52, align 8
  br label %53

53:                                               ; preds = %45, %39
  br label %84

54:                                               ; preds = %33
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.tnode, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = load i8, ptr %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  br label %67

65:                                               ; preds = %54
  %66 = load ptr, ptr %5, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %64, %62 ], [ %66, %65 ]
  %69 = load ptr, ptr %5, align 8
  %70 = load i8, ptr %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds nuw %struct.tnode, ptr %72, i32 0, i32 0
  %74 = load i8, ptr %73, align 8
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, ptr %6, align 4
  br label %82

79:                                               ; preds = %67
  %80 = load i32, ptr %6, align 4
  %81 = sub nsw i32 %80, 1
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %78, %77 ], [ %81, %79 ]
  call void @nearsearch(ptr noundef %57, ptr noundef %68, i32 noundef %83)
  br label %84

84:                                               ; preds = %82, %53
  %85 = load i32, ptr %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %5, align 8
  %89 = load i8, ptr %88, align 1
  %90 = sext i8 %89 to i32
  %91 = load ptr, ptr %4, align 8
  %92 = getelementptr inbounds nuw %struct.tnode, ptr %91, i32 0, i32 0
  %93 = load i8, ptr %92, align 8
  %94 = sext i8 %93 to i32
  %95 = icmp sgt i32 %90, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87, %84
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds nuw %struct.tnode, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = load i32, ptr %6, align 4
  call void @nearsearch(ptr noundef %99, ptr noundef %100, i32 noundef %101)
  br label %102

102:                                              ; preds = %12, %96, %87
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca [3 x ptr], align 16
  %7 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const.main.arr, i64 24, i1 false)
  %8 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 0
  call void @ssort1main(ptr noundef %8, i32 noundef 3)
  store i32 0, ptr %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load i32, ptr %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i32, ptr %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %16)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %7, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, ptr %3, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 20.1.2 (++20250331083316+bc65196c0919-1~exp1~20250331203333.93)"}
