; ModuleID = '8ncd8qfvir3gx52l2gydsxrj4'
source_filename = "8ncd8qfvir3gx52l2gydsxrj4"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%HeadNode = type { ptr, ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_43078581ed1b9780b3615b99000b748e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\09\00\00\00" }>, align 8
@alloc_39d59aa2dd3901e5785ccaa6acf59b06 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00\0A\00\00\00" }>, align 8
@alloc_ebd611d92c9b0e57c9cd95064c24685f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00\05\00\00\00" }>, align 8
@alloc_78772e9746ba4e4bb2aaf51ea1bd1391 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\00\00\00\05\00\00\00" }>, align 8
@alloc_e402e427c789862e60eb92ba3d43ecff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00\10\00\00\00" }>, align 8
@alloc_0a558101e9e417295ee2684ff1387af9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\00\00\00(\00\00\00" }>, align 8
@alloc_22c66795373f88fd2c9cc6e601f1f040 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\00\00\00\15\00\00\00" }>, align 8
@alloc_7e04f738a278600e73cc23e547c7392f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\00\00\00\15\00\00\00" }>, align 8
@alloc_f1e77296c904d9a18450aa101f6c16ae = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\0F\00\00\00" }>, align 8
@alloc_d77093aecff765a553e8b88de6bf4da4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00[\00\00\00\12\00\00\00" }>, align 8
@alloc_af5a6df1d54b8f0bccfde6f4beaa6593 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00b\00\00\00\09\00\00\00" }>, align 8
@alloc_ee4e70f4c812222796fd5374fd036424 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00%\00\00\00" }>, align 8
@alloc_db4d7606cd927a81a840b7608f52bc9c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00\0D\00\00\00" }>, align 8
@alloc_8aaf0cbe5467e4838b8bc1d98e57daa9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00m\00\00\00\09\00\00\00" }>, align 8
@alloc_faa77273d412a3370397282c48abd832 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00{\00\00\00\09\00\00\00" }>, align 8
@alloc_1f89834aa51633d5e835100aeafb1684 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\13\00\00\00" }>, align 8
@alloc_9b027eb04371f146c129d6ee952cc573 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00s\00\00\00\1D\00\00\00" }>, align 8
@alloc_2fc622b2ef8caa994bd13df8a6c1e1fc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00w\00\00\00\0D\00\00\00" }>, align 8
@alloc_e1efab4cc6168379a03bbfc66ecb6b96 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00)\00\00\00" }>, align 8
@alloc_231d18bf0f47a31ca567f10458b2bad3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00t\00\00\00\11\00\00\00" }>, align 8
@alloc_fa7cb792d868834bda8b7d5900da621b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\87\00\00\00\09\00\00\00" }>, align 8
@alloc_b22d86c6e6153abed63fe73404dc6bd5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8C\00\00\00\10\00\00\00" }>, align 8
@alloc_52056281e2fe4abe6246a1e8f4e6f82c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8C\00\00\00,\00\00\00" }>, align 8
@alloc_2e1a4c2e8b0aa5dfee306c36e6159d43 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\91\00\00\00\11\00\00\00" }>, align 8
@alloc_ba71f3a87985b6dc225094258a04b217 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00&\00\00\00" }>, align 8
@alloc_da58f09e3f734d5c6ce6e90d7bb3d7c4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\00\00\00\09\00\00\00" }>, align 8
@alloc_4ffbbd574551373046b2bd0490b394e4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\97\00\00\00\05\00\00\00" }>, align 8
@alloc_e044a5c46133dfca47e33b3c91bde519 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9C\00\00\00\09\00\00\00" }>, align 8
@alloc_d648fd24623529931e8cba9e91a3932e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\00\0E\00\00\00" }>, align 8
@alloc_4401d6687f26502f9e5dac35359b246d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A4\00\00\009\00\00\00" }>, align 8
@alloc_7c4ecc6767942a2d2df45b1de4052e19 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D8\00\00\00(\00\00\00" }>, align 8
@alloc_099f67870780589f3a87a983c7d170ce = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D8\00\00\00\09\00\00\00" }>, align 8
@alloc_cc7ec345ae677e70486d604a5f65fe3a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D4\00\00\00)\00\00\00" }>, align 8
@alloc_7455e906dfe6fb6e425a2da78636b368 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D4\00\00\00\09\00\00\00" }>, align 8
@alloc_d46c342f3346ea1cf51f7b84b6ab0499 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CD\00\00\00)\00\00\00" }>, align 8
@alloc_8f3d271ab51c2a70fee594208d8013c8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CD\00\00\00\09\00\00\00" }>, align 8
@alloc_2d52299de4b8f1a386a72708b940d255 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BA\00\00\00\0C\00\00\00" }>, align 8
@alloc_35e9e91b2a798690703f6e918029b6ec = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BA\00\00\00%\00\00\00" }>, align 8
@alloc_8ce011f3550c0159d90918693bcd1734 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C5\00\00\00-\00\00\00" }>, align 8
@alloc_71a27ea91b4fff584d4397456e79d889 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C5\00\00\00\0D\00\00\00" }>, align 8
@alloc_4a134b06e9b47be322a2b96f32b686e2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BF\00\00\00-\00\00\00" }>, align 8
@alloc_c8cf0cb543b848005516a9c00dc52665 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BF\00\00\00\0D\00\00\00" }>, align 8
@alloc_6747418830935183c98f1fbe9d3ddc86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E8\00\00\00\12\00\00\00" }>, align 8
@alloc_5a837a29fc5514b50ed694a9f2c90bd3 = private unnamed_addr constant [14 x i8] c"\E7\A9\BA\E9\97\B4\E4\B8\8D\E8\B6\B3\0A\00", align 1
@alloc_7f940c1e67cff1525d773b655461f830 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\00(\00\00\00" }>, align 8
@alloc_a42d81e24c2da9ef80b1aaded9ea1c59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\12\01\00\00\0D\00\00\00" }>, align 8
@alloc_7de4af08d4536685d18f97063bdce674 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\005\01\00\00#\00\00\00" }>, align 8
@alloc_8ad1b303aa8e4bcf55a5c3ee40ce8d71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\01\00\00\08\00\00\00" }>, align 8
@alloc_7f6768920ffafbfd3d4b711fd8129dc8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\01\00\00#\00\00\00" }>, align 8
@alloc_6230f6ecc98f6b5266ec83688428fffb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\007\01\00\00\0E\00\00\00" }>, align 8
@alloc_9d8ca2860991ff5ed375999ba9654428 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\007\01\00\00-\00\00\00" }>, align 8
@alloc_549c217d07944275045a044c796d3f60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\01\00\00\08\00\00\00" }>, align 8
@alloc_15da091f69fb8b074c6b0f44ff4bf62c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\009\01\00\00#\00\00\00" }>, align 8
@alloc_18d7c0eef14cbd2016fc38fc3d8dadb8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\01\00\00\0E\00\00\00" }>, align 8
@alloc_e7b9ff7358e90942e9db0ed275ca7ea9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00:\01\00\00-\00\00\00" }>, align 8
@alloc_40b727cf9a6c3c7ccbaf37d050a8826c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\01\00\00\08\00\00\00" }>, align 8
@alloc_5d58a70a50756efb14dfc3161b5a63ca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\01\00\00%\00\00\00" }>, align 8
@alloc_599404fce73510c46ff7a6a69489feb9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\01\00\00\0E\00\00\00" }>, align 8
@alloc_b81d2e02760b533aeebc42d22b659249 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00=\01\00\00/\00\00\00" }>, align 8
@alloc_bd608a35efe08341c53110a99f5d7e3f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00@\01\00\00\09\00\00\00" }>, align 8
@alloc_568995c2a1fb4b55beb8174f632e3849 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00A\01\00\00\09\00\00\00" }>, align 8
@alloc_5a050186171316193772c283accba1bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\01\00\00\0C\00\00\00" }>, align 8
@alloc_3cbf27c285f143576354eaf4a934b539 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00W\01\00\00\16\00\00\00" }>, align 8
@alloc_ee9bab11c08a697ad41ad5ec48a5e073 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00]\01\00\00\16\00\00\00" }>, align 8
@alloc_0a987f8cdb89ddbaff58adac27085b75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00g\01\00\00\0D\00\00\00" }>, align 8
@alloc_63f5c0ddf58bf07cf8b12c1fa113fa8e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\01\00\00\0D\00\00\00" }>, align 8
@alloc_5f63468acce24dd711425cbaeaba5a3c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00d\01\00\00\12\00\00\00" }>, align 8
@alloc_446c3411c845259300fc379410d974cf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00d\01\00\000\00\00\00" }>, align 8
@alloc_d9e97a07c0063ed9751546bc1088f475 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00y\01\00\00\0C\00\00\00" }>, align 8
@alloc_815fdf8ffa17280c41f88c90b0fd73f1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00y\01\00\00'\00\00\00" }>, align 8
@alloc_2e0cc89920d2c73d7a75d95ecf5569ce = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\84\01\00\00\0D\00\00\00" }>, align 8
@alloc_19370c4d5230d64b4e5945b24e76659e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\85\01\00\00\09\00\00\00" }>, align 8
@alloc_405abc9f215a9f5f004fd1e355fe3214 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\01\00\00\10\00\00\00" }>, align 8
@alloc_15e54f178bdbd9fb624b004569421910 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\01\00\00!\00\00\00" }>, align 8
@alloc_ea6fe377e867891fc9d32994e86c176d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\01\00\00\09\00\00\00" }>, align 8
@alloc_e2960f97fb4a2582093a57aacb1c360e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AB\01\00\00\1B\00\00\00" }>, align 8
@alloc_cc8170fd3fda3df227a567649efc464b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AD\01\00\00\11\00\00\00" }>, align 8
@alloc_32fef97f1106aadadaa127446b1f80e8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AE\01\00\00\0D\00\00\00" }>, align 8
@alloc_61dcc62c7a965c1662ed9e982e5910b6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AF\01\00\00\11\00\00\00" }>, align 8
@alloc_091342c3d5d2dc232fe70665cec207da = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B3\01\00\00\13\00\00\00" }>, align 8
@alloc_6519e57884afc28dd353ac6b24dbbb17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B3\01\00\00\11\00\00\00" }>, align 8
@alloc_872211bc198586f5f528de59bf40d088 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B4\01\00\00\11\00\00\00" }>, align 8
@alloc_a96ff2bd35e161bdc6a086d6d7e6b8ed = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B0\01\00\00\11\00\00\00" }>, align 8
@alloc_f78cae2d5ca63e4118cbfba4b34f9e16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B1\01\00\00'\00\00\00" }>, align 8
@alloc_808734b77600ea1539bb6641e40a8b64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B1\01\00\00\11\00\00\00" }>, align 8
@alloc_ca781ffeb0282b323d11d2f8edee01e7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BA\01\00\00\12\00\00\00" }>, align 8
@alloc_527d8401c3c98c0ae477f1cff922fe7e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BB\01\00\00\13\00\00\00" }>, align 8
@alloc_9ad729cbeef756d493028ad50e0e3c78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BB\01\00\00\11\00\00\00" }>, align 8
@alloc_beb1bd4ecdc50f6545243bdc18edd914 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BC\01\00\00\18\00\00\00" }>, align 8
@alloc_71e4c061cae057e5f995feb31873dcb2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BD\01\00\00\11\00\00\00" }>, align 8
@alloc_8925e40fb390ae9270ccffeb5ed1a6b4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\01\00\00'\00\00\00" }>, align 8
@alloc_d370aa31c6e93da2f2ae1e7869b8070c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\01\00\00\11\00\00\00" }>, align 8
@alloc_f20c72fa589a389fdd2f6f3bc4c6f79c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A1\01\00\00\16\00\00\00" }>, align 8
@alloc_ae3ec5fc66784dd5ebea9822a021589c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A1\01\00\00\09\00\00\00" }>, align 8
@alloc_45dea327849c71961d3ee8f91a5d559d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A2\01\00\00\09\00\00\00" }>, align 8
@alloc_72aced54836ca2b3d4ae38d29635ee1d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\99\01\00\00\09\00\00\00" }>, align 8
@alloc_edf493a6e766b7bd74c9d44e7183f20c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\01\00\00\1E\00\00\00" }>, align 8
@alloc_893edf199422b4750eb8f7084f7cd5bd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\9A\01\00\00\09\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h4c461972c47ef5d8E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
  call void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1 @alloc_0ed0763d8bf93ac79247e07858374e35, i64 210) #6
  unreachable

bb1:                                              ; preds = %bb5
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ec0f9bcb090053eE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nounwind nonlazybind
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8fdd6069c00c206bE"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; Function Attrs: nounwind nonlazybind
define void @Swap(ptr %a, ptr %b) unnamed_addr #2 {
start:
  %c = alloca [4 x i8], align 4
  store i32 0, ptr %c, align 4
  %_26 = ptrtoint ptr %a to i64
  %_29 = and i64 %_26, 3
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb4, label %panic

bb4:                                              ; preds = %start
  %_32 = ptrtoint ptr %a to i64
  %_35 = icmp eq i64 %_32, 0
  %_36 = and i1 %_35, true
  %_37 = xor i1 %_36, true
  br i1 %_37, label %bb5, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_26, ptr align 8 @alloc_43078581ed1b9780b3615b99000b748e) #6
  unreachable

bb5:                                              ; preds = %bb4
  %_4 = load i32, ptr %a, align 4
  store i32 %_4, ptr %c, align 4
  %_20 = ptrtoint ptr %b to i64
  %_23 = and i64 %_20, 3
  %_24 = icmp eq i64 %_23, 0
  br i1 %_24, label %bb3, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_43078581ed1b9780b3615b99000b748e) #6
  unreachable

bb3:                                              ; preds = %bb5
  %_39 = ptrtoint ptr %b to i64
  %_42 = icmp eq i64 %_39, 0
  %_43 = and i1 %_42, true
  %_44 = xor i1 %_43, true
  br i1 %_44, label %bb6, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_20, ptr align 8 @alloc_39d59aa2dd3901e5785ccaa6acf59b06) #6
  unreachable

bb6:                                              ; preds = %bb3
  %_5 = load i32, ptr %b, align 4
  %_14 = ptrtoint ptr %a to i64
  %_17 = and i64 %_14, 3
  %_18 = icmp eq i64 %_17, 0
  br i1 %_18, label %bb2, label %panic4

panic3:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_39d59aa2dd3901e5785ccaa6acf59b06) #6
  unreachable

bb2:                                              ; preds = %bb6
  %_46 = ptrtoint ptr %a to i64
  %_49 = icmp eq i64 %_46, 0
  %_50 = and i1 %_49, true
  %_51 = xor i1 %_50, true
  br i1 %_51, label %bb7, label %panic5

