; ModuleID = '698ychn4ojcr45zmlqpkkqvzn'
source_filename = "698ychn4ojcr45zmlqpkkqvzn"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%AdjList = type { ptr }

@alloc_3e1ebac14318b612ab4efabc52799932 = private unnamed_addr constant [186 x i8] c"unsafe precondition(s) violated: usize::unchecked_add cannot overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_64e308ef4babfeb8b6220184de794a17 = private unnamed_addr constant [221 x i8] c"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_2cb114990ae2e4e2e128355ff24ccfc4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00>\00\00\00\05\00\00\00" }>, align 8
@alloc_97b6e9eeafae4e34c39f5731f03026e0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00?\00\00\00\05\00\00\00" }>, align 8
@alloc_a9bed11e068a4fa8759066f97915337d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00\05\00\00\00" }>, align 8
@alloc_ee77b197ce841c113b18b9c150190dc5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\00\00\00\05\00\00\00" }>, align 8
@alloc_df86e900c94cc1f649585c8cd53247f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@alloc_3278157d974b8a558dd44e528ef133c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\00\00\00 \00\00\00" }>, align 8
@alloc_eb53ace45a12e4e333b3a63eb7279569 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\00\00\00\0D\00\00\00" }>, align 8
@alloc_9c91b83cadcedd353e69efd3c105339e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00\19\00\00\00" }>, align 8
@alloc_6397013d2e5aed0c3d4b4a3b2ae8196e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00\17\00\00\00" }>, align 8
@alloc_07f2a10419476346bdf5125fe00f2160 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00\05\00\00\00" }>, align 8
@alloc_320a426a21c8a69051b40a3676cf76ef = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00_\00\00\00\1C\00\00\00" }>, align 8
@alloc_e6d9feeb3090cf025dddbb08a4db89fe = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00_\00\00\00\09\00\00\00" }>, align 8
@alloc_db04fdc1f8e539ffc89d37ae93679fab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\19\00\00\00" }>, align 8
@alloc_01ebfbf82a0962d54917d9a330b57fa1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\17\00\00\00" }>, align 8
@alloc_f02d8f7a07b320bd98ec3e25340af526 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\05\00\00\00" }>, align 8
@alloc_c65f6761cb12806865d0b092404e889e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00\1C\00\00\00" }>, align 8
@alloc_71ffd02a7e301b782824a236319d9c55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00c\00\00\00\09\00\00\00" }>, align 8
@alloc_83f5eb74f1253c6f571b01131205ddde = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00n\00\00\00\05\00\00\00" }>, align 8
@alloc_dd5ca49258844dd049f35feb90dce4cb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\00\05\00\00\00" }>, align 8
@alloc_33163a8e673ee25e32a7ea0cadee3b6e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00w\00\00\00\05\00\00\00" }>, align 8
@alloc_c4466528589d31085d9a9c779de99164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00|\00\00\00\05\00\00\00" }>, align 8
@alloc_e57752d72d93a08c661c993a9c587fab = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00}\00\00\00\05\00\00\00" }>, align 8
@alloc_2d10d109c7752ea3dc42b94ce8ed6bb6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\05\00\00\00" }>, align 8
@alloc_4db61f4e4956198e8ea552a150a02906 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\00\00\00&\00\00\00" }>, align 8
@alloc_fa7d756335e978bc26db2df1aabf891a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8B\00\00\00\0A\00\00\00" }>, align 8
@alloc_8c61e494a7bb2e44e38e55aee768bf8f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8B\00\00\00\05\00\00\00" }>, align 8
@alloc_bf87fb36211e17508a1eccd1ab80b734 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8C\00\00\00\05\00\00\00" }>, align 8
@alloc_1dfb368bacb2c7e48c2364f18a77482c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\93\00\00\00\0C\00\00\00" }>, align 8
@alloc_26af79e6f3366171ce2273eec2f24036 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00\0F\00\00\00" }>, align 8
@alloc_fa2ff9026e53cfe3806494102c956e93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00\0C\00\00\00" }>, align 8
@alloc_8e9a5e8c3e2993b1f32d010d275c7fe4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00\12\00\00\00" }>, align 8
@alloc_99605daf3686cde8d172d21d45f0235f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\00\00\00\0F\00\00\00" }>, align 8
@alloc_1269cfacfa77259953cd1f66bd830cc2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\99\00\00\00\0C\00\00\00" }>, align 8
@alloc_39fd6a1cec8993bdcba1e9007c9c8d43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\00\00\00\0F\00\00\00" }>, align 8
@alloc_cc9bf1006b05b05e4c3e2504f11feeb7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\00\00\00\0C\00\00\00" }>, align 8
@alloc_74bda85bc169f3ff88b2ce45e657957e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9B\00\00\00\12\00\00\00" }>, align 8
@alloc_12fa1360f0b1cb185e92ac53ea9a1ba2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9B\00\00\00\0F\00\00\00" }>, align 8
@alloc_8295c045dcc1f1e1b7e2907831ccdd78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A0\00\00\003\00\00\00" }>, align 8
@alloc_8025886e2012c41371b95da445b97852 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A0\00\00\002\00\00\00" }>, align 8
@alloc_00b72fd6104e1c17105b8d2f37623566 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\00\00\00,\00\00\00" }>, align 8
@alloc_2dcbbdafcf65f385a1cd31709e068b78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\00\00\00+\00\00\00" }>, align 8
@alloc_5660ad632fe6c6bc6c293fed67a87aff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\0A\00\00\00" }>, align 8
@alloc_b4186bcb5b2bf0d8db726bacf7eae9db = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\22\00\00\00" }>, align 8
@alloc_8eee94d667a69c9691455fe78aafaae0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A3\00\00\00\09\00\00\00" }>, align 8
@alloc_ad6d9f1a08b731fd03730d02668bce2a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\00\0A\00\00\00" }>, align 8
@alloc_360c64a7358e177950bacf0f362efc01 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\00\22\00\00\00" }>, align 8
@alloc_d08323d454266f43f1d0bb042358a610 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\00\09\00\00\00" }>, align 8
@alloc_00243e048b87a4ef7bff3f8ea13daf39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\13\00\00\00" }>, align 8
@alloc_c72296287cc4cb452b3d3b63defe28e5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A6\00\00\00\0D\00\00\00" }>, align 8
@alloc_12b504a0701dcf16283c669c077a39c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A7\00\00\00\13\00\00\00" }>, align 8
@alloc_9a46551a49bb088946bdc761966e7a42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A7\00\00\00\0D\00\00\00" }>, align 8
@alloc_cd1677b743713ee1af31ab2f0ee427a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AE\00\00\00\0D\00\00\00" }>, align 8
@alloc_c00f1388285e9a69d1e4eaf4c9b75fb8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B6\00\00\00\1F\00\00\00" }>, align 8
@alloc_f3b25d9d26ccc24f4f019b6268d2b2d1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B6\00\00\00\1E\00\00\00" }>, align 8
@alloc_6e52d1a05f5563bd750db107c9cd020c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B7\00\00\00\08\00\00\00" }>, align 8
@alloc_82fd15565daaf88b349a8c0e274a6687 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B7\00\00\00\05\00\00\00" }>, align 8
@alloc_b8d01f567baeb61d9db49c36b433a344 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B9\00\00\00\0F\00\00\00" }>, align 8
@alloc_326c27a964f4053be2c82e369f72ca8e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B9\00\00\00\0C\00\00\00" }>, align 8
@alloc_892066bb89d66b675646270b6c48b413 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BA\00\00\00\12\00\00\00" }>, align 8
@alloc_1ca1c5a19e0217c8c00d06373dec63e7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BB\00\00\00\19\00\00\00" }>, align 8
@alloc_5ef54e2b1e62e16f9216ee0e03ce6cf4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BA\00\00\00\0F\00\00\00" }>, align 8
@alloc_98d335dd4a01bd8c77a598c1826597fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C1\00\00\00\11\00\00\00" }>, align 8
@alloc_0683ed1bfad60d93d5d2dea99a6fdbae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\00\00\00\0A\00\00\00" }>, align 8
@alloc_3b6593fe4381ddb71080acba46a13310 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\00\00\00\14\00\00\00" }>, align 8
@alloc_c6b6c46dab21a756ece908dddb203313 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\00\00\00\11\00\00\00" }>, align 8
@alloc_ad2992cbeca429404f370f4c3c274254 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\00\00\00\09\00\00\00" }>, align 8
@alloc_de518b065336320d022fd8889ed5e3b6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C2\00\00\00\0A\00\00\00" }>, align 8
@alloc_2f4b0c851f63c5ed43bde51f57db2bd5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C4\00\00\00\14\00\00\00" }>, align 8
@alloc_1456b7d63c4f2c5a30257a527c587e87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C5\00\00\00\1D\00\00\00" }>, align 8
@alloc_2cc891a1cca2b3776648e10a566e3518 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C4\00\00\00\11\00\00\00" }>, align 8
@alloc_155c4bae7e766b221e781a03dec8f99c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C2\00\00\00\09\00\00\00" }>, align 8
@alloc_874d74b1effe93b1236e4707396425dc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00\13\00\00\00" }>, align 8
@alloc_000b06c8fadffbb42bb6c67db16239f9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\00\00\00\0D\00\00\00" }>, align 8
@alloc_b86f73af398b4dcaeb5a8b1ed0a8488c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\00\00\00\13\00\00\00" }>, align 8
@alloc_1453b2f2fd88e7599856846cf32a9944 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CB\00\00\00\19\00\00\00" }>, align 8
@alloc_6c8b11f06f7a3c729b268eedc00282f6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\00\00\00\0D\00\00\00" }>, align 8
@alloc_dab7fb669b4803dedcdb12d3e7dff7c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CD\00\00\00\0D\00\00\00" }>, align 8
@alloc_2f71fbc6597ea9b6e26ec20033715d1f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D5\00\00\00'\00\00\00" }>, align 8
@alloc_84755203a1c939d6e972db921383caf6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D5\00\00\00&\00\00\00" }>, align 8
@alloc_c12c7ce844085256c6c2d41fce05ea8d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D7\00\00\00+\00\00\00" }>, align 8
@alloc_55b47c8204d4bdded527b5268896b70b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D8\00\00\00\12\00\00\00" }>, align 8
@alloc_6a2718b0ea40f8278928708e7eb6b9dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D7\00\00\00*\00\00\00" }>, align 8
@alloc_c4f0d1b3a1ac26a362c9df29f136318d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D9\00\00\00\1B\00\00\00" }>, align 8
@alloc_262689c08d8c45bfa498968447b27793 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D9\00\00\00\09\00\00\00" }>, align 8
@alloc_eb00e5736abc7dd1512570238df00604 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\004\00\00\00" }>, align 8
@alloc_72aeeec7502571576cff6e05fe66634d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00\06\00\00\00" }>, align 8
@alloc_8fcc549c86d9f09607c8711e4ebee179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00\1E\00\00\00" }>, align 8
@alloc_b3c30bf77b034b39ce6bbf14755a8fcf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DB\00\00\00\05\00\00\00" }>, align 8
@alloc_5b07030929d6c33713c08ddfe484f486 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00\06\00\00\00" }>, align 8
@alloc_811cffd5c4e5bfe8f709e10ae5cc4d29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00\1E\00\00\00" }>, align 8
@alloc_9d60f1461b42520c8f7fd112edeecf20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DC\00\00\00\05\00\00\00" }>, align 8
@alloc_60941831e4c04cc8f88aef5a8f3e9cd4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DD\00\00\00\05\00\00\00" }>, align 8
@alloc_c23f06b0b8404045e1b22c2bbde4490a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\DE\00\00\00\05\00\00\00" }>, align 8
@alloc_567bd86cc04eda9507b77489399317bf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E7\00\00\00\09\00\00\00" }>, align 8
@alloc_ee1405be9ba22abbf6e8641466ed9317 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E7\00\00\00\08\00\00\00" }>, align 8
@alloc_98b8199b82e7c5252b72b11cc85bc9c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E7\00\00\00/\00\00\00" }>, align 8
@alloc_290413aa0cd80994369e176fc98fc962 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EF\00\00\00\08\00\00\00" }>, align 8
@alloc_e5cbd2fbacab4735631880bbebb0d3f6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F2\00\00\00\17\00\00\00" }>, align 8
@alloc_f7476c71e25d6e9aba7c87d49cffb9c5 = private unnamed_addr constant [5 x i8] c"%d->\00", align 1
@alloc_458055aab5e43f04f255f9dbac245e48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F3\00\00\00;\00\00\00" }>, align 8
@alloc_bb0df82fb7988c01fefad2db3999887b = private unnamed_addr constant [38 x i8] c"Vertex   distance from Source   Path\0A\00", align 1
@alloc_818e2308465aa22d6ad6f32ef898d7be = private unnamed_addr constant [13 x i8] c"%d \09\09%d   \09\09\00", align 1
@alloc_e6c0119d451224badc2e6a6985cf6fd0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\03\01\00\00\0D\00\00\00" }>, align 8
@alloc_87551382a9de3243abbfdbda2f0b586b = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@alloc_0704d32869d484b453a9f0d014bbf446 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0D\01\00\00\1E\00\00\00" }>, align 8
@alloc_7c17463da41ef015e369cbb741c2944a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\10\01\00\00(\00\00\00" }>, align 8
@alloc_900b2333994088df8d34206ab0cf14b9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\00\05\00\00\00" }>, align 8
@alloc_8d375473227c00abd173c2e467cb0288 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\13\01\00\00*\00\00\00" }>, align 8
@alloc_b6f83bedf9fba7ef985ce08b8c3e81b8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\14\01\00\00\05\00\00\00" }>, align 8
@alloc_1eadb8a046227efa31bd2254cb449870 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1E\01\00\00\05\00\00\00" }>, align 8
@alloc_b649b3375488f114ae51a3d9b081d4fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1F\01\00\00\1F\00\00\00" }>, align 8
@alloc_d8c4502ed46f6d0db3a454c94db96cf5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\01\00\00\22\00\00\00" }>, align 8
@alloc_1758cae26c1abccefcf5c297b607d5cf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\01\00\00-\00\00\00" }>, align 8
@alloc_043ebfbc83404c3c5be65ebb044bee86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\01\00\00+\00\00\00" }>, align 8
@alloc_182440bcf915e91a1b6c0db0c81b7a82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\01\00\00(\00\00\00" }>, align 8
@alloc_b487cf1a848193fd0761ae491180545c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00'\01\00\00\14\00\00\00" }>, align 8
@alloc_a01fe74d3b1f09d30bfb1074c4230b22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\01\00\00\14\00\00\00" }>, align 8
@alloc_68d9d9a4a52c694f45782c9b7f7a0920 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\01\00\00<\00\00\00" }>, align 8
@alloc_d8f8a41888edf93e8ce24dde0a20ddcb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\01\00\00\17\00\00\00" }>, align 8
@alloc_bf25bc2909cc000acdbca6195b9fb97f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00/\01\00\00\19\00\00\00" }>, align 8
@alloc_95d35598d5c14d4bb5969b6d84b9005a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00/\01\00\00+\00\00\00" }>, align 8
@alloc_eabac0c91896f693679d16b50614c072 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00+\01\00\00\11\00\00\00" }>, align 8
@alloc_38dfe01217306259c1fbfcdcf6779689 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\01\00\00\11\00\00\00" }>, align 8
@alloc_29701b17a23f4eab7ba10d06d3e5c0f8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00+\00\00\00" }>, align 8
@alloc_c793ced0b7fb65153f17776fa56fae8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\01\00\00\15\00\00\00" }>, align 8
@alloc_38d7457afcbbc7d5e92a11776bec45d9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\17\01\00\00\09\00\00\00" }>, align 8
@alloc_67684d4471a91bf0e9edd688bfe8fbf8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\18\01\00\00\1F\00\00\00" }>, align 8
@alloc_3e3145a93db8c35c3974346bb5caf38c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\18\01\00\00\0D\00\00\00" }>, align 8
@alloc_d6dfd210df0bc532a73edba4ddbd44dc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\01\00\00\0A\00\00\00" }>, align 8
@alloc_cd20cf64ca55f7d6c4aaede3741fe1a0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1A\01\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17he1b0589b88892b51E() unnamed_addr #0 {
start:
  ret void
}

; core::num::<impl usize>::unchecked_add::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8c1a0fc5e3f597a5E"(i64 %lhs, i64 %rhs) unnamed_addr #1 {
start:
  %0 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %lhs, i64 %rhs)
  %_5.0 = extractvalue { i64, i1 } %0, 0
  %_5.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_5.1, label %bb1, label %bb2

bb2:                                              ; preds = %start
  ret void

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_3e1ebac14318b612ab4efabc52799932, i64 186) #8
  unreachable
}

; core::ptr::drop_in_place<alloc::vec::Vec<i32>>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c48735ee3108834E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde3a41817bdc85bfE"(ptr align 8 %_1) #9
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8a060c3685402fa4E"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h8a060c3685402fa4E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36da9bf9820405baE"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbfd6e8e321f3b5a7E"(ptr align 8 %_1) unnamed_addr #2 {
start:
; call <alloc::vec::set_len_on_drop::SetLenOnDrop as core::ops::drop::Drop>::drop
  call void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h514bf25dab30b0b1E"(ptr align 8 %_1) #9
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
start:
  %0 = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %count, i64 %size)
  %_10.0 = extractvalue { i64, i1 } %0, 0
  %_10.1 = extractvalue { i64, i1 } %0, 1
  br i1 %_10.1, label %bb3, label %bb5

bb5:                                              ; preds = %start
  %self = ptrtoint ptr %this to i64
  %1 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %_10.0)
  %_19.0 = extractvalue { i64, i1 } %1, 0
  %_19.1 = extractvalue { i64, i1 } %1, 1
  %_17 = icmp slt i64 %_10.0, 0
  %overflow = xor i1 %_19.1, %_17
  %_4 = xor i1 %overflow, true
  br i1 %_4, label %bb1, label %bb2

bb3:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb3, %bb5
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #8
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hee5f4becfcd4fb75E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::hint::assert_unchecked::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @_ZN4core4hint16assert_unchecked18precondition_check17h6d4e0a0cb20735f2E(i1 zeroext %cond) unnamed_addr #1 {
start:
  br i1 %cond, label %bb2, label %bb1

bb1:                                              ; preds = %start
; call core::panicking::panic_nounwind
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_64e308ef4babfeb8b6220184de794a17, i64 221) #8
  unreachable

bb2:                                              ; preds = %start
  ret void
}