panic4:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_14, ptr align 8 @alloc_ebd611d92c9b0e57c9cd95064c24685f) #6
  unreachable

bb7:                                              ; preds = %bb2
  store i32 %_5, ptr %a, align 4
  %_6 = load i32, ptr %c, align 4
  %_8 = ptrtoint ptr %b to i64
  %_11 = and i64 %_8, 3
  %_12 = icmp eq i64 %_11, 0
  br i1 %_12, label %bb1, label %panic6

panic5:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ebd611d92c9b0e57c9cd95064c24685f) #6
  unreachable

bb1:                                              ; preds = %bb7
  %_53 = ptrtoint ptr %b to i64
  %_56 = icmp eq i64 %_53, 0
  %_57 = and i1 %_56, true
  %_58 = xor i1 %_57, true
  br i1 %_58, label %bb8, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_8, ptr align 8 @alloc_78772e9746ba4e4bb2aaf51ea1bd1391) #6
  unreachable

bb8:                                              ; preds = %bb1
  store i32 %_6, ptr %b, align 4
  ret void

panic7:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_78772e9746ba4e4bb2aaf51ea1bd1391) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Bubble_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %flag = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %P = alloca [4 x i8], align 4
  store i32 0, ptr %P, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %flag, align 4
  %0 = sub i32 %N, 1
  store i32 %0, ptr %P, align 4
  br label %bb1

bb1:                                              ; preds = %bb13, %start
  %_7 = load i32, ptr %P, align 4
  %_6 = icmp sgt i32 %_7, 0
  br i1 %_6, label %bb2, label %bb14

bb14:                                             ; preds = %bb12, %bb1
  ret void

bb2:                                              ; preds = %bb1
  store i32 0, ptr %flag, align 4
  store i32 0, ptr %i, align 4
  br label %bb3

bb3:                                              ; preds = %bb11, %bb2
  %_9 = load i32, ptr %i, align 4
  %_10 = load i32, ptr %P, align 4
  %_8 = icmp slt i32 %_9, %_10
  br i1 %_8, label %bb4, label %bb12

bb12:                                             ; preds = %bb3
  %_33 = load i32, ptr %flag, align 4
  %1 = icmp eq i32 %_33, 0
  br i1 %1, label %bb14, label %bb13

bb4:                                              ; preds = %bb3
  %_15 = load i32, ptr %i, align 4
  %_14 = sext i32 %_15 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_14, i64 4) #7
  %_0.i8 = getelementptr inbounds i32, ptr %A, i64 %_14
  %_41 = ptrtoint ptr %_0.i8 to i64
  %_44 = and i64 %_41, 3
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb16, label %panic

bb13:                                             ; preds = %bb12
  %2 = load i32, ptr %P, align 4
  %3 = sub i32 %2, 1
  store i32 %3, ptr %P, align 4
  br label %bb1

bb16:                                             ; preds = %bb4
  %_47 = ptrtoint ptr %_0.i8 to i64
  %_50 = icmp eq i64 %_47, 0
  %_51 = and i1 %_50, true
  %_52 = xor i1 %_51, true
  br i1 %_52, label %bb17, label %panic1

panic:                                            ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_41, ptr align 8 @alloc_e402e427c789862e60eb92ba3d43ecff) #6
  unreachable

bb17:                                             ; preds = %bb16
  %_12 = load i32, ptr %_0.i8, align 4
  %_20 = load i32, ptr %i, align 4
  %_19 = add i32 %_20, 1
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_18, i64 4) #7
  %_0.i7 = getelementptr inbounds i32, ptr %A, i64 %_18
  %_35 = ptrtoint ptr %_0.i7 to i64
  %_38 = and i64 %_35, 3
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb15, label %panic2

panic1:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e402e427c789862e60eb92ba3d43ecff) #6
  unreachable

bb15:                                             ; preds = %bb17
  %_54 = ptrtoint ptr %_0.i7 to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb18, label %panic3

panic2:                                           ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_35, ptr align 8 @alloc_0a558101e9e417295ee2684ff1387af9) #6
  unreachable

bb18:                                             ; preds = %bb15
  %_16 = load i32, ptr %_0.i7, align 4
  %_11 = icmp sgt i32 %_12, %_16
  br i1 %_11, label %bb7, label %bb11

panic3:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0a558101e9e417295ee2684ff1387af9) #6
  unreachable

bb11:                                             ; preds = %bb19, %bb18
  %4 = load i32, ptr %i, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %i, align 4
  br label %bb3

bb7:                                              ; preds = %bb18
  %_26 = load i32, ptr %i, align 4
  %_25 = sext i32 %_26 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_25, i64 4) #7
  %_0.i6 = getelementptr inbounds i32, ptr %A, i64 %_25
  %_66 = ptrtoint ptr %_0.i6 to i64
  %_67 = icmp eq i64 %_66, 0
  %_68 = and i1 %_67, true
  %_69 = xor i1 %_68, true
  br i1 %_69, label %bb20, label %panic4

bb20:                                             ; preds = %bb7
  %_32 = load i32, ptr %i, align 4
  %_31 = add i32 %_32, 1
  %_30 = sext i32 %_31 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_30, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_30
  %_61 = ptrtoint ptr %_0.i to i64
  %_62 = icmp eq i64 %_61, 0
  %_63 = and i1 %_62, true
  %_64 = xor i1 %_63, true
  br i1 %_64, label %bb19, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_22c66795373f88fd2c9cc6e601f1f040) #6
  unreachable

bb19:                                             ; preds = %bb20
  call void @Swap(ptr %_0.i6, ptr %_0.i) #7
  store i32 1, ptr %flag, align 4
  br label %bb11

panic5:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7e04f738a278600e73cc23e547c7392f) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Insertion_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %P = alloca [4 x i8], align 4
  %Tmp = alloca [4 x i8], align 4
  store i32 0, ptr %Tmp, align 4
  store i32 0, ptr %P, align 4
  store i32 0, ptr %i, align 4
  store i32 1, ptr %P, align 4
  br label %bb1

bb1:                                              ; preds = %bb22, %start
  %_7 = load i32, ptr %P, align 4
  %_6 = icmp slt i32 %_7, %N
  br i1 %_6, label %bb2, label %bb12

bb12:                                             ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_11 = load i32, ptr %P, align 4
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_10, i64 4) #7
  %_0.i13 = getelementptr inbounds i32, ptr %A, i64 %_10
  %_59 = ptrtoint ptr %_0.i13 to i64
  %_62 = and i64 %_59, 3
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb17, label %panic

bb17:                                             ; preds = %bb2
  %_65 = ptrtoint ptr %_0.i13 to i64
  %_68 = icmp eq i64 %_65, 0
  %_69 = and i1 %_68, true
  %_70 = xor i1 %_69, true
  br i1 %_70, label %bb18, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_59, ptr align 8 @alloc_f1e77296c904d9a18450aa101f6c16ae) #6
  unreachable

bb18:                                             ; preds = %bb17
  %_8 = load i32, ptr %_0.i13, align 4
  store i32 %_8, ptr %Tmp, align 4
  %_12 = load i32, ptr %P, align 4
  store i32 %_12, ptr %i, align 4
  br label %bb4

panic1:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f1e77296c904d9a18450aa101f6c16ae) #6
  unreachable

bb4:                                              ; preds = %bb21, %bb18
  %_14 = load i32, ptr %i, align 4
  %_13 = icmp sgt i32 %_14, 0
  br i1 %_13, label %bb5, label %bb10

bb10:                                             ; preds = %bb19, %bb4
  %_30 = load i32, ptr %Tmp, align 4
  %_33 = load i32, ptr %i, align 4
  %_32 = sext i32 %_33 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_32, i64 4) #7
  %_0.i11 = getelementptr inbounds i32, ptr %A, i64 %_32
  %_35 = ptrtoint ptr %_0.i11 to i64
  %_38 = and i64 %_35, 3
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb13, label %panic4

bb5:                                              ; preds = %bb4
  %_20 = load i32, ptr %i, align 4
  %_19 = sub i32 %_20, 1
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_18, i64 4) #7
  %_0.i12 = getelementptr inbounds i32, ptr %A, i64 %_18
  %_53 = ptrtoint ptr %_0.i12 to i64
  %_56 = and i64 %_53, 3
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb16, label %panic2

bb16:                                             ; preds = %bb5
  %_72 = ptrtoint ptr %_0.i12 to i64
  %_75 = icmp eq i64 %_72, 0
  %_76 = and i1 %_75, true
  %_77 = xor i1 %_76, true
  br i1 %_77, label %bb19, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_53, ptr align 8 @alloc_d77093aecff765a553e8b88de6bf4da4) #6
  unreachable

bb19:                                             ; preds = %bb16
  %_16 = load i32, ptr %_0.i12, align 4
  %_21 = load i32, ptr %Tmp, align 4
  %_15 = icmp sgt i32 %_16, %_21
  br i1 %_15, label %bb7, label %bb10

panic3:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d77093aecff765a553e8b88de6bf4da4) #6
  unreachable

bb7:                                              ; preds = %bb19
  %_26 = load i32, ptr %i, align 4
  %_25 = sub i32 %_26, 1
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_24, i64 4) #7
  %_0.i10 = getelementptr inbounds i32, ptr %A, i64 %_24
  %_47 = ptrtoint ptr %_0.i10 to i64
  %_50 = and i64 %_47, 3
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %bb15, label %panic6

bb13:                                             ; preds = %bb10
  %_93 = ptrtoint ptr %_0.i11 to i64
  %_96 = icmp eq i64 %_93, 0
  %_97 = and i1 %_96, true
  %_98 = xor i1 %_97, true
  br i1 %_98, label %bb22, label %panic5

panic4:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_35, ptr align 8 @alloc_af5a6df1d54b8f0bccfde6f4beaa6593) #6
  unreachable

bb22:                                             ; preds = %bb13
  store i32 %_30, ptr %_0.i11, align 4
  %0 = load i32, ptr %P, align 4
  %1 = add i32 %0, 1
  store i32 %1, ptr %P, align 4
  br label %bb1

panic5:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_af5a6df1d54b8f0bccfde6f4beaa6593) #6
  unreachable

bb15:                                             ; preds = %bb7
  %_79 = ptrtoint ptr %_0.i10 to i64
  %_82 = icmp eq i64 %_79, 0
  %_83 = and i1 %_82, true
  %_84 = xor i1 %_83, true
  br i1 %_84, label %bb20, label %panic7

panic6:                                           ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_47, ptr align 8 @alloc_ee4e70f4c812222796fd5374fd036424) #6
  unreachable

bb20:                                             ; preds = %bb15
  %_22 = load i32, ptr %_0.i10, align 4
  %_29 = load i32, ptr %i, align 4
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_28, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_28
  %_41 = ptrtoint ptr %_0.i to i64
  %_44 = and i64 %_41, 3
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb14, label %panic8

panic7:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee4e70f4c812222796fd5374fd036424) #6
  unreachable

bb14:                                             ; preds = %bb20
  %_86 = ptrtoint ptr %_0.i to i64
  %_89 = icmp eq i64 %_86, 0
  %_90 = and i1 %_89, true
  %_91 = xor i1 %_90, true
  br i1 %_91, label %bb21, label %panic9

panic8:                                           ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_41, ptr align 8 @alloc_db4d7606cd927a81a840b7608f52bc9c) #6
  unreachable

bb21:                                             ; preds = %bb14
  store i32 %_22, ptr %_0.i, align 4
  %2 = load i32, ptr %i, align 4
  %3 = sub i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb4

panic9:                                           ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_db4d7606cd927a81a840b7608f52bc9c) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Shell_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %Tmp = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  %P = alloca [4 x i8], align 4
  %D = alloca [4 x i8], align 4
  store i32 0, ptr %D, align 4
  store i32 0, ptr %P, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %Tmp, align 4
  %_10 = icmp eq i32 %N, -2147483648
  %_11 = and i1 false, %_10
  br i1 %_11, label %panic, label %bb2

bb2:                                              ; preds = %start
  %0 = sdiv i32 %N, 2
  store i32 %0, ptr %D, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_8aaf0cbe5467e4838b8bc1d98e57daa9) #6
  unreachable

bb3:                                              ; preds = %bb18, %bb2
  %_13 = load i32, ptr %D, align 4
  %_12 = icmp sgt i32 %_13, 0
  br i1 %_12, label %bb4, label %bb19

bb19:                                             ; preds = %bb3
  ret void

bb4:                                              ; preds = %bb3
  %_14 = load i32, ptr %D, align 4
  store i32 %_14, ptr %P, align 4
  br label %bb5

bb5:                                              ; preds = %bb29, %bb4
  %_16 = load i32, ptr %P, align 4
  %_15 = icmp slt i32 %_16, %N
  br i1 %_15, label %bb6, label %bb16

bb16:                                             ; preds = %bb5
  %1 = load i32, ptr %D, align 4
  %_50 = icmp eq i32 %1, -2147483648
  %_51 = and i1 false, %_50
  br i1 %_51, label %panic1, label %bb18

bb6:                                              ; preds = %bb5
  %_20 = load i32, ptr %P, align 4
  %_19 = sext i32 %_20 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_19, i64 4) #7
  %_0.i15 = getelementptr inbounds i32, ptr %A, i64 %_19
  %_77 = ptrtoint ptr %_0.i15 to i64
  %_80 = and i64 %_77, 3
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %bb24, label %panic2

bb18:                                             ; preds = %bb16
  %2 = load i32, ptr %D, align 4
  %3 = sdiv i32 %2, 2
  store i32 %3, ptr %D, align 4
  br label %bb3

panic1:                                           ; preds = %bb16
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_faa77273d412a3370397282c48abd832) #6
  unreachable

bb24:                                             ; preds = %bb6
  %_83 = ptrtoint ptr %_0.i15 to i64
  %_86 = icmp eq i64 %_83, 0
  %_87 = and i1 %_86, true
  %_88 = xor i1 %_87, true
  br i1 %_88, label %bb25, label %panic3

panic2:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_77, ptr align 8 @alloc_1f89834aa51633d5e835100aeafb1684) #6
  unreachable

bb25:                                             ; preds = %bb24
  %_17 = load i32, ptr %_0.i15, align 4
  store i32 %_17, ptr %Tmp, align 4
  %_21 = load i32, ptr %P, align 4
  store i32 %_21, ptr %i, align 4
  br label %bb8

panic3:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1f89834aa51633d5e835100aeafb1684) #6
  unreachable

bb8:                                              ; preds = %bb28, %bb25
  %_23 = load i32, ptr %i, align 4
  %_24 = load i32, ptr %D, align 4
  %_22 = icmp sge i32 %_23, %_24
  br i1 %_22, label %bb9, label %bb14

bb14:                                             ; preds = %bb26, %bb8
  %_43 = load i32, ptr %Tmp, align 4
  %_46 = load i32, ptr %i, align 4
  %_45 = sext i32 %_46 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_45, i64 4) #7
  %_0.i13 = getelementptr inbounds i32, ptr %A, i64 %_45
  %_53 = ptrtoint ptr %_0.i13 to i64
  %_56 = and i64 %_53, 3
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb20, label %panic6

bb9:                                              ; preds = %bb8
  %_30 = load i32, ptr %i, align 4
  %_31 = load i32, ptr %D, align 4
  %_29 = sub i32 %_30, %_31
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_28, i64 4) #7
  %_0.i14 = getelementptr inbounds i32, ptr %A, i64 %_28
  %_71 = ptrtoint ptr %_0.i14 to i64
  %_74 = and i64 %_71, 3
  %_75 = icmp eq i64 %_74, 0
  br i1 %_75, label %bb23, label %panic4

bb23:                                             ; preds = %bb9
  %_90 = ptrtoint ptr %_0.i14 to i64
  %_93 = icmp eq i64 %_90, 0
  %_94 = and i1 %_93, true
  %_95 = xor i1 %_94, true
  br i1 %_95, label %bb26, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_71, ptr align 8 @alloc_9b027eb04371f146c129d6ee952cc573) #6
  unreachable

bb26:                                             ; preds = %bb23
  %_26 = load i32, ptr %_0.i14, align 4
  %_32 = load i32, ptr %Tmp, align 4
  %_25 = icmp sgt i32 %_26, %_32
  br i1 %_25, label %bb11, label %bb14

panic5:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9b027eb04371f146c129d6ee952cc573) #6
  unreachable

bb11:                                             ; preds = %bb26
  %_37 = load i32, ptr %i, align 4
  %_38 = load i32, ptr %D, align 4
  %_36 = sub i32 %_37, %_38
  %_35 = sext i32 %_36 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_35, i64 4) #7
  %_0.i12 = getelementptr inbounds i32, ptr %A, i64 %_35
  %_65 = ptrtoint ptr %_0.i12 to i64
  %_68 = and i64 %_65, 3
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %bb22, label %panic8

bb20:                                             ; preds = %bb14
  %_111 = ptrtoint ptr %_0.i13 to i64
  %_114 = icmp eq i64 %_111, 0
  %_115 = and i1 %_114, true
  %_116 = xor i1 %_115, true
  br i1 %_116, label %bb29, label %panic7

panic6:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_53, ptr align 8 @alloc_2fc622b2ef8caa994bd13df8a6c1e1fc) #6
  unreachable

bb29:                                             ; preds = %bb20
  store i32 %_43, ptr %_0.i13, align 4
  %4 = load i32, ptr %P, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %P, align 4
  br label %bb5

panic7:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2fc622b2ef8caa994bd13df8a6c1e1fc) #6
  unreachable

bb22:                                             ; preds = %bb11
  %_97 = ptrtoint ptr %_0.i12 to i64
  %_100 = icmp eq i64 %_97, 0
  %_101 = and i1 %_100, true
  %_102 = xor i1 %_101, true
  br i1 %_102, label %bb27, label %panic9

panic8:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_65, ptr align 8 @alloc_e1efab4cc6168379a03bbfc66ecb6b96) #6
  unreachable

bb27:                                             ; preds = %bb22
  %_33 = load i32, ptr %_0.i12, align 4
  %_41 = load i32, ptr %i, align 4
  %_40 = sext i32 %_41 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_40, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_40
  %_59 = ptrtoint ptr %_0.i to i64
  %_62 = and i64 %_59, 3
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb21, label %panic10

panic9:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e1efab4cc6168379a03bbfc66ecb6b96) #6
  unreachable

bb21:                                             ; preds = %bb27
  %_104 = ptrtoint ptr %_0.i to i64
  %_107 = icmp eq i64 %_104, 0
  %_108 = and i1 %_107, true
  %_109 = xor i1 %_108, true
  br i1 %_109, label %bb28, label %panic11

panic10:                                          ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_59, ptr align 8 @alloc_231d18bf0f47a31ca567f10458b2bad3) #6
  unreachable

bb28:                                             ; preds = %bb21
  store i32 %_33, ptr %_0.i, align 4
  %_42 = load i32, ptr %D, align 4
  %6 = load i32, ptr %i, align 4
  %7 = sub i32 %6, %_42
  store i32 %7, ptr %i, align 4
  br label %bb8

panic11:                                          ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_231d18bf0f47a31ca567f10458b2bad3) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @PercDown(ptr %A, i32 %p, i32 %N) unnamed_addr #2 {
start:
  %X = alloca [4 x i8], align 4
  %child = alloca [4 x i8], align 4
  %parent = alloca [4 x i8], align 4
  store i32 0, ptr %parent, align 4
  store i32 0, ptr %child, align 4
  store i32 0, ptr %X, align 4
  %_9 = sext i32 %p to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_9, i64 4) #7
  %_0.i19 = getelementptr inbounds i32, ptr %A, i64 %_9
  %_85 = ptrtoint ptr %_0.i19 to i64
  %_88 = and i64 %_85, 3
  %_89 = icmp eq i64 %_88, 0
  br i1 %_89, label %bb21, label %panic

bb21:                                             ; preds = %start
  %_91 = ptrtoint ptr %_0.i19 to i64
  %_94 = icmp eq i64 %_91, 0
  %_95 = and i1 %_94, true
  %_96 = xor i1 %_95, true
  br i1 %_96, label %bb22, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_85, ptr align 8 @alloc_fa7cb792d868834bda8b7d5900da621b) #6
  unreachable

bb22:                                             ; preds = %bb21
  %_7 = load i32, ptr %_0.i19, align 4
  store i32 %_7, ptr %X, align 4
  store i32 %p, ptr %parent, align 4
  br label %bb2

panic1:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fa7cb792d868834bda8b7d5900da621b) #6
  unreachable

bb2:                                              ; preds = %bb27, %bb22
  %_13 = load i32, ptr %parent, align 4
  %_12 = mul i32 %_13, 2
  %_11 = add i32 %_12, 1
  %_14 = sub i32 %N, 1
  %_10 = icmp sle i32 %_11, %_14
  br i1 %_10, label %bb3, label %bb13

bb13:                                             ; preds = %bb25, %bb2
  %_44 = load i32, ptr %X, align 4
  %_47 = load i32, ptr %parent, align 4
  %_46 = sext i32 %_47 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_46, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_46
  %_49 = ptrtoint ptr %_0.i to i64
  %_52 = and i64 %_49, 3
  %_53 = icmp eq i64 %_52, 0
  br i1 %_53, label %bb15, label %panic12

bb3:                                              ; preds = %bb2
  %_16 = load i32, ptr %parent, align 4
  %_15 = mul i32 %_16, 2
  %0 = add i32 %_15, 1
  store i32 %0, ptr %child, align 4
  %_18 = load i32, ptr %child, align 4
  %_19 = sub i32 %N, 1
  %_17 = icmp ne i32 %_18, %_19
  br i1 %_17, label %bb4, label %bb8

bb8:                                              ; preds = %bb7, %bb24, %bb3
  %_31 = load i32, ptr %X, align 4
  %_35 = load i32, ptr %child, align 4
  %_34 = sext i32 %_35 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_34, i64 4) #7
  %_0.i16 = getelementptr inbounds i32, ptr %A, i64 %_34
  %_67 = ptrtoint ptr %_0.i16 to i64
  %_70 = and i64 %_67, 3
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %bb18, label %panic6

bb4:                                              ; preds = %bb3
  %_24 = load i32, ptr %child, align 4
  %_23 = sext i32 %_24 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_23, i64 4) #7
  %_0.i18 = getelementptr inbounds i32, ptr %A, i64 %_23
  %_79 = ptrtoint ptr %_0.i18 to i64
  %_82 = and i64 %_79, 3
  %_83 = icmp eq i64 %_82, 0
  br i1 %_83, label %bb20, label %panic2

bb20:                                             ; preds = %bb4
  %_98 = ptrtoint ptr %_0.i18 to i64
  %_101 = icmp eq i64 %_98, 0
  %_102 = and i1 %_101, true
  %_103 = xor i1 %_102, true
  br i1 %_103, label %bb23, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_79, ptr align 8 @alloc_b22d86c6e6153abed63fe73404dc6bd5) #6
  unreachable

bb23:                                             ; preds = %bb20
  %_21 = load i32, ptr %_0.i18, align 4
  %_29 = load i32, ptr %child, align 4
  %_28 = add i32 %_29, 1
  %_27 = sext i32 %_28 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_27, i64 4) #7
  %_0.i17 = getelementptr inbounds i32, ptr %A, i64 %_27
  %_73 = ptrtoint ptr %_0.i17 to i64
  %_76 = and i64 %_73, 3
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb19, label %panic4

panic3:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b22d86c6e6153abed63fe73404dc6bd5) #6
  unreachable

bb19:                                             ; preds = %bb23
  %_105 = ptrtoint ptr %_0.i17 to i64
  %_108 = icmp eq i64 %_105, 0
  %_109 = and i1 %_108, true
  %_110 = xor i1 %_109, true
  br i1 %_110, label %bb24, label %panic5

panic4:                                           ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_73, ptr align 8 @alloc_52056281e2fe4abe6246a1e8f4e6f82c) #6
  unreachable

bb24:                                             ; preds = %bb19
  %_25 = load i32, ptr %_0.i17, align 4
  %_20 = icmp slt i32 %_21, %_25
  br i1 %_20, label %bb7, label %bb8

panic5:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_52056281e2fe4abe6246a1e8f4e6f82c) #6
  unreachable

bb7:                                              ; preds = %bb24
  %1 = load i32, ptr %child, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %child, align 4
  br label %bb8

bb18:                                             ; preds = %bb8
  %_112 = ptrtoint ptr %_0.i16 to i64
  %_115 = icmp eq i64 %_112, 0
  %_116 = and i1 %_115, true
  %_117 = xor i1 %_116, true
  br i1 %_117, label %bb25, label %panic7

panic6:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_67, ptr align 8 @alloc_2e1a4c2e8b0aa5dfee306c36e6159d43) #6
  unreachable

bb25:                                             ; preds = %bb18
  %_32 = load i32, ptr %_0.i16, align 4
  %_30 = icmp sge i32 %_31, %_32
  br i1 %_30, label %bb13, label %bb10

panic7:                                           ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2e1a4c2e8b0aa5dfee306c36e6159d43) #6
  unreachable

bb10:                                             ; preds = %bb25
  %_39 = load i32, ptr %child, align 4
  %_38 = sext i32 %_39 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_38, i64 4) #7
  %_0.i15 = getelementptr inbounds i32, ptr %A, i64 %_38
  %_61 = ptrtoint ptr %_0.i15 to i64
  %_64 = and i64 %_61, 3
  %_65 = icmp eq i64 %_64, 0
  br i1 %_65, label %bb17, label %panic8

bb17:                                             ; preds = %bb10
  %_119 = ptrtoint ptr %_0.i15 to i64
  %_122 = icmp eq i64 %_119, 0
  %_123 = and i1 %_122, true
  %_124 = xor i1 %_123, true
  br i1 %_124, label %bb26, label %panic9

panic8:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_61, ptr align 8 @alloc_ba71f3a87985b6dc225094258a04b217) #6
  unreachable

bb26:                                             ; preds = %bb17
  %_36 = load i32, ptr %_0.i15, align 4
  %_42 = load i32, ptr %parent, align 4
  %_41 = sext i32 %_42 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_41, i64 4) #7
  %_0.i14 = getelementptr inbounds i32, ptr %A, i64 %_41
  %_55 = ptrtoint ptr %_0.i14 to i64
  %_58 = and i64 %_55, 3
  %_59 = icmp eq i64 %_58, 0
  br i1 %_59, label %bb16, label %panic10

panic9:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ba71f3a87985b6dc225094258a04b217) #6
  unreachable

bb16:                                             ; preds = %bb26
  %_126 = ptrtoint ptr %_0.i14 to i64
  %_129 = icmp eq i64 %_126, 0
  %_130 = and i1 %_129, true
  %_131 = xor i1 %_130, true
  br i1 %_131, label %bb27, label %panic11

panic10:                                          ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_55, ptr align 8 @alloc_da58f09e3f734d5c6ce6e90d7bb3d7c4) #6
  unreachable

bb27:                                             ; preds = %bb16
  store i32 %_36, ptr %_0.i14, align 4
  %_43 = load i32, ptr %child, align 4
  store i32 %_43, ptr %parent, align 4
  br label %bb2

panic11:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_da58f09e3f734d5c6ce6e90d7bb3d7c4) #6
  unreachable

bb15:                                             ; preds = %bb13
  %_133 = ptrtoint ptr %_0.i to i64
  %_136 = icmp eq i64 %_133, 0
  %_137 = and i1 %_136, true
  %_138 = xor i1 %_137, true
  br i1 %_138, label %bb28, label %panic13

panic12:                                          ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_49, ptr align 8 @alloc_4ffbbd574551373046b2bd0490b394e4) #6
  unreachable

bb28:                                             ; preds = %bb15
  store i32 %_44, ptr %_0.i, align 4
  ret void

panic13:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4ffbbd574551373046b2bd0490b394e4) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Heap_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  %_7 = icmp eq i32 %N, -2147483648
  %_8 = and i1 false, %_7
  br i1 %_8, label %panic, label %bb2

bb2:                                              ; preds = %start
  %0 = sdiv i32 %N, 2
  store i32 %0, ptr %i, align 4
  br label %bb3

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_e044a5c46133dfca47e33b3c91bde519) #6
  unreachable

bb3:                                              ; preds = %bb4, %bb2
  %_10 = load i32, ptr %i, align 4
  %_9 = icmp sge i32 %_10, 0
  br i1 %_9, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %1 = sub i32 %N, 1
  store i32 %1, ptr %i, align 4
  br label %bb7

bb4:                                              ; preds = %bb3
  %_12 = load i32, ptr %i, align 4
  call void @PercDown(ptr %A, i32 %_12, i32 %N) #7
  %2 = load i32, ptr %i, align 4
  %3 = sub i32 %2, 1
  store i32 %3, ptr %i, align 4
  br label %bb3

bb7:                                              ; preds = %bb14, %bb6
  %_14 = load i32, ptr %i, align 4
  %_13 = icmp sgt i32 %_14, 0
  br i1 %_13, label %bb8, label %bb13

bb13:                                             ; preds = %bb7
  ret void

bb8:                                              ; preds = %bb7
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 0, i64 4) #7
  %_33 = ptrtoint ptr %A to i64
  %_34 = icmp eq i64 %_33, 0
  %_35 = and i1 %_34, true
  %_36 = xor i1 %_35, true
  br i1 %_36, label %bb15, label %panic1