; <i32 as alloc::vec::is_zero::IsZero>::is_zero
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN51_$LT$i32$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero17h6e965e6105410e06E"(ptr align 4 %self) unnamed_addr #1 {
start:
  %_2 = load i32, ptr %self, align 4
  %_0 = icmp eq i32 %_2, 0
  ret i1 %_0
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nounwind nonlazybind
define internal ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_2 = load ptr, ptr %0, align 8
  ret ptr %_2
}

; alloc::vec::Vec<T,A>::extend_with
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h1dbcf02833620452E"(ptr align 8 %self, i64 %n, i32 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_23 = alloca [1 x i8], align 1
  %iter = alloca [16 x i8], align 8
  %local_len = alloca [16 x i8], align 8
  %ptr = alloca [8 x i8], align 8
  %value = alloca [4 x i8], align 4
  store i32 %0, ptr %value, align 4
  store i8 1, ptr %_23, align 1
; call alloc::vec::Vec<T,A>::reserve
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h666e22a194643d48E"(ptr align 8 %self, i64 %n, ptr align 8 %1) #9
  br label %bb1

bb1:                                              ; preds = %start
  %3 = getelementptr inbounds i8, ptr %self, i64 8
  %_24 = load ptr, ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %self, i64 16
  %count = load i64, ptr %4, align 8
  %_25 = icmp ule i64 %count, 2305843009213693951
  %5 = getelementptr inbounds nuw i32, ptr %_24, i64 %count
  store ptr %5, ptr %ptr, align 8
  %len = getelementptr inbounds i8, ptr %self, i64 16
  %_26 = load i64, ptr %len, align 8
  store ptr %len, ptr %local_len, align 8
  %6 = getelementptr inbounds i8, ptr %local_len, i64 8
  store i64 %_26, ptr %6, align 8
  store i64 1, ptr %iter, align 8
  %7 = getelementptr inbounds i8, ptr %iter, i64 8
  store i64 %n, ptr %7, align 8
  br label %bb2

bb2:                                              ; preds = %bb3, %bb1
  %other = getelementptr inbounds i8, ptr %iter, i64 8
  %_32 = load i64, ptr %iter, align 8
  %8 = getelementptr inbounds i8, ptr %iter, i64 8
  %_33 = load i64, ptr %8, align 8
  %_27 = icmp ult i64 %_32, %_33
  br i1 %_27, label %bb13, label %bb14

bb14:                                             ; preds = %bb2
  %_19 = icmp ugt i64 %n, 0
  br i1 %_19, label %bb4, label %bb5

bb13:                                             ; preds = %bb2
  %old = load i64, ptr %iter, align 8
  br label %bb15

bb5:                                              ; preds = %bb14
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbfd6e8e321f3b5a7E"(ptr align 8 %local_len) #9
  br label %bb6

bb4:                                              ; preds = %bb14
  %dst = load ptr, ptr %ptr, align 8
  store i8 0, ptr %_23, align 1
  %src = load i32, ptr %value, align 4
  store i32 %src, ptr %dst, align 4
  %9 = getelementptr inbounds i8, ptr %local_len, i64 8
  %10 = getelementptr inbounds i8, ptr %local_len, i64 8
  %11 = load i64, ptr %10, align 8
  %12 = add i64 %11, 1
  store i64 %12, ptr %9, align 8
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbfd6e8e321f3b5a7E"(ptr align 8 %local_len) #9
  br label %bb17

bb6:                                              ; preds = %bb5
  %13 = load i8, ptr %_23, align 1
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %bb10, label %bb7

bb7:                                              ; preds = %bb17, %bb10, %bb6
  ret void

bb10:                                             ; preds = %bb6
  br label %bb7

bb17:                                             ; preds = %bb4
  br label %bb7

bb15:                                             ; preds = %bb13
; call core::num::<impl usize>::unchecked_add::precondition_check
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$13unchecked_add18precondition_check17h8c1a0fc5e3f597a5E"(i64 %old, i64 1) #9
  br label %bb16

bb16:                                             ; preds = %bb15
  %_31 = add nuw i64 %old, 1
  store i64 %_31, ptr %iter, align 8
  %dst1 = load ptr, ptr %ptr, align 8
  %_0.i = load i32, ptr %value, align 4
  br label %bb3

bb3:                                              ; preds = %bb16
  store i32 %_0.i, ptr %dst1, align 4
  %self3 = load ptr, ptr %ptr, align 8
  %_16 = getelementptr inbounds nuw i32, ptr %self3, i64 1
  store ptr %_16, ptr %ptr, align 8
  %15 = getelementptr inbounds i8, ptr %local_len, i64 8
  %16 = getelementptr inbounds i8, ptr %local_len, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %15, align 8
  br label %bb2

bb8:                                              ; No predecessors!
; call core::ptr::drop_in_place<alloc::vec::set_len_on_drop::SetLenOnDrop>
  call void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$GT$17hbfd6e8e321f3b5a7E"(ptr align 8 %local_len) #10
  br label %bb12

bb12:                                             ; preds = %bb8
  %19 = load i8, ptr %_23, align 1
  %20 = trunc nuw i8 %19 to i1
  br i1 %20, label %bb11, label %bb9

bb9:                                              ; preds = %bb11, %bb12
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds i8, ptr %2, i64 8
  %23 = load i32, ptr %22, align 8
  %24 = insertvalue { ptr, i32 } poison, ptr %21, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %23, 1
  resume { ptr, i32 } %25

bb11:                                             ; preds = %bb12
  br label %bb9
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h666e22a194643d48E"(ptr align 8 %self, i64 %additional, ptr align 8 %0) unnamed_addr #2 {
start:
  %self1 = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  store i64 4, ptr %elem_layout, align 8
  %2 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 4, ptr %2, align 8
  br label %bb6

bb6:                                              ; preds = %start
  %self2 = load i64, ptr %self, align 8
  store i64 %self2, ptr %self1, align 8
  br label %bb4

bb5:                                              ; No predecessors!
  store i64 -1, ptr %self1, align 8
  br label %bb4

bb4:                                              ; preds = %bb6, %bb5
  %3 = load i64, ptr %self1, align 8
  %_10 = sub i64 %3, %len
  %_7 = icmp ugt i64 %additional, %_10
  br i1 %_7, label %bb1, label %bb2

bb2:                                              ; preds = %bb4
  br label %bb3

bb1:                                              ; preds = %bb4
; call alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h85f3c31270bc2f64E"(ptr align 8 %self, i64 %len, i64 %additional, i64 4, i64 4) #9
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; alloc::vec::from_elem
; Function Attrs: nounwind nonlazybind
define internal void @_ZN5alloc3vec9from_elem17h050b1bf7c847f2c2E(ptr sret([24 x i8]) align 8 %_0, i32 %elem, i64 %n, ptr align 8 %0) unnamed_addr #2 {
start:
; call <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
  call void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb910f623ae023efaE"(ptr sret([24 x i8]) align 8 %_0, i32 %elem, i64 %n, ptr align 8 %0) #9
  ret void
}

; alloc::raw_vec::RawVecInner<A>::with_capacity_in
; Function Attrs: inlinehint nounwind nonlazybind
define internal { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h229753216b56753dE"(i64 %capacity, i64 %elem_layout.0, i64 %elem_layout.1, ptr align 8 %0) unnamed_addr #1 {
start:
  %self = alloca [8 x i8], align 8
  %elem_layout = alloca [16 x i8], align 8
  %this = alloca [16 x i8], align 8
  %_4 = alloca [24 x i8], align 8
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hedaf02873af8e39fE"(ptr sret([24 x i8]) align 8 %_4, i64 %capacity, i1 zeroext false, i64 %elem_layout.0, i64 %elem_layout.1) #9
  %_5 = load i64, ptr %_4, align 8
  %1 = trunc nuw i64 %_5 to i1
  br i1 %1, label %bb3, label %bb4

bb3:                                              ; preds = %start
  %2 = getelementptr inbounds i8, ptr %_4, i64 8
  %err.0 = load i64, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  %err.1 = load i64, ptr %3, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17hf618f8e5cff958fbE(i64 %err.0, i64 %err.1, ptr align 8 %0) #8
  unreachable

bb4:                                              ; preds = %start
  %4 = getelementptr inbounds i8, ptr %_4, i64 8
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8
  store i64 %5, ptr %this, align 8
  %8 = getelementptr inbounds i8, ptr %this, i64 8
  store ptr %7, ptr %8, align 8
  store i64 %elem_layout.0, ptr %elem_layout, align 8
  %9 = getelementptr inbounds i8, ptr %elem_layout, i64 8
  store i64 %elem_layout.1, ptr %9, align 8
  %10 = icmp eq i64 %elem_layout.1, 0
  br i1 %10, label %bb6, label %bb7

bb6:                                              ; preds = %bb4
  store i64 -1, ptr %self, align 8
  br label %bb5

bb7:                                              ; preds = %bb4
  %self1 = load i64, ptr %this, align 8
  store i64 %self1, ptr %self, align 8
  br label %bb5

bb5:                                              ; preds = %bb7, %bb6
  %11 = load i64, ptr %self, align 8
  %_13 = sub i64 %11, 0
  %_8 = icmp ugt i64 %capacity, %_13
  %cond = xor i1 %_8, true
  br label %bb8

bb8:                                              ; preds = %bb5
; call core::hint::assert_unchecked::precondition_check
  call void @_ZN4core4hint16assert_unchecked18precondition_check17h6d4e0a0cb20735f2E(i1 zeroext %cond) #9
  br label %bb9

bb9:                                              ; preds = %bb8
  %_0.0 = load i64, ptr %this, align 8
  %12 = getelementptr inbounds i8, ptr %this, i64 8
  %_0.1 = load ptr, ptr %12, align 8
  %13 = insertvalue { i64, ptr } poison, i64 %_0.0, 0
  %14 = insertvalue { i64, ptr } %13, ptr %_0.1, 1
  ret { i64, ptr } %14

bb2:                                              ; No predecessors!
  unreachable
}

; <T as alloc::vec::spec_from_elem::SpecFromElem>::from_elem
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hb910f623ae023efaE"(ptr sret([24 x i8]) align 8 %_0, i32 %0, i64 %n, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
start:
  %2 = alloca [16 x i8], align 8
  %_16 = alloca [24 x i8], align 8
  %_14 = alloca [1 x i8], align 1
  %_13 = alloca [1 x i8], align 1
  %v = alloca [24 x i8], align 8
  %elem = alloca [4 x i8], align 4
  store i32 %0, ptr %elem, align 4
  store i8 1, ptr %_14, align 1
  store i8 1, ptr %_13, align 1
; call <i32 as alloc::vec::is_zero::IsZero>::is_zero
  %_4 = call zeroext i1 @"_ZN51_$LT$i32$u20$as$u20$alloc..vec..is_zero..IsZero$GT$7is_zero17h6e965e6105410e06E"(ptr align 4 %elem) #9
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  store i8 0, ptr %_13, align 1
; call alloc::raw_vec::RawVecInner<A>::with_capacity_in
  %3 = call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h229753216b56753dE"(i64 %n, i64 4, i64 4, ptr align 8 %1) #9
  %_21.0 = extractvalue { i64, ptr } %3, 0
  %_21.1 = extractvalue { i64, ptr } %3, 1
  br label %bb16

bb2:                                              ; preds = %bb1
  store i8 0, ptr %_13, align 1
; call alloc::raw_vec::RawVecInner<A>::try_allocate_in
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hedaf02873af8e39fE"(ptr sret([24 x i8]) align 8 %_16, i64 %n, i1 zeroext true, i64 4, i64 4) #9
  br label %bb12

bb16:                                             ; preds = %bb3
  store i64 %_21.0, ptr %v, align 8
  %4 = getelementptr inbounds i8, ptr %v, i64 8
  store ptr %_21.1, ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %v, i64 16
  store i64 0, ptr %5, align 8
  store i8 0, ptr %_14, align 1
  %_12 = load i32, ptr %elem, align 4
; call alloc::vec::Vec<T,A>::extend_with
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h1dbcf02833620452E"(ptr align 8 %v, i64 %n, i32 %_12, ptr align 8 %1) #9
  br label %bb4

bb4:                                              ; preds = %bb16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %v, i64 24, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb15, %bb4
  ret void

bb6:                                              ; No predecessors!
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c48735ee3108834E"(ptr align 8 %v) #10
  br label %bb10

bb10:                                             ; preds = %bb6
  %6 = load i8, ptr %_13, align 1
  %7 = trunc nuw i8 %6 to i1
  br i1 %7, label %bb9, label %bb7

bb12:                                             ; preds = %bb2
  %_17 = load i64, ptr %_16, align 8
  %8 = trunc nuw i64 %_17 to i1
  br i1 %8, label %bb14, label %bb15

bb14:                                             ; preds = %bb12
  %9 = getelementptr inbounds i8, ptr %_16, i64 8
  %err.0 = load i64, ptr %9, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %err.1 = load i64, ptr %10, align 8
; call alloc::raw_vec::handle_error
  call void @_ZN5alloc7raw_vec12handle_error17hf618f8e5cff958fbE(i64 %err.0, i64 %err.1, ptr align 8 %1) #8
  unreachable

bb15:                                             ; preds = %bb12
  %11 = getelementptr inbounds i8, ptr %_16, i64 8
  %res.0 = load i64, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %res.1 = load ptr, ptr %12, align 8
  store i64 %res.0, ptr %_0, align 8
  %13 = getelementptr inbounds i8, ptr %_0, i64 8
  store ptr %res.1, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %_0, i64 16
  store i64 %n, ptr %14, align 8
  br label %bb5

bb13:                                             ; No predecessors!
  unreachable

bb7:                                              ; preds = %bb9, %bb10
  %15 = load i8, ptr %_14, align 1
  %16 = trunc nuw i8 %15 to i1
  br i1 %16, label %bb11, label %bb8

bb9:                                              ; preds = %bb10
  br label %bb7

bb8:                                              ; preds = %bb11, %bb7
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue { ptr, i32 } poison, ptr %17, 0
  %21 = insertvalue { ptr, i32 } %20, i32 %19, 1
  resume { ptr, i32 } %21

bb11:                                             ; preds = %bb7
  br label %bb8
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hde3a41817bdc85bfE"(ptr align 8 %self) unnamed_addr #2 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_5 = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %self, i64 16
  %len = load i64, ptr %1, align 8
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind nonlazybind
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h36da9bf9820405baE"(ptr align 8 %self) unnamed_addr #2 {
start:
; call alloc::raw_vec::RawVecInner<A>::deallocate
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h51d2d8ddbed32564E"(ptr align 8 %self, i64 4, i64 4) #9
  ret void
}

; <alloc::vec::set_len_on_drop::SetLenOnDrop as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN83_$LT$alloc..vec..set_len_on_drop..SetLenOnDrop$u20$as$u20$core..ops..drop..Drop$GT$4drop17h514bf25dab30b0b1E"(ptr align 8 %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds i8, ptr %self, i64 8
  %_2 = load i64, ptr %0, align 8
  %_3 = load ptr, ptr %self, align 8
  store i64 %_2, ptr %_3, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind
define ptr @newAdjListNode(i32 %dest, i32 %weight) unnamed_addr #2 {
start:
  %_3 = call ptr @malloc(i64 16) #9
  %_19 = ptrtoint ptr %_3 to i64
  %_22 = and i64 %_19, 7
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb5, label %panic

bb5:                                              ; preds = %start
  %_25 = ptrtoint ptr %_3 to i64
  %_28 = icmp eq i64 %_25, 0
  %_29 = and i1 %_28, true
  %_30 = xor i1 %_29, true
  br i1 %_30, label %bb6, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_19, ptr align 8 @alloc_2cb114990ae2e4e2e128355ff24ccfc4) #8
  unreachable

bb6:                                              ; preds = %bb5
  store i32 %dest, ptr %_3, align 8
  %_13 = ptrtoint ptr %_3 to i64
  %_16 = and i64 %_13, 7
  %_17 = icmp eq i64 %_16, 0
  br i1 %_17, label %bb4, label %panic2

panic1:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2cb114990ae2e4e2e128355ff24ccfc4) #8
  unreachable

bb4:                                              ; preds = %bb6
  %_32 = ptrtoint ptr %_3 to i64
  %_35 = icmp eq i64 %_32, 0
  %_36 = and i1 %_35, true
  %_37 = xor i1 %_36, true
  br i1 %_37, label %bb7, label %panic3

panic2:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_13, ptr align 8 @alloc_97b6e9eeafae4e34c39f5731f03026e0) #8
  unreachable

bb7:                                              ; preds = %bb4
  %0 = getelementptr inbounds i8, ptr %_3, i64 4
  store i32 %weight, ptr %0, align 4
  %_7 = ptrtoint ptr %_3 to i64
  %_10 = and i64 %_7, 7
  %_11 = icmp eq i64 %_10, 0
  br i1 %_11, label %bb3, label %panic4

panic3:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_97b6e9eeafae4e34c39f5731f03026e0) #8
  unreachable

bb3:                                              ; preds = %bb7
  %_39 = ptrtoint ptr %_3 to i64
  %_42 = icmp eq i64 %_39, 0
  %_43 = and i1 %_42, true
  %_44 = xor i1 %_43, true
  br i1 %_44, label %bb8, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_7, ptr align 8 @alloc_a9bed11e068a4fa8759066f97915337d) #8
  unreachable

bb8:                                              ; preds = %bb3
  %1 = getelementptr inbounds i8, ptr %_3, i64 8
  store ptr null, ptr %1, align 8
  ret ptr %_3

panic5:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a9bed11e068a4fa8759066f97915337d) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @createGraph(i32 %v) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_2 = call ptr @malloc(i64 16) #9
  %_31 = ptrtoint ptr %_2 to i64
  %_34 = and i64 %_31, 7
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb12, label %panic

bb12:                                             ; preds = %start
  %_37 = ptrtoint ptr %_2 to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb13, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_31, ptr align 8 @alloc_ee77b197ce841c113b18b9c150190dc5) #8
  unreachable

bb13:                                             ; preds = %bb12
  store i32 %v, ptr %_2, align 8
  %_9 = sext i32 %v to i64
  %_0.i = mul i64 8, %_9
  %_5 = call ptr @malloc(i64 %_0.i) #9
  %_25 = ptrtoint ptr %_2 to i64
  %_28 = and i64 %_25, 7
  %_29 = icmp eq i64 %_28, 0
  br i1 %_29, label %bb11, label %panic2

panic1:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee77b197ce841c113b18b9c150190dc5) #8
  unreachable

bb11:                                             ; preds = %bb13
  %_44 = ptrtoint ptr %_2 to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb14, label %panic3