bb15:                                             ; preds = %bb8
  %_24 = load i32, ptr %i, align 4
  %_23 = sext i32 %_24 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_23, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_23
  %_28 = ptrtoint ptr %_0.i to i64
  %_29 = icmp eq i64 %_28, 0
  %_30 = and i1 %_29, true
  %_31 = xor i1 %_30, true
  br i1 %_31, label %bb14, label %panic2

panic1:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d648fd24623529931e8cba9e91a3932e) #6
  unreachable

bb14:                                             ; preds = %bb15
  call void @Swap(ptr %A, ptr %_0.i) #7
  %_26 = load i32, ptr %i, align 4
  call void @PercDown(ptr %A, i32 0, i32 %_26) #7
  %4 = load i32, ptr %i, align 4
  %5 = sub i32 %4, 1
  store i32 %5, ptr %i, align 4
  br label %bb7

panic2:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4401d6687f26502f9e5dac35359b246d) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Merge(ptr %A, ptr %TmpA, i32 %0, i32 %1, i32 %2) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %Tmp = alloca [4 x i8], align 4
  %Num = alloca [4 x i8], align 4
  %LeftEnd = alloca [4 x i8], align 4
  %RightEnd = alloca [4 x i8], align 4
  %R = alloca [4 x i8], align 4
  %L = alloca [4 x i8], align 4
  store i32 %0, ptr %L, align 4
  store i32 %1, ptr %R, align 4
  store i32 %2, ptr %RightEnd, align 4
  store i32 0, ptr %LeftEnd, align 4
  store i32 0, ptr %Num, align 4
  store i32 0, ptr %Tmp, align 4
  store i32 0, ptr %i, align 4
  %_10 = load i32, ptr %R, align 4
  %3 = sub i32 %_10, 1
  store i32 %3, ptr %LeftEnd, align 4
  %_11 = load i32, ptr %L, align 4
  store i32 %_11, ptr %Tmp, align 4
  %_13 = load i32, ptr %RightEnd, align 4
  %_14 = load i32, ptr %L, align 4
  %_12 = sub i32 %_13, %_14
  %4 = add i32 %_12, 1
  store i32 %4, ptr %Num, align 4
  br label %bb1

bb1:                                              ; preds = %bb41, %bb43, %start
  %_16 = load i32, ptr %L, align 4
  %_17 = load i32, ptr %LeftEnd, align 4
  %_15 = icmp sle i32 %_16, %_17
  br i1 %_15, label %bb2, label %bb12

bb12:                                             ; preds = %bb45, %bb2, %bb1
  %_49 = load i32, ptr %L, align 4
  %_50 = load i32, ptr %LeftEnd, align 4
  %_48 = icmp sle i32 %_49, %_50
  br i1 %_48, label %bb13, label %bb16

bb2:                                              ; preds = %bb1
  %_19 = load i32, ptr %R, align 4
  %_20 = load i32, ptr %RightEnd, align 4
  %_18 = icmp sle i32 %_19, %_20
  br i1 %_18, label %bb3, label %bb12

bb3:                                              ; preds = %bb2
  %_25 = load i32, ptr %L, align 4
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_24, i64 4) #7
  %_0.i28 = getelementptr inbounds i32, ptr %A, i64 %_24
  %_149 = ptrtoint ptr %_0.i28 to i64
  %_152 = and i64 %_149, 3
  %_153 = icmp eq i64 %_152, 0
  br i1 %_153, label %bb37, label %panic12

bb16:                                             ; preds = %bb47, %bb12
  %_61 = load i32, ptr %R, align 4
  %_62 = load i32, ptr %RightEnd, align 4
  %_60 = icmp sle i32 %_61, %_62
  br i1 %_60, label %bb17, label %bb20

bb13:                                             ; preds = %bb12
  %fresh4 = load i32, ptr %L, align 4
  %_52 = load i32, ptr %L, align 4
  %5 = add i32 %_52, 1
  store i32 %5, ptr %L, align 4
  %fresh5 = load i32, ptr %Tmp, align 4
  %_54 = load i32, ptr %Tmp, align 4
  %6 = add i32 %_54, 1
  store i32 %6, ptr %Tmp, align 4
  %_57 = sext i32 %fresh4 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_57, i64 4) #7
  %_0.i30 = getelementptr inbounds i32, ptr %A, i64 %_57
  %_113 = ptrtoint ptr %_0.i30 to i64
  %_116 = and i64 %_113, 3
  %_117 = icmp eq i64 %_116, 0
  br i1 %_117, label %bb31, label %panic8

bb20:                                             ; preds = %bb16
  store i32 0, ptr %i, align 4
  br label %bb21

bb17:                                             ; preds = %bb16
  %fresh6 = load i32, ptr %R, align 4
  %_64 = load i32, ptr %R, align 4
  %7 = add i32 %_64, 1
  store i32 %7, ptr %R, align 4
  %fresh7 = load i32, ptr %Tmp, align 4
  %_66 = load i32, ptr %Tmp, align 4
  %8 = add i32 %_66, 1
  store i32 %8, ptr %Tmp, align 4
  %_69 = sext i32 %fresh6 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_69, i64 4) #7
  %_0.i32 = getelementptr inbounds i32, ptr %A, i64 %_69
  %_101 = ptrtoint ptr %_0.i32 to i64
  %_104 = and i64 %_101, 3
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb29, label %panic4

bb21:                                             ; preds = %bb49, %bb20
  %_73 = load i32, ptr %i, align 4
  %_74 = load i32, ptr %Num, align 4
  %_72 = icmp slt i32 %_73, %_74
  br i1 %_72, label %bb22, label %bb25

bb25:                                             ; preds = %bb21
  ret void

bb22:                                             ; preds = %bb21
  %_78 = load i32, ptr %RightEnd, align 4
  %_77 = sext i32 %_78 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_77, i64 4) #7
  %_0.i34 = getelementptr inbounds i32, ptr %TmpA, i64 %_77
  %_89 = ptrtoint ptr %_0.i34 to i64
  %_92 = and i64 %_89, 3
  %_93 = icmp eq i64 %_92, 0
  br i1 %_93, label %bb27, label %panic

bb27:                                             ; preds = %bb22
  %_225 = ptrtoint ptr %_0.i34 to i64
  %_228 = icmp eq i64 %_225, 0
  %_229 = and i1 %_228, true
  %_230 = xor i1 %_229, true
  br i1 %_230, label %bb48, label %panic1

panic:                                            ; preds = %bb22
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_89, ptr align 8 @alloc_7c4ecc6767942a2d2df45b1de4052e19) #6
  unreachable

bb48:                                             ; preds = %bb27
  %_75 = load i32, ptr %_0.i34, align 4
  %_81 = load i32, ptr %RightEnd, align 4
  %_80 = sext i32 %_81 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_80, i64 4) #7
  %_0.i33 = getelementptr inbounds i32, ptr %A, i64 %_80
  %_83 = ptrtoint ptr %_0.i33 to i64
  %_86 = and i64 %_83, 3
  %_87 = icmp eq i64 %_86, 0
  br i1 %_87, label %bb26, label %panic2

panic1:                                           ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7c4ecc6767942a2d2df45b1de4052e19) #6
  unreachable

bb26:                                             ; preds = %bb48
  %_232 = ptrtoint ptr %_0.i33 to i64
  %_235 = icmp eq i64 %_232, 0
  %_236 = and i1 %_235, true
  %_237 = xor i1 %_236, true
  br i1 %_237, label %bb49, label %panic3

panic2:                                           ; preds = %bb48
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_83, ptr align 8 @alloc_099f67870780589f3a87a983c7d170ce) #6
  unreachable

bb49:                                             ; preds = %bb26
  store i32 %_75, ptr %_0.i33, align 4
  %9 = load i32, ptr %RightEnd, align 4
  %10 = sub i32 %9, 1
  store i32 %10, ptr %RightEnd, align 4
  %11 = load i32, ptr %i, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %i, align 4
  br label %bb21

panic3:                                           ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_099f67870780589f3a87a983c7d170ce) #6
  unreachable

bb29:                                             ; preds = %bb17
  %_211 = ptrtoint ptr %_0.i32 to i64
  %_214 = icmp eq i64 %_211, 0
  %_215 = and i1 %_214, true
  %_216 = xor i1 %_215, true
  br i1 %_216, label %bb46, label %panic5

panic4:                                           ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_101, ptr align 8 @alloc_cc7ec345ae677e70486d604a5f65fe3a) #6
  unreachable

bb46:                                             ; preds = %bb29
  %_67 = load i32, ptr %_0.i32, align 4
  %_71 = sext i32 %fresh7 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_71, i64 4) #7
  %_0.i31 = getelementptr inbounds i32, ptr %TmpA, i64 %_71
  %_95 = ptrtoint ptr %_0.i31 to i64
  %_98 = and i64 %_95, 3
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %bb28, label %panic6

panic5:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cc7ec345ae677e70486d604a5f65fe3a) #6
  unreachable

bb28:                                             ; preds = %bb46
  %_218 = ptrtoint ptr %_0.i31 to i64
  %_221 = icmp eq i64 %_218, 0
  %_222 = and i1 %_221, true
  %_223 = xor i1 %_222, true
  br i1 %_223, label %bb47, label %panic7

panic6:                                           ; preds = %bb46
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_95, ptr align 8 @alloc_7455e906dfe6fb6e425a2da78636b368) #6
  unreachable

bb47:                                             ; preds = %bb28
  store i32 %_67, ptr %_0.i31, align 4
  br label %bb16

panic7:                                           ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7455e906dfe6fb6e425a2da78636b368) #6
  unreachable

bb31:                                             ; preds = %bb13
  %_197 = ptrtoint ptr %_0.i30 to i64
  %_200 = icmp eq i64 %_197, 0
  %_201 = and i1 %_200, true
  %_202 = xor i1 %_201, true
  br i1 %_202, label %bb44, label %panic9

panic8:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_113, ptr align 8 @alloc_d46c342f3346ea1cf51f7b84b6ab0499) #6
  unreachable

bb44:                                             ; preds = %bb31
  %_55 = load i32, ptr %_0.i30, align 4
  %_59 = sext i32 %fresh5 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_59, i64 4) #7
  %_0.i29 = getelementptr inbounds i32, ptr %TmpA, i64 %_59
  %_107 = ptrtoint ptr %_0.i29 to i64
  %_110 = and i64 %_107, 3
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %bb30, label %panic10

panic9:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d46c342f3346ea1cf51f7b84b6ab0499) #6
  unreachable

bb30:                                             ; preds = %bb44
  %_204 = ptrtoint ptr %_0.i29 to i64
  %_207 = icmp eq i64 %_204, 0
  %_208 = and i1 %_207, true
  %_209 = xor i1 %_208, true
  br i1 %_209, label %bb45, label %panic11

panic10:                                          ; preds = %bb44
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_107, ptr align 8 @alloc_8f3d271ab51c2a70fee594208d8013c8) #6
  unreachable

bb45:                                             ; preds = %bb30
  store i32 %_55, ptr %_0.i29, align 4
  br label %bb12

panic11:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8f3d271ab51c2a70fee594208d8013c8) #6
  unreachable

bb37:                                             ; preds = %bb3
  %_155 = ptrtoint ptr %_0.i28 to i64
  %_158 = icmp eq i64 %_155, 0
  %_159 = and i1 %_158, true
  %_160 = xor i1 %_159, true
  br i1 %_160, label %bb38, label %panic13

panic12:                                          ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_149, ptr align 8 @alloc_2d52299de4b8f1a386a72708b940d255) #6
  unreachable

bb38:                                             ; preds = %bb37
  %_22 = load i32, ptr %_0.i28, align 4
  %_29 = load i32, ptr %R, align 4
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_28, i64 4) #7
  %_0.i27 = getelementptr inbounds i32, ptr %A, i64 %_28
  %_143 = ptrtoint ptr %_0.i27 to i64
  %_146 = and i64 %_143, 3
  %_147 = icmp eq i64 %_146, 0
  br i1 %_147, label %bb36, label %panic14

panic13:                                          ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2d52299de4b8f1a386a72708b940d255) #6
  unreachable

bb36:                                             ; preds = %bb38
  %_162 = ptrtoint ptr %_0.i27 to i64
  %_165 = icmp eq i64 %_162, 0
  %_166 = and i1 %_165, true
  %_167 = xor i1 %_166, true
  br i1 %_167, label %bb39, label %panic15

panic14:                                          ; preds = %bb38
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_143, ptr align 8 @alloc_35e9e91b2a798690703f6e918029b6ec) #6
  unreachable

bb39:                                             ; preds = %bb36
  %_26 = load i32, ptr %_0.i27, align 4
  %_21 = icmp sle i32 %_22, %_26
  br i1 %_21, label %bb6, label %bb9

panic15:                                          ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_35e9e91b2a798690703f6e918029b6ec) #6
  unreachable

bb9:                                              ; preds = %bb39
  %fresh2 = load i32, ptr %R, align 4
  %_40 = load i32, ptr %R, align 4
  %13 = add i32 %_40, 1
  store i32 %13, ptr %R, align 4
  %fresh3 = load i32, ptr %Tmp, align 4
  %_42 = load i32, ptr %Tmp, align 4
  %14 = add i32 %_42, 1
  store i32 %14, ptr %Tmp, align 4
  %_45 = sext i32 %fresh2 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_45, i64 4) #7
  %_0.i26 = getelementptr inbounds i32, ptr %A, i64 %_45
  %_125 = ptrtoint ptr %_0.i26 to i64
  %_128 = and i64 %_125, 3
  %_129 = icmp eq i64 %_128, 0
  br i1 %_129, label %bb33, label %panic16

bb6:                                              ; preds = %bb39
  %fresh0 = load i32, ptr %L, align 4
  %_31 = load i32, ptr %L, align 4
  %15 = add i32 %_31, 1
  store i32 %15, ptr %L, align 4
  %fresh1 = load i32, ptr %Tmp, align 4
  %_33 = load i32, ptr %Tmp, align 4
  %16 = add i32 %_33, 1
  store i32 %16, ptr %Tmp, align 4
  %_36 = sext i32 %fresh0 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_36, i64 4) #7
  %_0.i24 = getelementptr inbounds i32, ptr %A, i64 %_36
  %_137 = ptrtoint ptr %_0.i24 to i64
  %_140 = and i64 %_137, 3
  %_141 = icmp eq i64 %_140, 0
  br i1 %_141, label %bb35, label %panic20

bb33:                                             ; preds = %bb9
  %_183 = ptrtoint ptr %_0.i26 to i64
  %_186 = icmp eq i64 %_183, 0
  %_187 = and i1 %_186, true
  %_188 = xor i1 %_187, true
  br i1 %_188, label %bb42, label %panic17

panic16:                                          ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_125, ptr align 8 @alloc_8ce011f3550c0159d90918693bcd1734) #6
  unreachable

bb42:                                             ; preds = %bb33
  %_43 = load i32, ptr %_0.i26, align 4
  %_47 = sext i32 %fresh3 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_47, i64 4) #7
  %_0.i25 = getelementptr inbounds i32, ptr %TmpA, i64 %_47
  %_119 = ptrtoint ptr %_0.i25 to i64
  %_122 = and i64 %_119, 3
  %_123 = icmp eq i64 %_122, 0
  br i1 %_123, label %bb32, label %panic18

panic17:                                          ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8ce011f3550c0159d90918693bcd1734) #6
  unreachable

bb32:                                             ; preds = %bb42
  %_190 = ptrtoint ptr %_0.i25 to i64
  %_193 = icmp eq i64 %_190, 0
  %_194 = and i1 %_193, true
  %_195 = xor i1 %_194, true
  br i1 %_195, label %bb43, label %panic19

panic18:                                          ; preds = %bb42
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_119, ptr align 8 @alloc_71a27ea91b4fff584d4397456e79d889) #6
  unreachable

bb43:                                             ; preds = %bb32
  store i32 %_43, ptr %_0.i25, align 4
  br label %bb1

panic19:                                          ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_71a27ea91b4fff584d4397456e79d889) #6
  unreachable

bb35:                                             ; preds = %bb6
  %_169 = ptrtoint ptr %_0.i24 to i64
  %_172 = icmp eq i64 %_169, 0
  %_173 = and i1 %_172, true
  %_174 = xor i1 %_173, true
  br i1 %_174, label %bb40, label %panic21

panic20:                                          ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_137, ptr align 8 @alloc_4a134b06e9b47be322a2b96f32b686e2) #6
  unreachable

bb40:                                             ; preds = %bb35
  %_34 = load i32, ptr %_0.i24, align 4
  %_38 = sext i32 %fresh1 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_38, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %TmpA, i64 %_38
  %_131 = ptrtoint ptr %_0.i to i64
  %_134 = and i64 %_131, 3
  %_135 = icmp eq i64 %_134, 0
  br i1 %_135, label %bb34, label %panic22

panic21:                                          ; preds = %bb35
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4a134b06e9b47be322a2b96f32b686e2) #6
  unreachable

bb34:                                             ; preds = %bb40
  %_176 = ptrtoint ptr %_0.i to i64
  %_179 = icmp eq i64 %_176, 0
  %_180 = and i1 %_179, true
  %_181 = xor i1 %_180, true
  br i1 %_181, label %bb41, label %panic23

panic22:                                          ; preds = %bb40
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_131, ptr align 8 @alloc_c8cf0cb543b848005516a9c00dc52665) #6
  unreachable

bb41:                                             ; preds = %bb34
  store i32 %_34, ptr %_0.i, align 4
  br label %bb1

panic23:                                          ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c8cf0cb543b848005516a9c00dc52665) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @MSort(ptr %A, ptr %TmpA, i32 %L, i32 %RightEnd) unnamed_addr #2 {
start:
  %Center = alloca [4 x i8], align 4
  store i32 0, ptr %Center, align 4
  %_6 = icmp slt i32 %L, %RightEnd
  br i1 %_6, label %bb1, label %bb6

bb6:                                              ; preds = %bb3, %start
  ret void

bb1:                                              ; preds = %start
  %_7 = add i32 %L, %RightEnd
  %_11 = icmp eq i32 %_7, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic, label %bb3

bb3:                                              ; preds = %bb1
  %0 = sdiv i32 %_7, 2
  store i32 %0, ptr %Center, align 4
  %_14 = load i32, ptr %Center, align 4
  call void @MSort(ptr %A, ptr %TmpA, i32 %L, i32 %_14) #7
  %_17 = load i32, ptr %Center, align 4
  %_16 = add i32 %_17, 1
  call void @MSort(ptr %A, ptr %TmpA, i32 %_16, i32 %RightEnd) #7
  %_20 = load i32, ptr %Center, align 4
  %_19 = add i32 %_20, 1
  call void @Merge(ptr %A, ptr %TmpA, i32 %L, i32 %_19, i32 %RightEnd) #7
  br label %bb6

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_6747418830935183c98f1fbe9d3ddc86) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Merge_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %TmpA = alloca [8 x i8], align 8
  store ptr null, ptr %TmpA, align 8
  %_6 = sext i32 %N to i64
  %_0.i = mul i64 %_6, 4
  %_4 = call ptr @malloc(i64 %_0.i) #7
  store ptr %_4, ptr %TmpA, align 8
  %_10 = load ptr, ptr %TmpA, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_9 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8fdd6069c00c206bE"(ptr %_10) #7
  br i1 %_9, label %bb5, label %bb6

bb6:                                              ; preds = %start
  %_12 = load ptr, ptr %TmpA, align 8
  %_13 = sub i32 %N, 1
  call void @MSort(ptr %A, ptr %_12, i32 0, i32 %_13) #7
  %_16 = load ptr, ptr %TmpA, align 8
  call void @free(ptr %_16) #7
  br label %bb8

bb5:                                              ; preds = %start
  %_17 = call i32 (ptr, ...) @printf(ptr @alloc_5a837a29fc5514b50ed694a9f2c90bd3) #7
  br label %bb8

bb8:                                              ; preds = %bb5, %bb6
  ret void
}

; Function Attrs: nounwind nonlazybind
define void @Merge_Pass(ptr %A, ptr %TmpA, i32 %N, i32 %length) unnamed_addr #2 {
start:
  %j = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  %_8 = load i32, ptr %i, align 4
  %_10 = mul i32 2, %length
  %_9 = sub i32 %N, %_10
  %_7 = icmp sle i32 %_8, %_9
  br i1 %_7, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %_22 = load i32, ptr %i, align 4
  %_21 = add i32 %_22, %length
  %_20 = icmp slt i32 %_21, %N
  br i1 %_20, label %bb5, label %bb6

bb2:                                              ; preds = %bb1
  %_12 = load i32, ptr %i, align 4
  %_14 = load i32, ptr %i, align 4
  %_13 = add i32 %_14, %length
  %_17 = load i32, ptr %i, align 4
  %_18 = mul i32 2, %length
  %_16 = add i32 %_17, %_18
  %_15 = sub i32 %_16, 1
  call void @Merge(ptr %A, ptr %TmpA, i32 %_12, i32 %_13, i32 %_15) #7
  %_19 = mul i32 2, %length
  %0 = load i32, ptr %i, align 4
  %1 = add i32 %0, %_19
  store i32 %1, ptr %i, align 4
  br label %bb1

bb6:                                              ; preds = %bb4
  %_28 = load i32, ptr %i, align 4
  store i32 %_28, ptr %j, align 4
  br label %bb7

bb5:                                              ; preds = %bb4
  %_24 = load i32, ptr %i, align 4
  %_26 = load i32, ptr %i, align 4
  %_25 = add i32 %_26, %length
  %_27 = sub i32 %N, 1
  call void @Merge(ptr %A, ptr %TmpA, i32 %_24, i32 %_25, i32 %_27) #7
  br label %bb11

bb7:                                              ; preds = %bb15, %bb6
  %_30 = load i32, ptr %j, align 4
  %_29 = icmp slt i32 %_30, %N
  br i1 %_29, label %bb8, label %bb11

bb11:                                             ; preds = %bb5, %bb7
  ret void

bb8:                                              ; preds = %bb7
  %_34 = load i32, ptr %j, align 4
  %_33 = sext i32 %_34 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_33, i64 4) #7
  %_0.i4 = getelementptr inbounds i32, ptr %A, i64 %_33
  %_45 = ptrtoint ptr %_0.i4 to i64
  %_48 = and i64 %_45, 3
  %_49 = icmp eq i64 %_48, 0
  br i1 %_49, label %bb13, label %panic

bb13:                                             ; preds = %bb8
  %_51 = ptrtoint ptr %_0.i4 to i64
  %_54 = icmp eq i64 %_51, 0
  %_55 = and i1 %_54, true
  %_56 = xor i1 %_55, true
  br i1 %_56, label %bb14, label %panic1

panic:                                            ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_45, ptr align 8 @alloc_7f940c1e67cff1525d773b655461f830) #6
  unreachable

bb14:                                             ; preds = %bb13
  %_31 = load i32, ptr %_0.i4, align 4
  %_37 = load i32, ptr %j, align 4
  %_36 = sext i32 %_37 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %TmpA, i64 %_36, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %TmpA, i64 %_36
  %_39 = ptrtoint ptr %_0.i to i64
  %_42 = and i64 %_39, 3
  %_43 = icmp eq i64 %_42, 0
  br i1 %_43, label %bb12, label %panic2

panic1:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7f940c1e67cff1525d773b655461f830) #6
  unreachable

bb12:                                             ; preds = %bb14
  %_58 = ptrtoint ptr %_0.i to i64
  %_61 = icmp eq i64 %_58, 0
  %_62 = and i1 %_61, true
  %_63 = xor i1 %_62, true
  br i1 %_63, label %bb15, label %panic3

panic2:                                           ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_39, ptr align 8 @alloc_a42d81e24c2da9ef80b1aaded9ea1c59) #6
  unreachable

bb15:                                             ; preds = %bb12
  store i32 %_31, ptr %_0.i, align 4
  %2 = load i32, ptr %j, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr %j, align 4
  br label %bb7

panic3:                                           ; preds = %bb12
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a42d81e24c2da9ef80b1aaded9ea1c59) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Merge_sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %TmpA = alloca [8 x i8], align 8
  %length = alloca [4 x i8], align 4
  store i32 1, ptr %length, align 4
  store ptr null, ptr %TmpA, align 8
  %_7 = sext i32 %N to i64
  %_0.i = mul i64 %_7, 4
  %_5 = call ptr @malloc(i64 %_0.i) #7
  store ptr %_5, ptr %TmpA, align 8
  %_11 = load ptr, ptr %TmpA, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_10 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h8fdd6069c00c206bE"(ptr %_11) #7
  br i1 %_10, label %bb5, label %bb6

bb6:                                              ; preds = %bb7, %start
  %_13 = load i32, ptr %length, align 4
  %_12 = icmp slt i32 %_13, %N
  br i1 %_12, label %bb7, label %bb10

bb5:                                              ; preds = %start
  %_23 = call i32 (ptr, ...) @printf(ptr @alloc_5a837a29fc5514b50ed694a9f2c90bd3) #7
  br label %bb11

bb10:                                             ; preds = %bb6
  %_22 = load ptr, ptr %TmpA, align 8
  call void @free(ptr %_22) #7
  br label %bb11

bb7:                                              ; preds = %bb6
  %_15 = load ptr, ptr %TmpA, align 8
  %_16 = load i32, ptr %length, align 4
  call void @Merge_Pass(ptr %A, ptr %_15, i32 %N, i32 %_16) #7
  %0 = load i32, ptr %length, align 4
  %1 = mul i32 %0, 2
  store i32 %1, ptr %length, align 4
  %_18 = load ptr, ptr %TmpA, align 8
  %_19 = load i32, ptr %length, align 4
  call void @Merge_Pass(ptr %_18, ptr %A, i32 %N, i32 %_19) #7
  %2 = load i32, ptr %length, align 4
  %3 = mul i32 %2, 2
  store i32 %3, ptr %length, align 4
  br label %bb6

bb11:                                             ; preds = %bb5, %bb10
  ret void
}

; Function Attrs: nounwind nonlazybind
define i32 @Median3(ptr %A, i32 %Left, i32 %Right) unnamed_addr #2 {
start:
  %_5 = add i32 %Left, %Right
  %_9 = icmp eq i32 %_5, -2147483648
  %_10 = and i1 false, %_9
  br i1 %_10, label %panic, label %bb2

bb2:                                              ; preds = %start
  %Center = sdiv i32 %_5, 2
  %_14 = sext i32 %Left to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_14, i64 4) #7
  %_0.i36 = getelementptr inbounds i32, ptr %A, i64 %_14
  %_109 = ptrtoint ptr %_0.i36 to i64
  %_112 = and i64 %_109, 3
  %_113 = icmp eq i64 %_112, 0
  br i1 %_113, label %bb31, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_7de4af08d4536685d18f97063bdce674) #6
  unreachable

bb31:                                             ; preds = %bb2
  %_115 = ptrtoint ptr %_0.i36 to i64
  %_118 = icmp eq i64 %_115, 0
  %_119 = and i1 %_118, true
  %_120 = xor i1 %_119, true
  br i1 %_120, label %bb32, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_109, ptr align 8 @alloc_8ad1b303aa8e4bcf55a5c3ee40ce8d71) #6
  unreachable

bb32:                                             ; preds = %bb31
  %_12 = load i32, ptr %_0.i36, align 4
  %_17 = sext i32 %Center to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_17, i64 4) #7
  %_0.i35 = getelementptr inbounds i32, ptr %A, i64 %_17
  %_103 = ptrtoint ptr %_0.i35 to i64
  %_106 = and i64 %_103, 3
  %_107 = icmp eq i64 %_106, 0
  br i1 %_107, label %bb30, label %panic3

panic2:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8ad1b303aa8e4bcf55a5c3ee40ce8d71) #6
  unreachable

bb30:                                             ; preds = %bb32
  %_122 = ptrtoint ptr %_0.i35 to i64
  %_125 = icmp eq i64 %_122, 0
  %_126 = and i1 %_125, true
  %_127 = xor i1 %_126, true
  br i1 %_127, label %bb33, label %panic4

panic3:                                           ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_103, ptr align 8 @alloc_7f6768920ffafbfd3d4b711fd8129dc8) #6
  unreachable

bb33:                                             ; preds = %bb30
  %_15 = load i32, ptr %_0.i35, align 4
  %_11 = icmp sgt i32 %_12, %_15
  br i1 %_11, label %bb5, label %bb8

panic4:                                           ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7f6768920ffafbfd3d4b711fd8129dc8) #6
  unreachable

bb8:                                              ; preds = %bb45, %bb33
  %_30 = sext i32 %Left to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_30, i64 4) #7
  %_0.i32 = getelementptr inbounds i32, ptr %A, i64 %_30
  %_97 = ptrtoint ptr %_0.i32 to i64
  %_100 = and i64 %_97, 3
  %_101 = icmp eq i64 %_100, 0
  br i1 %_101, label %bb29, label %panic7

bb5:                                              ; preds = %bb33
  %_22 = sext i32 %Left to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_22, i64 4) #7
  %_0.i34 = getelementptr inbounds i32, ptr %A, i64 %_22
  %_199 = ptrtoint ptr %_0.i34 to i64
  %_200 = icmp eq i64 %_199, 0
  %_201 = and i1 %_200, true
  %_202 = xor i1 %_201, true
  br i1 %_202, label %bb46, label %panic5