panic2:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_25, ptr align 8 @alloc_df86e900c94cc1f649585c8cd53247f2) #8
  unreachable

bb14:                                             ; preds = %bb11
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr %_5, ptr %0, align 8
  store i32 0, ptr %i, align 4
  br label %bb6

panic3:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df86e900c94cc1f649585c8cd53247f2) #8
  unreachable

bb6:                                              ; preds = %bb16, %bb14
  %_12 = load i32, ptr %i, align 4
  %_11 = icmp slt i32 %_12, %v
  br i1 %_11, label %bb7, label %bb9

bb9:                                              ; preds = %bb6
  ret ptr %_2

bb7:                                              ; preds = %bb6
  %_19 = ptrtoint ptr %_2 to i64
  %_22 = and i64 %_19, 7
  %_23 = icmp eq i64 %_22, 0
  br i1 %_23, label %bb10, label %panic4

bb10:                                             ; preds = %bb7
  %_51 = ptrtoint ptr %_2 to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb15, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_19, ptr align 8 @alloc_3278157d974b8a558dd44e528ef133c5) #8
  unreachable

bb15:                                             ; preds = %bb10
  %1 = getelementptr inbounds i8, ptr %_2, i64 8
  %_15 = load ptr, ptr %1, align 8
  %_17 = load i32, ptr %i, align 4
  %_16 = sext i32 %_17 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_15, i64 %_16, i64 8) #9
  %_0.i7 = getelementptr inbounds %AdjList, ptr %_15, i64 %_16
  %_58 = ptrtoint ptr %_0.i7 to i64
  %_59 = icmp eq i64 %_58, 0
  %_60 = and i1 %_59, true
  %_61 = xor i1 %_60, true
  br i1 %_61, label %bb16, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3278157d974b8a558dd44e528ef133c5) #8
  unreachable

bb16:                                             ; preds = %bb15
  store ptr null, ptr %_0.i7, align 8
  %2 = load i32, ptr %i, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb6

panic6:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_eb53ace45a12e4e333b3a63eb7279569) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @AddEdge(ptr %graph, i32 %src, i32 %dest, i32 %weight) unnamed_addr #2 {
start:
  %newNode = alloca [8 x i8], align 8
  %0 = call ptr @newAdjListNode(i32 %dest, i32 %weight) #9
  store ptr %0, ptr %newNode, align 8
  %_68 = ptrtoint ptr %graph to i64
  %_71 = and i64 %_68, 7
  %_72 = icmp eq i64 %_71, 0
  br i1 %_72, label %bb14, label %panic

bb14:                                             ; preds = %start
  %_74 = ptrtoint ptr %graph to i64
  %_77 = icmp eq i64 %_74, 0
  %_78 = and i1 %_77, true
  %_79 = xor i1 %_78, true
  br i1 %_79, label %bb15, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_68, ptr align 8 @alloc_9c91b83cadcedd353e69efd3c105339e) #8
  unreachable

bb15:                                             ; preds = %bb14
  %1 = getelementptr inbounds i8, ptr %graph, i64 8
  %_8 = load ptr, ptr %1, align 8
  %_9 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_8, i64 %_9, i64 8) #9
  %_0.i20 = getelementptr inbounds %AdjList, ptr %_8, i64 %_9
  %_62 = ptrtoint ptr %_0.i20 to i64
  %_65 = and i64 %_62, 7
  %_66 = icmp eq i64 %_65, 0
  br i1 %_66, label %bb13, label %panic2

panic1:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9c91b83cadcedd353e69efd3c105339e) #8
  unreachable

bb13:                                             ; preds = %bb15
  %_81 = ptrtoint ptr %_0.i20 to i64
  %_84 = icmp eq i64 %_81, 0
  %_85 = and i1 %_84, true
  %_86 = xor i1 %_85, true
  br i1 %_86, label %bb16, label %panic3

panic2:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_62, ptr align 8 @alloc_6397013d2e5aed0c3d4b4a3b2ae8196e) #8
  unreachable

bb16:                                             ; preds = %bb13
  %_6 = load ptr, ptr %_0.i20, align 8
  %_55 = load ptr, ptr %newNode, align 8
  %_56 = ptrtoint ptr %_55 to i64
  %_59 = and i64 %_56, 7
  %_60 = icmp eq i64 %_59, 0
  br i1 %_60, label %bb12, label %panic4

panic3:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6397013d2e5aed0c3d4b4a3b2ae8196e) #8
  unreachable

bb12:                                             ; preds = %bb16
  %_87 = load ptr, ptr %newNode, align 8
  %_88 = ptrtoint ptr %_87 to i64
  %_91 = icmp eq i64 %_88, 0
  %_92 = and i1 %_91, true
  %_93 = xor i1 %_92, true
  br i1 %_93, label %bb17, label %panic5

panic4:                                           ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_56, ptr align 8 @alloc_07f2a10419476346bdf5125fe00f2160) #8
  unreachable

bb17:                                             ; preds = %bb12
  %2 = load ptr, ptr %newNode, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %_6, ptr %3, align 8
  %_50 = ptrtoint ptr %graph to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb11, label %panic6

panic5:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07f2a10419476346bdf5125fe00f2160) #8
  unreachable

bb11:                                             ; preds = %bb17
  %_95 = ptrtoint ptr %graph to i64
  %_98 = icmp eq i64 %_95, 0
  %_99 = and i1 %_98, true
  %_100 = xor i1 %_99, true
  br i1 %_100, label %bb18, label %panic7

panic6:                                           ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_320a426a21c8a69051b40a3676cf76ef) #8
  unreachable

bb18:                                             ; preds = %bb11
  %4 = getelementptr inbounds i8, ptr %graph, i64 8
  %_12 = load ptr, ptr %4, align 8
  %_13 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_12, i64 %_13, i64 8) #9
  %_0.i19 = getelementptr inbounds %AdjList, ptr %_12, i64 %_13
  %_135 = ptrtoint ptr %_0.i19 to i64
  %_136 = icmp eq i64 %_135, 0
  %_137 = and i1 %_136, true
  %_138 = xor i1 %_137, true
  br i1 %_138, label %bb24, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_320a426a21c8a69051b40a3676cf76ef) #8
  unreachable

bb24:                                             ; preds = %bb18
  %_14 = load ptr, ptr %newNode, align 8
  store ptr %_14, ptr %_0.i19, align 8
  %_15 = call ptr @newAdjListNode(i32 %src, i32 %weight) #9
  store ptr %_15, ptr %newNode, align 8
  %_44 = ptrtoint ptr %graph to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb10, label %panic9

panic8:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e6d9feeb3090cf025dddbb08a4db89fe) #8
  unreachable

bb10:                                             ; preds = %bb24
  %_102 = ptrtoint ptr %graph to i64
  %_105 = icmp eq i64 %_102, 0
  %_106 = and i1 %_105, true
  %_107 = xor i1 %_106, true
  br i1 %_107, label %bb19, label %panic10

panic9:                                           ; preds = %bb24
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_db04fdc1f8e539ffc89d37ae93679fab) #8
  unreachable

bb19:                                             ; preds = %bb10
  %5 = getelementptr inbounds i8, ptr %graph, i64 8
  %_18 = load ptr, ptr %5, align 8
  %_19 = sext i32 %dest to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_18, i64 %_19, i64 8) #9
  %_0.i18 = getelementptr inbounds %AdjList, ptr %_18, i64 %_19
  %_38 = ptrtoint ptr %_0.i18 to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb9, label %panic11

panic10:                                          ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_db04fdc1f8e539ffc89d37ae93679fab) #8
  unreachable

bb9:                                              ; preds = %bb19
  %_109 = ptrtoint ptr %_0.i18 to i64
  %_112 = icmp eq i64 %_109, 0
  %_113 = and i1 %_112, true
  %_114 = xor i1 %_113, true
  br i1 %_114, label %bb20, label %panic12

panic11:                                          ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_01ebfbf82a0962d54917d9a330b57fa1) #8
  unreachable

bb20:                                             ; preds = %bb9
  %_16 = load ptr, ptr %_0.i18, align 8
  %_31 = load ptr, ptr %newNode, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb8, label %panic13

panic12:                                          ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_01ebfbf82a0962d54917d9a330b57fa1) #8
  unreachable

bb8:                                              ; preds = %bb20
  %_115 = load ptr, ptr %newNode, align 8
  %_116 = ptrtoint ptr %_115 to i64
  %_119 = icmp eq i64 %_116, 0
  %_120 = and i1 %_119, true
  %_121 = xor i1 %_120, true
  br i1 %_121, label %bb21, label %panic14

panic13:                                          ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_f02d8f7a07b320bd98ec3e25340af526) #8
  unreachable

bb21:                                             ; preds = %bb8
  %6 = load ptr, ptr %newNode, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %_16, ptr %7, align 8
  %_26 = ptrtoint ptr %graph to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb7, label %panic15

panic14:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f02d8f7a07b320bd98ec3e25340af526) #8
  unreachable

bb7:                                              ; preds = %bb21
  %_123 = ptrtoint ptr %graph to i64
  %_126 = icmp eq i64 %_123, 0
  %_127 = and i1 %_126, true
  %_128 = xor i1 %_127, true
  br i1 %_128, label %bb22, label %panic16

panic15:                                          ; preds = %bb21
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_c65f6761cb12806865d0b092404e889e) #8
  unreachable

bb22:                                             ; preds = %bb7
  %8 = getelementptr inbounds i8, ptr %graph, i64 8
  %_22 = load ptr, ptr %8, align 8
  %_23 = sext i32 %dest to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_22, i64 %_23, i64 8) #9
  %_0.i = getelementptr inbounds %AdjList, ptr %_22, i64 %_23
  %_130 = ptrtoint ptr %_0.i to i64
  %_131 = icmp eq i64 %_130, 0
  %_132 = and i1 %_131, true
  %_133 = xor i1 %_132, true
  br i1 %_133, label %bb23, label %panic17

panic16:                                          ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c65f6761cb12806865d0b092404e889e) #8
  unreachable

bb23:                                             ; preds = %bb22
  %_24 = load ptr, ptr %newNode, align 8
  store ptr %_24, ptr %_0.i, align 8
  ret void

panic17:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_71ffd02a7e301b782824a236319d9c55) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @newMinHeapNode(i32 %v, i32 %dist) unnamed_addr #2 {
start:
  %_3 = call ptr @malloc(i64 8) #9
  %_13 = ptrtoint ptr %_3 to i64
  %_16 = and i64 %_13, 3
  %_17 = icmp eq i64 %_16, 0
  br i1 %_17, label %bb4, label %panic

bb4:                                              ; preds = %start
  %_19 = ptrtoint ptr %_3 to i64
  %_22 = icmp eq i64 %_19, 0
  %_23 = and i1 %_22, true
  %_24 = xor i1 %_23, true
  br i1 %_24, label %bb5, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_13, ptr align 8 @alloc_83f5eb74f1253c6f571b01131205ddde) #8
  unreachable

bb5:                                              ; preds = %bb4
  store i32 %v, ptr %_3, align 4
  %_7 = ptrtoint ptr %_3 to i64
  %_10 = and i64 %_7, 3
  %_11 = icmp eq i64 %_10, 0
  br i1 %_11, label %bb3, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_83f5eb74f1253c6f571b01131205ddde) #8
  unreachable

bb3:                                              ; preds = %bb5
  %_26 = ptrtoint ptr %_3 to i64
  %_29 = icmp eq i64 %_26, 0
  %_30 = and i1 %_29, true
  %_31 = xor i1 %_30, true
  br i1 %_31, label %bb6, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_7, ptr align 8 @alloc_dd5ca49258844dd049f35feb90dce4cb) #8
  unreachable

bb6:                                              ; preds = %bb3
  %0 = getelementptr inbounds i8, ptr %_3, i64 4
  store i32 %dist, ptr %0, align 4
  ret ptr %_3

panic3:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_dd5ca49258844dd049f35feb90dce4cb) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @createMinHeap(i32 %capacity) unnamed_addr #2 {
start:
  %_2 = call ptr @malloc(i64 24) #9
  %_7 = sext i32 %capacity to i64
  %_0.i8 = mul i64 %_7, 4
  %_5 = call ptr @malloc(i64 %_0.i8) #9
  %_34 = ptrtoint ptr %_2 to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb12, label %panic

bb12:                                             ; preds = %start
  %_40 = ptrtoint ptr %_2 to i64
  %_43 = icmp eq i64 %_40, 0
  %_44 = and i1 %_43, true
  %_45 = xor i1 %_44, true
  br i1 %_45, label %bb13, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_33163a8e673ee25e32a7ea0cadee3b6e) #8
  unreachable

bb13:                                             ; preds = %bb12
  %0 = getelementptr inbounds i8, ptr %_2, i64 8
  store ptr %_5, ptr %0, align 8
  %_28 = ptrtoint ptr %_2 to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb11, label %panic2

panic1:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_33163a8e673ee25e32a7ea0cadee3b6e) #8
  unreachable

bb11:                                             ; preds = %bb13
  %_47 = ptrtoint ptr %_2 to i64
  %_50 = icmp eq i64 %_47, 0
  %_51 = and i1 %_50, true
  %_52 = xor i1 %_51, true
  br i1 %_52, label %bb14, label %panic3

panic2:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_c4466528589d31085d9a9c779de99164) #8
  unreachable

bb14:                                             ; preds = %bb11
  store i32 0, ptr %_2, align 8
  %_22 = ptrtoint ptr %_2 to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb10, label %panic4

panic3:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c4466528589d31085d9a9c779de99164) #8
  unreachable

bb10:                                             ; preds = %bb14
  %_54 = ptrtoint ptr %_2 to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb15, label %panic5

panic4:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_e57752d72d93a08c661c993a9c587fab) #8
  unreachable

bb15:                                             ; preds = %bb10
  %1 = getelementptr inbounds i8, ptr %_2, i64 4
  store i32 %capacity, ptr %1, align 4
  %_14 = sext i32 %capacity to i64
  %_0.i = mul i64 8, %_14
  %_10 = call ptr @malloc(i64 %_0.i) #9
  %_16 = ptrtoint ptr %_2 to i64
  %_19 = and i64 %_16, 7
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb9, label %panic6

panic5:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e57752d72d93a08c661c993a9c587fab) #8
  unreachable

bb9:                                              ; preds = %bb15
  %_61 = ptrtoint ptr %_2 to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb16, label %panic7

panic6:                                           ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_16, ptr align 8 @alloc_2d10d109c7752ea3dc42b94ce8ed6bb6) #8
  unreachable

bb16:                                             ; preds = %bb9
  %2 = getelementptr inbounds i8, ptr %_2, i64 16
  store ptr %_10, ptr %2, align 8
  ret ptr %_2

panic7:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2d10d109c7752ea3dc42b94ce8ed6bb6) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @swapMinHeapNode(ptr %a, ptr %b) unnamed_addr #2 {
start:
  %_24 = ptrtoint ptr %a to i64
  %_27 = and i64 %_24, 7
  %_28 = icmp eq i64 %_27, 0
  br i1 %_28, label %bb4, label %panic

bb4:                                              ; preds = %start
  %_30 = ptrtoint ptr %a to i64
  %_33 = icmp eq i64 %_30, 0
  %_34 = and i1 %_33, true
  %_35 = xor i1 %_34, true
  br i1 %_35, label %bb5, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_24, ptr align 8 @alloc_4db61f4e4956198e8ea552a150a02906) #8
  unreachable

bb5:                                              ; preds = %bb4
  %temp = load ptr, ptr %a, align 8
  %_18 = ptrtoint ptr %b to i64
  %_21 = and i64 %_18, 7
  %_22 = icmp eq i64 %_21, 0
  br i1 %_22, label %bb3, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4db61f4e4956198e8ea552a150a02906) #8
  unreachable

bb3:                                              ; preds = %bb5
  %_37 = ptrtoint ptr %b to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb6, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_18, ptr align 8 @alloc_fa7d756335e978bc26db2df1aabf891a) #8
  unreachable

bb6:                                              ; preds = %bb3
  %_4 = load ptr, ptr %b, align 8
  %_12 = ptrtoint ptr %a to i64
  %_15 = and i64 %_12, 7
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %bb2, label %panic4

panic3:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fa7d756335e978bc26db2df1aabf891a) #8
  unreachable

bb2:                                              ; preds = %bb6
  %_44 = ptrtoint ptr %a to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb7, label %panic5

panic4:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_12, ptr align 8 @alloc_8c61e494a7bb2e44e38e55aee768bf8f) #8
  unreachable

bb7:                                              ; preds = %bb2
  store ptr %_4, ptr %a, align 8
  %_6 = ptrtoint ptr %b to i64
  %_9 = and i64 %_6, 7
  %_10 = icmp eq i64 %_9, 0
  br i1 %_10, label %bb1, label %panic6

panic5:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8c61e494a7bb2e44e38e55aee768bf8f) #8
  unreachable

bb1:                                              ; preds = %bb7
  %_51 = ptrtoint ptr %b to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb8, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_6, ptr align 8 @alloc_bf87fb36211e17508a1eccd1ab80b734) #8
  unreachable

bb8:                                              ; preds = %bb1
  store ptr %temp, ptr %b, align 8
  ret void

panic7:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bf87fb36211e17508a1eccd1ab80b734) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @MinHeapify(ptr %minHeap, i32 %i) unnamed_addr #2 {
start:
  %smallest = alloca [4 x i8], align 4
  %_4 = mul i32 2, %i
  %l = add i32 %_4, 1
  %_6 = mul i32 2, %i
  %r = add i32 %_6, 2
  store i32 %i, ptr %smallest, align 4
  %_197 = ptrtoint ptr %minHeap to i64
  %_200 = and i64 %_197, 7
  %_201 = icmp eq i64 %_200, 0
  br i1 %_201, label %bb41, label %panic

bb41:                                             ; preds = %start
  %_203 = ptrtoint ptr %minHeap to i64
  %_206 = icmp eq i64 %_203, 0
  %_207 = and i1 %_206, true
  %_208 = xor i1 %_207, true
  br i1 %_208, label %bb42, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_197, ptr align 8 @alloc_1dfb368bacb2c7e48c2364f18a77482c) #8
  unreachable

bb42:                                             ; preds = %bb41
  %_9 = load i32, ptr %minHeap, align 8
  %_8 = icmp slt i32 %l, %_9
  br i1 %_8, label %bb1, label %bb5

panic1:                                           ; preds = %bb41
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1dfb368bacb2c7e48c2364f18a77482c) #8
  unreachable

bb5:                                              ; preds = %bb4, %bb46, %bb42
  %_167 = ptrtoint ptr %minHeap to i64
  %_170 = and i64 %_167, 7
  %_171 = icmp eq i64 %_170, 0
  br i1 %_171, label %bb36, label %panic10