bb46:                                             ; preds = %bb5
  %_26 = sext i32 %Right to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_26, i64 4) #7
  %_0.i33 = getelementptr inbounds i32, ptr %A, i64 %_26
  %_194 = ptrtoint ptr %_0.i33 to i64
  %_195 = icmp eq i64 %_194, 0
  %_196 = and i1 %_195, true
  %_197 = xor i1 %_196, true
  br i1 %_197, label %bb45, label %panic6

panic5:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6230f6ecc98f6b5266ec83688428fffb) #6
  unreachable

bb45:                                             ; preds = %bb46
  call void @Swap(ptr %_0.i34, ptr %_0.i33) #7
  br label %bb8

panic6:                                           ; preds = %bb46
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d8ca2860991ff5ed375999ba9654428) #6
  unreachable

bb29:                                             ; preds = %bb8
  %_129 = ptrtoint ptr %_0.i32 to i64
  %_132 = icmp eq i64 %_129, 0
  %_133 = and i1 %_132, true
  %_134 = xor i1 %_133, true
  br i1 %_134, label %bb34, label %panic8

panic7:                                           ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_97, ptr align 8 @alloc_549c217d07944275045a044c796d3f60) #6
  unreachable

bb34:                                             ; preds = %bb29
  %_28 = load i32, ptr %_0.i32, align 4
  %_33 = sext i32 %Right to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_33, i64 4) #7
  %_0.i31 = getelementptr inbounds i32, ptr %A, i64 %_33
  %_91 = ptrtoint ptr %_0.i31 to i64
  %_94 = and i64 %_91, 3
  %_95 = icmp eq i64 %_94, 0
  br i1 %_95, label %bb28, label %panic9

panic8:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_549c217d07944275045a044c796d3f60) #6
  unreachable

bb28:                                             ; preds = %bb34
  %_136 = ptrtoint ptr %_0.i31 to i64
  %_139 = icmp eq i64 %_136, 0
  %_140 = and i1 %_139, true
  %_141 = xor i1 %_140, true
  br i1 %_141, label %bb35, label %panic10

panic9:                                           ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_91, ptr align 8 @alloc_15da091f69fb8b074c6b0f44ff4bf62c) #6
  unreachable

bb35:                                             ; preds = %bb28
  %_31 = load i32, ptr %_0.i31, align 4
  %_27 = icmp sgt i32 %_28, %_31
  br i1 %_27, label %bb11, label %bb14

panic10:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_15da091f69fb8b074c6b0f44ff4bf62c) #6
  unreachable

bb14:                                             ; preds = %bb43, %bb35
  %_46 = sext i32 %Center to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_46, i64 4) #7
  %_0.i28 = getelementptr inbounds i32, ptr %A, i64 %_46
  %_85 = ptrtoint ptr %_0.i28 to i64
  %_88 = and i64 %_85, 3
  %_89 = icmp eq i64 %_88, 0
  br i1 %_89, label %bb27, label %panic13

bb11:                                             ; preds = %bb35
  %_38 = sext i32 %Left to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_38, i64 4) #7
  %_0.i30 = getelementptr inbounds i32, ptr %A, i64 %_38
  %_189 = ptrtoint ptr %_0.i30 to i64
  %_190 = icmp eq i64 %_189, 0
  %_191 = and i1 %_190, true
  %_192 = xor i1 %_191, true
  br i1 %_192, label %bb44, label %panic11

bb44:                                             ; preds = %bb11
  %_42 = sext i32 %Right to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_42, i64 4) #7
  %_0.i29 = getelementptr inbounds i32, ptr %A, i64 %_42
  %_184 = ptrtoint ptr %_0.i29 to i64
  %_185 = icmp eq i64 %_184, 0
  %_186 = and i1 %_185, true
  %_187 = xor i1 %_186, true
  br i1 %_187, label %bb43, label %panic12

panic11:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_18d7c0eef14cbd2016fc38fc3d8dadb8) #6
  unreachable

bb43:                                             ; preds = %bb44
  call void @Swap(ptr %_0.i30, ptr %_0.i29) #7
  br label %bb14

panic12:                                          ; preds = %bb44
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e7b9ff7358e90942e9db0ed275ca7ea9) #6
  unreachable

bb27:                                             ; preds = %bb14
  %_143 = ptrtoint ptr %_0.i28 to i64
  %_146 = icmp eq i64 %_143, 0
  %_147 = and i1 %_146, true
  %_148 = xor i1 %_147, true
  br i1 %_148, label %bb36, label %panic14

panic13:                                          ; preds = %bb14
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_85, ptr align 8 @alloc_40b727cf9a6c3c7ccbaf37d050a8826c) #6
  unreachable

bb36:                                             ; preds = %bb27
  %_44 = load i32, ptr %_0.i28, align 4
  %_49 = sext i32 %Right to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_49, i64 4) #7
  %_0.i27 = getelementptr inbounds i32, ptr %A, i64 %_49
  %_79 = ptrtoint ptr %_0.i27 to i64
  %_82 = and i64 %_79, 3
  %_83 = icmp eq i64 %_82, 0
  br i1 %_83, label %bb26, label %panic15

panic14:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_40b727cf9a6c3c7ccbaf37d050a8826c) #6
  unreachable

bb26:                                             ; preds = %bb36
  %_150 = ptrtoint ptr %_0.i27 to i64
  %_153 = icmp eq i64 %_150, 0
  %_154 = and i1 %_153, true
  %_155 = xor i1 %_154, true
  br i1 %_155, label %bb37, label %panic16

panic15:                                          ; preds = %bb36
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_79, ptr align 8 @alloc_5d58a70a50756efb14dfc3161b5a63ca) #6
  unreachable

bb37:                                             ; preds = %bb26
  %_47 = load i32, ptr %_0.i27, align 4
  %_43 = icmp sgt i32 %_44, %_47
  br i1 %_43, label %bb17, label %bb20

panic16:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5d58a70a50756efb14dfc3161b5a63ca) #6
  unreachable

bb20:                                             ; preds = %bb41, %bb37
  %_63 = sext i32 %Center to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_63, i64 4) #7
  %_0.i24 = getelementptr inbounds i32, ptr %A, i64 %_63
  %_169 = ptrtoint ptr %_0.i24 to i64
  %_170 = icmp eq i64 %_169, 0
  %_171 = and i1 %_170, true
  %_172 = xor i1 %_171, true
  br i1 %_172, label %bb40, label %panic19

bb17:                                             ; preds = %bb37
  %_54 = sext i32 %Center to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_54, i64 4) #7
  %_0.i26 = getelementptr inbounds i32, ptr %A, i64 %_54
  %_179 = ptrtoint ptr %_0.i26 to i64
  %_180 = icmp eq i64 %_179, 0
  %_181 = and i1 %_180, true
  %_182 = xor i1 %_181, true
  br i1 %_182, label %bb42, label %panic17

bb42:                                             ; preds = %bb17
  %_58 = sext i32 %Right to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_58, i64 4) #7
  %_0.i25 = getelementptr inbounds i32, ptr %A, i64 %_58
  %_174 = ptrtoint ptr %_0.i25 to i64
  %_175 = icmp eq i64 %_174, 0
  %_176 = and i1 %_175, true
  %_177 = xor i1 %_176, true
  br i1 %_177, label %bb41, label %panic18

panic17:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_599404fce73510c46ff7a6a69489feb9) #6
  unreachable

bb41:                                             ; preds = %bb42
  call void @Swap(ptr %_0.i26, ptr %_0.i25) #7
  br label %bb20

panic18:                                          ; preds = %bb42
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b81d2e02760b533aeebc42d22b659249) #6
  unreachable

bb40:                                             ; preds = %bb20
  %_68 = sub i32 %Right, 1
  %_67 = sext i32 %_68 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_67, i64 4) #7
  %_0.i23 = getelementptr inbounds i32, ptr %A, i64 %_67
  %_164 = ptrtoint ptr %_0.i23 to i64
  %_165 = icmp eq i64 %_164, 0
  %_166 = and i1 %_165, true
  %_167 = xor i1 %_166, true
  br i1 %_167, label %bb39, label %panic20

panic19:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bd608a35efe08341c53110a99f5d7e3f) #6
  unreachable

bb39:                                             ; preds = %bb40
  call void @Swap(ptr %_0.i24, ptr %_0.i23) #7
  %_71 = sub i32 %Right, 1
  %_70 = sext i32 %_71 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_70, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_70
  %_73 = ptrtoint ptr %_0.i to i64
  %_76 = and i64 %_73, 3
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb25, label %panic21

panic20:                                          ; preds = %bb40
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_568995c2a1fb4b55beb8174f632e3849) #6
  unreachable

bb25:                                             ; preds = %bb39
  %_157 = ptrtoint ptr %_0.i to i64
  %_160 = icmp eq i64 %_157, 0
  %_161 = and i1 %_160, true
  %_162 = xor i1 %_161, true
  br i1 %_162, label %bb38, label %panic22

panic21:                                          ; preds = %bb39
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_73, ptr align 8 @alloc_5a050186171316193772c283accba1bd) #6
  unreachable

bb38:                                             ; preds = %bb25
  %_0 = load i32, ptr %_0.i, align 4
  ret i32 %_0

panic22:                                          ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5a050186171316193772c283accba1bd) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Qsort(ptr %A, i32 %Left, i32 %Right) unnamed_addr #2 {
start:
  %High = alloca [4 x i8], align 4
  %Low = alloca [4 x i8], align 4
  %Cutoff = alloca [4 x i8], align 4
  %Pivot = alloca [4 x i8], align 4
  store i32 0, ptr %Pivot, align 4
  store i32 0, ptr %Cutoff, align 4
  store i32 0, ptr %Low, align 4
  store i32 0, ptr %High, align 4
  store i32 4, ptr %Cutoff, align 4
  %_9 = load i32, ptr %Cutoff, align 4
  %_10 = sub i32 %Right, %Left
  %_8 = icmp sle i32 %_9, %_10
  br i1 %_8, label %bb1, label %bb16

bb16:                                             ; preds = %start
  %_57 = sext i32 %Left to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_57, i64 4) #7
  %_0.i13 = getelementptr inbounds i32, ptr %A, i64 %_57
  %_59 = sub i32 %Right, %Left
  %_58 = add i32 %_59, 1
  call void @Insertion_Sort(ptr %_0.i13, i32 %_58) #7
  br label %bb18

bb1:                                              ; preds = %start
  %_11 = call i32 @Median3(ptr %A, i32 %Left, i32 %Right) #7
  store i32 %_11, ptr %Pivot, align 4
  store i32 %Left, ptr %Low, align 4
  %0 = sub i32 %Right, 1
  store i32 %0, ptr %High, align 4
  br label %bb3

bb18:                                             ; preds = %bb23, %bb16
  ret void

bb3:                                              ; preds = %bb25, %bb21, %bb1
  %1 = load i32, ptr %Low, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %Low, align 4
  %_16 = load i32, ptr %Low, align 4
  %_15 = sext i32 %_16 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_15, i64 4) #7
  %_0.i12 = getelementptr inbounds i32, ptr %A, i64 %_15
  %_67 = ptrtoint ptr %_0.i12 to i64
  %_70 = and i64 %_67, 3
  %_71 = icmp eq i64 %_70, 0
  br i1 %_71, label %bb20, label %panic

bb20:                                             ; preds = %bb3
  %_73 = ptrtoint ptr %_0.i12 to i64
  %_76 = icmp eq i64 %_73, 0
  %_77 = and i1 %_76, true
  %_78 = xor i1 %_77, true
  br i1 %_78, label %bb21, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_67, ptr align 8 @alloc_3cbf27c285f143576354eaf4a934b539) #6
  unreachable

bb21:                                             ; preds = %bb20
  %_13 = load i32, ptr %_0.i12, align 4
  %_17 = load i32, ptr %Pivot, align 4
  %_12 = icmp slt i32 %_13, %_17
  br i1 %_12, label %bb3, label %bb5

panic1:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3cbf27c285f143576354eaf4a934b539) #6
  unreachable

bb5:                                              ; preds = %bb22, %bb21
  %3 = load i32, ptr %High, align 4
  %4 = sub i32 %3, 1
  store i32 %4, ptr %High, align 4
  %_22 = load i32, ptr %High, align 4
  %_21 = sext i32 %_22 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_21, i64 4) #7
  %_0.i11 = getelementptr inbounds i32, ptr %A, i64 %_21
  %_61 = ptrtoint ptr %_0.i11 to i64
  %_64 = and i64 %_61, 3
  %_65 = icmp eq i64 %_64, 0
  br i1 %_65, label %bb19, label %panic2

bb19:                                             ; preds = %bb5
  %_80 = ptrtoint ptr %_0.i11 to i64
  %_83 = icmp eq i64 %_80, 0
  %_84 = and i1 %_83, true
  %_85 = xor i1 %_84, true
  br i1 %_85, label %bb22, label %panic3

panic2:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_61, ptr align 8 @alloc_ee9bab11c08a697ad41ad5ec48a5e073) #6
  unreachable

bb22:                                             ; preds = %bb19
  %_19 = load i32, ptr %_0.i11, align 4
  %_23 = load i32, ptr %Pivot, align 4
  %_18 = icmp sgt i32 %_19, %_23
  br i1 %_18, label %bb5, label %bb7

panic3:                                           ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee9bab11c08a697ad41ad5ec48a5e073) #6
  unreachable

bb7:                                              ; preds = %bb22
  %_25 = load i32, ptr %Low, align 4
  %_26 = load i32, ptr %High, align 4
  %_24 = icmp slt i32 %_25, %_26
  br i1 %_24, label %bb8, label %bb9

bb9:                                              ; preds = %bb7
  %_43 = load i32, ptr %Low, align 4
  %_42 = sext i32 %_43 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_42, i64 4) #7
  %_0.i10 = getelementptr inbounds i32, ptr %A, i64 %_42
  %_92 = ptrtoint ptr %_0.i10 to i64
  %_93 = icmp eq i64 %_92, 0
  %_94 = and i1 %_93, true
  %_95 = xor i1 %_94, true
  br i1 %_95, label %bb24, label %panic4

bb8:                                              ; preds = %bb7
  %_32 = load i32, ptr %Low, align 4
  %_31 = sext i32 %_32 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_31, i64 4) #7
  %_0.i8 = getelementptr inbounds i32, ptr %A, i64 %_31
  %_102 = ptrtoint ptr %_0.i8 to i64
  %_103 = icmp eq i64 %_102, 0
  %_104 = and i1 %_103, true
  %_105 = xor i1 %_104, true
  br i1 %_105, label %bb26, label %panic6