bb1:                                              ; preds = %bb42
  %_191 = ptrtoint ptr %minHeap to i64
  %_194 = and i64 %_191, 7
  %_195 = icmp eq i64 %_194, 0
  br i1 %_195, label %bb40, label %panic2

bb40:                                             ; preds = %bb1
  %_210 = ptrtoint ptr %minHeap to i64
  %_213 = icmp eq i64 %_210, 0
  %_214 = and i1 %_213, true
  %_215 = xor i1 %_214, true
  br i1 %_215, label %bb43, label %panic3

panic2:                                           ; preds = %bb1
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_191, ptr align 8 @alloc_26af79e6f3366171ce2273eec2f24036) #8
  unreachable

bb43:                                             ; preds = %bb40
  %0 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_13 = load ptr, ptr %0, align 8
  %_14 = sext i32 %l to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_13, i64 %_14, i64 8) #9
  %_0.i54 = getelementptr inbounds ptr, ptr %_13, i64 %_14
  %_66 = load ptr, ptr %_0.i54, align 8
  %_185 = ptrtoint ptr %_66 to i64
  %_188 = and i64 %_185, 3
  %_189 = icmp eq i64 %_188, 0
  br i1 %_189, label %bb39, label %panic4

panic3:                                           ; preds = %bb40
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_26af79e6f3366171ce2273eec2f24036) #8
  unreachable

bb39:                                             ; preds = %bb43
  %_217 = ptrtoint ptr %_66 to i64
  %_220 = icmp eq i64 %_217, 0
  %_221 = and i1 %_220, true
  %_222 = xor i1 %_221, true
  br i1 %_222, label %bb44, label %panic5

panic4:                                           ; preds = %bb43
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_185, ptr align 8 @alloc_fa2ff9026e53cfe3806494102c956e93) #8
  unreachable

bb44:                                             ; preds = %bb39
  %1 = getelementptr inbounds i8, ptr %_66, i64 4
  %_11 = load i32, ptr %1, align 4
  %_179 = ptrtoint ptr %minHeap to i64
  %_182 = and i64 %_179, 7
  %_183 = icmp eq i64 %_182, 0
  br i1 %_183, label %bb38, label %panic6

panic5:                                           ; preds = %bb39
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fa2ff9026e53cfe3806494102c956e93) #8
  unreachable

bb38:                                             ; preds = %bb44
  %_224 = ptrtoint ptr %minHeap to i64
  %_227 = icmp eq i64 %_224, 0
  %_228 = and i1 %_227, true
  %_229 = xor i1 %_228, true
  br i1 %_229, label %bb45, label %panic7

panic6:                                           ; preds = %bb44
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_179, ptr align 8 @alloc_8e9a5e8c3e2993b1f32d010d275c7fe4) #8
  unreachable

bb45:                                             ; preds = %bb38
  %2 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_17 = load ptr, ptr %2, align 8
  %_19 = load i32, ptr %smallest, align 4
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_17, i64 %_18, i64 8) #9
  %_0.i53 = getelementptr inbounds ptr, ptr %_17, i64 %_18
  %_67 = load ptr, ptr %_0.i53, align 8
  %_173 = ptrtoint ptr %_67 to i64
  %_176 = and i64 %_173, 3
  %_177 = icmp eq i64 %_176, 0
  br i1 %_177, label %bb37, label %panic8

panic7:                                           ; preds = %bb38
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8e9a5e8c3e2993b1f32d010d275c7fe4) #8
  unreachable

bb37:                                             ; preds = %bb45
  %_231 = ptrtoint ptr %_67 to i64
  %_234 = icmp eq i64 %_231, 0
  %_235 = and i1 %_234, true
  %_236 = xor i1 %_235, true
  br i1 %_236, label %bb46, label %panic9

panic8:                                           ; preds = %bb45
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_173, ptr align 8 @alloc_99605daf3686cde8d172d21d45f0235f) #8
  unreachable

bb46:                                             ; preds = %bb37
  %3 = getelementptr inbounds i8, ptr %_67, i64 4
  %_15 = load i32, ptr %3, align 4
  %_10 = icmp slt i32 %_11, %_15
  br i1 %_10, label %bb4, label %bb5

panic9:                                           ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_99605daf3686cde8d172d21d45f0235f) #8
  unreachable

bb4:                                              ; preds = %bb46
  store i32 %l, ptr %smallest, align 4
  br label %bb5

bb36:                                             ; preds = %bb5
  %_238 = ptrtoint ptr %minHeap to i64
  %_241 = icmp eq i64 %_238, 0
  %_242 = and i1 %_241, true
  %_243 = xor i1 %_242, true
  br i1 %_243, label %bb47, label %panic11

panic10:                                          ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_167, ptr align 8 @alloc_1269cfacfa77259953cd1f66bd830cc2) #8
  unreachable

bb47:                                             ; preds = %bb36
  %_21 = load i32, ptr %minHeap, align 8
  %_20 = icmp slt i32 %r, %_21
  br i1 %_20, label %bb6, label %bb10

panic11:                                          ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1269cfacfa77259953cd1f66bd830cc2) #8
  unreachable

bb10:                                             ; preds = %bb9, %bb51, %bb47
  %_33 = load i32, ptr %smallest, align 4
  %_32 = icmp ne i32 %_33, %i
  br i1 %_32, label %bb11, label %bb19

bb6:                                              ; preds = %bb47
  %_161 = ptrtoint ptr %minHeap to i64
  %_164 = and i64 %_161, 7
  %_165 = icmp eq i64 %_164, 0
  br i1 %_165, label %bb35, label %panic12

bb35:                                             ; preds = %bb6
  %_245 = ptrtoint ptr %minHeap to i64
  %_248 = icmp eq i64 %_245, 0
  %_249 = and i1 %_248, true
  %_250 = xor i1 %_249, true
  br i1 %_250, label %bb48, label %panic13

panic12:                                          ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_161, ptr align 8 @alloc_39fd6a1cec8993bdcba1e9007c9c8d43) #8
  unreachable

bb48:                                             ; preds = %bb35
  %4 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_25 = load ptr, ptr %4, align 8
  %_26 = sext i32 %r to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_25, i64 %_26, i64 8) #9
  %_0.i52 = getelementptr inbounds ptr, ptr %_25, i64 %_26
  %_68 = load ptr, ptr %_0.i52, align 8
  %_155 = ptrtoint ptr %_68 to i64
  %_158 = and i64 %_155, 3
  %_159 = icmp eq i64 %_158, 0
  br i1 %_159, label %bb34, label %panic14

panic13:                                          ; preds = %bb35
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_39fd6a1cec8993bdcba1e9007c9c8d43) #8
  unreachable

bb34:                                             ; preds = %bb48
  %_252 = ptrtoint ptr %_68 to i64
  %_255 = icmp eq i64 %_252, 0
  %_256 = and i1 %_255, true
  %_257 = xor i1 %_256, true
  br i1 %_257, label %bb49, label %panic15

panic14:                                          ; preds = %bb48
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_155, ptr align 8 @alloc_cc9bf1006b05b05e4c3e2504f11feeb7) #8
  unreachable

bb49:                                             ; preds = %bb34
  %5 = getelementptr inbounds i8, ptr %_68, i64 4
  %_23 = load i32, ptr %5, align 4
  %_149 = ptrtoint ptr %minHeap to i64
  %_152 = and i64 %_149, 7
  %_153 = icmp eq i64 %_152, 0
  br i1 %_153, label %bb33, label %panic16

panic15:                                          ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cc9bf1006b05b05e4c3e2504f11feeb7) #8
  unreachable

bb33:                                             ; preds = %bb49
  %_259 = ptrtoint ptr %minHeap to i64
  %_262 = icmp eq i64 %_259, 0
  %_263 = and i1 %_262, true
  %_264 = xor i1 %_263, true
  br i1 %_264, label %bb50, label %panic17

panic16:                                          ; preds = %bb49
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_149, ptr align 8 @alloc_74bda85bc169f3ff88b2ce45e657957e) #8
  unreachable

bb50:                                             ; preds = %bb33
  %6 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_29 = load ptr, ptr %6, align 8
  %_31 = load i32, ptr %smallest, align 4
  %_30 = sext i32 %_31 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_29, i64 %_30, i64 8) #9
  %_0.i51 = getelementptr inbounds ptr, ptr %_29, i64 %_30
  %_69 = load ptr, ptr %_0.i51, align 8
  %_143 = ptrtoint ptr %_69 to i64
  %_146 = and i64 %_143, 3
  %_147 = icmp eq i64 %_146, 0
  br i1 %_147, label %bb32, label %panic18

panic17:                                          ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_74bda85bc169f3ff88b2ce45e657957e) #8
  unreachable

bb32:                                             ; preds = %bb50
  %_266 = ptrtoint ptr %_69 to i64
  %_269 = icmp eq i64 %_266, 0
  %_270 = and i1 %_269, true
  %_271 = xor i1 %_270, true
  br i1 %_271, label %bb51, label %panic19

panic18:                                          ; preds = %bb50
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_143, ptr align 8 @alloc_12fa1360f0b1cb185e92ac53ea9a1ba2) #8
  unreachable

bb51:                                             ; preds = %bb32
  %7 = getelementptr inbounds i8, ptr %_69, i64 4
  %_27 = load i32, ptr %7, align 4
  %_22 = icmp slt i32 %_23, %_27
  br i1 %_22, label %bb9, label %bb10

panic19:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_12fa1360f0b1cb185e92ac53ea9a1ba2) #8
  unreachable

bb9:                                              ; preds = %bb51
  store i32 %r, ptr %smallest, align 4
  br label %bb10

bb19:                                             ; preds = %bb64, %bb10
  ret void

bb11:                                             ; preds = %bb10
  %_137 = ptrtoint ptr %minHeap to i64
  %_140 = and i64 %_137, 7
  %_141 = icmp eq i64 %_140, 0
  br i1 %_141, label %bb31, label %panic20

bb31:                                             ; preds = %bb11
  %_273 = ptrtoint ptr %minHeap to i64
  %_276 = icmp eq i64 %_273, 0
  %_277 = and i1 %_276, true
  %_278 = xor i1 %_277, true
  br i1 %_278, label %bb52, label %panic21

panic20:                                          ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_137, ptr align 8 @alloc_8295c045dcc1f1e1b7e2907831ccdd78) #8
  unreachable

bb52:                                             ; preds = %bb31
  %8 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_36 = load ptr, ptr %8, align 8
  %_38 = load i32, ptr %smallest, align 4
  %_37 = sext i32 %_38 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_36, i64 %_37, i64 8) #9
  %_0.i50 = getelementptr inbounds ptr, ptr %_36, i64 %_37
  %_131 = ptrtoint ptr %_0.i50 to i64
  %_134 = and i64 %_131, 7
  %_135 = icmp eq i64 %_134, 0
  br i1 %_135, label %bb30, label %panic22

panic21:                                          ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8295c045dcc1f1e1b7e2907831ccdd78) #8
  unreachable

bb30:                                             ; preds = %bb52
  %_280 = ptrtoint ptr %_0.i50 to i64
  %_283 = icmp eq i64 %_280, 0
  %_284 = and i1 %_283, true
  %_285 = xor i1 %_284, true
  br i1 %_285, label %bb53, label %panic23

panic22:                                          ; preds = %bb52
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_131, ptr align 8 @alloc_8025886e2012c41371b95da445b97852) #8
  unreachable

bb53:                                             ; preds = %bb30
  %smallestnode = load ptr, ptr %_0.i50, align 8
  %_125 = ptrtoint ptr %minHeap to i64
  %_128 = and i64 %_125, 7
  %_129 = icmp eq i64 %_128, 0
  br i1 %_129, label %bb29, label %panic24

panic23:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8025886e2012c41371b95da445b97852) #8
  unreachable

bb29:                                             ; preds = %bb53
  %_287 = ptrtoint ptr %minHeap to i64
  %_290 = icmp eq i64 %_287, 0
  %_291 = and i1 %_290, true
  %_292 = xor i1 %_291, true
  br i1 %_292, label %bb54, label %panic25

panic24:                                          ; preds = %bb53
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_125, ptr align 8 @alloc_00b72fd6104e1c17105b8d2f37623566) #8
  unreachable

bb54:                                             ; preds = %bb29
  %9 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_41 = load ptr, ptr %9, align 8
  %_42 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_41, i64 %_42, i64 8) #9
  %_0.i49 = getelementptr inbounds ptr, ptr %_41, i64 %_42
  %_119 = ptrtoint ptr %_0.i49 to i64
  %_122 = and i64 %_119, 7
  %_123 = icmp eq i64 %_122, 0
  br i1 %_123, label %bb28, label %panic26

panic25:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_00b72fd6104e1c17105b8d2f37623566) #8
  unreachable

bb28:                                             ; preds = %bb54
  %_294 = ptrtoint ptr %_0.i49 to i64
  %_297 = icmp eq i64 %_294, 0
  %_298 = and i1 %_297, true
  %_299 = xor i1 %_298, true
  br i1 %_299, label %bb55, label %panic27

panic26:                                          ; preds = %bb54
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_119, ptr align 8 @alloc_2dcbbdafcf65f385a1cd31709e068b78) #8
  unreachable

bb55:                                             ; preds = %bb28
  %iNode = load ptr, ptr %_0.i49, align 8
  %_113 = ptrtoint ptr %minHeap to i64
  %_116 = and i64 %_113, 7
  %_117 = icmp eq i64 %_116, 0
  br i1 %_117, label %bb27, label %panic28

panic27:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2dcbbdafcf65f385a1cd31709e068b78) #8
  unreachable

bb27:                                             ; preds = %bb55
  %_301 = ptrtoint ptr %minHeap to i64
  %_304 = icmp eq i64 %_301, 0
  %_305 = and i1 %_304, true
  %_306 = xor i1 %_305, true
  br i1 %_306, label %bb56, label %panic29

panic28:                                          ; preds = %bb55
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_113, ptr align 8 @alloc_5660ad632fe6c6bc6c293fed67a87aff) #8
  unreachable

bb56:                                             ; preds = %bb27
  %10 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_44 = load ptr, ptr %10, align 8
  %_107 = ptrtoint ptr %smallestnode to i64
  %_110 = and i64 %_107, 3
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %bb26, label %panic30

panic29:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5660ad632fe6c6bc6c293fed67a87aff) #8
  unreachable

bb26:                                             ; preds = %bb56
  %_308 = ptrtoint ptr %smallestnode to i64
  %_311 = icmp eq i64 %_308, 0
  %_312 = and i1 %_311, true
  %_313 = xor i1 %_312, true
  br i1 %_313, label %bb57, label %panic31

panic30:                                          ; preds = %bb56
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_107, ptr align 8 @alloc_b4186bcb5b2bf0d8db726bacf7eae9db) #8
  unreachable

bb57:                                             ; preds = %bb26
  %_46 = load i32, ptr %smallestnode, align 4
  %_45 = sext i32 %_46 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_44, i64 %_45, i64 4) #9
  %_0.i46 = getelementptr inbounds i32, ptr %_44, i64 %_45
  %_101 = ptrtoint ptr %_0.i46 to i64
  %_104 = and i64 %_101, 3
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb25, label %panic32

panic31:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b4186bcb5b2bf0d8db726bacf7eae9db) #8
  unreachable

bb25:                                             ; preds = %bb57
  %_315 = ptrtoint ptr %_0.i46 to i64
  %_318 = icmp eq i64 %_315, 0
  %_319 = and i1 %_318, true
  %_320 = xor i1 %_319, true
  br i1 %_320, label %bb58, label %panic33

panic32:                                          ; preds = %bb57
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_101, ptr align 8 @alloc_8eee94d667a69c9691455fe78aafaae0) #8
  unreachable

bb58:                                             ; preds = %bb25
  store i32 %i, ptr %_0.i46, align 4
  %_47 = load i32, ptr %smallest, align 4
  %_95 = ptrtoint ptr %minHeap to i64
  %_98 = and i64 %_95, 7
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %bb24, label %panic34

panic33:                                          ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8eee94d667a69c9691455fe78aafaae0) #8
  unreachable

bb24:                                             ; preds = %bb58
  %_322 = ptrtoint ptr %minHeap to i64
  %_325 = icmp eq i64 %_322, 0
  %_326 = and i1 %_325, true
  %_327 = xor i1 %_326, true
  br i1 %_327, label %bb59, label %panic35

panic34:                                          ; preds = %bb58
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_95, ptr align 8 @alloc_ad6d9f1a08b731fd03730d02668bce2a) #8
  unreachable

bb59:                                             ; preds = %bb24
  %11 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_49 = load ptr, ptr %11, align 8
  %_89 = ptrtoint ptr %iNode to i64
  %_92 = and i64 %_89, 3
  %_93 = icmp eq i64 %_92, 0
  br i1 %_93, label %bb23, label %panic36

panic35:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ad6d9f1a08b731fd03730d02668bce2a) #8
  unreachable

bb23:                                             ; preds = %bb59
  %_329 = ptrtoint ptr %iNode to i64
  %_332 = icmp eq i64 %_329, 0
  %_333 = and i1 %_332, true
  %_334 = xor i1 %_333, true
  br i1 %_334, label %bb60, label %panic37

panic36:                                          ; preds = %bb59
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_89, ptr align 8 @alloc_360c64a7358e177950bacf0f362efc01) #8
  unreachable

bb60:                                             ; preds = %bb23
  %_51 = load i32, ptr %iNode, align 4
  %_50 = sext i32 %_51 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_49, i64 %_50, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %_49, i64 %_50
  %_83 = ptrtoint ptr %_0.i to i64
  %_86 = and i64 %_83, 3
  %_87 = icmp eq i64 %_86, 0
  br i1 %_87, label %bb22, label %panic38

panic37:                                          ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_360c64a7358e177950bacf0f362efc01) #8
  unreachable

bb22:                                             ; preds = %bb60
  %_336 = ptrtoint ptr %_0.i to i64
  %_339 = icmp eq i64 %_336, 0
  %_340 = and i1 %_339, true
  %_341 = xor i1 %_340, true
  br i1 %_341, label %bb61, label %panic39

panic38:                                          ; preds = %bb60
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_83, ptr align 8 @alloc_d08323d454266f43f1d0bb042358a610) #8
  unreachable

bb61:                                             ; preds = %bb22
  store i32 %_47, ptr %_0.i, align 4
  %_77 = ptrtoint ptr %minHeap to i64
  %_80 = and i64 %_77, 7
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %bb21, label %panic40

panic39:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d08323d454266f43f1d0bb042358a610) #8
  unreachable

bb21:                                             ; preds = %bb61
  %_343 = ptrtoint ptr %minHeap to i64
  %_346 = icmp eq i64 %_343, 0
  %_347 = and i1 %_346, true
  %_348 = xor i1 %_347, true
  br i1 %_348, label %bb62, label %panic41

panic40:                                          ; preds = %bb61
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_77, ptr align 8 @alloc_00243e048b87a4ef7bff3f8ea13daf39) #8
  unreachable

bb62:                                             ; preds = %bb21
  %12 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_56 = load ptr, ptr %12, align 8
  %_58 = load i32, ptr %smallest, align 4
  %_57 = sext i32 %_58 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_56, i64 %_57, i64 8) #9
  %_0.i48 = getelementptr inbounds ptr, ptr %_56, i64 %_57
  %_362 = ptrtoint ptr %_0.i48 to i64
  %_363 = icmp eq i64 %_362, 0
  %_364 = and i1 %_363, true
  %_365 = xor i1 %_364, true
  br i1 %_365, label %bb65, label %panic42

panic41:                                          ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_00243e048b87a4ef7bff3f8ea13daf39) #8
  unreachable

bb65:                                             ; preds = %bb62
  %_71 = ptrtoint ptr %minHeap to i64
  %_74 = and i64 %_71, 7
  %_75 = icmp eq i64 %_74, 0
  br i1 %_75, label %bb20, label %panic43

panic42:                                          ; preds = %bb62
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c72296287cc4cb452b3d3b63defe28e5) #8
  unreachable

bb20:                                             ; preds = %bb65
  %_350 = ptrtoint ptr %minHeap to i64
  %_353 = icmp eq i64 %_350, 0
  %_354 = and i1 %_353, true
  %_355 = xor i1 %_354, true
  br i1 %_355, label %bb63, label %panic44

panic43:                                          ; preds = %bb65
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_71, ptr align 8 @alloc_12b504a0701dcf16283c669c077a39c9) #8
  unreachable

bb63:                                             ; preds = %bb20
  %13 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_62 = load ptr, ptr %13, align 8
  %_63 = sext i32 %i to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_62, i64 %_63, i64 8) #9
  %_0.i47 = getelementptr inbounds ptr, ptr %_62, i64 %_63
  %_357 = ptrtoint ptr %_0.i47 to i64
  %_358 = icmp eq i64 %_357, 0
  %_359 = and i1 %_358, true
  %_360 = xor i1 %_359, true
  br i1 %_360, label %bb64, label %panic45

panic44:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_12b504a0701dcf16283c669c077a39c9) #8
  unreachable

bb64:                                             ; preds = %bb63
  call void @swapMinHeapNode(ptr %_0.i48, ptr %_0.i47) #9
  %_65 = load i32, ptr %smallest, align 4
  call void @MinHeapify(ptr %minHeap, i32 %_65) #9
  br label %bb19

panic45:                                          ; preds = %bb63
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9a46551a49bb088946bdc761966e7a42) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @isEmpty(ptr %heap) unnamed_addr #2 {
start:
  %_5 = ptrtoint ptr %heap to i64
  %_8 = and i64 %_5, 7
  %_9 = icmp eq i64 %_8, 0
  br i1 %_9, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_11 = ptrtoint ptr %heap to i64
  %_14 = icmp eq i64 %_11, 0
  %_15 = and i1 %_14, true
  %_16 = xor i1 %_15, true
  br i1 %_16, label %bb2, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_5, ptr align 8 @alloc_cd1677b743713ee1af31ab2f0ee427a7) #8
  unreachable

bb2:                                              ; preds = %bb1
  %_3 = load i32, ptr %heap, align 8
  %_2 = icmp eq i32 %_3, 0
  %_0 = zext i1 %_2 to i32
  ret i32 %_0

panic1:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cd1677b743713ee1af31ab2f0ee427a7) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @decreaseKey(ptr %minHeap, i32 %v, i32 %dist) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_197 = ptrtoint ptr %minHeap to i64
  %_200 = and i64 %_197, 7
  %_201 = icmp eq i64 %_200, 0
  br i1 %_201, label %bb43, label %panic

bb43:                                             ; preds = %start
  %_203 = ptrtoint ptr %minHeap to i64
  %_206 = icmp eq i64 %_203, 0
  %_207 = and i1 %_206, true
  %_208 = xor i1 %_207, true
  br i1 %_208, label %bb44, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_197, ptr align 8 @alloc_c00f1388285e9a69d1e4eaf4c9b75fb8) #8
  unreachable

bb44:                                             ; preds = %bb43
  %0 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_6 = load ptr, ptr %0, align 8
  %_7 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_6, i64 %_7, i64 4) #9
  %_0.i44 = getelementptr inbounds i32, ptr %_6, i64 %_7
  %_191 = ptrtoint ptr %_0.i44 to i64
  %_194 = and i64 %_191, 3
  %_195 = icmp eq i64 %_194, 0
  br i1 %_195, label %bb42, label %panic2

panic1:                                           ; preds = %bb43
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c00f1388285e9a69d1e4eaf4c9b75fb8) #8
  unreachable

bb42:                                             ; preds = %bb44
  %_210 = ptrtoint ptr %_0.i44 to i64
  %_213 = icmp eq i64 %_210, 0
  %_214 = and i1 %_213, true
  %_215 = xor i1 %_214, true
  br i1 %_215, label %bb45, label %panic3

panic2:                                           ; preds = %bb44
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_191, ptr align 8 @alloc_f3b25d9d26ccc24f4f019b6268d2b2d1) #8
  unreachable

bb45:                                             ; preds = %bb42
  %1 = load i32, ptr %_0.i44, align 4
  store i32 %1, ptr %i, align 4
  %_185 = ptrtoint ptr %minHeap to i64
  %_188 = and i64 %_185, 7
  %_189 = icmp eq i64 %_188, 0
  br i1 %_189, label %bb41, label %panic4

panic3:                                           ; preds = %bb42
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f3b25d9d26ccc24f4f019b6268d2b2d1) #8
  unreachable

bb41:                                             ; preds = %bb45
  %_217 = ptrtoint ptr %minHeap to i64
  %_220 = icmp eq i64 %_217, 0
  %_221 = and i1 %_220, true
  %_222 = xor i1 %_221, true
  br i1 %_222, label %bb46, label %panic5

panic4:                                           ; preds = %bb45
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_185, ptr align 8 @alloc_6e52d1a05f5563bd750db107c9cd020c) #8
  unreachable

bb46:                                             ; preds = %bb41
  %2 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_9 = load ptr, ptr %2, align 8
  %_11 = load i32, ptr %i, align 4
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_9, i64 %_10, i64 8) #9
  %_0.i51 = getelementptr inbounds ptr, ptr %_9, i64 %_10
  %_89 = load ptr, ptr %_0.i51, align 8
  %_179 = ptrtoint ptr %_89 to i64
  %_182 = and i64 %_179, 3
  %_183 = icmp eq i64 %_182, 0
  br i1 %_183, label %bb40, label %panic6

panic5:                                           ; preds = %bb41
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6e52d1a05f5563bd750db107c9cd020c) #8
  unreachable

bb40:                                             ; preds = %bb46
  %_224 = ptrtoint ptr %_89 to i64
  %_227 = icmp eq i64 %_224, 0
  %_228 = and i1 %_227, true
  %_229 = xor i1 %_228, true
  br i1 %_229, label %bb47, label %panic7

panic6:                                           ; preds = %bb46
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_179, ptr align 8 @alloc_82fd15565daaf88b349a8c0e274a6687) #8
  unreachable

bb47:                                             ; preds = %bb40
  %3 = getelementptr inbounds i8, ptr %_89, i64 4
  store i32 %dist, ptr %3, align 4
  br label %bb3

panic7:                                           ; preds = %bb40
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_82fd15565daaf88b349a8c0e274a6687) #8
  unreachable

bb3:                                              ; preds = %bb24, %bb47
  %_12 = load i32, ptr %i, align 4
  %4 = icmp eq i32 %_12, 0
  br i1 %4, label %bb25, label %bb4

bb25:                                             ; preds = %bb51, %bb3
  ret void

bb4:                                              ; preds = %bb3
  %_173 = ptrtoint ptr %minHeap to i64
  %_176 = and i64 %_173, 7
  %_177 = icmp eq i64 %_176, 0
  br i1 %_177, label %bb39, label %panic8

bb39:                                             ; preds = %bb4
  %_231 = ptrtoint ptr %minHeap to i64
  %_234 = icmp eq i64 %_231, 0
  %_235 = and i1 %_234, true
  %_236 = xor i1 %_235, true
  br i1 %_236, label %bb48, label %panic9

panic8:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_173, ptr align 8 @alloc_b8d01f567baeb61d9db49c36b433a344) #8
  unreachable

bb48:                                             ; preds = %bb39
  %5 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_16 = load ptr, ptr %5, align 8
  %_18 = load i32, ptr %i, align 4
  %_17 = sext i32 %_18 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_16, i64 %_17, i64 8) #9
  %_0.i50 = getelementptr inbounds ptr, ptr %_16, i64 %_17
  %_90 = load ptr, ptr %_0.i50, align 8
  %_167 = ptrtoint ptr %_90 to i64
  %_170 = and i64 %_167, 3
  %_171 = icmp eq i64 %_170, 0
  br i1 %_171, label %bb38, label %panic10

panic9:                                           ; preds = %bb39
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b8d01f567baeb61d9db49c36b433a344) #8
  unreachable

bb38:                                             ; preds = %bb48
  %_238 = ptrtoint ptr %_90 to i64
  %_241 = icmp eq i64 %_238, 0
  %_242 = and i1 %_241, true
  %_243 = xor i1 %_242, true
  br i1 %_243, label %bb49, label %panic11

panic10:                                          ; preds = %bb48
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_167, ptr align 8 @alloc_326c27a964f4053be2c82e369f72ca8e) #8
  unreachable

bb49:                                             ; preds = %bb38
  %6 = getelementptr inbounds i8, ptr %_90, i64 4
  %_14 = load i32, ptr %6, align 4
  %_161 = ptrtoint ptr %minHeap to i64
  %_164 = and i64 %_161, 7
  %_165 = icmp eq i64 %_164, 0
  br i1 %_165, label %bb37, label %panic12

panic11:                                          ; preds = %bb38
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_326c27a964f4053be2c82e369f72ca8e) #8
  unreachable

bb37:                                             ; preds = %bb49
  %_245 = ptrtoint ptr %minHeap to i64
  %_248 = icmp eq i64 %_245, 0
  %_249 = and i1 %_248, true
  %_250 = xor i1 %_249, true
  br i1 %_250, label %bb50, label %panic13

panic12:                                          ; preds = %bb49
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_161, ptr align 8 @alloc_892066bb89d66b675646270b6c48b413) #8
  unreachable

bb50:                                             ; preds = %bb37
  %7 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_21 = load ptr, ptr %7, align 8
  %_25 = load i32, ptr %i, align 4
  %_24 = sub i32 %_25, 1
  %_29 = icmp eq i32 %_24, -2147483648
  %_30 = and i1 false, %_29
  br i1 %_30, label %panic14, label %bb7

panic13:                                          ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_892066bb89d66b675646270b6c48b413) #8
  unreachable

bb7:                                              ; preds = %bb50
  %_23 = sdiv i32 %_24, 2
  %_22 = sext i32 %_23 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_21, i64 %_22, i64 8) #9
  %_0.i49 = getelementptr inbounds ptr, ptr %_21, i64 %_22
  %_91 = load ptr, ptr %_0.i49, align 8
  %_155 = ptrtoint ptr %_91 to i64
  %_158 = and i64 %_155, 3
  %_159 = icmp eq i64 %_158, 0
  br i1 %_159, label %bb36, label %panic15

panic14:                                          ; preds = %bb50
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_1ca1c5a19e0217c8c00d06373dec63e7) #8
  unreachable

bb36:                                             ; preds = %bb7
  %_252 = ptrtoint ptr %_91 to i64
  %_255 = icmp eq i64 %_252, 0
  %_256 = and i1 %_255, true
  %_257 = xor i1 %_256, true
  br i1 %_257, label %bb51, label %panic16

panic15:                                          ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_155, ptr align 8 @alloc_5ef54e2b1e62e16f9216ee0e03ce6cf4) #8
  unreachable

bb51:                                             ; preds = %bb36
  %8 = getelementptr inbounds i8, ptr %_91, i64 4
  %_19 = load i32, ptr %8, align 4
  %_13 = icmp slt i32 %_14, %_19
  br i1 %_13, label %bb9, label %bb25

panic16:                                          ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5ef54e2b1e62e16f9216ee0e03ce6cf4) #8
  unreachable

bb9:                                              ; preds = %bb51
  %_32 = load i32, ptr %i, align 4
  %_31 = sub i32 %_32, 1
  %_36 = icmp eq i32 %_31, -2147483648
  %_37 = and i1 false, %_36
  br i1 %_37, label %panic17, label %bb11

bb11:                                             ; preds = %bb9
  %_149 = ptrtoint ptr %minHeap to i64
  %_152 = and i64 %_149, 7
  %_153 = icmp eq i64 %_152, 0
  br i1 %_153, label %bb35, label %panic18

panic17:                                          ; preds = %bb9
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_98d335dd4a01bd8c77a598c1826597fd) #8
  unreachable

bb35:                                             ; preds = %bb11
  %_259 = ptrtoint ptr %minHeap to i64
  %_262 = icmp eq i64 %_259, 0
  %_263 = and i1 %_262, true
  %_264 = xor i1 %_263, true
  br i1 %_264, label %bb52, label %panic19

panic18:                                          ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_149, ptr align 8 @alloc_0683ed1bfad60d93d5d2dea99a6fdbae) #8
  unreachable

bb52:                                             ; preds = %bb35
  %9 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_39 = load ptr, ptr %9, align 8
  %_143 = ptrtoint ptr %minHeap to i64
  %_146 = and i64 %_143, 7
  %_147 = icmp eq i64 %_146, 0
  br i1 %_147, label %bb34, label %panic20

panic19:                                          ; preds = %bb35
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0683ed1bfad60d93d5d2dea99a6fdbae) #8
  unreachable

bb34:                                             ; preds = %bb52
  %_266 = ptrtoint ptr %minHeap to i64
  %_269 = icmp eq i64 %_266, 0
  %_270 = and i1 %_269, true
  %_271 = xor i1 %_270, true
  br i1 %_271, label %bb53, label %panic21

panic20:                                          ; preds = %bb52
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_143, ptr align 8 @alloc_3b6593fe4381ddb71080acba46a13310) #8
  unreachable

bb53:                                             ; preds = %bb34
  %10 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_43 = load ptr, ptr %10, align 8
  %_45 = load i32, ptr %i, align 4
  %_44 = sext i32 %_45 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_43, i64 %_44, i64 8) #9
  %_0.i48 = getelementptr inbounds ptr, ptr %_43, i64 %_44
  %_92 = load ptr, ptr %_0.i48, align 8
  %_137 = ptrtoint ptr %_92 to i64
  %_140 = and i64 %_137, 3
  %_141 = icmp eq i64 %_140, 0
  br i1 %_141, label %bb33, label %panic22

panic21:                                          ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3b6593fe4381ddb71080acba46a13310) #8
  unreachable

bb33:                                             ; preds = %bb53
  %_273 = ptrtoint ptr %_92 to i64
  %_276 = icmp eq i64 %_273, 0
  %_277 = and i1 %_276, true
  %_278 = xor i1 %_277, true
  br i1 %_278, label %bb54, label %panic23

panic22:                                          ; preds = %bb53
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_137, ptr align 8 @alloc_c6b6c46dab21a756ece908dddb203313) #8
  unreachable

bb54:                                             ; preds = %bb33
  %_41 = load i32, ptr %_92, align 4
  %_40 = sext i32 %_41 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_39, i64 %_40, i64 4) #9
  %_0.i43 = getelementptr inbounds i32, ptr %_39, i64 %_40
  %_131 = ptrtoint ptr %_0.i43 to i64
  %_134 = and i64 %_131, 3
  %_135 = icmp eq i64 %_134, 0
  br i1 %_135, label %bb32, label %panic24

panic23:                                          ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c6b6c46dab21a756ece908dddb203313) #8
  unreachable

bb32:                                             ; preds = %bb54
  %_280 = ptrtoint ptr %_0.i43 to i64
  %_283 = icmp eq i64 %_280, 0
  %_284 = and i1 %_283, true
  %_285 = xor i1 %_284, true
  br i1 %_285, label %bb55, label %panic25

panic24:                                          ; preds = %bb54
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_131, ptr align 8 @alloc_ad2992cbeca429404f370f4c3c274254) #8
  unreachable

bb55:                                             ; preds = %bb32
  %11 = sdiv i32 %_31, 2
  store i32 %11, ptr %_0.i43, align 4
  %_46 = load i32, ptr %i, align 4
  %_125 = ptrtoint ptr %minHeap to i64
  %_128 = and i64 %_125, 7
  %_129 = icmp eq i64 %_128, 0
  br i1 %_129, label %bb31, label %panic26

panic25:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ad2992cbeca429404f370f4c3c274254) #8
  unreachable

bb31:                                             ; preds = %bb55
  %_287 = ptrtoint ptr %minHeap to i64
  %_290 = icmp eq i64 %_287, 0
  %_291 = and i1 %_290, true
  %_292 = xor i1 %_291, true
  br i1 %_292, label %bb56, label %panic27

panic26:                                          ; preds = %bb55
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_125, ptr align 8 @alloc_de518b065336320d022fd8889ed5e3b6) #8
  unreachable

bb56:                                             ; preds = %bb31
  %12 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_48 = load ptr, ptr %12, align 8
  %_119 = ptrtoint ptr %minHeap to i64
  %_122 = and i64 %_119, 7
  %_123 = icmp eq i64 %_122, 0
  br i1 %_123, label %bb30, label %panic28

panic27:                                          ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_de518b065336320d022fd8889ed5e3b6) #8
  unreachable

bb30:                                             ; preds = %bb56
  %_294 = ptrtoint ptr %minHeap to i64
  %_297 = icmp eq i64 %_294, 0
  %_298 = and i1 %_297, true
  %_299 = xor i1 %_298, true
  br i1 %_299, label %bb57, label %panic29

panic28:                                          ; preds = %bb56
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_119, ptr align 8 @alloc_2f4b0c851f63c5ed43bde51f57db2bd5) #8
  unreachable