bb24:                                             ; preds = %bb9
  %_48 = sub i32 %Right, 1
  %_47 = sext i32 %_48 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_47, i64 4) #7
  %_0.i9 = getelementptr inbounds i32, ptr %A, i64 %_47
  %_87 = ptrtoint ptr %_0.i9 to i64
  %_88 = icmp eq i64 %_87, 0
  %_89 = and i1 %_88, true
  %_90 = xor i1 %_89, true
  br i1 %_90, label %bb23, label %panic5

panic4:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0a987f8cdb89ddbaff58adac27085b75) #6
  unreachable

bb23:                                             ; preds = %bb24
  call void @Swap(ptr %_0.i10, ptr %_0.i9) #7
  %_51 = load i32, ptr %Low, align 4
  %_50 = sub i32 %_51, 1
  call void @Qsort(ptr %A, i32 %Left, i32 %_50) #7
  %_54 = load i32, ptr %Low, align 4
  %_53 = add i32 %_54, 1
  call void @Qsort(ptr %A, i32 %_53, i32 %Right) #7
  br label %bb18

panic5:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_63f5c0ddf58bf07cf8b12c1fa113fa8e) #6
  unreachable

bb26:                                             ; preds = %bb8
  %_37 = load i32, ptr %High, align 4
  %_36 = sext i32 %_37 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_36, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_36
  %_97 = ptrtoint ptr %_0.i to i64
  %_98 = icmp eq i64 %_97, 0
  %_99 = and i1 %_98, true
  %_100 = xor i1 %_99, true
  br i1 %_100, label %bb25, label %panic7

panic6:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5f63468acce24dd711425cbaeaba5a3c) #6
  unreachable

bb25:                                             ; preds = %bb26
  call void @Swap(ptr %_0.i8, ptr %_0.i) #7
  br label %bb3

panic7:                                           ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_446c3411c845259300fc379410d974cf) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @Quick_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %_4 = sub i32 %N, 1
  call void @Qsort(ptr %A, i32 0, i32 %_4) #7
  ret void
}

; Function Attrs: nounwind nonlazybind
define i32 @compare(ptr %a, ptr %b) unnamed_addr #2 {
start:
  %_14 = ptrtoint ptr %a to i64
  %_17 = and i64 %_14, 3
  %_18 = icmp eq i64 %_17, 0
  br i1 %_18, label %bb2, label %panic

bb2:                                              ; preds = %start
  %_20 = ptrtoint ptr %a to i64
  %_23 = icmp eq i64 %_20, 0
  %_24 = and i1 %_23, true
  %_25 = xor i1 %_24, true
  br i1 %_25, label %bb3, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_14, ptr align 8 @alloc_d9e97a07c0063ed9751546bc1088f475) #6
  unreachable

bb3:                                              ; preds = %bb2
  %_3 = load i32, ptr %a, align 4
  %_8 = ptrtoint ptr %b to i64
  %_11 = and i64 %_8, 3
  %_12 = icmp eq i64 %_11, 0
  br i1 %_12, label %bb1, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d9e97a07c0063ed9751546bc1088f475) #6
  unreachable

bb1:                                              ; preds = %bb3
  %_27 = ptrtoint ptr %b to i64
  %_30 = icmp eq i64 %_27, 0
  %_31 = and i1 %_30, true
  %_32 = xor i1 %_31, true
  br i1 %_32, label %bb4, label %panic3

panic2:                                           ; preds = %bb3
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_8, ptr align 8 @alloc_815fdf8ffa17280c41f88c90b0fd73f1) #6
  unreachable

bb4:                                              ; preds = %bb1
  %_5 = load i32, ptr %b, align 4
  %_0 = sub i32 %_3, %_5
  ret i32 %_0

panic3:                                           ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_815fdf8ffa17280c41f88c90b0fd73f1) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @GetDigit(i32 %0, i32 %D) unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  %d = alloca [4 x i8], align 4
  %X = alloca [4 x i8], align 4
  store i32 %0, ptr %X, align 4
  store i32 0, ptr %d, align 4
  store i32 0, ptr %i, align 4
  store i32 1, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb6, %start
  %_6 = load i32, ptr %i, align 4
  %_5 = icmp sle i32 %_6, %D
  br i1 %_5, label %bb2, label %bb7

bb7:                                              ; preds = %bb1
  %_0 = load i32, ptr %d, align 4
  ret i32 %_0

bb2:                                              ; preds = %bb1
  %_7 = load i32, ptr %X, align 4
  %_11 = icmp eq i32 %_7, -2147483648
  %_12 = and i1 false, %_11
  br i1 %_12, label %panic, label %bb4

bb4:                                              ; preds = %bb2
  %1 = srem i32 %_7, 10
  store i32 %1, ptr %d, align 4
  %2 = load i32, ptr %X, align 4
  %_16 = icmp eq i32 %2, -2147483648
  %_17 = and i1 false, %_16
  br i1 %_17, label %panic1, label %bb6

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_2e0cc89920d2c73d7a75d95ecf5569ce) #6
  unreachable

bb6:                                              ; preds = %bb4
  %3 = load i32, ptr %X, align 4
  %4 = sdiv i32 %3, 10
  store i32 %4, ptr %X, align 4
  %5 = load i32, ptr %i, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %i, align 4
  br label %bb1

panic1:                                           ; preds = %bb4
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_19370c4d5230d64b4e5945b24e76659e) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @LSDRadix_Sort(ptr %A, i32 %N) unnamed_addr #2 {
start:
  %List = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 8
  %tmp = alloca [8 x i8], align 8
  %B = alloca [160 x i8], align 8
  %i = alloca [4 x i8], align 4
  %Di = alloca [4 x i8], align 4
  %D = alloca [4 x i8], align 4
  store i32 0, ptr %D, align 4
  store i32 0, ptr %Di, align 4
  store i32 0, ptr %i, align 4
  br label %repeat_loop_header

repeat_loop_header:                               ; preds = %repeat_loop_body, %start
  %0 = phi i64 [ 0, %start ], [ %4, %repeat_loop_body ]
  %1 = icmp ult i64 %0, 10
  br i1 %1, label %repeat_loop_body, label %repeat_loop_next

repeat_loop_body:                                 ; preds = %repeat_loop_header
  %2 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %0
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr null, ptr %3, align 8
  %4 = add nuw i64 %0, 1
  br label %repeat_loop_header

repeat_loop_next:                                 ; preds = %repeat_loop_header
  store ptr null, ptr %tmp, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %List, align 8
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb5, %repeat_loop_next
  %_14 = load i32, ptr %i, align 4
  %_13 = icmp slt i32 %_14, 10
  br i1 %_13, label %bb2, label %bb6

bb6:                                              ; preds = %bb1
  store i32 0, ptr %i, align 4
  br label %bb7

bb2:                                              ; preds = %bb1
  %_16 = load i32, ptr %i, align 4
  %_15 = sext i32 %_16 to i64
  %_17 = icmp ult i64 %_15, 10
  br i1 %_17, label %bb3, label %panic34

bb7:                                              ; preds = %bb60, %bb6
  %_26 = load i32, ptr %i, align 4
  %_25 = icmp slt i32 %_26, %N
  br i1 %_25, label %bb8, label %bb12

bb12:                                             ; preds = %bb7
  store i32 1, ptr %D, align 4
  br label %bb13

bb8:                                              ; preds = %bb7
  %_27 = call ptr @malloc(i64 16) #7
  store ptr %_27, ptr %tmp, align 8
  %_33 = load i32, ptr %i, align 4
  %_32 = sext i32 %_33 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_32, i64 4) #7
  %_0.i = getelementptr inbounds i32, ptr %A, i64 %_32
  %_169 = ptrtoint ptr %_0.i to i64
  %_172 = and i64 %_169, 3
  %_173 = icmp eq i64 %_172, 0
  br i1 %_173, label %bb57, label %panic28

bb13:                                             ; preds = %bb40, %bb12
  %_37 = load i32, ptr %D, align 4
  %_36 = icmp sle i32 %_37, 3
  br i1 %_36, label %bb14, label %bb41

bb41:                                             ; preds = %bb13
  store i32 0, ptr %i, align 4
  br label %bb42

bb14:                                             ; preds = %bb13
  %_38 = load ptr, ptr %List, align 8
  store ptr %_38, ptr %p, align 8
  br label %bb15

bb42:                                             ; preds = %bb68, %bb41
  %_96 = load i32, ptr %i, align 4
  %_95 = icmp slt i32 %_96, %N
  br i1 %_95, label %bb43, label %bb46

bb46:                                             ; preds = %bb42
  ret void

bb43:                                             ; preds = %bb42
  %_97 = load ptr, ptr %List, align 8
  store ptr %_97, ptr %tmp, align 8
  %_120 = load ptr, ptr %List, align 8
  %_121 = ptrtoint ptr %_120 to i64
  %_124 = and i64 %_121, 7
  %_125 = icmp eq i64 %_124, 0
  br i1 %_125, label %bb49, label %panic

bb49:                                             ; preds = %bb43
  %_230 = load ptr, ptr %List, align 8
  %_231 = ptrtoint ptr %_230 to i64
  %_234 = icmp eq i64 %_231, 0
  %_235 = and i1 %_234, true
  %_236 = xor i1 %_235, true
  br i1 %_236, label %bb66, label %panic1

panic:                                            ; preds = %bb43
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_121, ptr align 8 @alloc_405abc9f215a9f5f004fd1e355fe3214) #6
  unreachable

bb66:                                             ; preds = %bb49
  %5 = load ptr, ptr %List, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  %_98 = load ptr, ptr %6, align 8
  store ptr %_98, ptr %List, align 8
  %_114 = load ptr, ptr %tmp, align 8
  %_115 = ptrtoint ptr %_114 to i64
  %_118 = and i64 %_115, 7
  %_119 = icmp eq i64 %_118, 0
  br i1 %_119, label %bb48, label %panic2

panic1:                                           ; preds = %bb49
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_405abc9f215a9f5f004fd1e355fe3214) #6
  unreachable

bb48:                                             ; preds = %bb66
  %_237 = load ptr, ptr %tmp, align 8
  %_238 = ptrtoint ptr %_237 to i64
  %_241 = icmp eq i64 %_238, 0
  %_242 = and i1 %_241, true
  %_243 = xor i1 %_242, true
  br i1 %_243, label %bb67, label %panic3

panic2:                                           ; preds = %bb66
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_115, ptr align 8 @alloc_15e54f178bdbd9fb624b004569421910) #6
  unreachable

bb67:                                             ; preds = %bb48
  %7 = load ptr, ptr %tmp, align 8
  %_99 = load i32, ptr %7, align 8
  %_102 = load i32, ptr %i, align 4
  %_101 = sext i32 %_102 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17ha92ed542e403b2abE"(ptr %A, i64 %_101, i64 4) #7
  %_0.i37 = getelementptr inbounds i32, ptr %A, i64 %_101
  %_109 = ptrtoint ptr %_0.i37 to i64
  %_112 = and i64 %_109, 3
  %_113 = icmp eq i64 %_112, 0
  br i1 %_113, label %bb47, label %panic4

panic3:                                           ; preds = %bb48
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_15e54f178bdbd9fb624b004569421910) #6
  unreachable

bb47:                                             ; preds = %bb67
  %_245 = ptrtoint ptr %_0.i37 to i64
  %_248 = icmp eq i64 %_245, 0
  %_249 = and i1 %_248, true
  %_250 = xor i1 %_249, true
  br i1 %_250, label %bb68, label %panic5

panic4:                                           ; preds = %bb67
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_109, ptr align 8 @alloc_ea6fe377e867891fc9d32994e86c176d) #6
  unreachable

bb68:                                             ; preds = %bb47
  store i32 %_99, ptr %_0.i37, align 4
  %_105 = load ptr, ptr %tmp, align 8
  call void @free(ptr %_105) #7
  %8 = load i32, ptr %i, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %i, align 4
  br label %bb42

panic5:                                           ; preds = %bb47
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ea6fe377e867891fc9d32994e86c176d) #6
  unreachable

bb15:                                             ; preds = %bb25, %bb28, %bb14
  %_40 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_39 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ec0f9bcb090053eE"(ptr %_40) #7
  br i1 %_39, label %bb17, label %bb18

bb18:                                             ; preds = %bb15
  %_150 = load ptr, ptr %p, align 8
  %_151 = ptrtoint ptr %_150 to i64
  %_154 = and i64 %_151, 7
  %_155 = icmp eq i64 %_154, 0
  br i1 %_155, label %bb54, label %panic6

bb17:                                             ; preds = %bb15
  store ptr null, ptr %List, align 8
  store i32 9, ptr %Di, align 4
  br label %bb29

bb54:                                             ; preds = %bb18
  %_195 = load ptr, ptr %p, align 8
  %_196 = ptrtoint ptr %_195 to i64
  %_199 = icmp eq i64 %_196, 0
  %_200 = and i1 %_199, true
  %_201 = xor i1 %_200, true
  br i1 %_201, label %bb61, label %panic7

panic6:                                           ; preds = %bb18
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_151, ptr align 8 @alloc_e2960f97fb4a2582093a57aacb1c360e) #6
  unreachable

bb61:                                             ; preds = %bb54
  %10 = load ptr, ptr %p, align 8
  %_42 = load i32, ptr %10, align 8
  %_43 = load i32, ptr %D, align 4
  %_41 = call i32 @GetDigit(i32 %_42, i32 %_43) #7
  store i32 %_41, ptr %Di, align 4
  %_44 = load ptr, ptr %p, align 8
  store ptr %_44, ptr %tmp, align 8
  %_144 = load ptr, ptr %p, align 8
  %_145 = ptrtoint ptr %_144 to i64
  %_148 = and i64 %_145, 7
  %_149 = icmp eq i64 %_148, 0
  br i1 %_149, label %bb53, label %panic8

panic7:                                           ; preds = %bb54
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e2960f97fb4a2582093a57aacb1c360e) #6
  unreachable

bb53:                                             ; preds = %bb61
  %_202 = load ptr, ptr %p, align 8
  %_203 = ptrtoint ptr %_202 to i64
  %_206 = icmp eq i64 %_203, 0
  %_207 = and i1 %_206, true
  %_208 = xor i1 %_207, true
  br i1 %_208, label %bb62, label %panic9

panic8:                                           ; preds = %bb61
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_145, ptr align 8 @alloc_cc8170fd3fda3df227a567649efc464b) #6
  unreachable

bb62:                                             ; preds = %bb53
  %11 = load ptr, ptr %p, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %_45 = load ptr, ptr %12, align 8
  store ptr %_45, ptr %p, align 8
  %_138 = load ptr, ptr %tmp, align 8
  %_139 = ptrtoint ptr %_138 to i64
  %_142 = and i64 %_139, 7
  %_143 = icmp eq i64 %_142, 0
  br i1 %_143, label %bb52, label %panic10

panic9:                                           ; preds = %bb53
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cc8170fd3fda3df227a567649efc464b) #6
  unreachable