bb57:                                             ; preds = %bb30
  %13 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_52 = load ptr, ptr %13, align 8
  %_56 = load i32, ptr %i, align 4
  %_55 = sub i32 %_56, 1
  %_60 = icmp eq i32 %_55, -2147483648
  %_61 = and i1 false, %_60
  br i1 %_61, label %panic30, label %bb15

panic29:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2f4b0c851f63c5ed43bde51f57db2bd5) #8
  unreachable

bb15:                                             ; preds = %bb57
  %_54 = sdiv i32 %_55, 2
  %_53 = sext i32 %_54 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_52, i64 %_53, i64 8) #9
  %_0.i47 = getelementptr inbounds ptr, ptr %_52, i64 %_53
  %_93 = load ptr, ptr %_0.i47, align 8
  %_113 = ptrtoint ptr %_93 to i64
  %_116 = and i64 %_113, 3
  %_117 = icmp eq i64 %_116, 0
  br i1 %_117, label %bb29, label %panic31

panic30:                                          ; preds = %bb57
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_1456b7d63c4f2c5a30257a527c587e87) #8
  unreachable

bb29:                                             ; preds = %bb15
  %_301 = ptrtoint ptr %_93 to i64
  %_304 = icmp eq i64 %_301, 0
  %_305 = and i1 %_304, true
  %_306 = xor i1 %_305, true
  br i1 %_306, label %bb58, label %panic32

panic31:                                          ; preds = %bb15
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_113, ptr align 8 @alloc_2cc891a1cca2b3776648e10a566e3518) #8
  unreachable

bb58:                                             ; preds = %bb29
  %_50 = load i32, ptr %_93, align 4
  %_49 = sext i32 %_50 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_48, i64 %_49, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %_48, i64 %_49
  %_107 = ptrtoint ptr %_0.i to i64
  %_110 = and i64 %_107, 3
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %bb28, label %panic33

panic32:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2cc891a1cca2b3776648e10a566e3518) #8
  unreachable

bb28:                                             ; preds = %bb58
  %_308 = ptrtoint ptr %_0.i to i64
  %_311 = icmp eq i64 %_308, 0
  %_312 = and i1 %_311, true
  %_313 = xor i1 %_312, true
  br i1 %_313, label %bb59, label %panic34

panic33:                                          ; preds = %bb58
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_107, ptr align 8 @alloc_155c4bae7e766b221e781a03dec8f99c) #8
  unreachable

bb59:                                             ; preds = %bb28
  store i32 %_46, ptr %_0.i, align 4
  %_101 = ptrtoint ptr %minHeap to i64
  %_104 = and i64 %_101, 7
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb27, label %panic35

panic34:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_155c4bae7e766b221e781a03dec8f99c) #8
  unreachable

bb27:                                             ; preds = %bb59
  %_315 = ptrtoint ptr %minHeap to i64
  %_318 = icmp eq i64 %_315, 0
  %_319 = and i1 %_318, true
  %_320 = xor i1 %_319, true
  br i1 %_320, label %bb60, label %panic36

panic35:                                          ; preds = %bb59
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_101, ptr align 8 @alloc_874d74b1effe93b1236e4707396425dc) #8
  unreachable

bb60:                                             ; preds = %bb27
  %14 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_66 = load ptr, ptr %14, align 8
  %_68 = load i32, ptr %i, align 4
  %_67 = sext i32 %_68 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_66, i64 %_67, i64 8) #9
  %_0.i46 = getelementptr inbounds ptr, ptr %_66, i64 %_67
  %_334 = ptrtoint ptr %_0.i46 to i64
  %_335 = icmp eq i64 %_334, 0
  %_336 = and i1 %_335, true
  %_337 = xor i1 %_336, true
  br i1 %_337, label %bb63, label %panic37

panic36:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_874d74b1effe93b1236e4707396425dc) #8
  unreachable

bb63:                                             ; preds = %bb60
  %_95 = ptrtoint ptr %minHeap to i64
  %_98 = and i64 %_95, 7
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %bb26, label %panic38

panic37:                                          ; preds = %bb60
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_000b06c8fadffbb42bb6c67db16239f9) #8
  unreachable

bb26:                                             ; preds = %bb63
  %_322 = ptrtoint ptr %minHeap to i64
  %_325 = icmp eq i64 %_322, 0
  %_326 = and i1 %_325, true
  %_327 = xor i1 %_326, true
  br i1 %_327, label %bb61, label %panic39

panic38:                                          ; preds = %bb63
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_95, ptr align 8 @alloc_b86f73af398b4dcaeb5a8b1ed0a8488c) #8
  unreachable

bb61:                                             ; preds = %bb26
  %15 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_72 = load ptr, ptr %15, align 8
  %_76 = load i32, ptr %i, align 4
  %_75 = sub i32 %_76, 1
  %_80 = icmp eq i32 %_75, -2147483648
  %_81 = and i1 false, %_80
  br i1 %_81, label %panic40, label %bb20

panic39:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b86f73af398b4dcaeb5a8b1ed0a8488c) #8
  unreachable

bb20:                                             ; preds = %bb61
  %_74 = sdiv i32 %_75, 2
  %_73 = sext i32 %_74 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_72, i64 %_73, i64 8) #9
  %_0.i45 = getelementptr inbounds ptr, ptr %_72, i64 %_73
  %_329 = ptrtoint ptr %_0.i45 to i64
  %_330 = icmp eq i64 %_329, 0
  %_331 = and i1 %_330, true
  %_332 = xor i1 %_331, true
  br i1 %_332, label %bb62, label %panic41

panic40:                                          ; preds = %bb61
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_1453b2f2fd88e7599856846cf32a9944) #8
  unreachable

bb62:                                             ; preds = %bb20
  call void @swapMinHeapNode(ptr %_0.i46, ptr %_0.i45) #9
  %_83 = load i32, ptr %i, align 4
  %_82 = sub i32 %_83, 1
  %_87 = icmp eq i32 %_82, -2147483648
  %_88 = and i1 false, %_87
  br i1 %_88, label %panic42, label %bb24

panic41:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6c8b11f06f7a3c729b268eedc00282f6) #8
  unreachable

bb24:                                             ; preds = %bb62
  %16 = sdiv i32 %_82, 2
  store i32 %16, ptr %i, align 4
  br label %bb3

panic42:                                          ; preds = %bb62
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_dab7fb669b4803dedcdb12d3e7dff7c3) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @extractMin(ptr %minHeap) unnamed_addr #2 {
start:
  %_0 = alloca [8 x i8], align 8
  %_2 = call i32 @isEmpty(ptr %minHeap) #9
  %0 = icmp eq i32 %_2, 0
  br i1 %0, label %bb3, label %bb2

bb3:                                              ; preds = %start
  %_118 = ptrtoint ptr %minHeap to i64
  %_121 = and i64 %_118, 7
  %_122 = icmp eq i64 %_121, 0
  br i1 %_122, label %bb26, label %panic

bb2:                                              ; preds = %start
  store ptr null, ptr %_0, align 8
  br label %bb10

bb26:                                             ; preds = %bb3
  %_124 = ptrtoint ptr %minHeap to i64
  %_127 = icmp eq i64 %_124, 0
  %_128 = and i1 %_127, true
  %_129 = xor i1 %_128, true
  br i1 %_129, label %bb27, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_118, ptr align 8 @alloc_2f71fbc6597ea9b6e26ec20033715d1f) #8
  unreachable

bb27:                                             ; preds = %bb26
  %1 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_5 = load ptr, ptr %1, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_5, i64 0, i64 8) #9
  %_112 = ptrtoint ptr %_5 to i64
  %_115 = and i64 %_112, 7
  %_116 = icmp eq i64 %_115, 0
  br i1 %_116, label %bb25, label %panic2

panic1:                                           ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2f71fbc6597ea9b6e26ec20033715d1f) #8
  unreachable

bb25:                                             ; preds = %bb27
  %_131 = ptrtoint ptr %_5 to i64
  %_134 = icmp eq i64 %_131, 0
  %_135 = and i1 %_134, true
  %_136 = xor i1 %_135, true
  br i1 %_136, label %bb28, label %panic3

panic2:                                           ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_112, ptr align 8 @alloc_84755203a1c939d6e972db921383caf6) #8
  unreachable

bb28:                                             ; preds = %bb25
  %root = load ptr, ptr %_5, align 8
  %_106 = ptrtoint ptr %minHeap to i64
  %_109 = and i64 %_106, 7
  %_110 = icmp eq i64 %_109, 0
  br i1 %_110, label %bb24, label %panic4

panic3:                                           ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_84755203a1c939d6e972db921383caf6) #8
  unreachable

bb24:                                             ; preds = %bb28
  %_138 = ptrtoint ptr %minHeap to i64
  %_141 = icmp eq i64 %_138, 0
  %_142 = and i1 %_141, true
  %_143 = xor i1 %_142, true
  br i1 %_143, label %bb29, label %panic5

panic4:                                           ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_106, ptr align 8 @alloc_c12c7ce844085256c6c2d41fce05ea8d) #8
  unreachable

bb29:                                             ; preds = %bb24
  %2 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_9 = load ptr, ptr %2, align 8
  %_100 = ptrtoint ptr %minHeap to i64
  %_103 = and i64 %_100, 7
  %_104 = icmp eq i64 %_103, 0
  br i1 %_104, label %bb23, label %panic6

panic5:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c12c7ce844085256c6c2d41fce05ea8d) #8
  unreachable

bb23:                                             ; preds = %bb29
  %_145 = ptrtoint ptr %minHeap to i64
  %_148 = icmp eq i64 %_145, 0
  %_149 = and i1 %_148, true
  %_150 = xor i1 %_149, true
  br i1 %_150, label %bb30, label %panic7

panic6:                                           ; preds = %bb29
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_100, ptr align 8 @alloc_55b47c8204d4bdded527b5268896b70b) #8
  unreachable

bb30:                                             ; preds = %bb23
  %_12 = load i32, ptr %minHeap, align 8
  %_11 = sub i32 %_12, 1
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_9, i64 %_10, i64 8) #9
  %_0.i35 = getelementptr inbounds ptr, ptr %_9, i64 %_10
  %_94 = ptrtoint ptr %_0.i35 to i64
  %_97 = and i64 %_94, 7
  %_98 = icmp eq i64 %_97, 0
  br i1 %_98, label %bb22, label %panic8

panic7:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_55b47c8204d4bdded527b5268896b70b) #8
  unreachable

bb22:                                             ; preds = %bb30
  %_152 = ptrtoint ptr %_0.i35 to i64
  %_155 = icmp eq i64 %_152, 0
  %_156 = and i1 %_155, true
  %_157 = xor i1 %_156, true
  br i1 %_157, label %bb31, label %panic9

panic8:                                           ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_94, ptr align 8 @alloc_6a2718b0ea40f8278928708e7eb6b9dd) #8
  unreachable

bb31:                                             ; preds = %bb22
  %lastNode = load ptr, ptr %_0.i35, align 8
  %_88 = ptrtoint ptr %minHeap to i64
  %_91 = and i64 %_88, 7
  %_92 = icmp eq i64 %_91, 0
  br i1 %_92, label %bb21, label %panic10

panic9:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6a2718b0ea40f8278928708e7eb6b9dd) #8
  unreachable

bb21:                                             ; preds = %bb31
  %_159 = ptrtoint ptr %minHeap to i64
  %_162 = icmp eq i64 %_159, 0
  %_163 = and i1 %_162, true
  %_164 = xor i1 %_163, true
  br i1 %_164, label %bb32, label %panic11

panic10:                                          ; preds = %bb31
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_88, ptr align 8 @alloc_c4f0d1b3a1ac26a362c9df29f136318d) #8
  unreachable

bb32:                                             ; preds = %bb21
  %3 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_15 = load ptr, ptr %3, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_15, i64 0, i64 8) #9
  %_236 = ptrtoint ptr %_15 to i64
  %_237 = icmp eq i64 %_236, 0
  %_238 = and i1 %_237, true
  %_239 = xor i1 %_238, true
  br i1 %_239, label %bb43, label %panic12

panic11:                                          ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c4f0d1b3a1ac26a362c9df29f136318d) #8
  unreachable

bb43:                                             ; preds = %bb32
  store ptr %lastNode, ptr %_15, align 8
  %_82 = ptrtoint ptr %minHeap to i64
  %_85 = and i64 %_82, 7
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %bb20, label %panic13

panic12:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_262689c08d8c45bfa498968447b27793) #8
  unreachable

bb20:                                             ; preds = %bb43
  %_166 = ptrtoint ptr %minHeap to i64
  %_169 = icmp eq i64 %_166, 0
  %_170 = and i1 %_169, true
  %_171 = xor i1 %_170, true
  br i1 %_171, label %bb33, label %panic14

panic13:                                          ; preds = %bb43
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_82, ptr align 8 @alloc_eb00e5736abc7dd1512570238df00604) #8
  unreachable

bb33:                                             ; preds = %bb20
  %_17 = load i32, ptr %minHeap, align 8
  %_76 = ptrtoint ptr %minHeap to i64
  %_79 = and i64 %_76, 7
  %_80 = icmp eq i64 %_79, 0
  br i1 %_80, label %bb19, label %panic15

panic14:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_eb00e5736abc7dd1512570238df00604) #8
  unreachable

bb19:                                             ; preds = %bb33
  %_173 = ptrtoint ptr %minHeap to i64
  %_176 = icmp eq i64 %_173, 0
  %_177 = and i1 %_176, true
  %_178 = xor i1 %_177, true
  br i1 %_178, label %bb34, label %panic16

panic15:                                          ; preds = %bb33
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_76, ptr align 8 @alloc_72aeeec7502571576cff6e05fe66634d) #8
  unreachable

bb34:                                             ; preds = %bb19
  %4 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_19 = load ptr, ptr %4, align 8
  %_70 = ptrtoint ptr %root to i64
  %_73 = and i64 %_70, 3
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %bb18, label %panic17

panic16:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_72aeeec7502571576cff6e05fe66634d) #8
  unreachable

bb18:                                             ; preds = %bb34
  %_180 = ptrtoint ptr %root to i64
  %_183 = icmp eq i64 %_180, 0
  %_184 = and i1 %_183, true
  %_185 = xor i1 %_184, true
  br i1 %_185, label %bb35, label %panic18

panic17:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_70, ptr align 8 @alloc_8fcc549c86d9f09607c8711e4ebee179) #8
  unreachable

bb35:                                             ; preds = %bb18
  %_21 = load i32, ptr %root, align 4
  %_20 = sext i32 %_21 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_19, i64 %_20, i64 4) #9
  %_0.i33 = getelementptr inbounds i32, ptr %_19, i64 %_20
  %_64 = ptrtoint ptr %_0.i33 to i64
  %_67 = and i64 %_64, 3
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb17, label %panic19

panic18:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8fcc549c86d9f09607c8711e4ebee179) #8
  unreachable

bb17:                                             ; preds = %bb35
  %_187 = ptrtoint ptr %_0.i33 to i64
  %_190 = icmp eq i64 %_187, 0
  %_191 = and i1 %_190, true
  %_192 = xor i1 %_191, true
  br i1 %_192, label %bb36, label %panic20

panic19:                                          ; preds = %bb35
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_64, ptr align 8 @alloc_b3c30bf77b034b39ce6bbf14755a8fcf) #8
  unreachable

bb36:                                             ; preds = %bb17
  %5 = sub i32 %_17, 1
  store i32 %5, ptr %_0.i33, align 4
  %_58 = ptrtoint ptr %minHeap to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb16, label %panic21

panic20:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b3c30bf77b034b39ce6bbf14755a8fcf) #8
  unreachable

bb16:                                             ; preds = %bb36
  %_194 = ptrtoint ptr %minHeap to i64
  %_197 = icmp eq i64 %_194, 0
  %_198 = and i1 %_197, true
  %_199 = xor i1 %_198, true
  br i1 %_199, label %bb37, label %panic22

panic21:                                          ; preds = %bb36
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_5b07030929d6c33713c08ddfe484f486) #8
  unreachable

bb37:                                             ; preds = %bb16
  %6 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_23 = load ptr, ptr %6, align 8
  %_52 = ptrtoint ptr %lastNode to i64
  %_55 = and i64 %_52, 3
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb15, label %panic23

panic22:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5b07030929d6c33713c08ddfe484f486) #8
  unreachable

bb15:                                             ; preds = %bb37
  %_201 = ptrtoint ptr %lastNode to i64
  %_204 = icmp eq i64 %_201, 0
  %_205 = and i1 %_204, true
  %_206 = xor i1 %_205, true
  br i1 %_206, label %bb38, label %panic24

panic23:                                          ; preds = %bb37
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_52, ptr align 8 @alloc_811cffd5c4e5bfe8f709e10ae5cc4d29) #8
  unreachable

bb38:                                             ; preds = %bb15
  %_25 = load i32, ptr %lastNode, align 4
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_23, i64 %_24, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %_23, i64 %_24
  %_46 = ptrtoint ptr %_0.i to i64
  %_49 = and i64 %_46, 3
  %_50 = icmp eq i64 %_49, 0
  br i1 %_50, label %bb14, label %panic25

panic24:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_811cffd5c4e5bfe8f709e10ae5cc4d29) #8
  unreachable

bb14:                                             ; preds = %bb38
  %_208 = ptrtoint ptr %_0.i to i64
  %_211 = icmp eq i64 %_208, 0
  %_212 = and i1 %_211, true
  %_213 = xor i1 %_212, true
  br i1 %_213, label %bb39, label %panic26

panic25:                                          ; preds = %bb38
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_46, ptr align 8 @alloc_9d60f1461b42520c8f7fd112edeecf20) #8
  unreachable

bb39:                                             ; preds = %bb14
  store i32 0, ptr %_0.i, align 4
  %_40 = ptrtoint ptr %minHeap to i64
  %_43 = and i64 %_40, 7
  %_44 = icmp eq i64 %_43, 0
  br i1 %_44, label %bb13, label %panic27

panic26:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d60f1461b42520c8f7fd112edeecf20) #8
  unreachable

bb13:                                             ; preds = %bb39
  %_34 = ptrtoint ptr %minHeap to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb12, label %panic28

panic27:                                          ; preds = %bb39
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_40, ptr align 8 @alloc_60941831e4c04cc8f88aef5a8f3e9cd4) #8
  unreachable

bb12:                                             ; preds = %bb13
  %_222 = ptrtoint ptr %minHeap to i64
  %_225 = icmp eq i64 %_222, 0
  %_226 = and i1 %_225, true
  %_227 = xor i1 %_226, true
  br i1 %_227, label %bb41, label %panic29

panic28:                                          ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_60941831e4c04cc8f88aef5a8f3e9cd4) #8
  unreachable

bb41:                                             ; preds = %bb12
  %_215 = ptrtoint ptr %minHeap to i64
  %_218 = icmp eq i64 %_215, 0
  %_219 = and i1 %_218, true
  %_220 = xor i1 %_219, true
  br i1 %_220, label %bb40, label %panic30

panic29:                                          ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_60941831e4c04cc8f88aef5a8f3e9cd4) #8
  unreachable

bb40:                                             ; preds = %bb41
  %7 = load i32, ptr %minHeap, align 8
  %8 = sub i32 %7, 1
  store i32 %8, ptr %minHeap, align 8
  %_28 = ptrtoint ptr %minHeap to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb11, label %panic31

panic30:                                          ; preds = %bb41
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_60941831e4c04cc8f88aef5a8f3e9cd4) #8
  unreachable

bb11:                                             ; preds = %bb40
  %_229 = ptrtoint ptr %minHeap to i64
  %_232 = icmp eq i64 %_229, 0
  %_233 = and i1 %_232, true
  %_234 = xor i1 %_233, true
  br i1 %_234, label %bb42, label %panic32

panic31:                                          ; preds = %bb40
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_c23f06b0b8404045e1b22c2bbde4490a) #8
  unreachable

bb42:                                             ; preds = %bb11
  call void @MinHeapify(ptr %minHeap, i32 0) #9
  store ptr %root, ptr %_0, align 8
  br label %bb10

panic32:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c23f06b0b8404045e1b22c2bbde4490a) #8
  unreachable

bb10:                                             ; preds = %bb2, %bb42
  %9 = load ptr, ptr %_0, align 8
  ret ptr %9
}

; Function Attrs: nounwind nonlazybind
define i32 @isInMinHeap(ptr %minHeap, i32 %v) unnamed_addr #2 {
start:
  %_0 = alloca [4 x i8], align 4
  %_22 = ptrtoint ptr %minHeap to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb7, label %panic

bb7:                                              ; preds = %start
  %_28 = ptrtoint ptr %minHeap to i64
  %_31 = icmp eq i64 %_28, 0
  %_32 = and i1 %_31, true
  %_33 = xor i1 %_32, true
  br i1 %_33, label %bb8, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_567bd86cc04eda9507b77489399317bf) #8
  unreachable

bb8:                                              ; preds = %bb7
  %0 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_6 = load ptr, ptr %0, align 8
  %_7 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_6, i64 %_7, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %_6, i64 %_7
  %_16 = ptrtoint ptr %_0.i to i64
  %_19 = and i64 %_16, 3
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb6, label %panic2

panic1:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_567bd86cc04eda9507b77489399317bf) #8
  unreachable

bb6:                                              ; preds = %bb8
  %_35 = ptrtoint ptr %_0.i to i64
  %_38 = icmp eq i64 %_35, 0
  %_39 = and i1 %_38, true
  %_40 = xor i1 %_39, true
  br i1 %_40, label %bb9, label %panic3

panic2:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_16, ptr align 8 @alloc_ee1405be9ba22abbf6e8641466ed9317) #8
  unreachable

bb9:                                              ; preds = %bb6
  %_4 = load i32, ptr %_0.i, align 4
  %_10 = ptrtoint ptr %minHeap to i64
  %_13 = and i64 %_10, 7
  %_14 = icmp eq i64 %_13, 0
  br i1 %_14, label %bb5, label %panic4

panic3:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee1405be9ba22abbf6e8641466ed9317) #8
  unreachable

bb5:                                              ; preds = %bb9
  %_42 = ptrtoint ptr %minHeap to i64
  %_45 = icmp eq i64 %_42, 0
  %_46 = and i1 %_45, true
  %_47 = xor i1 %_46, true
  br i1 %_47, label %bb10, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_10, ptr align 8 @alloc_98b8199b82e7c5252b72b11cc85bc9c3) #8
  unreachable

bb10:                                             ; preds = %bb5
  %_8 = load i32, ptr %minHeap, align 8
  %_3 = icmp slt i32 %_4, %_8
  br i1 %_3, label %bb2, label %bb3

panic5:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_98b8199b82e7c5252b72b11cc85bc9c3) #8
  unreachable

bb3:                                              ; preds = %bb10
  store i32 0, ptr %_0, align 4
  br label %bb4

bb2:                                              ; preds = %bb10
  store i32 1, ptr %_0, align 4
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %1 = load i32, ptr %_0, align 4
  ret i32 %1
}

; Function Attrs: nounwind nonlazybind
define void @printpath(ptr %parent, i32 %v) unnamed_addr #2 {
start:
  %_6 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %parent, i64 %_6, i64 4) #9
  %_0.i7 = getelementptr inbounds i32, ptr %parent, i64 %_6
  %_32 = ptrtoint ptr %_0.i7 to i64
  %_35 = and i64 %_32, 3
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb9, label %panic

bb9:                                              ; preds = %start
  %_38 = ptrtoint ptr %_0.i7 to i64
  %_41 = icmp eq i64 %_38, 0
  %_42 = and i1 %_41, true
  %_43 = xor i1 %_42, true
  br i1 %_43, label %bb10, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_32, ptr align 8 @alloc_290413aa0cd80994369e176fc98fc962) #8
  unreachable

bb10:                                             ; preds = %bb9
  %_4 = load i32, ptr %_0.i7, align 4
  %_3 = icmp eq i32 %_4, %v
  br i1 %_3, label %bb6, label %bb2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_290413aa0cd80994369e176fc98fc962) #8
  unreachable

bb2:                                              ; preds = %bb10
  %_10 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %parent, i64 %_10, i64 4) #9
  %_0.i6 = getelementptr inbounds i32, ptr %parent, i64 %_10
  %_26 = ptrtoint ptr %_0.i6 to i64
  %_29 = and i64 %_26, 3
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb8, label %panic2

bb6:                                              ; preds = %bb12, %bb10
  ret void

bb8:                                              ; preds = %bb2
  %_45 = ptrtoint ptr %_0.i6 to i64
  %_48 = icmp eq i64 %_45, 0
  %_49 = and i1 %_48, true
  %_50 = xor i1 %_49, true
  br i1 %_50, label %bb11, label %panic3

panic2:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_26, ptr align 8 @alloc_e5cbd2fbacab4735631880bbebb0d3f6) #8
  unreachable

bb11:                                             ; preds = %bb8
  %_8 = load i32, ptr %_0.i6, align 4
  call void @printpath(ptr %parent, i32 %_8) #9
  %_18 = sext i32 %v to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %parent, i64 %_18, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %parent, i64 %_18
  %_20 = ptrtoint ptr %_0.i to i64
  %_23 = and i64 %_20, 3
  %_24 = icmp eq i64 %_23, 0
  br i1 %_24, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e5cbd2fbacab4735631880bbebb0d3f6) #8
  unreachable

bb7:                                              ; preds = %bb11
  %_52 = ptrtoint ptr %_0.i to i64
  %_55 = icmp eq i64 %_52, 0
  %_56 = and i1 %_55, true
  %_57 = xor i1 %_56, true
  br i1 %_57, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_20, ptr align 8 @alloc_458055aab5e43f04f255f9dbac245e48) #8
  unreachable

bb12:                                             ; preds = %bb7
  %_16 = load i32, ptr %_0.i, align 4
  %_11 = call i32 (ptr, ...) @printf(ptr @alloc_f7476c71e25d6e9aba7c87d49cffb9c5, i32 %_16) #9
  br label %bb6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_458055aab5e43f04f255f9dbac245e48) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @printarr(ptr %dist, i32 %n, ptr %parent) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %_4 = call i32 (ptr, ...) @printf(ptr @alloc_bb0df82fb7988c01fefad2db3999887b) #9
  store i32 0, ptr %i, align 4
  br label %bb2

bb2:                                              ; preds = %bb10, %start
  %_11 = load i32, ptr %i, align 4
  %_10 = icmp slt i32 %_11, %n
  br i1 %_10, label %bb3, label %bb8

bb8:                                              ; preds = %bb2
  ret void

bb3:                                              ; preds = %bb2
  %_17 = load i32, ptr %i, align 4
  %_21 = load i32, ptr %i, align 4
  %_20 = sext i32 %_21 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %dist, i64 %_20, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %dist, i64 %_20
  %_31 = ptrtoint ptr %_0.i to i64
  %_34 = and i64 %_31, 3
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb9, label %panic

bb9:                                              ; preds = %bb3
  %_37 = ptrtoint ptr %_0.i to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb10, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_31, ptr align 8 @alloc_e6c0119d451224badc2e6a6985cf6fd0) #8
  unreachable

bb10:                                             ; preds = %bb9
  %_18 = load i32, ptr %_0.i, align 4
  %_12 = call i32 (ptr, ...) @printf(ptr @alloc_818e2308465aa22d6ad6f32ef898d7be, i32 %_17, i32 %_18) #9
  %_23 = load i32, ptr %i, align 4
  call void @printpath(ptr %parent, i32 %_23) #9
  %_29 = load i32, ptr %i, align 4
  %_24 = call i32 (ptr, ...) @printf(ptr @alloc_87551382a9de3243abbfdbda2f0b586b, i32 %_29) #9
  %0 = load i32, ptr %i, align 4
  %1 = add i32 %0, 1
  store i32 %1, ptr %i, align 4
  br label %bb2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e6c0119d451224badc2e6a6985cf6fd0) #8
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @dijkstra(ptr %graph, i32 %src) unnamed_addr #2 {
start:
  %crawl = alloca [8 x i8], align 8
  %v = alloca [4 x i8], align 4
  %parent = alloca [24 x i8], align 8
  %dist = alloca [24 x i8], align 8
  %_231 = ptrtoint ptr %graph to i64
  %_234 = and i64 %_231, 7
  %_235 = icmp eq i64 %_234, 0
  br i1 %_235, label %bb73, label %panic

bb73:                                             ; preds = %start
  %_237 = ptrtoint ptr %graph to i64
  %_240 = icmp eq i64 %_237, 0
  %_241 = and i1 %_240, true
  %_242 = xor i1 %_241, true
  br i1 %_242, label %bb74, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_231, ptr align 8 @alloc_0704d32869d484b453a9f0d014bbf446) #8
  unreachable

bb74:                                             ; preds = %bb73
  %V = load i32, ptr %graph, align 8
  %minHeap = call ptr @createMinHeap(i32 %V) #9
  %vla = sext i32 %V to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h050b1bf7c847f2c2E(ptr sret([24 x i8]) align 8 %dist, i32 0, i64 %vla, ptr align 8 @alloc_7c17463da41ef015e369cbb741c2944a) #9
  %_225 = ptrtoint ptr %minHeap to i64
  %_228 = and i64 %_225, 7
  %_229 = icmp eq i64 %_228, 0
  br i1 %_229, label %bb72, label %panic2

panic1:                                           ; preds = %bb73
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0704d32869d484b453a9f0d014bbf446) #8
  unreachable

bb72:                                             ; preds = %bb74
  %_244 = ptrtoint ptr %minHeap to i64
  %_247 = icmp eq i64 %_244, 0
  %_248 = and i1 %_247, true
  %_249 = xor i1 %_248, true
  br i1 %_249, label %bb75, label %panic3

panic2:                                           ; preds = %bb74
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_225, ptr align 8 @alloc_900b2333994088df8d34206ab0cf14b9) #8
  unreachable

bb75:                                             ; preds = %bb72
  store i32 %V, ptr %minHeap, align 8
  %vla_0 = sext i32 %V to i64
; call alloc::vec::from_elem
  call void @_ZN5alloc3vec9from_elem17h050b1bf7c847f2c2E(ptr sret([24 x i8]) align 8 %parent, i32 0, i64 %vla_0, ptr align 8 @alloc_8d375473227c00abd173c2e467cb0288) #9
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_10 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %parent) #9
  %_12 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_10, i64 %_12, i64 4) #9
  %_0.i57 = getelementptr inbounds i32, ptr %_10, i64 %_12
  %_219 = ptrtoint ptr %_0.i57 to i64
  %_222 = and i64 %_219, 3
  %_223 = icmp eq i64 %_222, 0
  br i1 %_223, label %bb71, label %panic4

panic3:                                           ; preds = %bb72
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_900b2333994088df8d34206ab0cf14b9) #8
  unreachable

bb71:                                             ; preds = %bb75
  %_251 = ptrtoint ptr %_0.i57 to i64
  %_254 = icmp eq i64 %_251, 0
  %_255 = and i1 %_254, true
  %_256 = xor i1 %_255, true
  br i1 %_256, label %bb76, label %panic5

panic4:                                           ; preds = %bb75
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_219, ptr align 8 @alloc_b6f83bedf9fba7ef985ce08b8c3e81b8) #8
  unreachable

bb76:                                             ; preds = %bb71
  store i32 %src, ptr %_0.i57, align 4
  store i32 0, ptr %v, align 4
  br label %bb6

panic5:                                           ; preds = %bb71
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b6f83bedf9fba7ef985ce08b8c3e81b8) #8
  unreachable

bb6:                                              ; preds = %bb80, %bb76
  %_15 = load i32, ptr %v, align 4
  %_14 = icmp slt i32 %_15, %V
  br i1 %_14, label %bb7, label %bb13

bb13:                                             ; preds = %bb6
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_34 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_36 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_34, i64 %_36, i64 4) #9
  %_0.i56 = getelementptr inbounds i32, ptr %_34, i64 %_36
  %_189 = ptrtoint ptr %_0.i56 to i64
  %_192 = and i64 %_189, 3
  %_193 = icmp eq i64 %_192, 0
  br i1 %_193, label %bb66, label %panic6

bb7:                                              ; preds = %bb6
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_17 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_20 = load i32, ptr %v, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_17, i64 %_19, i64 4) #9
  %_0.i47 = getelementptr inbounds i32, ptr %_17, i64 %_19
  %_213 = ptrtoint ptr %_0.i47 to i64
  %_216 = and i64 %_213, 3
  %_217 = icmp eq i64 %_216, 0
  br i1 %_217, label %bb70, label %panic38

bb66:                                             ; preds = %bb13
  %_286 = ptrtoint ptr %_0.i56 to i64
  %_289 = icmp eq i64 %_286, 0
  %_290 = and i1 %_289, true
  %_291 = xor i1 %_290, true
  br i1 %_291, label %bb81, label %panic7

panic6:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_189, ptr align 8 @alloc_1eadb8a046227efa31bd2254cb449870) #8
  unreachable

bb81:                                             ; preds = %bb66
  store i32 0, ptr %_0.i56, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_40 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_42 = sext i32 %src to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_40, i64 %_42, i64 4) #9
  %_0.i55 = getelementptr inbounds i32, ptr %_40, i64 %_42
  %_183 = ptrtoint ptr %_0.i55 to i64
  %_186 = and i64 %_183, 3
  %_187 = icmp eq i64 %_186, 0
  br i1 %_187, label %bb65, label %panic8

panic7:                                           ; preds = %bb66
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1eadb8a046227efa31bd2254cb449870) #8
  unreachable

bb65:                                             ; preds = %bb81
  %_293 = ptrtoint ptr %_0.i55 to i64
  %_296 = icmp eq i64 %_293, 0
  %_297 = and i1 %_296, true
  %_298 = xor i1 %_297, true
  br i1 %_298, label %bb82, label %panic9

panic8:                                           ; preds = %bb81
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_183, ptr align 8 @alloc_b649b3375488f114ae51a3d9b081d4fd) #8
  unreachable

bb82:                                             ; preds = %bb65
  %_38 = load i32, ptr %_0.i55, align 4
  call void @decreaseKey(ptr %minHeap, i32 %src, i32 %_38) #9
  br label %bb18

panic9:                                           ; preds = %bb65
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b649b3375488f114ae51a3d9b081d4fd) #8
  unreachable

bb18:                                             ; preds = %bb23, %bb82
  %_43 = call i32 @isEmpty(ptr %minHeap) #9
  %0 = icmp eq i32 %_43, 0
  br i1 %0, label %bb20, label %bb45

bb20:                                             ; preds = %bb18
  %minNode = call ptr @extractMin(ptr %minHeap) #9
  %_177 = ptrtoint ptr %minNode to i64
  %_180 = and i64 %_177, 3
  %_181 = icmp eq i64 %_180, 0
  br i1 %_181, label %bb64, label %panic10

bb45:                                             ; preds = %bb18
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_94 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_96 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %parent) #9
  call void @printarr(ptr %_94, i32 %V, ptr %_96) #9
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c48735ee3108834E"(ptr align 8 %parent) #9
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9c48735ee3108834E"(ptr align 8 %dist) #9
  ret void

bb64:                                             ; preds = %bb20
  %_300 = ptrtoint ptr %minNode to i64
  %_303 = icmp eq i64 %_300, 0
  %_304 = and i1 %_303, true
  %_305 = xor i1 %_304, true
  br i1 %_305, label %bb83, label %panic11

panic10:                                          ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_177, ptr align 8 @alloc_d8c4502ed46f6d0db3a454c94db96cf5) #8
  unreachable

bb83:                                             ; preds = %bb64
  %u = load i32, ptr %minNode, align 4
  %_171 = ptrtoint ptr %graph to i64
  %_174 = and i64 %_171, 7
  %_175 = icmp eq i64 %_174, 0
  br i1 %_175, label %bb63, label %panic12

panic11:                                          ; preds = %bb64
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d8c4502ed46f6d0db3a454c94db96cf5) #8
  unreachable

bb63:                                             ; preds = %bb83
  %_307 = ptrtoint ptr %graph to i64
  %_310 = icmp eq i64 %_307, 0
  %_311 = and i1 %_310, true
  %_312 = xor i1 %_311, true
  br i1 %_312, label %bb84, label %panic13

panic12:                                          ; preds = %bb83
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_171, ptr align 8 @alloc_1758cae26c1abccefcf5c297b607d5cf) #8
  unreachable

bb84:                                             ; preds = %bb63
  %1 = getelementptr inbounds i8, ptr %graph, i64 8
  %_48 = load ptr, ptr %1, align 8
  %_49 = sext i32 %u to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_48, i64 %_49, i64 8) #9
  %_0.i59 = getelementptr inbounds %AdjList, ptr %_48, i64 %_49
  %_165 = ptrtoint ptr %_0.i59 to i64
  %_168 = and i64 %_165, 7
  %_169 = icmp eq i64 %_168, 0
  br i1 %_169, label %bb62, label %panic14

panic13:                                          ; preds = %bb63
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1758cae26c1abccefcf5c297b607d5cf) #8
  unreachable