bb52:                                             ; preds = %bb62
  %_209 = load ptr, ptr %tmp, align 8
  %_210 = ptrtoint ptr %_209 to i64
  %_213 = icmp eq i64 %_210, 0
  %_214 = and i1 %_213, true
  %_215 = xor i1 %_214, true
  br i1 %_215, label %bb63, label %panic11

panic10:                                          ; preds = %bb62
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_139, ptr align 8 @alloc_32fef97f1106aadadaa127446b1f80e8) #6
  unreachable

bb63:                                             ; preds = %bb52
  %13 = load ptr, ptr %tmp, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 8
  store ptr null, ptr %14, align 8
  %_49 = load i32, ptr %Di, align 4
  %_48 = sext i32 %_49 to i64
  %_50 = icmp ult i64 %_48, 10
  br i1 %_50, label %bb20, label %panic12

panic11:                                          ; preds = %bb52
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_32fef97f1106aadadaa127446b1f80e8) #6
  unreachable

bb20:                                             ; preds = %bb63
  %15 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_48
  %_47 = load ptr, ptr %15, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_46 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ec0f9bcb090053eE"(ptr %_47) #7
  br i1 %_46, label %bb22, label %bb26

panic12:                                          ; preds = %bb63
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_48, i64 10, ptr align 8 @alloc_61dcc62c7a965c1662ed9e982e5910b6) #6
  unreachable

bb26:                                             ; preds = %bb20
  %_62 = load ptr, ptr %tmp, align 8
  %_64 = load i32, ptr %Di, align 4
  %_63 = sext i32 %_64 to i64
  %_65 = icmp ult i64 %_63, 10
  br i1 %_65, label %bb27, label %panic13

bb22:                                             ; preds = %bb20
  %_51 = load ptr, ptr %tmp, align 8
  %_53 = load i32, ptr %Di, align 4
  %_52 = sext i32 %_53 to i64
  %_54 = icmp ult i64 %_52, 10
  br i1 %_54, label %bb23, label %panic17

bb27:                                             ; preds = %bb26
  %16 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_63
  %17 = getelementptr inbounds i8, ptr %16, i64 8
  %_106 = load ptr, ptr %17, align 8
  %_133 = ptrtoint ptr %_106 to i64
  %_136 = and i64 %_133, 7
  %_137 = icmp eq i64 %_136, 0
  br i1 %_137, label %bb51, label %panic14

panic13:                                          ; preds = %bb26
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_63, i64 10, ptr align 8 @alloc_091342c3d5d2dc232fe70665cec207da) #6
  unreachable

bb51:                                             ; preds = %bb27
  %_217 = ptrtoint ptr %_106 to i64
  %_220 = icmp eq i64 %_217, 0
  %_221 = and i1 %_220, true
  %_222 = xor i1 %_221, true
  br i1 %_222, label %bb64, label %panic15

panic14:                                          ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_133, ptr align 8 @alloc_6519e57884afc28dd353ac6b24dbbb17) #6
  unreachable

bb64:                                             ; preds = %bb51
  %18 = getelementptr inbounds i8, ptr %_106, i64 8
  store ptr %_62, ptr %18, align 8
  %_66 = load ptr, ptr %tmp, align 8
  %_68 = load i32, ptr %Di, align 4
  %_67 = sext i32 %_68 to i64
  %_69 = icmp ult i64 %_67, 10
  br i1 %_69, label %bb28, label %panic16

panic15:                                          ; preds = %bb51
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6519e57884afc28dd353ac6b24dbbb17) #6
  unreachable

bb28:                                             ; preds = %bb64
  %19 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_67
  %20 = getelementptr inbounds i8, ptr %19, i64 8
  store ptr %_66, ptr %20, align 8
  br label %bb15

panic16:                                          ; preds = %bb64
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_67, i64 10, ptr align 8 @alloc_872211bc198586f5f528de59bf40d088) #6
  unreachable

bb23:                                             ; preds = %bb22
  %21 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_52
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  store ptr %_51, ptr %22, align 8
  %_57 = load i32, ptr %Di, align 4
  %_56 = sext i32 %_57 to i64
  %_58 = icmp ult i64 %_56, 10
  br i1 %_58, label %bb24, label %panic18

panic17:                                          ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_52, i64 10, ptr align 8 @alloc_a96ff2bd35e161bdc6a086d6d7e6b8ed) #6
  unreachable

bb24:                                             ; preds = %bb23
  %23 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_56
  %24 = getelementptr inbounds i8, ptr %23, i64 8
  %_55 = load ptr, ptr %24, align 8
  %_60 = load i32, ptr %Di, align 4
  %_59 = sext i32 %_60 to i64
  %_61 = icmp ult i64 %_59, 10
  br i1 %_61, label %bb25, label %panic19

panic18:                                          ; preds = %bb23
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_56, i64 10, ptr align 8 @alloc_f78cae2d5ca63e4118cbfba4b34f9e16) #6
  unreachable

bb25:                                             ; preds = %bb24
  %25 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_59
  store ptr %_55, ptr %25, align 8
  br label %bb15

panic19:                                          ; preds = %bb24
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_59, i64 10, ptr align 8 @alloc_808734b77600ea1539bb6641e40a8b64) #6
  unreachable

bb29:                                             ; preds = %bb39, %bb17
  %_71 = load i32, ptr %Di, align 4
  %_70 = icmp sge i32 %_71, 0
  br i1 %_70, label %bb30, label %bb40

bb40:                                             ; preds = %bb29
  %26 = load i32, ptr %D, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %D, align 4
  br label %bb13

bb30:                                             ; preds = %bb29
  %_75 = load i32, ptr %Di, align 4
  %_74 = sext i32 %_75 to i64
  %_76 = icmp ult i64 %_74, 10
  br i1 %_76, label %bb31, label %panic20

bb31:                                             ; preds = %bb30
  %28 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_74
  %_73 = load ptr, ptr %28, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_72 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6ec0f9bcb090053eE"(ptr %_73) #7
  br i1 %_72, label %bb39, label %bb33

panic20:                                          ; preds = %bb30
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_74, i64 10, ptr align 8 @alloc_ca781ffeb0282b323d11d2f8edee01e7) #6
  unreachable

bb33:                                             ; preds = %bb31
  %_77 = load ptr, ptr %List, align 8
  %_79 = load i32, ptr %Di, align 4
  %_78 = sext i32 %_79 to i64
  %_80 = icmp ult i64 %_78, 10
  br i1 %_80, label %bb34, label %panic21

bb39:                                             ; preds = %bb38, %bb31
  %29 = load i32, ptr %Di, align 4
  %30 = sub i32 %29, 1
  store i32 %30, ptr %Di, align 4
  br label %bb29

bb34:                                             ; preds = %bb33
  %31 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_78
  %32 = getelementptr inbounds i8, ptr %31, i64 8
  %_107 = load ptr, ptr %32, align 8
  %_127 = ptrtoint ptr %_107 to i64
  %_130 = and i64 %_127, 7
  %_131 = icmp eq i64 %_130, 0
  br i1 %_131, label %bb50, label %panic22

panic21:                                          ; preds = %bb33
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_78, i64 10, ptr align 8 @alloc_527d8401c3c98c0ae477f1cff922fe7e) #6
  unreachable

bb50:                                             ; preds = %bb34
  %_224 = ptrtoint ptr %_107 to i64
  %_227 = icmp eq i64 %_224, 0
  %_228 = and i1 %_227, true
  %_229 = xor i1 %_228, true
  br i1 %_229, label %bb65, label %panic23

panic22:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_127, ptr align 8 @alloc_9ad729cbeef756d493028ad50e0e3c78) #6
  unreachable

bb65:                                             ; preds = %bb50
  %33 = getelementptr inbounds i8, ptr %_107, i64 8
  store ptr %_77, ptr %33, align 8
  %_83 = load i32, ptr %Di, align 4
  %_82 = sext i32 %_83 to i64
  %_84 = icmp ult i64 %_82, 10
  br i1 %_84, label %bb35, label %panic24

panic23:                                          ; preds = %bb50
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9ad729cbeef756d493028ad50e0e3c78) #6
  unreachable

bb35:                                             ; preds = %bb65
  %34 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_82
  %_81 = load ptr, ptr %34, align 8
  store ptr %_81, ptr %List, align 8
  %_86 = load i32, ptr %Di, align 4
  %_85 = sext i32 %_86 to i64
  %_87 = icmp ult i64 %_85, 10
  br i1 %_87, label %bb36, label %panic25

panic24:                                          ; preds = %bb65
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_82, i64 10, ptr align 8 @alloc_beb1bd4ecdc50f6545243bdc18edd914) #6
  unreachable

bb36:                                             ; preds = %bb35
  %35 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_85
  %36 = getelementptr inbounds i8, ptr %35, i64 8
  store ptr null, ptr %36, align 8
  %_90 = load i32, ptr %Di, align 4
  %_89 = sext i32 %_90 to i64
  %_91 = icmp ult i64 %_89, 10
  br i1 %_91, label %bb37, label %panic26

panic25:                                          ; preds = %bb35
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_85, i64 10, ptr align 8 @alloc_71e4c061cae057e5f995feb31873dcb2) #6
  unreachable

bb37:                                             ; preds = %bb36
  %37 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_89
  %38 = getelementptr inbounds i8, ptr %37, i64 8
  %_88 = load ptr, ptr %38, align 8
  %_93 = load i32, ptr %Di, align 4
  %_92 = sext i32 %_93 to i64
  %_94 = icmp ult i64 %_92, 10
  br i1 %_94, label %bb38, label %panic27

panic26:                                          ; preds = %bb36
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_89, i64 10, ptr align 8 @alloc_8925e40fb390ae9270ccffeb5ed1a6b4) #6
  unreachable

bb38:                                             ; preds = %bb37
  %39 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_92
  store ptr %_88, ptr %39, align 8
  br label %bb39

panic27:                                          ; preds = %bb37
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_92, i64 10, ptr align 8 @alloc_d370aa31c6e93da2f2ae1e7869b8070c) #6
  unreachable

bb57:                                             ; preds = %bb8
  %_175 = ptrtoint ptr %_0.i to i64
  %_178 = icmp eq i64 %_175, 0
  %_179 = and i1 %_178, true
  %_180 = xor i1 %_179, true
  br i1 %_180, label %bb58, label %panic29

panic28:                                          ; preds = %bb8
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 4, i64 %_169, ptr align 8 @alloc_f20c72fa589a389fdd2f6f3bc4c6f79c) #6
  unreachable

bb58:                                             ; preds = %bb57
  %_30 = load i32, ptr %_0.i, align 4
  %_162 = load ptr, ptr %tmp, align 8
  %_163 = ptrtoint ptr %_162 to i64
  %_166 = and i64 %_163, 7
  %_167 = icmp eq i64 %_166, 0
  br i1 %_167, label %bb56, label %panic30

panic29:                                          ; preds = %bb57
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f20c72fa589a389fdd2f6f3bc4c6f79c) #6
  unreachable

bb56:                                             ; preds = %bb58
  %_181 = load ptr, ptr %tmp, align 8
  %_182 = ptrtoint ptr %_181 to i64
  %_185 = icmp eq i64 %_182, 0
  %_186 = and i1 %_185, true
  %_187 = xor i1 %_186, true
  br i1 %_187, label %bb59, label %panic31

panic30:                                          ; preds = %bb58
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_163, ptr align 8 @alloc_ae3ec5fc66784dd5ebea9822a021589c) #6
  unreachable

bb59:                                             ; preds = %bb56
  %40 = load ptr, ptr %tmp, align 8
  store i32 %_30, ptr %40, align 8
  %_34 = load ptr, ptr %List, align 8
  %_156 = load ptr, ptr %tmp, align 8
  %_157 = ptrtoint ptr %_156 to i64
  %_160 = and i64 %_157, 7
  %_161 = icmp eq i64 %_160, 0
  br i1 %_161, label %bb55, label %panic32

panic31:                                          ; preds = %bb56
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ae3ec5fc66784dd5ebea9822a021589c) #6
  unreachable

bb55:                                             ; preds = %bb59
  %_188 = load ptr, ptr %tmp, align 8
  %_189 = ptrtoint ptr %_188 to i64
  %_192 = icmp eq i64 %_189, 0
  %_193 = and i1 %_192, true
  %_194 = xor i1 %_193, true
  br i1 %_194, label %bb60, label %panic33

panic32:                                          ; preds = %bb59
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_157, ptr align 8 @alloc_45dea327849c71961d3ee8f91a5d559d) #6
  unreachable

bb60:                                             ; preds = %bb55
  %41 = load ptr, ptr %tmp, align 8
  %42 = getelementptr inbounds i8, ptr %41, i64 8
  store ptr %_34, ptr %42, align 8
  %_35 = load ptr, ptr %tmp, align 8
  store ptr %_35, ptr %List, align 8
  %43 = load i32, ptr %i, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %i, align 4
  br label %bb7

panic33:                                          ; preds = %bb55
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_45dea327849c71961d3ee8f91a5d559d) #6
  unreachable

bb3:                                              ; preds = %bb2
  %45 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_15
  %46 = getelementptr inbounds i8, ptr %45, i64 8
  store ptr null, ptr %46, align 8
  %_20 = load i32, ptr %i, align 4
  %_19 = sext i32 %_20 to i64
  %_21 = icmp ult i64 %_19, 10
  br i1 %_21, label %bb4, label %panic35

panic34:                                          ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_15, i64 10, ptr align 8 @alloc_72aced54836ca2b3d4ae38d29635ee1d) #6
  unreachable

bb4:                                              ; preds = %bb3
  %47 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_19
  %48 = getelementptr inbounds i8, ptr %47, i64 8
  %_18 = load ptr, ptr %48, align 8
  %_23 = load i32, ptr %i, align 4
  %_22 = sext i32 %_23 to i64
  %_24 = icmp ult i64 %_22, 10
  br i1 %_24, label %bb5, label %panic36

panic35:                                          ; preds = %bb3
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_19, i64 10, ptr align 8 @alloc_edf493a6e766b7bd74c9d44e7183f20c) #6
  unreachable

bb5:                                              ; preds = %bb4
  %49 = getelementptr inbounds nuw %HeadNode, ptr %B, i64 %_22
  store ptr %_18, ptr %49, align 8
  %50 = load i32, ptr %i, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %i, align 4
  br label %bb1

panic36:                                          ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_22, i64 10, ptr align 8 @alloc_893edf199422b4750eb8f7084f7cd5bd) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; core::panicking::panic_const::panic_const_div_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare i32 @printf(ptr, ...) unnamed_addr #2

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #4

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64, i64, ptr align 8) unnamed_addr #5

attributes #0 = { cold nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { cold noinline noreturn nounwind nonlazybind "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.88.0-nightly (0b45675cf 2025-03-31)"}