bb62:                                             ; preds = %bb84
  %_314 = ptrtoint ptr %_0.i59 to i64
  %_317 = icmp eq i64 %_314, 0
  %_318 = and i1 %_317, true
  %_319 = xor i1 %_318, true
  br i1 %_319, label %bb85, label %panic15

panic14:                                          ; preds = %bb84
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_165, ptr align 8 @alloc_043ebfbc83404c3c5be65ebb044bee86) #8
  unreachable

bb85:                                             ; preds = %bb62
  %2 = load ptr, ptr %_0.i59, align 8
  store ptr %2, ptr %crawl, align 8
  br label %bb23

panic15:                                          ; preds = %bb62
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_043ebfbc83404c3c5be65ebb044bee86) #8
  unreachable

bb23:                                             ; preds = %bb96, %bb85
  %_51 = load ptr, ptr %crawl, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_50 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hee5f4becfcd4fb75E"(ptr %_51) #9
  br i1 %_50, label %bb18, label %bb25

bb25:                                             ; preds = %bb23
  %_158 = load ptr, ptr %crawl, align 8
  %_159 = ptrtoint ptr %_158 to i64
  %_162 = and i64 %_159, 7
  %_163 = icmp eq i64 %_162, 0
  br i1 %_163, label %bb61, label %panic16

bb61:                                             ; preds = %bb25
  %_320 = load ptr, ptr %crawl, align 8
  %_321 = ptrtoint ptr %_320 to i64
  %_324 = icmp eq i64 %_321, 0
  %_325 = and i1 %_324, true
  %_326 = xor i1 %_325, true
  br i1 %_326, label %bb86, label %panic17

panic16:                                          ; preds = %bb25
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_159, ptr align 8 @alloc_182440bcf915e91a1b6c0db0c81b7a82) #8
  unreachable

bb86:                                             ; preds = %bb61
  %3 = load ptr, ptr %crawl, align 8
  %v_0 = load i32, ptr %3, align 8
  %_53 = call i32 @isInMinHeap(ptr %minHeap, i32 %v_0) #9
  %4 = icmp eq i32 %_53, 0
  br i1 %4, label %bb44, label %bb27

panic17:                                          ; preds = %bb61
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_182440bcf915e91a1b6c0db0c81b7a82) #8
  unreachable

bb44:                                             ; preds = %bb95, %bb90, %bb87, %bb86
  %_98 = load ptr, ptr %crawl, align 8
  %_99 = ptrtoint ptr %_98 to i64
  %_102 = and i64 %_99, 7
  %_103 = icmp eq i64 %_102, 0
  br i1 %_103, label %bb51, label %panic36

bb27:                                             ; preds = %bb86
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_56 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_58 = sext i32 %u to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_56, i64 %_58, i64 4) #9
  %_0.i54 = getelementptr inbounds i32, ptr %_56, i64 %_58
  %_153 = ptrtoint ptr %_0.i54 to i64
  %_156 = and i64 %_153, 3
  %_157 = icmp eq i64 %_156, 0
  br i1 %_157, label %bb60, label %panic18

bb60:                                             ; preds = %bb27
  %_328 = ptrtoint ptr %_0.i54 to i64
  %_331 = icmp eq i64 %_328, 0
  %_332 = and i1 %_331, true
  %_333 = xor i1 %_332, true
  br i1 %_333, label %bb87, label %panic19

panic18:                                          ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_153, ptr align 8 @alloc_b487cf1a848193fd0761ae491180545c) #8
  unreachable

bb87:                                             ; preds = %bb60
  %_54 = load i32, ptr %_0.i54, align 4
  %5 = icmp eq i32 %_54, 2147483647
  br i1 %5, label %bb44, label %bb30

panic19:                                          ; preds = %bb60
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b487cf1a848193fd0761ae491180545c) #8
  unreachable

bb30:                                             ; preds = %bb87
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_63 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_65 = sext i32 %u to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_63, i64 %_65, i64 4) #9
  %_0.i53 = getelementptr inbounds i32, ptr %_63, i64 %_65
  %_147 = ptrtoint ptr %_0.i53 to i64
  %_150 = and i64 %_147, 3
  %_151 = icmp eq i64 %_150, 0
  br i1 %_151, label %bb59, label %panic20

bb59:                                             ; preds = %bb30
  %_335 = ptrtoint ptr %_0.i53 to i64
  %_338 = icmp eq i64 %_335, 0
  %_339 = and i1 %_338, true
  %_340 = xor i1 %_339, true
  br i1 %_340, label %bb88, label %panic21

panic20:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_147, ptr align 8 @alloc_a01fe74d3b1f09d30bfb1074c4230b22) #8
  unreachable

bb88:                                             ; preds = %bb59
  %_61 = load i32, ptr %_0.i53, align 4
  %_140 = load ptr, ptr %crawl, align 8
  %_141 = ptrtoint ptr %_140 to i64
  %_144 = and i64 %_141, 7
  %_145 = icmp eq i64 %_144, 0
  br i1 %_145, label %bb58, label %panic22

panic21:                                          ; preds = %bb59
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a01fe74d3b1f09d30bfb1074c4230b22) #8
  unreachable

bb58:                                             ; preds = %bb88
  %_341 = load ptr, ptr %crawl, align 8
  %_342 = ptrtoint ptr %_341 to i64
  %_345 = icmp eq i64 %_342, 0
  %_346 = and i1 %_345, true
  %_347 = xor i1 %_346, true
  br i1 %_347, label %bb89, label %panic23

panic22:                                          ; preds = %bb88
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_141, ptr align 8 @alloc_68d9d9a4a52c694f45782c9b7f7a0920) #8
  unreachable

bb89:                                             ; preds = %bb58
  %6 = load ptr, ptr %crawl, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %_66 = load i32, ptr %7, align 4
  %_60 = add i32 %_61, %_66
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_69 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_71 = sext i32 %v_0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_69, i64 %_71, i64 4) #9
  %_0.i52 = getelementptr inbounds i32, ptr %_69, i64 %_71
  %_135 = ptrtoint ptr %_0.i52 to i64
  %_138 = and i64 %_135, 3
  %_139 = icmp eq i64 %_138, 0
  br i1 %_139, label %bb57, label %panic24

panic23:                                          ; preds = %bb58
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_68d9d9a4a52c694f45782c9b7f7a0920) #8
  unreachable

bb57:                                             ; preds = %bb89
  %_349 = ptrtoint ptr %_0.i52 to i64
  %_352 = icmp eq i64 %_349, 0
  %_353 = and i1 %_352, true
  %_354 = xor i1 %_353, true
  br i1 %_354, label %bb90, label %panic25

panic24:                                          ; preds = %bb89
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_135, ptr align 8 @alloc_d8f8a41888edf93e8ce24dde0a20ddcb) #8
  unreachable

bb90:                                             ; preds = %bb57
  %_67 = load i32, ptr %_0.i52, align 4
  %_59 = icmp slt i32 %_60, %_67
  br i1 %_59, label %bb35, label %bb44

panic25:                                          ; preds = %bb57
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d8f8a41888edf93e8ce24dde0a20ddcb) #8
  unreachable

bb35:                                             ; preds = %bb90
  %_128 = load ptr, ptr %crawl, align 8
  %_129 = ptrtoint ptr %_128 to i64
  %_132 = and i64 %_129, 7
  %_133 = icmp eq i64 %_132, 0
  br i1 %_133, label %bb56, label %panic26

bb56:                                             ; preds = %bb35
  %_355 = load ptr, ptr %crawl, align 8
  %_356 = ptrtoint ptr %_355 to i64
  %_359 = icmp eq i64 %_356, 0
  %_360 = and i1 %_359, true
  %_361 = xor i1 %_360, true
  br i1 %_361, label %bb91, label %panic27

panic26:                                          ; preds = %bb35
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_129, ptr align 8 @alloc_bf25bc2909cc000acdbca6195b9fb97f) #8
  unreachable

bb91:                                             ; preds = %bb56
  %8 = load ptr, ptr %crawl, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 4
  %_72 = load i32, ptr %9, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_75 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_77 = sext i32 %u to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_75, i64 %_77, i64 4) #9
  %_0.i51 = getelementptr inbounds i32, ptr %_75, i64 %_77
  %_123 = ptrtoint ptr %_0.i51 to i64
  %_126 = and i64 %_123, 3
  %_127 = icmp eq i64 %_126, 0
  br i1 %_127, label %bb55, label %panic28

panic27:                                          ; preds = %bb56
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bf25bc2909cc000acdbca6195b9fb97f) #8
  unreachable

bb55:                                             ; preds = %bb91
  %_363 = ptrtoint ptr %_0.i51 to i64
  %_366 = icmp eq i64 %_363, 0
  %_367 = and i1 %_366, true
  %_368 = xor i1 %_367, true
  br i1 %_368, label %bb92, label %panic29

panic28:                                          ; preds = %bb91
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_123, ptr align 8 @alloc_95d35598d5c14d4bb5969b6d84b9005a) #8
  unreachable

bb92:                                             ; preds = %bb55
  %_73 = load i32, ptr %_0.i51, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_79 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_81 = sext i32 %v_0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_79, i64 %_81, i64 4) #9
  %_0.i50 = getelementptr inbounds i32, ptr %_79, i64 %_81
  %_117 = ptrtoint ptr %_0.i50 to i64
  %_120 = and i64 %_117, 3
  %_121 = icmp eq i64 %_120, 0
  br i1 %_121, label %bb54, label %panic30

panic29:                                          ; preds = %bb55
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_95d35598d5c14d4bb5969b6d84b9005a) #8
  unreachable

bb54:                                             ; preds = %bb92
  %_370 = ptrtoint ptr %_0.i50 to i64
  %_373 = icmp eq i64 %_370, 0
  %_374 = and i1 %_373, true
  %_375 = xor i1 %_374, true
  br i1 %_375, label %bb93, label %panic31

panic30:                                          ; preds = %bb92
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_117, ptr align 8 @alloc_eabac0c91896f693679d16b50614c072) #8
  unreachable

bb93:                                             ; preds = %bb54
  %10 = add i32 %_72, %_73
  store i32 %10, ptr %_0.i50, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_83 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %parent) #9
  %_85 = sext i32 %v_0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_83, i64 %_85, i64 4) #9
  %_0.i49 = getelementptr inbounds i32, ptr %_83, i64 %_85
  %_111 = ptrtoint ptr %_0.i49 to i64
  %_114 = and i64 %_111, 3
  %_115 = icmp eq i64 %_114, 0
  br i1 %_115, label %bb53, label %panic32

panic31:                                          ; preds = %bb54
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_eabac0c91896f693679d16b50614c072) #8
  unreachable

bb53:                                             ; preds = %bb93
  %_377 = ptrtoint ptr %_0.i49 to i64
  %_380 = icmp eq i64 %_377, 0
  %_381 = and i1 %_380, true
  %_382 = xor i1 %_381, true
  br i1 %_382, label %bb94, label %panic33

panic32:                                          ; preds = %bb93
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_111, ptr align 8 @alloc_38dfe01217306259c1fbfcdcf6779689) #8
  unreachable

bb94:                                             ; preds = %bb53
  store i32 %u, ptr %_0.i49, align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_89 = call ptr @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17he3ac7052afb9dfe6E"(ptr align 8 %dist) #9
  %_91 = sext i32 %v_0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_89, i64 %_91, i64 4) #9
  %_0.i48 = getelementptr inbounds i32, ptr %_89, i64 %_91
  %_105 = ptrtoint ptr %_0.i48 to i64
  %_108 = and i64 %_105, 3
  %_109 = icmp eq i64 %_108, 0
  br i1 %_109, label %bb52, label %panic34

panic33:                                          ; preds = %bb53
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_38dfe01217306259c1fbfcdcf6779689) #8
  unreachable

bb52:                                             ; preds = %bb94
  %_384 = ptrtoint ptr %_0.i48 to i64
  %_387 = icmp eq i64 %_384, 0
  %_388 = and i1 %_387, true
  %_389 = xor i1 %_388, true
  br i1 %_389, label %bb95, label %panic35

panic34:                                          ; preds = %bb94
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_105, ptr align 8 @alloc_29701b17a23f4eab7ba10d06d3e5c0f8) #8
  unreachable

bb95:                                             ; preds = %bb52
  %_87 = load i32, ptr %_0.i48, align 4
  call void @decreaseKey(ptr %minHeap, i32 %v_0, i32 %_87) #9
  br label %bb44

panic35:                                          ; preds = %bb52
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_29701b17a23f4eab7ba10d06d3e5c0f8) #8
  unreachable

bb51:                                             ; preds = %bb44
  %_390 = load ptr, ptr %crawl, align 8
  %_391 = ptrtoint ptr %_390 to i64
  %_394 = icmp eq i64 %_391, 0
  %_395 = and i1 %_394, true
  %_396 = xor i1 %_395, true
  br i1 %_396, label %bb96, label %panic37

panic36:                                          ; preds = %bb44
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_99, ptr align 8 @alloc_c793ced0b7fb65153f17776fa56fae8c) #8
  unreachable

bb96:                                             ; preds = %bb51
  %11 = load ptr, ptr %crawl, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %_92 = load ptr, ptr %12, align 8
  store ptr %_92, ptr %crawl, align 8
  br label %bb23

panic37:                                          ; preds = %bb51
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c793ced0b7fb65153f17776fa56fae8c) #8
  unreachable

bb70:                                             ; preds = %bb7
  %_258 = ptrtoint ptr %_0.i47 to i64
  %_261 = icmp eq i64 %_258, 0
  %_262 = and i1 %_261, true
  %_263 = xor i1 %_262, true
  br i1 %_263, label %bb77, label %panic39

panic38:                                          ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_213, ptr align 8 @alloc_38d7457afcbbc7d5e92a11776bec45d9) #8
  unreachable

bb77:                                             ; preds = %bb70
  store i32 2147483647, ptr %_0.i47, align 4
  %_207 = ptrtoint ptr %minHeap to i64
  %_210 = and i64 %_207, 7
  %_211 = icmp eq i64 %_210, 0
  br i1 %_211, label %bb69, label %panic40

panic39:                                          ; preds = %bb70
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_38d7457afcbbc7d5e92a11776bec45d9) #8
  unreachable

bb69:                                             ; preds = %bb77
  %_265 = ptrtoint ptr %minHeap to i64
  %_268 = icmp eq i64 %_265, 0
  %_269 = and i1 %_268, true
  %_270 = xor i1 %_269, true
  br i1 %_270, label %bb78, label %panic41

panic40:                                          ; preds = %bb77
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_207, ptr align 8 @alloc_67684d4471a91bf0e9edd688bfe8fbf8) #8
  unreachable

bb78:                                             ; preds = %bb69
  %13 = getelementptr inbounds i8, ptr %minHeap, i64 16
  %_23 = load ptr, ptr %13, align 8
  %_25 = load i32, ptr %v, align 4
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_23, i64 %_24, i64 8) #9
  %_0.i58 = getelementptr inbounds ptr, ptr %_23, i64 %_24
  %_398 = ptrtoint ptr %_0.i58 to i64
  %_399 = icmp eq i64 %_398, 0
  %_400 = and i1 %_399, true
  %_401 = xor i1 %_400, true
  br i1 %_401, label %bb97, label %panic42

panic41:                                          ; preds = %bb69
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_67684d4471a91bf0e9edd688bfe8fbf8) #8
  unreachable

bb97:                                             ; preds = %bb78
  %_27 = load i32, ptr %v, align 4
  %_26 = call ptr @newMinHeapNode(i32 %_27, i32 2147483647) #9
  store ptr %_26, ptr %_0.i58, align 8
  %_28 = load i32, ptr %v, align 4
  %_201 = ptrtoint ptr %minHeap to i64
  %_204 = and i64 %_201, 7
  %_205 = icmp eq i64 %_204, 0
  br i1 %_205, label %bb68, label %panic43

panic42:                                          ; preds = %bb78
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3e3145a93db8c35c3974346bb5caf38c) #8
  unreachable

bb68:                                             ; preds = %bb97
  %_272 = ptrtoint ptr %minHeap to i64
  %_275 = icmp eq i64 %_272, 0
  %_276 = and i1 %_275, true
  %_277 = xor i1 %_276, true
  br i1 %_277, label %bb79, label %panic44

panic43:                                          ; preds = %bb97
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_201, ptr align 8 @alloc_d6dfd210df0bc532a73edba4ddbd44dc) #8
  unreachable

bb79:                                             ; preds = %bb68
  %14 = getelementptr inbounds i8, ptr %minHeap, i64 8
  %_30 = load ptr, ptr %14, align 8
  %_32 = load i32, ptr %v, align 4
  %_31 = sext i32 %_32 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hb9a10a894441aea9E"(ptr %_30, i64 %_31, i64 4) #9
  %_0.i = getelementptr inbounds i32, ptr %_30, i64 %_31
  %_195 = ptrtoint ptr %_0.i to i64
  %_198 = and i64 %_195, 3
  %_199 = icmp eq i64 %_198, 0
  br i1 %_199, label %bb67, label %panic45

panic44:                                          ; preds = %bb68
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d6dfd210df0bc532a73edba4ddbd44dc) #8
  unreachable

bb67:                                             ; preds = %bb79
  %_279 = ptrtoint ptr %_0.i to i64
  %_282 = icmp eq i64 %_279, 0
  %_283 = and i1 %_282, true
  %_284 = xor i1 %_283, true
  br i1 %_284, label %bb80, label %panic46

panic45:                                          ; preds = %bb79
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_195, ptr align 8 @alloc_cd20cf64ca55f7d6c4aaede3741fe1a0) #8
  unreachable

bb80:                                             ; preds = %bb67
  store i32 %_28, ptr %_0.i, align 4
  %15 = load i32, ptr %v, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %v, align 4
  br label %bb6

panic46:                                          ; preds = %bb67
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cd20cf64ca55f7d6c4aaede3741fe1a0) #8
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind nonlazybind
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #2

; alloc::raw_vec::RawVecInner<A>::reserve::do_reserve_and_handle
; Function Attrs: cold nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h85f3c31270bc2f64E"(ptr align 8, i64, i64, i64, i64) unnamed_addr #0

; alloc::raw_vec::RawVecInner<A>::try_allocate_in
; Function Attrs: nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hedaf02873af8e39fE"(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; alloc::raw_vec::handle_error
; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize
declare void @_ZN5alloc7raw_vec12handle_error17hf618f8e5cff958fbE(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; alloc::raw_vec::RawVecInner<A>::deallocate
; Function Attrs: nounwind nonlazybind
declare void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h51d2d8ddbed32564E"(ptr align 8, i64, i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #7

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #7

; core::panicking::panic_const::panic_const_div_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
