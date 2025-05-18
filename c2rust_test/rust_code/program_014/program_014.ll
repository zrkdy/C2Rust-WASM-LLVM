; ModuleID = '6rpauq6z9l3f0halh8zca4tdf'
source_filename = "6rpauq6z9l3f0halh8zca4tdf"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%tnode = type { i8, [7 x i8], ptr, ptr, ptr }

@alloc_0ed0763d8bf93ac79247e07858374e35 = private unnamed_addr constant [210 x i8] c"unsafe precondition(s) violated: ptr::offset requires the address calculation to not overflow\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@alloc_ec595fc0e82ef92fc59bd74f68296eae = private unnamed_addr constant [73 x i8] c"assertion failed: 0 < pointee_size && pointee_size <= isize::MAX as usize", align 1
@alloc_9d47826c090e9591e8994136d4c866a8 = private unnamed_addr constant [119 x i8] c"/home/xiaoan/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs", align 1
@alloc_f93fe61ec4fb0c87ac2b6e21f3df9769 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_9d47826c090e9591e8994136d4c866a8, [16 x i8] c"w\00\00\00\00\00\00\00\AF\02\00\00\09\00\00\00" }>, align 8
@alloc_f5ffd2fd1476bab43ad89fb40c72d0c5 = private unnamed_addr constant [10 x i8] c"src/lib.rs", align 1
@alloc_ee2bc2983ad77b92b9b70a650ef0d529 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\00\00\00(\00\00\00" }>, align 8
@alloc_f6760422f5f57fa624126bd625166939 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\00\00\00\0D\00\00\00" }>, align 8
@alloc_ba1bf0d081f4fc27094bac12cee33d75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\00\00\00\13\00\00\00" }>, align 8
@alloc_4ed608c88c36042330bf2865ae2a713e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\00\00\00\0D\00\00\00" }>, align 8
@alloc_e1d22b355d8bbbc506668c32625652fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\00\00\00\09\00\00\00" }>, align 8
@alloc_fc49ef6db413be725cc284231279b2e7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\00\00\00$\00\00\00" }>, align 8
@alloc_628e37eba0fc498b7c3dd45f913fbea3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00L\00\00\00\09\00\00\00" }>, align 8
@alloc_1b079427a9a2d0fa28f6d95417650b17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\00\00\00\0F\00\00\00" }>, align 8
@alloc_0c74900cf5508cb257b35e43e47bf9eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\00\00\00\09\00\00\00" }>, align 8
@alloc_c4e0e491ae3554753bb34d5b7ae5a8c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\0A\00\00\00" }>, align 8
@alloc_987ef5f37182fe8978db2835e67d96e9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\00\00\00\09\00\00\00" }>, align 8
@alloc_972876996aded1fd166a250a71bba0f7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\16\00\00\00" }>, align 8
@alloc_6d3d965ec1461b5b11792ddf7f1fee7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\00\00\00\15\00\00\00" }>, align 8
@alloc_713c1736587a7533ff7686e5cad08ff5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00j\00\00\00\16\00\00\00" }>, align 8
@alloc_78bfe98d3284ff32d62726bf1a753672 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00j\00\00\00\15\00\00\00" }>, align 8
@alloc_f27c36731044be073e8f2a3baa9d6db5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00}\00\00\00*\00\00\00" }>, align 8
@alloc_5185148b11bc8d5d8860d9c8af74a0a3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00~\00\00\00\0D\00\00\00" }>, align 8
@alloc_8a2a223e2a26f5657096abd51e7d609a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\7F\00\00\00\13\00\00\00" }>, align 8
@alloc_cb3a21038d5fcaedde6ce3041cf1e00d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\00\00\00\0D\00\00\00" }>, align 8
@alloc_5086773ec26bb191205697fb7e200158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\00\00\00\09\00\00\00" }>, align 8
@alloc_a45cf7c4a54e9c58749687ffe133960c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\00\00\00\08\00\00\00" }>, align 8
@alloc_b84cb17b4d8cf0d355e251b3d06c1595 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00o\00\00\002\00\00\00" }>, align 8
@alloc_68c77518da395391ed16d4ce0a8ec449 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00p\00\00\00\15\00\00\00" }>, align 8
@alloc_e56e2e42c72aa4c8f1e5b206c801e40a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00q\00\00\00\1B\00\00\00" }>, align 8
@alloc_55dea29330452860129a54adfbd44696 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00r\00\00\00\15\00\00\00" }>, align 8
@alloc_f336f54341cefb15bc4756ede647e2ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00]\00\00\002\00\00\00" }>, align 8
@alloc_1bf647b9c6b9ec3e63ad31086e00de1b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00^\00\00\00\15\00\00\00" }>, align 8
@alloc_a06b3758f98af0e6a9c996c3ef9dc7d8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00_\00\00\00\1B\00\00\00" }>, align 8
@alloc_3061c1f6f32b4f90b24e036d0be95b91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00`\00\00\00\15\00\00\00" }>, align 8
@alloc_39eeaedbc25c59b4c97b4de047cdf613 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\A8\00\00\00(\00\00\00" }>, align 8
@alloc_6ab84dd6ad89ebd3d7a23faf67ed6306 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AB\00\00\00\14\00\00\00" }>, align 8
@alloc_968b0e883763e8906b9c402220b7dabf = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AB\00\00\00\09\00\00\00" }>, align 8
@alloc_1f627793a50a1bfe5e41005bab7fbe7a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AE\00\00\00\09\00\00\00" }>, align 8
@alloc_de5b7fd95dbcb3397db1ff33988ae463 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BB\00\00\00\0B\00\00\00" }>, align 8
@alloc_77d2e807751d20f0fd0a4aa38eb5ce4b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BB\00\00\00\0A\00\00\00" }>, align 8
@alloc_67b2947d45cd940c0799c6610521b197 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BC\00\00\00\0B\00\00\00" }>, align 8
@alloc_89d05d0a7fa14a496a0c28278ba8873b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BC\00\00\00\0A\00\00\00" }>, align 8
@alloc_2db45d5f7b7b756461a518cdf1e16b07 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\00\00\00\0B\00\00\00" }>, align 8
@alloc_f18f9a79ac4d12178eb46ca1a5eebbc2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\00\00\00\0A\00\00\00" }>, align 8
@alloc_fa5d5e9a09ee90d32021da800cd401a8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\00\00\00\11\00\00\00" }>, align 8
@alloc_7704355faf1b1f9a24b11efa641da2ba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E1\00\00\00\11\00\00\00" }>, align 8
@alloc_f7b989d52fbfc9fece51377cdd0d0d32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E2\00\00\00\13\00\00\00" }>, align 8
@alloc_9637fe7f86fd86de97c6316d2c899ed9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E2\00\00\00(\00\00\00" }>, align 8
@alloc_f9902446047ad7ff654c95285c6daeba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E3\00\00\00\14\00\00\00" }>, align 8
@alloc_06cc04baa64c5d0ce1ba08a8c3ef39ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EA\00\00\00\10\00\00\00" }>, align 8
@alloc_ea4758bdf3e4d26c02739c87877197b0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EA\00\00\00%\00\00\00" }>, align 8
@alloc_07ea37916a63bbdba4cbb19eedde29f2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\ED\00\00\00\11\00\00\00" }>, align 8
@alloc_e69a38dee15eb51b29ebeb2808cffc30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EE\00\00\00\13\00\00\00" }>, align 8
@alloc_00d24b8434f2a407fe75e661b2960337 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EE\00\00\00\0D\00\00\00" }>, align 8
@alloc_008826ed7acde24c6805a09c68877c59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EF\00\00\00\11\00\00\00" }>, align 8
@alloc_5dcfeeefa3eb2c97019e75646b5c78dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0E\01\00\00\13\00\00\00" }>, align 8
@alloc_efb5805323f249b661931bdb80887bdb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\11\01\00\00\0D\00\00\00" }>, align 8
@alloc_2580dba903362e0a1418632e02f4872f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\01\00\00\09\00\00\00" }>, align 8
@alloc_dce435823578efdccfd2127ce040a33a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\01\00\00\0A\00\00\00" }>, align 8
@alloc_f4b5a2351c53fa70b9bbdf0251d08fad = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\22\01\00\00\05\00\00\00" }>, align 8
@alloc_d64fe9cd7322dc77f3ba98d36abf9ed5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\01\00\00\05\00\00\00" }>, align 8
@alloc_0d8e2e21fc9ffb92d302082c62b36bf3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\01\00\00\10\00\00\00" }>, align 8
@alloc_8f6acd54a81ba99a27bcde0c8a6c2393 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00$\01\00\00\0F\00\00\00" }>, align 8
@alloc_b7a9a5a36933755ed769f37b74798563 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\01\00\00\16\00\00\00" }>, align 8
@alloc_c4c50338748051f90a6b56cf922c1dc2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\01\00\00\15\00\00\00" }>, align 8
@alloc_4775a57d5e59237a80dfa70002970028 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\01\00\00\16\00\00\00" }>, align 8
@alloc_66bf85de1a19ee76f6ff5508e2b3836f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00<\01\00\00\15\00\00\00" }>, align 8
@alloc_5f1a673da9ab2e9352e4854dbb414a52 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00M\01\00\00\0D\00\00\00" }>, align 8
@alloc_c3c3c293130ccf962d63e42eb0d76a8b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\01\00\00\0F\00\00\00" }>, align 8
@alloc_cedf7a3fc3dd82649b6fa7d015d74e84 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00N\01\00\00\09\00\00\00" }>, align 8
@alloc_df171dccad60f1c75c86425b4c474ce7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\01\00\00\09\00\00\00" }>, align 8
@alloc_6333862432cb17828e55e7228bc2ad33 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\01\00\00\09\00\00\00" }>, align 8
@alloc_75afd1acf7786e0fd961259b137fa0e1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00h\01\00\00\08\00\00\00" }>, align 8
@alloc_95b188233bfcfc132df262ceefe1203c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00A\01\00\00\15\00\00\00" }>, align 8
@alloc_e64000dc11c7775fb33fccad0d79faa9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\01\00\00\17\00\00\00" }>, align 8
@alloc_09bb356c9b1dac47a7a9c037a8bc37dd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\01\00\00\11\00\00\00" }>, align 8
@alloc_5bafddca295011d61b0007f2517b5745 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\01\00\00\11\00\00\00" }>, align 8
@alloc_df4a29a0fe2fa9891c2d6668c743e2eb = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\01\00\00\15\00\00\00" }>, align 8
@alloc_b508b10cc8cfa52ced31b70f2d42fc4c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\01\00\00\17\00\00\00" }>, align 8
@alloc_392a2f0c001169818ce36299c31abc53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\002\01\00\00\11\00\00\00" }>, align 8
@alloc_9d9b8f2302a761ddedaad27344d92d7d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\01\00\00\11\00\00\00" }>, align 8
@root = global [8 x i8] zeroinitializer, align 8
@alloc_435af8787e98466298fd69d9155cf3d7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\01\00\00\1A\00\00\00" }>, align 8
@alloc_b071171653be0dec6eeeae1f1fbd1408 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\80\01\00\00\09\00\00\00" }>, align 8
@alloc_dd1bc3b4e7e7496b3f2e5ce39c3a73de = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\81\01\00\00\09\00\00\00" }>, align 8
@alloc_20d4712de33a584d0158c601172b1350 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\82\01\00\00\16\00\00\00" }>, align 8
@alloc_0ee577b5aafe3097cc0cda8b23adbe8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\82\01\00\00\09\00\00\00" }>, align 8
@alloc_b5063e544116bb6faf38d3d111c309a5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\83\01\00\00\16\00\00\00" }>, align 8
@alloc_8228e0ddc8bfa667ddce3504bbc58979 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\83\01\00\00\09\00\00\00" }>, align 8
@alloc_19370c4d5230d64b4e5945b24e76659e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\85\01\00\00\09\00\00\00" }>, align 8
@alloc_b56652097ca95e8a3c64f3cb85908baa = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\85\01\00\00\1E\00\00\00" }>, align 8
@alloc_e9f35d8e27df08867c0d87a4c4fa284b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\87\01\00\00\0F\00\00\00" }>, align 8
@alloc_3c046311c75a7b87a3c06e815bc09c74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\87\01\00\00$\00\00\00" }>, align 8
@alloc_8cf3deec41e4821e115fe0fac7f6f16a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\01\00\00\1E\00\00\00" }>, align 8
@alloc_1fff323b3915963361b166c79282585b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8D\01\00\00\09\00\00\00" }>, align 8
@alloc_cd86b481fd8d41211d74fa01cfcc35fd = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\88\01\00\00\0C\00\00\00" }>, align 8
@alloc_b2c7fe7432d47d37a4f8a4625aea95c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\01\00\00\22\00\00\00" }>, align 8
@alloc_d7eb41ec84cb9ad714b9ca03085d48d5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\8A\01\00\00\0D\00\00\00" }>, align 8
@alloc_925d51738ca071a2f7f4b4fc8a5f074e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\86\01\00\00\1E\00\00\00" }>, align 8
@alloc_647d3a1990b2f9e45dac9a19edc46281 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\86\01\00\00\09\00\00\00" }>, align 8
@alloc_cb5c9a366f952b4b0f200f8b7b598728 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\94\01\00\00\12\00\00\00" }>, align 8
@alloc_25e72b5569ecd70550961445ff7be553 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\95\01\00\00\12\00\00\00" }>, align 8
@alloc_6e96ba25813740385298a00d94688516 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\96\01\00\00\12\00\00\00" }>, align 8
@buffer = global [8 x i8] zeroinitializer, align 8
@bufn = global [4 x i8] zeroinitializer, align 4
@freen = global [4 x i8] zeroinitializer, align 4
@freearr = global [80000 x i8] zeroinitializer, align 8
@storestring = global [4 x i8] zeroinitializer, align 4
@alloc_fc18e86ab289918cf3e2c0aa5adbac7b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AB\01\00\00\09\00\00\00" }>, align 8
@alloc_9ba14eb600e1626eb53eaf8f8316819a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AC\01\00\00\0A\00\00\00" }>, align 8
@alloc_cc8170fd3fda3df227a567649efc464b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AD\01\00\00\11\00\00\00" }>, align 8
@alloc_e8047c038797b3a65755eb2903d04e4b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BD\01\00\00\17\00\00\00" }>, align 8
@alloc_1019acc1a4cf28f5ff3e41de8357b931 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\01\00\00\10\00\00\00" }>, align 8
@alloc_cf7d84ea3f765f8e35f435385ff0bca4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\BE\01\00\00\09\00\00\00" }>, align 8
@alloc_512c7a92151522b874c93ed7c13a171f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C0\01\00\00\0D\00\00\00" }>, align 8
@alloc_b8730a7025440362bac05809dab6cd55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C4\01\00\00\1B\00\00\00" }>, align 8
@alloc_382e3e66260731c55143337016485fba = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C5\01\00\00\15\00\00\00" }>, align 8
@alloc_6e5f0d714c6dd21a6d79ece1412c4b3f = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C5\01\00\00\0D\00\00\00" }>, align 8
@alloc_bdb084a6aab65ee2c9ffafceba9f8b7a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C6\01\00\00)\00\00\00" }>, align 8
@alloc_22b0cb1d2da6fa47a7b0c3f17ff24fc2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C6\01\00\00\0D\00\00\00" }>, align 8
@alloc_44e741677e74567097315b6546b12743 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C7\01\00\00\0D\00\00\00" }>, align 8
@alloc_75ac31e483b001c867712a690bce0600 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\C9\01\00\00\17\00\00\00" }>, align 8
@alloc_fe231ec286c64935b7a81e7bc4fed072 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\01\00\00\12\00\00\00" }>, align 8
@alloc_ea6fe377e867891fc9d32994e86c176d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CA\01\00\00\09\00\00\00" }>, align 8
@alloc_92974a60d8bd8ee7b76cbbb87d11d6d8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CB\01\00\00\09\00\00\00" }>, align 8
@alloc_2d1edfd14ac82e3dae4411bbba08e1c8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CC\01\00\00\0E\00\00\00" }>, align 8
@alloc_06107d73ebca4a0de9bf634fdda4e4df = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CD\01\00\00\1B\00\00\00" }>, align 8
@alloc_d42a63273b4ba672ff81fddf67190284 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CD\01\00\00\09\00\00\00" }>, align 8
@alloc_52d16ff8be7340e057f829cc06541658 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CE\01\00\00\09\00\00\00" }>, align 8
@alloc_fdf2df796600091a3a2664b6b278ec3d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CF\01\00\00\17\00\00\00" }>, align 8
@alloc_bb0596e56811e6488434d819648ccf69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\CF\01\00\00\09\00\00\00" }>, align 8
@alloc_30da9f20112d7387e6409a0639cd93c6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D0\01\00\00\17\00\00\00" }>, align 8
@alloc_5cde9ffbfe51754fefc36502868f2109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D0\01\00\00\09\00\00\00" }>, align 8
@alloc_1c662aefe449bdb79fae03a1b9a94e22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D3\01\00\00\0C\00\00\00" }>, align 8
@alloc_8dd7f2c9c3958d8a210a2bbdb33533a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D4\01\00\00\10\00\00\00" }>, align 8
@alloc_d75c81f320386d0f65c439fb8edcef20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D5\01\00\00\11\00\00\00" }>, align 8
@alloc_6a3423129b8579af2f34bae4d7af34ea = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\D9\01\00\00\0D\00\00\00" }>, align 8
@alloc_32fef97f1106aadadaa127446b1f80e8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AE\01\00\00\0D\00\00\00" }>, align 8
@alloc_9d464bd5b9b88233fbf37fee083abc39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\AE\01\00\00!\00\00\00" }>, align 8
@alloc_160496531cb559f23f40c19879b2aaa7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B2\01\00\00\10\00\00\00" }>, align 8
@alloc_6a3c08fd5645800f60831570f815308c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B5\01\00\00\11\00\00\00" }>, align 8
@alloc_a425f56e7349ceb5df928716f654d971 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B9\01\00\00\11\00\00\00" }>, align 8
@alloc_438398c84c3c2a2c473a73aee51c0931 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\B7\01\00\00\11\00\00\00" }>, align 8
@alloc_cbebbc28abd89329ed05e0cf60e31f6d = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E0\01\00\00\0F\00\00\00" }>, align 8
@alloc_3102d1442863efd14ce6c87366dcf3c3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E1\01\00\00\0E\00\00\00" }>, align 8
@alloc_755cc7f72fe51197ca57050d6898d594 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\E9\01\00\00\09\00\00\00" }>, align 8
@alloc_6e1d2fbacfa8d5267d4c6869e84fdc2a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EB\01\00\00\0D\00\00\00" }>, align 8
@alloc_079f0d4d48c991d78f4b9754108fea8c = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EB\01\00\00\22\00\00\00" }>, align 8
@alloc_8acc1c07702c53f7c8ed6d05dcd3a31e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\ED\01\00\00\13\00\00\00" }>, align 8
@alloc_4a52ff3b35558c87008b8432eef175ff = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\ED\01\00\00(\00\00\00" }>, align 8
@alloc_0aac314a234db30624fea8df23ade201 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F5\01\00\00\11\00\00\00" }>, align 8
@alloc_e7727933010261283292226dfbbb61c7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F0\01\00\00\10\00\00\00" }>, align 8
@alloc_7ef9a8ad7d5bad18c9ebbb919edff5c5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\F3\01\00\00\11\00\00\00" }>, align 8
@alloc_e5e8d1702c1fe77cc7595db089ee3d86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\EC\01\00\00\11\00\00\00" }>, align 8
@alloc_526b12d3753382e92a0c9a3a7388d180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\FF\01\00\00\0A\00\00\00" }>, align 8
@alloc_25a1f4e48918ae1701d7de73ca0ea060 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\00\02\00\00\09\00\00\00" }>, align 8
@alloc_99123c66855a70e64e7cd9a01ba5fd70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\02\02\00\00\12\00\00\00" }>, align 8
@alloc_5b40389847c0b51ef307c75fb255f6f9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\08\02\00\00\12\00\00\00" }>, align 8
@alloc_0bf4e0d6744f50d1b7bd8c1c4e05bd09 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\09\02\00\00\11\00\00\00" }>, align 8
@alloc_189ace792f057af8d4c0f2bde5298951 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0D\02\00\00\11\00\00\00" }>, align 8
@alloc_8ec38f9d0691da5bfd313c29dc7b60ad = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\0B\02\00\00\11\00\00\00" }>, align 8
@nodecnt = global [4 x i8] zeroinitializer, align 4
@srcharr = global [800000 x i8] zeroinitializer, align 8
@srchtop = global [4 x i8] zeroinitializer, align 4
@alloc_4bf63194ca85f85c596ff704bc836e57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1E\02\00\00\05\00\00\00" }>, align 8
@alloc_cae4cf4504d45e7d3b1b2bb83b18b96a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00\1F\02\00\00\05\00\00\00" }>, align 8
@alloc_e898bdd34656d7ec1e936e48992edef4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00 \02\00\00\08\00\00\00" }>, align 8
@alloc_1a0cfd9055369d352d038a5b23229123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\02\00\00\0D\00\00\00" }>, align 8
@alloc_1b4705f90bc541c5507f477e1e64420b = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00!\02\00\00\22\00\00\00" }>, align 8
@alloc_9da86e97fb6a93b029dbcbe7c87d0559 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00#\02\00\00\12\00\00\00" }>, align 8
@alloc_ced1cfb0967c933593eeea17a2c1d687 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00%\02\00\00\08\00\00\00" }>, align 8
@alloc_3ce74fa0eef4ae463c6dd7e0c7d550a7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\02\00\00\0C\00\00\00" }>, align 8
@alloc_2f730b67c1b3676f761bc33513c193d8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00&\02\00\00!\00\00\00" }>, align 8
@alloc_f1120cdb7edaa31fddcd2306503925dc = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\02\00\00\0C\00\00\00" }>, align 8
@alloc_a032a07850a00cbeedcb8ff1b593a993 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00(\02\00\002\00\00\00" }>, align 8
@alloc_cedb99397be4e33b7cae707fbfee3560 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00)\02\00\00\16\00\00\00" }>, align 8
@alloc_5f5836adba3b64f7de7b17a966dbe33a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00,\02\00\00\08\00\00\00" }>, align 8
@alloc_d83d55e18bd6ad7882e3a404b426b616 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00-\02\00\00\0C\00\00\00" }>, align 8
@alloc_1b9e96c7c2808856d828befdbf6eab68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00/\02\00\00\17\00\00\00" }>, align 8
@alloc_170603b64a768b28226b0a6409c7b631 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\02\00\00\13\00\00\00" }>, align 8
@alloc_e71f892506dc0da233308d5ee9b04fec = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\000\02\00\00\09\00\00\00" }>, align 8
@alloc_df24740ee156ab6a0544ef2ccebbb4d2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\02\00\00%\00\00\00" }>, align 8
@alloc_38df4db7110dac3ec7d15bf6692fdc34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\001\02\00\00\09\00\00\00" }>, align 8
@alloc_1a33e92b6bd4741f5fef4d508f36f1c9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\003\02\00\00\08\00\00\00" }>, align 8
@alloc_623af4bbc7bfb303caaf05c477d58fb0 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\02\00\00\0C\00\00\00" }>, align 8
@alloc_02123ecf7e8f5f08e8c14c6d007ad069 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\004\02\00\00 \00\00\00" }>, align 8
@alloc_373c67bc90327b49cd2ae7ec6806042a = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\006\02\00\00\12\00\00\00" }>, align 8
@alloc_df130857e2ee379875af15dbd1d3c156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00B\02\00\00\05\00\00\00" }>, align 8
@alloc_bff501312ee83c950009dd55fd57ceca = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00C\02\00\00\05\00\00\00" }>, align 8
@alloc_076f5716a19e8df3b28b3e04b1f7f811 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\02\00\00!\00\00\00" }>, align 8
@alloc_b19686fddde7421bdc3dd27cca7856ee = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00D\02\00\006\00\00\00" }>, align 8
@alloc_9913977e883814b9c772e0407fb7b160 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00E\02\00\00\14\00\00\00" }>, align 8
@alloc_ff0948a1ee8e64dcf2f9d3e89deb1614 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00G\02\00\00\08\00\00\00" }>, align 8
@alloc_b31d53f0c4e05265397c4e213c784c90 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00I\02\00\00\1B\00\00\00" }>, align 8
@alloc_044da1895963630b2484683b3a5fc245 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\02\00\00\17\00\00\00" }>, align 8
@alloc_9e0d73468c81920de2d6cac62a7db916 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00J\02\00\00\0D\00\00\00" }>, align 8
@alloc_a60a5a97bd02dff23f3ab51f8699ef82 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\02\00\00)\00\00\00" }>, align 8
@alloc_c0f60b84332aa92159d281b8764605db = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00K\02\00\00\0D\00\00\00" }>, align 8
@alloc_b8653b2675c460b5ba810e9203d5a521 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00O\02\00\00\0D\00\00\00" }>, align 8
@alloc_99c14adcf6839db4aec7df70febd7b77 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00P\02\00\00\10\00\00\00" }>, align 8
@alloc_a9e17cdcc07b0fe5824b1954e849603e = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\02\00\00\10\00\00\00" }>, align 8
@alloc_266a6ebe4e29d621d2473cffe920a6a9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Q\02\00\00%\00\00\00" }>, align 8
@alloc_f1cf2b36e941457b8cb55ac0c5ff77d3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\02\00\00 \00\00\00" }>, align 8
@alloc_25e8c6ce586d5e93855fec9caa93d113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00X\02\00\004\00\00\00" }>, align 8
@alloc_f5f3005860f5c2edc4ffaceed8986a91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_f5ffd2fd1476bab43ad89fb40c72d0c5, [16 x i8] c"\0A\00\00\00\00\00\00\00Y\02\00\00\14\00\00\00" }>, align 8

; core::intrinsics::cold_path
; Function Attrs: cold nounwind nonlazybind
define internal void @_ZN4core10intrinsics9cold_path17h38c3f6354a555f02E() unnamed_addr #0 {
start:
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
; Function Attrs: inlinehint nounwind nonlazybind
define internal void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %this, i64 %count, i64 %size) unnamed_addr #1 {
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
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %self) unnamed_addr #1 {
start:
  %_3 = ptrtoint ptr %self to i64
  %_0 = icmp eq i64 %_3, 0
  ret i1 %_0
}

; core::ptr::const_ptr::<impl *const T>::offset_from
; Function Attrs: inlinehint nounwind nonlazybind
define internal i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %self, ptr %origin) unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = ptrtoint ptr %self to i64
  %2 = ptrtoint ptr %origin to i64
  %3 = sub i64 %1, %2
  %4 = sdiv exact i64 %3, 8
  store i64 %4, ptr %0, align 8
  %_0 = load i64, ptr %0, align 8
  ret i64 %_0

bb3:                                              ; No predecessors!
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h6e0ea58e8f0c3298E(ptr align 1 @alloc_ec595fc0e82ef92fc59bd74f68296eae, i64 73, ptr align 8 @alloc_f93fe61ec4fb0c87ac2b6e21f3df9769) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @vecswap(i32 %0, i32 %1, i32 %2, ptr %x) unnamed_addr #2 {
start:
  %n = alloca [4 x i8], align 4
  %j = alloca [4 x i8], align 4
  %i = alloca [4 x i8], align 4
  store i32 %0, ptr %i, align 4
  store i32 %1, ptr %j, align 4
  store i32 %2, ptr %n, align 4
  br label %bb1

bb1:                                              ; preds = %bb12, %start
  %fresh0 = load i32, ptr %n, align 4
  %_6 = load i32, ptr %n, align 4
  %3 = sub i32 %_6, 1
  store i32 %3, ptr %n, align 4
  %_7 = icmp sgt i32 %fresh0, 0
  br i1 %_7, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_11 = load i32, ptr %i, align 4
  %_10 = sext i32 %_11 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_10, i64 8) #7
  %_0.i8 = getelementptr inbounds ptr, ptr %x, i64 %_10
  %_31 = ptrtoint ptr %_0.i8 to i64
  %_34 = and i64 %_31, 7
  %_35 = icmp eq i64 %_34, 0
  br i1 %_35, label %bb9, label %panic

bb9:                                              ; preds = %bb2
  %_37 = ptrtoint ptr %_0.i8 to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb10, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_31, ptr align 8 @alloc_ee2bc2983ad77b92b9b70a650ef0d529) #6
  unreachable

bb10:                                             ; preds = %bb9
  %t = load ptr, ptr %_0.i8, align 8
  %_15 = load i32, ptr %i, align 4
  %_14 = sext i32 %_15 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_14, i64 8) #7
  %_0.i7 = getelementptr inbounds ptr, ptr %x, i64 %_14
  %_56 = ptrtoint ptr %_0.i7 to i64
  %_57 = icmp eq i64 %_56, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb13, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ee2bc2983ad77b92b9b70a650ef0d529) #6
  unreachable

bb13:                                             ; preds = %bb10
  %_19 = load i32, ptr %j, align 4
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_18, i64 8) #7
  %_0.i6 = getelementptr inbounds ptr, ptr %x, i64 %_18
  %_25 = ptrtoint ptr %_0.i6 to i64
  %_28 = and i64 %_25, 7
  %_29 = icmp eq i64 %_28, 0
  br i1 %_29, label %bb8, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f6760422f5f57fa624126bd625166939) #6
  unreachable

bb8:                                              ; preds = %bb13
  %_44 = ptrtoint ptr %_0.i6 to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb11, label %panic4

panic3:                                           ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_25, ptr align 8 @alloc_ba1bf0d081f4fc27094bac12cee33d75) #6
  unreachable

bb11:                                             ; preds = %bb8
  %_16 = load ptr, ptr %_0.i6, align 8
  store ptr %_16, ptr %_0.i7, align 8
  %_23 = load i32, ptr %j, align 4
  %_22 = sext i32 %_23 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_22, i64 8) #7
  %_0.i = getelementptr inbounds ptr, ptr %x, i64 %_22
  %_51 = ptrtoint ptr %_0.i to i64
  %_52 = icmp eq i64 %_51, 0
  %_53 = and i1 %_52, true
  %_54 = xor i1 %_53, true
  br i1 %_54, label %bb12, label %panic5

panic4:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ba1bf0d081f4fc27094bac12cee33d75) #6
  unreachable

bb12:                                             ; preds = %bb11
  store ptr %t, ptr %_0.i, align 8
  %4 = load i32, ptr %i, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %i, align 4
  %6 = load i32, ptr %j, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %j, align 4
  br label %bb1

panic5:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4ed608c88c36042330bf2865ae2a713e) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @ssort1(ptr %x, i32 %n, i32 %depth) unnamed_addr #2 {
start:
  %_132 = alloca [4 x i8], align 4
  %_119 = alloca [4 x i8], align 4
  %v = alloca [4 x i8], align 4
  %r = alloca [4 x i8], align 4
  %d = alloca [4 x i8], align 4
  %c = alloca [4 x i8], align 4
  %b = alloca [4 x i8], align 4
  %a = alloca [4 x i8], align 4
  store i32 0, ptr %a, align 4
  store i32 0, ptr %b, align 4
  store i32 0, ptr %c, align 4
  store i32 0, ptr %d, align 4
  store i32 0, ptr %r, align 4
  store i32 0, ptr %v, align 4
  %_10 = icmp sle i32 %n, 1
  br i1 %_10, label %bb56, label %bb1

bb1:                                              ; preds = %start
  %_11 = call i32 @rand() #7
  %_12 = icmp eq i32 %n, 0
  br i1 %_12, label %panic, label %bb3

bb56:                                             ; preds = %bb53, %start
  ret void

bb3:                                              ; preds = %bb1
  %_13 = icmp eq i32 %n, -1
  %_14 = icmp eq i32 %_11, -2147483648
  %_15 = and i1 %_13, %_14
  br i1 %_15, label %panic1, label %bb4

panic:                                            ; preds = %bb1
; call core::panicking::panic_const::panic_const_rem_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8 @alloc_e1d22b355d8bbbc506668c32625652fd) #6
  unreachable

bb4:                                              ; preds = %bb3
  %0 = srem i32 %_11, %n
  store i32 %0, ptr %a, align 4
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 0, i64 8) #7
  %_248 = ptrtoint ptr %x to i64
  %_251 = and i64 %_248, 7
  %_252 = icmp eq i64 %_251, 0
  br i1 %_252, label %bb68, label %panic2

panic1:                                           ; preds = %bb3
; call core::panicking::panic_const::panic_const_rem_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8 @alloc_e1d22b355d8bbbc506668c32625652fd) #6
  unreachable

bb68:                                             ; preds = %bb4
  %_254 = ptrtoint ptr %x to i64
  %_257 = icmp eq i64 %_254, 0
  %_258 = and i1 %_257, true
  %_259 = xor i1 %_258, true
  br i1 %_259, label %bb69, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_248, ptr align 8 @alloc_fc49ef6db413be725cc284231279b2e7) #6
  unreachable

bb69:                                             ; preds = %bb68
  %t = load ptr, ptr %x, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 0, i64 8) #7
  %_401 = ptrtoint ptr %x to i64
  %_402 = icmp eq i64 %_401, 0
  %_403 = and i1 %_402, true
  %_404 = xor i1 %_403, true
  br i1 %_404, label %bb92, label %panic4

panic3:                                           ; preds = %bb68
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fc49ef6db413be725cc284231279b2e7) #6
  unreachable

bb92:                                             ; preds = %bb69
  %_25 = load i32, ptr %a, align 4
  %_24 = sext i32 %_25 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_24, i64 8) #7
  %_0.i57 = getelementptr inbounds ptr, ptr %x, i64 %_24
  %_242 = ptrtoint ptr %_0.i57 to i64
  %_245 = and i64 %_242, 7
  %_246 = icmp eq i64 %_245, 0
  br i1 %_246, label %bb67, label %panic5

panic4:                                           ; preds = %bb69
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_628e37eba0fc498b7c3dd45f913fbea3) #6
  unreachable

bb67:                                             ; preds = %bb92
  %_261 = ptrtoint ptr %_0.i57 to i64
  %_264 = icmp eq i64 %_261, 0
  %_265 = and i1 %_264, true
  %_266 = xor i1 %_265, true
  br i1 %_266, label %bb70, label %panic6

panic5:                                           ; preds = %bb92
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_242, ptr align 8 @alloc_1b079427a9a2d0fa28f6d95417650b17) #6
  unreachable

bb70:                                             ; preds = %bb67
  %_22 = load ptr, ptr %_0.i57, align 8
  store ptr %_22, ptr %x, align 8
  %_29 = load i32, ptr %a, align 4
  %_28 = sext i32 %_29 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_28, i64 8) #7
  %_0.i56 = getelementptr inbounds ptr, ptr %x, i64 %_28
  %_396 = ptrtoint ptr %_0.i56 to i64
  %_397 = icmp eq i64 %_396, 0
  %_398 = and i1 %_397, true
  %_399 = xor i1 %_398, true
  br i1 %_399, label %bb91, label %panic7

panic6:                                           ; preds = %bb67
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1b079427a9a2d0fa28f6d95417650b17) #6
  unreachable

bb91:                                             ; preds = %bb70
  store ptr %t, ptr %_0.i56, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 0, i64 8) #7
  %_236 = ptrtoint ptr %x to i64
  %_239 = and i64 %_236, 7
  %_240 = icmp eq i64 %_239, 0
  br i1 %_240, label %bb66, label %panic8

panic7:                                           ; preds = %bb70
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0c74900cf5508cb257b35e43e47bf9eb) #6
  unreachable

bb66:                                             ; preds = %bb91
  %_268 = ptrtoint ptr %x to i64
  %_271 = icmp eq i64 %_268, 0
  %_272 = and i1 %_271, true
  %_273 = xor i1 %_272, true
  br i1 %_273, label %bb71, label %panic9

panic8:                                           ; preds = %bb91
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_236, ptr align 8 @alloc_c4e0e491ae3554753bb34d5b7ae5a8c3) #6
  unreachable

bb71:                                             ; preds = %bb66
  %_32 = load ptr, ptr %x, align 8
  %_35 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_32, i64 %_35, i64 1) #7
  %_0.i63 = getelementptr inbounds i8, ptr %_32, i64 %_35
  %_389 = ptrtoint ptr %_0.i63 to i64
  %_392 = icmp eq i64 %_389, 0
  %_393 = and i1 %_392, true
  %_394 = xor i1 %_393, true
  br i1 %_394, label %bb90, label %panic10

panic9:                                           ; preds = %bb66
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c4e0e491ae3554753bb34d5b7ae5a8c3) #6
  unreachable

bb90:                                             ; preds = %bb71
  %_30 = load i8, ptr %_0.i63, align 1
  %1 = sext i8 %_30 to i32
  store i32 %1, ptr %v, align 4
  store i32 1, ptr %b, align 4
  %_36 = load i32, ptr %b, align 4
  store i32 %_36, ptr %a, align 4
  %2 = sub i32 %n, 1
  store i32 %2, ptr %d, align 4
  %_37 = load i32, ptr %d, align 4
  store i32 %_37, ptr %c, align 4
  br label %bb11

panic10:                                          ; preds = %bb71
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_987ef5f37182fe8978db2835e67d96e9) #6
  unreachable

bb11:                                             ; preds = %bb21, %bb82, %bb90
  %_39 = load i32, ptr %b, align 4
  %_40 = load i32, ptr %c, align 4
  %_38 = icmp sle i32 %_39, %_40
  br i1 %_38, label %bb12, label %bb22

bb22:                                             ; preds = %bb32, %bb89, %bb11
  %_70 = load i32, ptr %b, align 4
  %_71 = load i32, ptr %c, align 4
  %_69 = icmp sle i32 %_70, %_71
  br i1 %_69, label %bb23, label %bb33

bb12:                                             ; preds = %bb11
  %_48 = load i32, ptr %b, align 4
  %_47 = sext i32 %_48 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_47, i64 8) #7
  %_0.i54 = getelementptr inbounds ptr, ptr %x, i64 %_47
  %_230 = ptrtoint ptr %_0.i54 to i64
  %_233 = and i64 %_230, 7
  %_234 = icmp eq i64 %_233, 0
  br i1 %_234, label %bb65, label %panic11

bb65:                                             ; preds = %bb12
  %_275 = ptrtoint ptr %_0.i54 to i64
  %_278 = icmp eq i64 %_275, 0
  %_279 = and i1 %_278, true
  %_280 = xor i1 %_279, true
  br i1 %_280, label %bb72, label %panic12

panic11:                                          ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_230, ptr align 8 @alloc_972876996aded1fd166a250a71bba0f7) #6
  unreachable

bb72:                                             ; preds = %bb65
  %_45 = load ptr, ptr %_0.i54, align 8
  %_49 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_45, i64 %_49, i64 1) #7
  %_0.i62 = getelementptr inbounds i8, ptr %_45, i64 %_49
  %_382 = ptrtoint ptr %_0.i62 to i64
  %_385 = icmp eq i64 %_382, 0
  %_386 = and i1 %_385, true
  %_387 = xor i1 %_386, true
  br i1 %_387, label %bb89, label %panic13

panic12:                                          ; preds = %bb65
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_972876996aded1fd166a250a71bba0f7) #6
  unreachable

bb89:                                             ; preds = %bb72
  %_43 = load i8, ptr %_0.i62, align 1
  %_42 = sext i8 %_43 to i32
  %_50 = load i32, ptr %v, align 4
  %3 = sub i32 %_42, %_50
  store i32 %3, ptr %r, align 4
  %_51 = load i32, ptr %r, align 4
  %_41 = icmp sle i32 %_51, 0
  br i1 %_41, label %bb15, label %bb22

panic13:                                          ; preds = %bb72
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6d3d965ec1461b5b11792ddf7f1fee7b) #6
  unreachable

bb15:                                             ; preds = %bb89
  %_52 = load i32, ptr %r, align 4
  %4 = icmp eq i32 %_52, 0
  br i1 %4, label %bb16, label %bb21

bb33:                                             ; preds = %bb86, %bb22
  %_101 = load i32, ptr %b, align 4
  %_102 = load i32, ptr %c, align 4
  %_100 = icmp sgt i32 %_101, %_102
  br i1 %_100, label %bb34, label %bb35

bb23:                                             ; preds = %bb22
  %_79 = load i32, ptr %c, align 4
  %_78 = sext i32 %_79 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_78, i64 8) #7
  %_0.i53 = getelementptr inbounds ptr, ptr %x, i64 %_78
  %_212 = ptrtoint ptr %_0.i53 to i64
  %_215 = and i64 %_212, 7
  %_216 = icmp eq i64 %_215, 0
  br i1 %_216, label %bb62, label %panic14

bb62:                                             ; preds = %bb23
  %_296 = ptrtoint ptr %_0.i53 to i64
  %_299 = icmp eq i64 %_296, 0
  %_300 = and i1 %_299, true
  %_301 = xor i1 %_300, true
  br i1 %_301, label %bb75, label %panic15

panic14:                                          ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_212, ptr align 8 @alloc_713c1736587a7533ff7686e5cad08ff5) #6
  unreachable

bb75:                                             ; preds = %bb62
  %_76 = load ptr, ptr %_0.i53, align 8
  %_80 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_76, i64 %_80, i64 1) #7
  %_0.i61 = getelementptr inbounds i8, ptr %_76, i64 %_80
  %_365 = ptrtoint ptr %_0.i61 to i64
  %_368 = icmp eq i64 %_365, 0
  %_369 = and i1 %_368, true
  %_370 = xor i1 %_369, true
  br i1 %_370, label %bb86, label %panic16

panic15:                                          ; preds = %bb62
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_713c1736587a7533ff7686e5cad08ff5) #6
  unreachable

bb86:                                             ; preds = %bb75
  %_74 = load i8, ptr %_0.i61, align 1
  %_73 = sext i8 %_74 to i32
  %_81 = load i32, ptr %v, align 4
  %5 = sub i32 %_73, %_81
  store i32 %5, ptr %r, align 4
  %_82 = load i32, ptr %r, align 4
  %_72 = icmp sge i32 %_82, 0
  br i1 %_72, label %bb26, label %bb33

panic16:                                          ; preds = %bb75
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_78bfe98d3284ff32d62726bf1a753672) #6
  unreachable

bb26:                                             ; preds = %bb86
  %_83 = load i32, ptr %r, align 4
  %6 = icmp eq i32 %_83, 0
  br i1 %6, label %bb27, label %bb32

bb35:                                             ; preds = %bb33
  %_106 = load i32, ptr %b, align 4
  %_105 = sext i32 %_106 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_105, i64 8) #7
  %_0.i52 = getelementptr inbounds ptr, ptr %x, i64 %_105
  %_194 = ptrtoint ptr %_0.i52 to i64
  %_197 = and i64 %_194, 7
  %_198 = icmp eq i64 %_197, 0
  br i1 %_198, label %bb59, label %panic17

bb34:                                             ; preds = %bb33
  %_121 = load i32, ptr %a, align 4
  %_123 = load i32, ptr %b, align 4
  %_124 = load i32, ptr %a, align 4
  %_122 = sub i32 %_123, %_124
  %_120 = icmp sle i32 %_121, %_122
  br i1 %_120, label %bb40, label %bb41

bb59:                                             ; preds = %bb35
  %_317 = ptrtoint ptr %_0.i52 to i64
  %_320 = icmp eq i64 %_317, 0
  %_321 = and i1 %_320, true
  %_322 = xor i1 %_321, true
  br i1 %_322, label %bb78, label %panic18

panic17:                                          ; preds = %bb35
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_194, ptr align 8 @alloc_f27c36731044be073e8f2a3baa9d6db5) #6
  unreachable

bb78:                                             ; preds = %bb59
  %t_2 = load ptr, ptr %_0.i52, align 8
  %_110 = load i32, ptr %b, align 4
  %_109 = sext i32 %_110 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_109, i64 8) #7
  %_0.i51 = getelementptr inbounds ptr, ptr %x, i64 %_109
  %_350 = ptrtoint ptr %_0.i51 to i64
  %_351 = icmp eq i64 %_350, 0
  %_352 = and i1 %_351, true
  %_353 = xor i1 %_352, true
  br i1 %_353, label %bb83, label %panic19

panic18:                                          ; preds = %bb59
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f27c36731044be073e8f2a3baa9d6db5) #6
  unreachable

bb83:                                             ; preds = %bb78
  %_114 = load i32, ptr %c, align 4
  %_113 = sext i32 %_114 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_113, i64 8) #7
  %_0.i50 = getelementptr inbounds ptr, ptr %x, i64 %_113
  %_188 = ptrtoint ptr %_0.i50 to i64
  %_191 = and i64 %_188, 7
  %_192 = icmp eq i64 %_191, 0
  br i1 %_192, label %bb58, label %panic20

panic19:                                          ; preds = %bb78
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5185148b11bc8d5d8860d9c8af74a0a3) #6
  unreachable

bb58:                                             ; preds = %bb83
  %_324 = ptrtoint ptr %_0.i50 to i64
  %_327 = icmp eq i64 %_324, 0
  %_328 = and i1 %_327, true
  %_329 = xor i1 %_328, true
  br i1 %_329, label %bb79, label %panic21

panic20:                                          ; preds = %bb83
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_188, ptr align 8 @alloc_8a2a223e2a26f5657096abd51e7d609a) #6
  unreachable

bb79:                                             ; preds = %bb58
  %_111 = load ptr, ptr %_0.i50, align 8
  store ptr %_111, ptr %_0.i51, align 8
  %_118 = load i32, ptr %c, align 4
  %_117 = sext i32 %_118 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_117, i64 8) #7
  %_0.i49 = getelementptr inbounds ptr, ptr %x, i64 %_117
  %_345 = ptrtoint ptr %_0.i49 to i64
  %_346 = icmp eq i64 %_345, 0
  %_347 = and i1 %_346, true
  %_348 = xor i1 %_347, true
  br i1 %_348, label %bb82, label %panic22

panic21:                                          ; preds = %bb58
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8a2a223e2a26f5657096abd51e7d609a) #6
  unreachable

bb82:                                             ; preds = %bb79
  store ptr %t_2, ptr %_0.i49, align 8
  %7 = load i32, ptr %b, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %b, align 4
  %9 = load i32, ptr %c, align 4
  %10 = sub i32 %9, 1
  store i32 %10, ptr %c, align 4
  br label %bb11

panic22:                                          ; preds = %bb79
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cb3a21038d5fcaedde6ce3041cf1e00d) #6
  unreachable

bb41:                                             ; preds = %bb34
  %_125 = load i32, ptr %b, align 4
  %_126 = load i32, ptr %a, align 4
  %11 = sub i32 %_125, %_126
  store i32 %11, ptr %_119, align 4
  br label %bb42

bb40:                                             ; preds = %bb34
  %12 = load i32, ptr %a, align 4
  store i32 %12, ptr %_119, align 4
  br label %bb42

bb42:                                             ; preds = %bb40, %bb41
  %13 = load i32, ptr %_119, align 4
  store i32 %13, ptr %r, align 4
  %_129 = load i32, ptr %b, align 4
  %_130 = load i32, ptr %r, align 4
  %_128 = sub i32 %_129, %_130
  %_131 = load i32, ptr %r, align 4
  call void @vecswap(i32 0, i32 %_128, i32 %_131, ptr %x) #7
  %_135 = load i32, ptr %d, align 4
  %_136 = load i32, ptr %c, align 4
  %_134 = sub i32 %_135, %_136
  %_139 = load i32, ptr %d, align 4
  %_138 = sub i32 %n, %_139
  %_137 = sub i32 %_138, 1
  %_133 = icmp sle i32 %_134, %_137
  br i1 %_133, label %bb44, label %bb45

bb45:                                             ; preds = %bb42
  %_143 = load i32, ptr %d, align 4
  %_142 = sub i32 %n, %_143
  %14 = sub i32 %_142, 1
  store i32 %14, ptr %_132, align 4
  br label %bb46

bb44:                                             ; preds = %bb42
  %_140 = load i32, ptr %d, align 4
  %_141 = load i32, ptr %c, align 4
  %15 = sub i32 %_140, %_141
  store i32 %15, ptr %_132, align 4
  br label %bb46

bb46:                                             ; preds = %bb44, %bb45
  %16 = load i32, ptr %_132, align 4
  store i32 %16, ptr %r, align 4
  %_145 = load i32, ptr %b, align 4
  %_147 = load i32, ptr %r, align 4
  %_146 = sub i32 %n, %_147
  %_148 = load i32, ptr %r, align 4
  call void @vecswap(i32 %_145, i32 %_146, i32 %_148, ptr %x) #7
  %_149 = load i32, ptr %b, align 4
  %_150 = load i32, ptr %a, align 4
  %17 = sub i32 %_149, %_150
  store i32 %17, ptr %r, align 4
  %_152 = load i32, ptr %r, align 4
  call void @ssort1(ptr %x, i32 %_152, i32 %depth) #7
  %_159 = load i32, ptr %r, align 4
  %_158 = sext i32 %_159 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_158, i64 8) #7
  %_0.i48 = getelementptr inbounds ptr, ptr %x, i64 %_158
  %_182 = ptrtoint ptr %_0.i48 to i64
  %_185 = and i64 %_182, 7
  %_186 = icmp eq i64 %_185, 0
  br i1 %_186, label %bb57, label %panic23

bb57:                                             ; preds = %bb46
  %_331 = ptrtoint ptr %_0.i48 to i64
  %_334 = icmp eq i64 %_331, 0
  %_335 = and i1 %_334, true
  %_336 = xor i1 %_335, true
  br i1 %_336, label %bb80, label %panic24

panic23:                                          ; preds = %bb46
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_182, ptr align 8 @alloc_5086773ec26bb191205697fb7e200158) #6
  unreachable

bb80:                                             ; preds = %bb57
  %_156 = load ptr, ptr %_0.i48, align 8
  %_160 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_156, i64 %_160, i64 1) #7
  %_0.i60 = getelementptr inbounds i8, ptr %_156, i64 %_160
  %_338 = ptrtoint ptr %_0.i60 to i64
  %_341 = icmp eq i64 %_338, 0
  %_342 = and i1 %_341, true
  %_343 = xor i1 %_342, true
  br i1 %_343, label %bb81, label %panic25

panic24:                                          ; preds = %bb57
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5086773ec26bb191205697fb7e200158) #6
  unreachable

bb81:                                             ; preds = %bb80
  %_154 = load i8, ptr %_0.i60, align 1
  %_153 = sext i8 %_154 to i32
  %18 = icmp eq i32 %_153, 0
  br i1 %18, label %bb53, label %bb51

panic25:                                          ; preds = %bb80
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a45cf7c4a54e9c58749687ffe133960c) #6
  unreachable

bb53:                                             ; preds = %bb51, %bb81
  %_171 = load i32, ptr %d, align 4
  %_172 = load i32, ptr %c, align 4
  %19 = sub i32 %_171, %_172
  store i32 %19, ptr %r, align 4
  %_176 = sext i32 %n to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_176, i64 8) #7
  %_0.i46 = getelementptr inbounds ptr, ptr %x, i64 %_176
  %_179 = load i32, ptr %r, align 4
  %_178 = sext i32 %_179 to i64
  %_177 = sub i64 0, %_178
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_0.i46, i64 %_177, i64 8) #7
  %_0.i45 = getelementptr inbounds ptr, ptr %_0.i46, i64 %_177
  %_180 = load i32, ptr %r, align 4
  call void @ssort1(ptr %_0.i45, i32 %_180, i32 %depth) #7
  br label %bb56

bb51:                                             ; preds = %bb81
  %_164 = load i32, ptr %r, align 4
  %_163 = sext i32 %_164 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_163, i64 8) #7
  %_0.i47 = getelementptr inbounds ptr, ptr %x, i64 %_163
  %_168 = load i32, ptr %a, align 4
  %_167 = add i32 %_168, %n
  %_169 = load i32, ptr %d, align 4
  %_166 = sub i32 %_167, %_169
  %_165 = sub i32 %_166, 1
  %_170 = add i32 %depth, 1
  call void @ssort1(ptr %_0.i47, i32 %_165, i32 %_170) #7
  br label %bb53

bb27:                                             ; preds = %bb26
  %_87 = load i32, ptr %c, align 4
  %_86 = sext i32 %_87 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_86, i64 8) #7
  %_0.i44 = getelementptr inbounds ptr, ptr %x, i64 %_86
  %_206 = ptrtoint ptr %_0.i44 to i64
  %_209 = and i64 %_206, 7
  %_210 = icmp eq i64 %_209, 0
  br i1 %_210, label %bb61, label %panic26

bb32:                                             ; preds = %bb84, %bb26
  %20 = load i32, ptr %c, align 4
  %21 = sub i32 %20, 1
  store i32 %21, ptr %c, align 4
  br label %bb22

bb61:                                             ; preds = %bb27
  %_303 = ptrtoint ptr %_0.i44 to i64
  %_306 = icmp eq i64 %_303, 0
  %_307 = and i1 %_306, true
  %_308 = xor i1 %_307, true
  br i1 %_308, label %bb76, label %panic27

panic26:                                          ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_206, ptr align 8 @alloc_b84cb17b4d8cf0d355e251b3d06c1595) #6
  unreachable

bb76:                                             ; preds = %bb61
  %t_1 = load ptr, ptr %_0.i44, align 8
  %_91 = load i32, ptr %c, align 4
  %_90 = sext i32 %_91 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_90, i64 8) #7
  %_0.i43 = getelementptr inbounds ptr, ptr %x, i64 %_90
  %_360 = ptrtoint ptr %_0.i43 to i64
  %_361 = icmp eq i64 %_360, 0
  %_362 = and i1 %_361, true
  %_363 = xor i1 %_362, true
  br i1 %_363, label %bb85, label %panic28

panic27:                                          ; preds = %bb61
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b84cb17b4d8cf0d355e251b3d06c1595) #6
  unreachable

bb85:                                             ; preds = %bb76
  %_95 = load i32, ptr %d, align 4
  %_94 = sext i32 %_95 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_94, i64 8) #7
  %_0.i42 = getelementptr inbounds ptr, ptr %x, i64 %_94
  %_200 = ptrtoint ptr %_0.i42 to i64
  %_203 = and i64 %_200, 7
  %_204 = icmp eq i64 %_203, 0
  br i1 %_204, label %bb60, label %panic29

panic28:                                          ; preds = %bb76
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_68c77518da395391ed16d4ce0a8ec449) #6
  unreachable

bb60:                                             ; preds = %bb85
  %_310 = ptrtoint ptr %_0.i42 to i64
  %_313 = icmp eq i64 %_310, 0
  %_314 = and i1 %_313, true
  %_315 = xor i1 %_314, true
  br i1 %_315, label %bb77, label %panic30

panic29:                                          ; preds = %bb85
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_200, ptr align 8 @alloc_e56e2e42c72aa4c8f1e5b206c801e40a) #6
  unreachable

bb77:                                             ; preds = %bb60
  %_92 = load ptr, ptr %_0.i42, align 8
  store ptr %_92, ptr %_0.i43, align 8
  %_99 = load i32, ptr %d, align 4
  %_98 = sext i32 %_99 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_98, i64 8) #7
  %_0.i41 = getelementptr inbounds ptr, ptr %x, i64 %_98
  %_355 = ptrtoint ptr %_0.i41 to i64
  %_356 = icmp eq i64 %_355, 0
  %_357 = and i1 %_356, true
  %_358 = xor i1 %_357, true
  br i1 %_358, label %bb84, label %panic31

panic30:                                          ; preds = %bb60
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e56e2e42c72aa4c8f1e5b206c801e40a) #6
  unreachable

bb84:                                             ; preds = %bb77
  store ptr %t_1, ptr %_0.i41, align 8
  %22 = load i32, ptr %d, align 4
  %23 = sub i32 %22, 1
  store i32 %23, ptr %d, align 4
  br label %bb32

panic31:                                          ; preds = %bb77
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_55dea29330452860129a54adfbd44696) #6
  unreachable

bb16:                                             ; preds = %bb15
  %_56 = load i32, ptr %a, align 4
  %_55 = sext i32 %_56 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_55, i64 8) #7
  %_0.i40 = getelementptr inbounds ptr, ptr %x, i64 %_55
  %_224 = ptrtoint ptr %_0.i40 to i64
  %_227 = and i64 %_224, 7
  %_228 = icmp eq i64 %_227, 0
  br i1 %_228, label %bb64, label %panic32

bb21:                                             ; preds = %bb87, %bb15
  %24 = load i32, ptr %b, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %b, align 4
  br label %bb11

bb64:                                             ; preds = %bb16
  %_282 = ptrtoint ptr %_0.i40 to i64
  %_285 = icmp eq i64 %_282, 0
  %_286 = and i1 %_285, true
  %_287 = xor i1 %_286, true
  br i1 %_287, label %bb73, label %panic33

panic32:                                          ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_224, ptr align 8 @alloc_f336f54341cefb15bc4756ede647e2ba) #6
  unreachable

bb73:                                             ; preds = %bb64
  %t_0 = load ptr, ptr %_0.i40, align 8
  %_60 = load i32, ptr %a, align 4
  %_59 = sext i32 %_60 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_59, i64 8) #7
  %_0.i39 = getelementptr inbounds ptr, ptr %x, i64 %_59
  %_377 = ptrtoint ptr %_0.i39 to i64
  %_378 = icmp eq i64 %_377, 0
  %_379 = and i1 %_378, true
  %_380 = xor i1 %_379, true
  br i1 %_380, label %bb88, label %panic34

panic33:                                          ; preds = %bb64
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f336f54341cefb15bc4756ede647e2ba) #6
  unreachable

bb88:                                             ; preds = %bb73
  %_64 = load i32, ptr %b, align 4
  %_63 = sext i32 %_64 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_63, i64 8) #7
  %_0.i38 = getelementptr inbounds ptr, ptr %x, i64 %_63
  %_218 = ptrtoint ptr %_0.i38 to i64
  %_221 = and i64 %_218, 7
  %_222 = icmp eq i64 %_221, 0
  br i1 %_222, label %bb63, label %panic35

panic34:                                          ; preds = %bb73
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1bf647b9c6b9ec3e63ad31086e00de1b) #6
  unreachable

bb63:                                             ; preds = %bb88
  %_289 = ptrtoint ptr %_0.i38 to i64
  %_292 = icmp eq i64 %_289, 0
  %_293 = and i1 %_292, true
  %_294 = xor i1 %_293, true
  br i1 %_294, label %bb74, label %panic36

panic35:                                          ; preds = %bb88
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_218, ptr align 8 @alloc_a06b3758f98af0e6a9c996c3ef9dc7d8) #6
  unreachable

bb74:                                             ; preds = %bb63
  %_61 = load ptr, ptr %_0.i38, align 8
  store ptr %_61, ptr %_0.i39, align 8
  %_68 = load i32, ptr %b, align 4
  %_67 = sext i32 %_68 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %x, i64 %_67, i64 8) #7
  %_0.i = getelementptr inbounds ptr, ptr %x, i64 %_67
  %_372 = ptrtoint ptr %_0.i to i64
  %_373 = icmp eq i64 %_372, 0
  %_374 = and i1 %_373, true
  %_375 = xor i1 %_374, true
  br i1 %_375, label %bb87, label %panic37

panic36:                                          ; preds = %bb63
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a06b3758f98af0e6a9c996c3ef9dc7d8) #6
  unreachable

bb87:                                             ; preds = %bb74
  store ptr %t_0, ptr %_0.i, align 8
  %26 = load i32, ptr %a, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %a, align 4
  br label %bb21

panic37:                                          ; preds = %bb74
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3061c1f6f32b4f90b24e036d0be95b91) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @ssort1main(ptr %x, i32 %n) unnamed_addr #2 {
start:
  call void @ssort1(ptr %x, i32 %n, i32 0) #7
  ret void
}

; Function Attrs: nounwind nonlazybind
define void @vecswap2(ptr %0, ptr %1, i32 %2) unnamed_addr #2 {
start:
  %n = alloca [4 x i8], align 4
  %b = alloca [8 x i8], align 8
  %a = alloca [8 x i8], align 8
  store ptr %0, ptr %a, align 8
  store ptr %1, ptr %b, align 8
  store i32 %2, ptr %n, align 4
  br label %bb1

bb1:                                              ; preds = %bb13, %start
  %fresh11 = load i32, ptr %n, align 4
  %_5 = load i32, ptr %n, align 4
  %3 = sub i32 %_5, 1
  store i32 %3, ptr %n, align 4
  %_6 = icmp sgt i32 %fresh11, 0
  br i1 %_6, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  ret void

bb2:                                              ; preds = %bb1
  %_33 = load ptr, ptr %a, align 8
  %_34 = ptrtoint ptr %_33 to i64
  %_37 = and i64 %_34, 7
  %_38 = icmp eq i64 %_37, 0
  br i1 %_38, label %bb9, label %panic

bb9:                                              ; preds = %bb2
  %_39 = load ptr, ptr %a, align 8
  %_40 = ptrtoint ptr %_39 to i64
  %_43 = icmp eq i64 %_40, 0
  %_44 = and i1 %_43, true
  %_45 = xor i1 %_44, true
  br i1 %_45, label %bb10, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_34, ptr align 8 @alloc_39eeaedbc25c59b4c97b4de047cdf613) #6
  unreachable

bb10:                                             ; preds = %bb9
  %4 = load ptr, ptr %a, align 8
  %t = load ptr, ptr %4, align 8
  %fresh12 = load ptr, ptr %a, align 8
  %_10 = load ptr, ptr %a, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_10, i64 1, i64 8) #7
  %_0.i8 = getelementptr inbounds ptr, ptr %_10, i64 1
  store ptr %_0.i8, ptr %a, align 8
  %_27 = load ptr, ptr %b, align 8
  %_28 = ptrtoint ptr %_27 to i64
  %_31 = and i64 %_28, 7
  %_32 = icmp eq i64 %_31, 0
  br i1 %_32, label %bb8, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_39eeaedbc25c59b4c97b4de047cdf613) #6
  unreachable

bb8:                                              ; preds = %bb10
  %_46 = load ptr, ptr %b, align 8
  %_47 = ptrtoint ptr %_46 to i64
  %_50 = icmp eq i64 %_47, 0
  %_51 = and i1 %_50, true
  %_52 = xor i1 %_51, true
  br i1 %_52, label %bb11, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_28, ptr align 8 @alloc_6ab84dd6ad89ebd3d7a23faf67ed6306) #6
  unreachable

bb11:                                             ; preds = %bb8
  %5 = load ptr, ptr %b, align 8
  %_11 = load ptr, ptr %5, align 8
  %_22 = ptrtoint ptr %fresh12 to i64
  %_25 = and i64 %_22, 7
  %_26 = icmp eq i64 %_25, 0
  br i1 %_26, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6ab84dd6ad89ebd3d7a23faf67ed6306) #6
  unreachable

bb7:                                              ; preds = %bb11
  %_54 = ptrtoint ptr %fresh12 to i64
  %_57 = icmp eq i64 %_54, 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_22, ptr align 8 @alloc_968b0e883763e8906b9c402220b7dabf) #6
  unreachable

bb12:                                             ; preds = %bb7
  store ptr %_11, ptr %fresh12, align 8
  %fresh13 = load ptr, ptr %b, align 8
  %_14 = load ptr, ptr %b, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_14, i64 1, i64 8) #7
  %_0.i = getelementptr inbounds ptr, ptr %_14, i64 1
  store ptr %_0.i, ptr %b, align 8
  %_16 = ptrtoint ptr %fresh13 to i64
  %_19 = and i64 %_16, 7
  %_20 = icmp eq i64 %_19, 0
  br i1 %_20, label %bb6, label %panic6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_968b0e883763e8906b9c402220b7dabf) #6
  unreachable

bb6:                                              ; preds = %bb12
  %_61 = ptrtoint ptr %fresh13 to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb13, label %panic7

panic6:                                           ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_16, ptr align 8 @alloc_1f627793a50a1bfe5e41005bab7fbe7a) #6
  unreachable

bb13:                                             ; preds = %bb6
  store ptr %t, ptr %fresh13, align 8
  br label %bb1

panic7:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1f627793a50a1bfe5e41005bab7fbe7a) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define ptr @med3func(ptr %a, ptr %b, ptr %c, i32 %depth) unnamed_addr #2 {
start:
  %vc = alloca [4 x i8], align 4
  %vb = alloca [4 x i8], align 4
  %va = alloca [4 x i8], align 4
  %_0 = alloca [8 x i8], align 8
  store i32 0, ptr %va, align 4
  store i32 0, ptr %vb, align 4
  store i32 0, ptr %vc, align 4
  %_57 = ptrtoint ptr %a to i64
  %_60 = and i64 %_57, 7
  %_61 = icmp eq i64 %_60, 0
  br i1 %_61, label %bb22, label %panic

bb22:                                             ; preds = %start
  %_63 = ptrtoint ptr %a to i64
  %_66 = icmp eq i64 %_63, 0
  %_67 = and i1 %_66, true
  %_68 = xor i1 %_67, true
  br i1 %_68, label %bb23, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_57, ptr align 8 @alloc_de5b7fd95dbcb3397db1ff33988ae463) #6
  unreachable

bb23:                                             ; preds = %bb22
  %_10 = load ptr, ptr %a, align 8
  %_11 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_10, i64 %_11, i64 1) #7
  %_0.i10 = getelementptr inbounds i8, ptr %_10, i64 %_11
  %_98 = ptrtoint ptr %_0.i10 to i64
  %_101 = icmp eq i64 %_98, 0
  %_102 = and i1 %_101, true
  %_103 = xor i1 %_102, true
  br i1 %_103, label %bb28, label %panic2

panic1:                                           ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_de5b7fd95dbcb3397db1ff33988ae463) #6
  unreachable

bb28:                                             ; preds = %bb23
  %_8 = load i8, ptr %_0.i10, align 1
  %0 = sext i8 %_8 to i32
  store i32 %0, ptr %va, align 4
  %_51 = ptrtoint ptr %b to i64
  %_54 = and i64 %_51, 7
  %_55 = icmp eq i64 %_54, 0
  br i1 %_55, label %bb21, label %panic3

panic2:                                           ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_77d2e807751d20f0fd0a4aa38eb5ce4b) #6
  unreachable

bb21:                                             ; preds = %bb28
  %_70 = ptrtoint ptr %b to i64
  %_73 = icmp eq i64 %_70, 0
  %_74 = and i1 %_73, true
  %_75 = xor i1 %_74, true
  br i1 %_75, label %bb24, label %panic4

panic3:                                           ; preds = %bb28
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_51, ptr align 8 @alloc_67b2947d45cd940c0799c6610521b197) #6
  unreachable

bb24:                                             ; preds = %bb21
  %_14 = load ptr, ptr %b, align 8
  %_15 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_14, i64 %_15, i64 1) #7
  %_0.i9 = getelementptr inbounds i8, ptr %_14, i64 %_15
  %_91 = ptrtoint ptr %_0.i9 to i64
  %_94 = icmp eq i64 %_91, 0
  %_95 = and i1 %_94, true
  %_96 = xor i1 %_95, true
  br i1 %_96, label %bb27, label %panic5

panic4:                                           ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_67b2947d45cd940c0799c6610521b197) #6
  unreachable

bb27:                                             ; preds = %bb24
  %_12 = load i8, ptr %_0.i9, align 1
  %1 = sext i8 %_12 to i32
  store i32 %1, ptr %vb, align 4
  %_17 = load i32, ptr %va, align 4
  %_18 = load i32, ptr %vb, align 4
  %_16 = icmp eq i32 %_17, %_18
  br i1 %_16, label %bb3, label %bb4

panic5:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_89d05d0a7fa14a496a0c28278ba8873b) #6
  unreachable

bb4:                                              ; preds = %bb27
  %_45 = ptrtoint ptr %c to i64
  %_48 = and i64 %_45, 7
  %_49 = icmp eq i64 %_48, 0
  br i1 %_49, label %bb20, label %panic6

bb3:                                              ; preds = %bb27
  store ptr %a, ptr %_0, align 8
  br label %bb19

bb20:                                             ; preds = %bb4
  %_77 = ptrtoint ptr %c to i64
  %_80 = icmp eq i64 %_77, 0
  %_81 = and i1 %_80, true
  %_82 = xor i1 %_81, true
  br i1 %_82, label %bb25, label %panic7

panic6:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_45, ptr align 8 @alloc_2db45d5f7b7b756461a518cdf1e16b07) #6
  unreachable

bb25:                                             ; preds = %bb20
  %_21 = load ptr, ptr %c, align 8
  %_22 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_21, i64 %_22, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %_21, i64 %_22
  %_84 = ptrtoint ptr %_0.i to i64
  %_87 = icmp eq i64 %_84, 0
  %_88 = and i1 %_87, true
  %_89 = xor i1 %_88, true
  br i1 %_89, label %bb26, label %panic8

panic7:                                           ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2db45d5f7b7b756461a518cdf1e16b07) #6
  unreachable

bb26:                                             ; preds = %bb25
  %_19 = load i8, ptr %_0.i, align 1
  %2 = sext i8 %_19 to i32
  store i32 %2, ptr %vc, align 4
  %_24 = load i32, ptr %vc, align 4
  %_25 = load i32, ptr %va, align 4
  %_23 = icmp eq i32 %_24, %_25
  br i1 %_23, label %bb7, label %bb6

panic8:                                           ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f18f9a79ac4d12178eb46ca1a5eebbc2) #6
  unreachable

bb6:                                              ; preds = %bb26
  %_27 = load i32, ptr %vc, align 4
  %_28 = load i32, ptr %vb, align 4
  %_26 = icmp eq i32 %_27, %_28
  br i1 %_26, label %bb7, label %bb8

bb7:                                              ; preds = %bb6, %bb26
  store ptr %c, ptr %_0, align 8
  br label %bb19

bb8:                                              ; preds = %bb6
  %_30 = load i32, ptr %va, align 4
  %_31 = load i32, ptr %vb, align 4
  %_29 = icmp slt i32 %_30, %_31
  br i1 %_29, label %bb9, label %bb10

bb10:                                             ; preds = %bb8
  %_39 = load i32, ptr %vb, align 4
  %_40 = load i32, ptr %vc, align 4
  %_38 = icmp sgt i32 %_39, %_40
  br i1 %_38, label %bb15, label %bb16

bb9:                                              ; preds = %bb8
  %_33 = load i32, ptr %vb, align 4
  %_34 = load i32, ptr %vc, align 4
  %_32 = icmp slt i32 %_33, %_34
  br i1 %_32, label %bb11, label %bb12

bb16:                                             ; preds = %bb10
  %_42 = load i32, ptr %va, align 4
  %_43 = load i32, ptr %vc, align 4
  %_41 = icmp slt i32 %_42, %_43
  br i1 %_41, label %bb17, label %bb18

bb15:                                             ; preds = %bb10
  store ptr %b, ptr %_0, align 8
  br label %bb19

bb18:                                             ; preds = %bb16
  store ptr %c, ptr %_0, align 8
  br label %bb19

bb17:                                             ; preds = %bb16
  store ptr %a, ptr %_0, align 8
  br label %bb19

bb19:                                             ; preds = %bb3, %bb7, %bb11, %bb13, %bb14, %bb15, %bb17, %bb18
  %3 = load ptr, ptr %_0, align 8
  ret ptr %3

bb12:                                             ; preds = %bb9
  %_36 = load i32, ptr %va, align 4
  %_37 = load i32, ptr %vc, align 4
  %_35 = icmp slt i32 %_36, %_37
  br i1 %_35, label %bb13, label %bb14

bb11:                                             ; preds = %bb9
  store ptr %b, ptr %_0, align 8
  br label %bb19

bb14:                                             ; preds = %bb12
  store ptr %a, ptr %_0, align 8
  br label %bb19

bb13:                                             ; preds = %bb12
  store ptr %c, ptr %_0, align 8
  br label %bb19
}

; Function Attrs: nounwind nonlazybind
define void @inssort(ptr %a, i32 %0, i32 %d) unnamed_addr #2 {
start:
  %t = alloca [8 x i8], align 8
  %s = alloca [8 x i8], align 8
  %pj = alloca [8 x i8], align 8
  %pi = alloca [8 x i8], align 8
  %n = alloca [4 x i8], align 4
  store i32 %0, ptr %n, align 4
  store ptr null, ptr %pi, align 8
  store ptr null, ptr %pj, align 8
  store ptr null, ptr %s, align 8
  store ptr null, ptr %t, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 1, i64 8) #7
  %_0.i20 = getelementptr inbounds ptr, ptr %a, i64 1
  store ptr %_0.i20, ptr %pi, align 8
  br label %bb2

bb2:                                              ; preds = %bb20, %start
  %1 = load i32, ptr %n, align 4
  %2 = sub i32 %1, 1
  store i32 %2, ptr %n, align 4
  %_11 = load i32, ptr %n, align 4
  %_10 = icmp sgt i32 %_11, 0
  br i1 %_10, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  ret void

bb3:                                              ; preds = %bb2
  %_12 = load ptr, ptr %pi, align 8
  store ptr %_12, ptr %pj, align 8
  br label %bb5

bb5:                                              ; preds = %bb32, %bb3
  %_14 = load ptr, ptr %pj, align 8
  %_13 = icmp ugt ptr %_14, %a
  br i1 %_13, label %bb6, label %bb20

bb20:                                             ; preds = %bb33, %bb5
  %_56 = load ptr, ptr %pi, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_56, i64 1, i64 8) #7
  %_0.i = getelementptr inbounds ptr, ptr %_56, i64 1
  store ptr %_0.i, ptr %pi, align 8
  br label %bb2

bb6:                                              ; preds = %bb5
  %_18 = load ptr, ptr %pj, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_18, i64 -1, i64 8) #7
  %_0.i19 = getelementptr inbounds ptr, ptr %_18, i64 -1
  %_82 = ptrtoint ptr %_0.i19 to i64
  %_85 = and i64 %_82, 7
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %bb26, label %panic

bb26:                                             ; preds = %bb6
  %_88 = ptrtoint ptr %_0.i19 to i64
  %_91 = icmp eq i64 %_88, 0
  %_92 = and i1 %_91, true
  %_93 = xor i1 %_92, true
  br i1 %_93, label %bb27, label %panic1

panic:                                            ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_82, ptr align 8 @alloc_fa5d5e9a09ee90d32021da800cd401a8) #6
  unreachable

bb27:                                             ; preds = %bb26
  %_16 = load ptr, ptr %_0.i19, align 8
  %_21 = sext i32 %d to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_16, i64 %_21, i64 1) #7
  %_0.i24 = getelementptr inbounds i8, ptr %_16, i64 %_21
  store ptr %_0.i24, ptr %s, align 8
  %_75 = load ptr, ptr %pj, align 8
  %_76 = ptrtoint ptr %_75 to i64
  %_79 = and i64 %_76, 7
  %_80 = icmp eq i64 %_79, 0
  br i1 %_80, label %bb25, label %panic2

panic1:                                           ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fa5d5e9a09ee90d32021da800cd401a8) #6
  unreachable

bb25:                                             ; preds = %bb27
  %_94 = load ptr, ptr %pj, align 8
  %_95 = ptrtoint ptr %_94 to i64
  %_98 = icmp eq i64 %_95, 0
  %_99 = and i1 %_98, true
  %_100 = xor i1 %_99, true
  br i1 %_100, label %bb28, label %panic3

panic2:                                           ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_76, ptr align 8 @alloc_7704355faf1b1f9a24b11efa641da2ba) #6
  unreachable

bb28:                                             ; preds = %bb25
  %3 = load ptr, ptr %pj, align 8
  %_23 = load ptr, ptr %3, align 8
  %_24 = sext i32 %d to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_23, i64 %_24, i64 1) #7
  %_0.i23 = getelementptr inbounds i8, ptr %_23, i64 %_24
  store ptr %_0.i23, ptr %t, align 8
  br label %bb10

panic3:                                           ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7704355faf1b1f9a24b11efa641da2ba) #6
  unreachable

bb10:                                             ; preds = %bb12, %bb28
  %_155 = load ptr, ptr %s, align 8
  %_156 = ptrtoint ptr %_155 to i64
  %_159 = icmp eq i64 %_156, 0
  %_160 = and i1 %_159, true
  %_161 = xor i1 %_160, true
  br i1 %_161, label %bb37, label %panic4

bb37:                                             ; preds = %bb10
  %4 = load ptr, ptr %s, align 8
  %_27 = load i8, ptr %4, align 1
  %_26 = sext i8 %_27 to i32
  %_148 = load ptr, ptr %t, align 8
  %_149 = ptrtoint ptr %_148 to i64
  %_152 = icmp eq i64 %_149, 0
  %_153 = and i1 %_152, true
  %_154 = xor i1 %_153, true
  br i1 %_154, label %bb36, label %panic5

panic4:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f7b989d52fbfc9fece51377cdd0d0d32) #6
  unreachable

bb36:                                             ; preds = %bb37
  %5 = load ptr, ptr %t, align 8
  %_29 = load i8, ptr %5, align 1
  %_28 = sext i8 %_29 to i32
  %_25 = icmp eq i32 %_26, %_28
  br i1 %_25, label %bb11, label %bb15

panic5:                                           ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9637fe7f86fd86de97c6316d2c899ed9) #6
  unreachable

bb15:                                             ; preds = %bb35, %bb36
  %_134 = load ptr, ptr %s, align 8
  %_135 = ptrtoint ptr %_134 to i64
  %_138 = icmp eq i64 %_135, 0
  %_139 = and i1 %_138, true
  %_140 = xor i1 %_139, true
  br i1 %_140, label %bb34, label %panic7

bb11:                                             ; preds = %bb36
  %_141 = load ptr, ptr %s, align 8
  %_142 = ptrtoint ptr %_141 to i64
  %_145 = icmp eq i64 %_142, 0
  %_146 = and i1 %_145, true
  %_147 = xor i1 %_146, true
  br i1 %_147, label %bb35, label %panic6

bb35:                                             ; preds = %bb11
  %6 = load ptr, ptr %s, align 8
  %_31 = load i8, ptr %6, align 1
  %_30 = sext i8 %_31 to i32
  %7 = icmp eq i32 %_30, 0
  br i1 %7, label %bb15, label %bb12

panic6:                                           ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f9902446047ad7ff654c95285c6daeba) #6
  unreachable

bb12:                                             ; preds = %bb35
  %_33 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_33, i64 1, i64 1) #7
  %_0.i22 = getelementptr inbounds i8, ptr %_33, i64 1
  store ptr %_0.i22, ptr %s, align 8
  %_35 = load ptr, ptr %t, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_35, i64 1, i64 1) #7
  %_0.i21 = getelementptr inbounds i8, ptr %_35, i64 1
  store ptr %_0.i21, ptr %t, align 8
  br label %bb10

bb34:                                             ; preds = %bb15
  %8 = load ptr, ptr %s, align 8
  %_38 = load i8, ptr %8, align 1
  %_37 = sext i8 %_38 to i32
  %_127 = load ptr, ptr %t, align 8
  %_128 = ptrtoint ptr %_127 to i64
  %_131 = icmp eq i64 %_128, 0
  %_132 = and i1 %_131, true
  %_133 = xor i1 %_132, true
  br i1 %_133, label %bb33, label %panic8

panic7:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_06cc04baa64c5d0ce1ba08a8c3ef39ff) #6
  unreachable

bb33:                                             ; preds = %bb34
  %9 = load ptr, ptr %t, align 8
  %_40 = load i8, ptr %9, align 1
  %_39 = sext i8 %_40 to i32
  %_36 = icmp sle i32 %_37, %_39
  br i1 %_36, label %bb20, label %bb16

panic8:                                           ; preds = %bb34
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ea4758bdf3e4d26c02739c87877197b0) #6
  unreachable

bb16:                                             ; preds = %bb33
  %_69 = load ptr, ptr %pj, align 8
  %_70 = ptrtoint ptr %_69 to i64
  %_73 = and i64 %_70, 7
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %bb24, label %panic9

bb24:                                             ; preds = %bb16
  %_101 = load ptr, ptr %pj, align 8
  %_102 = ptrtoint ptr %_101 to i64
  %_105 = icmp eq i64 %_102, 0
  %_106 = and i1 %_105, true
  %_107 = xor i1 %_106, true
  br i1 %_107, label %bb29, label %panic10

panic9:                                           ; preds = %bb16
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_70, ptr align 8 @alloc_07ea37916a63bbdba4cbb19eedde29f2) #6
  unreachable

bb29:                                             ; preds = %bb24
  %10 = load ptr, ptr %pj, align 8
  %_41 = load ptr, ptr %10, align 8
  store ptr %_41, ptr %t, align 8
  %_44 = load ptr, ptr %pj, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_44, i64 -1, i64 8) #7
  %_0.i18 = getelementptr inbounds ptr, ptr %_44, i64 -1
  %_64 = ptrtoint ptr %_0.i18 to i64
  %_67 = and i64 %_64, 7
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb23, label %panic11

panic10:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_07ea37916a63bbdba4cbb19eedde29f2) #6
  unreachable

bb23:                                             ; preds = %bb29
  %_109 = ptrtoint ptr %_0.i18 to i64
  %_112 = icmp eq i64 %_109, 0
  %_113 = and i1 %_112, true
  %_114 = xor i1 %_113, true
  br i1 %_114, label %bb30, label %panic12

panic11:                                          ; preds = %bb29
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_64, ptr align 8 @alloc_e69a38dee15eb51b29ebeb2808cffc30) #6
  unreachable

bb30:                                             ; preds = %bb23
  %_42 = load ptr, ptr %_0.i18, align 8
  %_57 = load ptr, ptr %pj, align 8
  %_58 = ptrtoint ptr %_57 to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb22, label %panic13

panic12:                                          ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e69a38dee15eb51b29ebeb2808cffc30) #6
  unreachable

bb22:                                             ; preds = %bb30
  %_115 = load ptr, ptr %pj, align 8
  %_116 = ptrtoint ptr %_115 to i64
  %_119 = icmp eq i64 %_116, 0
  %_120 = and i1 %_119, true
  %_121 = xor i1 %_120, true
  br i1 %_121, label %bb31, label %panic14

panic13:                                          ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_00d24b8434f2a407fe75e661b2960337) #6
  unreachable

bb31:                                             ; preds = %bb22
  %11 = load ptr, ptr %pj, align 8
  store ptr %_42, ptr %11, align 8
  %_49 = load ptr, ptr %pj, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_49, i64 -1, i64 8) #7
  %_0.i17 = getelementptr inbounds ptr, ptr %_49, i64 -1
  %_123 = ptrtoint ptr %_0.i17 to i64
  %_124 = icmp eq i64 %_123, 0
  %_125 = and i1 %_124, true
  %_126 = xor i1 %_125, true
  br i1 %_126, label %bb32, label %panic15

panic14:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_00d24b8434f2a407fe75e661b2960337) #6
  unreachable

bb32:                                             ; preds = %bb31
  %_52 = load ptr, ptr %t, align 8
  store ptr %_52, ptr %_0.i17, align 8
  %_54 = load ptr, ptr %pj, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_54, i64 -1, i64 8) #7
  %_0.i16 = getelementptr inbounds ptr, ptr %_54, i64 -1
  store ptr %_0.i16, ptr %pj, align 8
  br label %bb5

panic15:                                          ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_008826ed7acde24c6805a09c68877c59) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @ssort2(ptr %a, i32 %n, i32 %depth) unnamed_addr #2 {
start:
  %_164 = alloca [8 x i8], align 8
  %_139 = alloca [8 x i8], align 8
  %t = alloca [8 x i8], align 8
  %pn = alloca [8 x i8], align 8
  %pm = alloca [8 x i8], align 8
  %pl = alloca [8 x i8], align 8
  %pd = alloca [8 x i8], align 8
  %pc = alloca [8 x i8], align 8
  %pb = alloca [8 x i8], align 8
  %pa = alloca [8 x i8], align 8
  %partval = alloca [4 x i8], align 4
  %r = alloca [4 x i8], align 4
  %d = alloca [4 x i8], align 4
  store i32 0, ptr %d, align 4
  store i32 0, ptr %r, align 4
  store i32 0, ptr %partval, align 4
  store ptr null, ptr %pa, align 8
  store ptr null, ptr %pb, align 8
  store ptr null, ptr %pc, align 8
  store ptr null, ptr %pd, align 8
  store ptr null, ptr %pl, align 8
  store ptr null, ptr %pm, align 8
  store ptr null, ptr %pn, align 8
  store ptr null, ptr %t, align 8
  %_15 = icmp slt i32 %n, 10
  br i1 %_15, label %bb1, label %bb2

bb2:                                              ; preds = %start
  store ptr %a, ptr %pl, align 8
  %_23 = icmp eq i32 %n, -2147483648
  %_24 = and i1 false, %_23
  br i1 %_24, label %panic, label %bb4

bb1:                                              ; preds = %start
  call void @inssort(ptr %a, i32 %n, i32 %depth) #7
  br label %bb80

bb4:                                              ; preds = %bb2
  %_19 = sdiv i32 %n, 2
  %_18 = sext i32 %_19 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_18, i64 8) #7
  %_0.i81 = getelementptr inbounds ptr, ptr %a, i64 %_18
  store ptr %_0.i81, ptr %pm, align 8
  %_27 = sub i32 %n, 1
  %_26 = sext i32 %_27 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_26, i64 8) #7
  %_0.i80 = getelementptr inbounds ptr, ptr %a, i64 %_26
  store ptr %_0.i80, ptr %pn, align 8
  %_28 = icmp sgt i32 %n, 30
  br i1 %_28, label %bb7, label %bb19

panic:                                            ; preds = %bb2
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_5dcfeeefa3eb2c97019e75646b5c78dd) #6
  unreachable

bb19:                                             ; preds = %bb9, %bb4
  %_70 = load ptr, ptr %pl, align 8
  %_71 = load ptr, ptr %pm, align 8
  %_72 = load ptr, ptr %pn, align 8
  %_69 = call ptr @med3func(ptr %_70, ptr %_71, ptr %_72, i32 %depth) #7
  store ptr %_69, ptr %pm, align 8
  %_362 = ptrtoint ptr %a to i64
  %_365 = and i64 %_362, 7
  %_366 = icmp eq i64 %_365, 0
  br i1 %_366, label %bb100, label %panic2

bb7:                                              ; preds = %bb4
  %_32 = icmp eq i32 %n, -2147483648
  %_33 = and i1 false, %_32
  br i1 %_33, label %panic1, label %bb9

bb9:                                              ; preds = %bb7
  %0 = sdiv i32 %n, 8
  store i32 %0, ptr %d, align 4
  %_35 = load ptr, ptr %pl, align 8
  %_37 = load ptr, ptr %pl, align 8
  %_39 = load i32, ptr %d, align 4
  %_38 = sext i32 %_39 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_37, i64 %_38, i64 8) #7
  %_0.i79 = getelementptr inbounds ptr, ptr %_37, i64 %_38
  %_41 = load ptr, ptr %pl, align 8
  %_44 = load i32, ptr %d, align 4
  %_43 = mul i32 2, %_44
  %_42 = sext i32 %_43 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_41, i64 %_42, i64 8) #7
  %_0.i78 = getelementptr inbounds ptr, ptr %_41, i64 %_42
  %_34 = call ptr @med3func(ptr %_35, ptr %_0.i79, ptr %_0.i78, i32 %depth) #7
  store ptr %_34, ptr %pl, align 8
  %_47 = load ptr, ptr %pm, align 8
  %_50 = load i32, ptr %d, align 4
  %_49 = sext i32 %_50 to i64
  %_48 = sub i64 0, %_49
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_47, i64 %_48, i64 8) #7
  %_0.i77 = getelementptr inbounds ptr, ptr %_47, i64 %_48
  %_51 = load ptr, ptr %pm, align 8
  %_53 = load ptr, ptr %pm, align 8
  %_55 = load i32, ptr %d, align 4
  %_54 = sext i32 %_55 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_53, i64 %_54, i64 8) #7
  %_0.i76 = getelementptr inbounds ptr, ptr %_53, i64 %_54
  %_45 = call ptr @med3func(ptr %_0.i77, ptr %_51, ptr %_0.i76, i32 %depth) #7
  store ptr %_45, ptr %pm, align 8
  %_58 = load ptr, ptr %pn, align 8
  %_62 = load i32, ptr %d, align 4
  %_61 = mul i32 2, %_62
  %_60 = sext i32 %_61 to i64
  %_59 = sub i64 0, %_60
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_58, i64 %_59, i64 8) #7
  %_0.i75 = getelementptr inbounds ptr, ptr %_58, i64 %_59
  %_64 = load ptr, ptr %pn, align 8
  %_67 = load i32, ptr %d, align 4
  %_66 = sext i32 %_67 to i64
  %_65 = sub i64 0, %_66
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_64, i64 %_65, i64 8) #7
  %_0.i74 = getelementptr inbounds ptr, ptr %_64, i64 %_65
  %_68 = load ptr, ptr %pn, align 8
  %_56 = call ptr @med3func(ptr %_0.i75, ptr %_0.i74, ptr %_68, i32 %depth) #7
  store ptr %_56, ptr %pn, align 8
  br label %bb19

panic1:                                           ; preds = %bb7
; call core::panicking::panic_const::panic_const_div_overflow
  call void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8 @alloc_efb5805323f249b661931bdb80887bdb) #6
  unreachable

bb100:                                            ; preds = %bb19
  %_368 = ptrtoint ptr %a to i64
  %_371 = icmp eq i64 %_368, 0
  %_372 = and i1 %_371, true
  %_373 = xor i1 %_372, true
  br i1 %_373, label %bb101, label %panic3

panic2:                                           ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_362, ptr align 8 @alloc_2580dba903362e0a1418632e02f4872f) #6
  unreachable

bb101:                                            ; preds = %bb100
  %_73 = load ptr, ptr %a, align 8
  store ptr %_73, ptr %t, align 8
  %_355 = load ptr, ptr %pm, align 8
  %_356 = ptrtoint ptr %_355 to i64
  %_359 = and i64 %_356, 7
  %_360 = icmp eq i64 %_359, 0
  br i1 %_360, label %bb99, label %panic4

panic3:                                           ; preds = %bb100
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2580dba903362e0a1418632e02f4872f) #6
  unreachable

bb99:                                             ; preds = %bb101
  %_374 = load ptr, ptr %pm, align 8
  %_375 = ptrtoint ptr %_374 to i64
  %_378 = icmp eq i64 %_375, 0
  %_379 = and i1 %_378, true
  %_380 = xor i1 %_379, true
  br i1 %_380, label %bb102, label %panic5

panic4:                                           ; preds = %bb101
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_356, ptr align 8 @alloc_dce435823578efdccfd2127ce040a33a) #6
  unreachable

bb102:                                            ; preds = %bb99
  %1 = load ptr, ptr %pm, align 8
  %_74 = load ptr, ptr %1, align 8
  %_350 = ptrtoint ptr %a to i64
  %_353 = and i64 %_350, 7
  %_354 = icmp eq i64 %_353, 0
  br i1 %_354, label %bb98, label %panic6

panic5:                                           ; preds = %bb99
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_dce435823578efdccfd2127ce040a33a) #6
  unreachable

bb98:                                             ; preds = %bb102
  %_382 = ptrtoint ptr %a to i64
  %_385 = icmp eq i64 %_382, 0
  %_386 = and i1 %_385, true
  %_387 = xor i1 %_386, true
  br i1 %_387, label %bb103, label %panic7

panic6:                                           ; preds = %bb102
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_350, ptr align 8 @alloc_f4b5a2351c53fa70b9bbdf0251d08fad) #6
  unreachable

bb103:                                            ; preds = %bb98
  store ptr %_74, ptr %a, align 8
  %_75 = load ptr, ptr %t, align 8
  %_343 = load ptr, ptr %pm, align 8
  %_344 = ptrtoint ptr %_343 to i64
  %_347 = and i64 %_344, 7
  %_348 = icmp eq i64 %_347, 0
  br i1 %_348, label %bb97, label %panic8

panic7:                                           ; preds = %bb98
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f4b5a2351c53fa70b9bbdf0251d08fad) #6
  unreachable

bb97:                                             ; preds = %bb103
  %_388 = load ptr, ptr %pm, align 8
  %_389 = ptrtoint ptr %_388 to i64
  %_392 = icmp eq i64 %_389, 0
  %_393 = and i1 %_392, true
  %_394 = xor i1 %_393, true
  br i1 %_394, label %bb104, label %panic9

panic8:                                           ; preds = %bb103
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_344, ptr align 8 @alloc_d64fe9cd7322dc77f3ba98d36abf9ed5) #6
  unreachable

bb104:                                            ; preds = %bb97
  %2 = load ptr, ptr %pm, align 8
  store ptr %_75, ptr %2, align 8
  %_338 = ptrtoint ptr %a to i64
  %_341 = and i64 %_338, 7
  %_342 = icmp eq i64 %_341, 0
  br i1 %_342, label %bb96, label %panic10

panic9:                                           ; preds = %bb97
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d64fe9cd7322dc77f3ba98d36abf9ed5) #6
  unreachable

bb96:                                             ; preds = %bb104
  %_396 = ptrtoint ptr %a to i64
  %_399 = icmp eq i64 %_396, 0
  %_400 = and i1 %_399, true
  %_401 = xor i1 %_400, true
  br i1 %_401, label %bb105, label %panic11

panic10:                                          ; preds = %bb104
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_338, ptr align 8 @alloc_0d8e2e21fc9ffb92d302082c62b36bf3) #6
  unreachable

bb105:                                            ; preds = %bb96
  %_78 = load ptr, ptr %a, align 8
  %_79 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_78, i64 %_79, i64 1) #7
  %_0.i85 = getelementptr inbounds i8, ptr %_78, i64 %_79
  %_529 = ptrtoint ptr %_0.i85 to i64
  %_532 = icmp eq i64 %_529, 0
  %_533 = and i1 %_532, true
  %_534 = xor i1 %_533, true
  br i1 %_534, label %bb124, label %panic12

panic11:                                          ; preds = %bb96
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0d8e2e21fc9ffb92d302082c62b36bf3) #6
  unreachable

bb124:                                            ; preds = %bb105
  %_76 = load i8, ptr %_0.i85, align 1
  %3 = sext i8 %_76 to i32
  store i32 %3, ptr %partval, align 4
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 1, i64 8) #7
  %_0.i73 = getelementptr inbounds ptr, ptr %a, i64 1
  store ptr %_0.i73, ptr %pb, align 8
  %_82 = load ptr, ptr %pb, align 8
  store ptr %_82, ptr %pa, align 8
  %_85 = sext i32 %n to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_85, i64 8) #7
  %_0.i72 = getelementptr inbounds ptr, ptr %a, i64 %_85
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_0.i72, i64 -1, i64 8) #7
  %_0.i71 = getelementptr inbounds ptr, ptr %_0.i72, i64 -1
  store ptr %_0.i71, ptr %pd, align 8
  %_88 = load ptr, ptr %pd, align 8
  store ptr %_88, ptr %pc, align 8
  br label %bb25

panic12:                                          ; preds = %bb105
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8f6acd54a81ba99a27bcde0c8a6c2393) #6
  unreachable

bb25:                                             ; preds = %bb31, %bb119, %bb124
  %_90 = load ptr, ptr %pb, align 8
  %_91 = load ptr, ptr %pc, align 8
  %_89 = icmp ule ptr %_90, %_91
  br i1 %_89, label %bb26, label %bb33

bb33:                                             ; preds = %bb39, %bb123, %bb25
  %_109 = load ptr, ptr %pb, align 8
  %_110 = load ptr, ptr %pc, align 8
  %_108 = icmp ule ptr %_109, %_110
  br i1 %_108, label %bb34, label %bb41

bb26:                                             ; preds = %bb25
  %_331 = load ptr, ptr %pb, align 8
  %_332 = ptrtoint ptr %_331 to i64
  %_335 = and i64 %_332, 7
  %_336 = icmp eq i64 %_335, 0
  br i1 %_336, label %bb95, label %panic13

bb95:                                             ; preds = %bb26
  %_402 = load ptr, ptr %pb, align 8
  %_403 = ptrtoint ptr %_402 to i64
  %_406 = icmp eq i64 %_403, 0
  %_407 = and i1 %_406, true
  %_408 = xor i1 %_407, true
  br i1 %_408, label %bb106, label %panic14

panic13:                                          ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_332, ptr align 8 @alloc_b7a9a5a36933755ed769f37b74798563) #6
  unreachable

bb106:                                            ; preds = %bb95
  %4 = load ptr, ptr %pb, align 8
  %_96 = load ptr, ptr %4, align 8
  %_97 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_96, i64 %_97, i64 1) #7
  %_0.i84 = getelementptr inbounds i8, ptr %_96, i64 %_97
  %_522 = ptrtoint ptr %_0.i84 to i64
  %_525 = icmp eq i64 %_522, 0
  %_526 = and i1 %_525, true
  %_527 = xor i1 %_526, true
  br i1 %_527, label %bb123, label %panic15

panic14:                                          ; preds = %bb95
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b7a9a5a36933755ed769f37b74798563) #6
  unreachable

bb123:                                            ; preds = %bb106
  %_94 = load i8, ptr %_0.i84, align 1
  %_93 = sext i8 %_94 to i32
  %_98 = load i32, ptr %partval, align 4
  %5 = sub i32 %_93, %_98
  store i32 %5, ptr %r, align 4
  %_99 = load i32, ptr %r, align 4
  %_92 = icmp sle i32 %_99, 0
  br i1 %_92, label %bb28, label %bb33

panic15:                                          ; preds = %bb106
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c4c50338748051f90a6b56cf922c1dc2) #6
  unreachable

bb28:                                             ; preds = %bb123
  %_100 = load i32, ptr %r, align 4
  %6 = icmp eq i32 %_100, 0
  br i1 %6, label %bb29, label %bb31

bb41:                                             ; preds = %bb122, %bb33
  %_128 = load ptr, ptr %pb, align 8
  %_129 = load ptr, ptr %pc, align 8
  %_127 = icmp ugt ptr %_128, %_129
  br i1 %_127, label %bb42, label %bb43

bb34:                                             ; preds = %bb33
  %_301 = load ptr, ptr %pc, align 8
  %_302 = ptrtoint ptr %_301 to i64
  %_305 = and i64 %_302, 7
  %_306 = icmp eq i64 %_305, 0
  br i1 %_306, label %bb90, label %panic16

bb90:                                             ; preds = %bb34
  %_437 = load ptr, ptr %pc, align 8
  %_438 = ptrtoint ptr %_437 to i64
  %_441 = icmp eq i64 %_438, 0
  %_442 = and i1 %_441, true
  %_443 = xor i1 %_442, true
  br i1 %_443, label %bb111, label %panic17

panic16:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_302, ptr align 8 @alloc_4775a57d5e59237a80dfa70002970028) #6
  unreachable

bb111:                                            ; preds = %bb90
  %7 = load ptr, ptr %pc, align 8
  %_115 = load ptr, ptr %7, align 8
  %_116 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_115, i64 %_116, i64 1) #7
  %_0.i83 = getelementptr inbounds i8, ptr %_115, i64 %_116
  %_515 = ptrtoint ptr %_0.i83 to i64
  %_518 = icmp eq i64 %_515, 0
  %_519 = and i1 %_518, true
  %_520 = xor i1 %_519, true
  br i1 %_520, label %bb122, label %panic18

panic17:                                          ; preds = %bb90
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4775a57d5e59237a80dfa70002970028) #6
  unreachable

bb122:                                            ; preds = %bb111
  %_113 = load i8, ptr %_0.i83, align 1
  %_112 = sext i8 %_113 to i32
  %_117 = load i32, ptr %partval, align 4
  %8 = sub i32 %_112, %_117
  store i32 %8, ptr %r, align 4
  %_118 = load i32, ptr %r, align 4
  %_111 = icmp sge i32 %_118, 0
  br i1 %_111, label %bb36, label %bb41

panic18:                                          ; preds = %bb111
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_66bf85de1a19ee76f6ff5508e2b3836f) #6
  unreachable

bb36:                                             ; preds = %bb122
  %_119 = load i32, ptr %r, align 4
  %9 = icmp eq i32 %_119, 0
  br i1 %9, label %bb37, label %bb39

bb43:                                             ; preds = %bb41
  %_271 = load ptr, ptr %pb, align 8
  %_272 = ptrtoint ptr %_271 to i64
  %_275 = and i64 %_272, 7
  %_276 = icmp eq i64 %_275, 0
  br i1 %_276, label %bb85, label %panic19

bb42:                                             ; preds = %bb41
  %_138 = sext i32 %n to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_138, i64 8) #7
  %_0.i68 = getelementptr inbounds ptr, ptr %a, i64 %_138
  store ptr %_0.i68, ptr %pn, align 8
  %_143 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i56 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_143, ptr %a) #7
  %_147 = load ptr, ptr %pb, align 8
  %_149 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i55 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_147, ptr %_149) #7
  %_140 = icmp sle i64 %_0.i56, %_0.i55
  br i1 %_140, label %bb49, label %bb51

bb85:                                             ; preds = %bb43
  %_472 = load ptr, ptr %pb, align 8
  %_473 = ptrtoint ptr %_472 to i64
  %_476 = icmp eq i64 %_473, 0
  %_477 = and i1 %_476, true
  %_478 = xor i1 %_477, true
  br i1 %_478, label %bb116, label %panic20

panic19:                                          ; preds = %bb43
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_272, ptr align 8 @alloc_5f1a673da9ab2e9352e4854dbb414a52) #6
  unreachable

bb116:                                            ; preds = %bb85
  %10 = load ptr, ptr %pb, align 8
  %_130 = load ptr, ptr %10, align 8
  store ptr %_130, ptr %t, align 8
  %_265 = load ptr, ptr %pc, align 8
  %_266 = ptrtoint ptr %_265 to i64
  %_269 = and i64 %_266, 7
  %_270 = icmp eq i64 %_269, 0
  br i1 %_270, label %bb84, label %panic21

panic20:                                          ; preds = %bb85
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5f1a673da9ab2e9352e4854dbb414a52) #6
  unreachable

bb84:                                             ; preds = %bb116
  %_479 = load ptr, ptr %pc, align 8
  %_480 = ptrtoint ptr %_479 to i64
  %_483 = icmp eq i64 %_480, 0
  %_484 = and i1 %_483, true
  %_485 = xor i1 %_484, true
  br i1 %_485, label %bb117, label %panic22

panic21:                                          ; preds = %bb116
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_266, ptr align 8 @alloc_c3c3c293130ccf962d63e42eb0d76a8b) #6
  unreachable

bb117:                                            ; preds = %bb84
  %11 = load ptr, ptr %pc, align 8
  %_131 = load ptr, ptr %11, align 8
  %_259 = load ptr, ptr %pb, align 8
  %_260 = ptrtoint ptr %_259 to i64
  %_263 = and i64 %_260, 7
  %_264 = icmp eq i64 %_263, 0
  br i1 %_264, label %bb83, label %panic23

panic22:                                          ; preds = %bb84
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c3c3c293130ccf962d63e42eb0d76a8b) #6
  unreachable

bb83:                                             ; preds = %bb117
  %_486 = load ptr, ptr %pb, align 8
  %_487 = ptrtoint ptr %_486 to i64
  %_490 = icmp eq i64 %_487, 0
  %_491 = and i1 %_490, true
  %_492 = xor i1 %_491, true
  br i1 %_492, label %bb118, label %panic24

panic23:                                          ; preds = %bb117
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_260, ptr align 8 @alloc_cedf7a3fc3dd82649b6fa7d015d74e84) #6
  unreachable

bb118:                                            ; preds = %bb83
  %12 = load ptr, ptr %pb, align 8
  store ptr %_131, ptr %12, align 8
  %_132 = load ptr, ptr %t, align 8
  %_253 = load ptr, ptr %pc, align 8
  %_254 = ptrtoint ptr %_253 to i64
  %_257 = and i64 %_254, 7
  %_258 = icmp eq i64 %_257, 0
  br i1 %_258, label %bb82, label %panic25

panic24:                                          ; preds = %bb83
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cedf7a3fc3dd82649b6fa7d015d74e84) #6
  unreachable

bb82:                                             ; preds = %bb118
  %_493 = load ptr, ptr %pc, align 8
  %_494 = ptrtoint ptr %_493 to i64
  %_497 = icmp eq i64 %_494, 0
  %_498 = and i1 %_497, true
  %_499 = xor i1 %_498, true
  br i1 %_499, label %bb119, label %panic26

panic25:                                          ; preds = %bb118
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_254, ptr align 8 @alloc_df171dccad60f1c75c86425b4c474ce7) #6
  unreachable

bb119:                                            ; preds = %bb82
  %13 = load ptr, ptr %pc, align 8
  store ptr %_132, ptr %13, align 8
  %_134 = load ptr, ptr %pb, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_134, i64 1, i64 8) #7
  %_0.i70 = getelementptr inbounds ptr, ptr %_134, i64 1
  store ptr %_0.i70, ptr %pb, align 8
  %_136 = load ptr, ptr %pc, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_136, i64 -1, i64 8) #7
  %_0.i69 = getelementptr inbounds ptr, ptr %_136, i64 -1
  store ptr %_0.i69, ptr %pc, align 8
  br label %bb25

panic26:                                          ; preds = %bb82
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df171dccad60f1c75c86425b4c474ce7) #6
  unreachable

bb51:                                             ; preds = %bb42
  %_154 = load ptr, ptr %pb, align 8
  %_156 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i54 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_154, ptr %_156) #7
  store i64 %_0.i54, ptr %_139, align 8
  br label %bb53

bb49:                                             ; preds = %bb42
  %_151 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i53 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_151, ptr %a) #7
  store i64 %_0.i53, ptr %_139, align 8
  br label %bb53

bb53:                                             ; preds = %bb49, %bb51
  %14 = load i64, ptr %_139, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %r, align 4
  %_159 = load ptr, ptr %pb, align 8
  %_162 = load i32, ptr %r, align 4
  %_161 = sext i32 %_162 to i64
  %_160 = sub i64 0, %_161
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_159, i64 %_160, i64 8) #7
  %_0.i67 = getelementptr inbounds ptr, ptr %_159, i64 %_160
  %_163 = load i32, ptr %r, align 4
  call void @vecswap2(ptr %a, ptr %_0.i67, i32 %_163) #7
  %_168 = load ptr, ptr %pd, align 8
  %_170 = load ptr, ptr %pc, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i52 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_168, ptr %_170) #7
  %_174 = load ptr, ptr %pn, align 8
  %_176 = load ptr, ptr %pd, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i51 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_174, ptr %_176) #7
  %_171 = sub i64 %_0.i51, 1
  %_165 = icmp sle i64 %_0.i52, %_171
  br i1 %_165, label %bb58, label %bb60

bb60:                                             ; preds = %bb53
  %_184 = load ptr, ptr %pn, align 8
  %_186 = load ptr, ptr %pd, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i50 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_184, ptr %_186) #7
  %16 = sub i64 %_0.i50, 1
  store i64 %16, ptr %_164, align 8
  br label %bb62

bb58:                                             ; preds = %bb53
  %_179 = load ptr, ptr %pd, align 8
  %_181 = load ptr, ptr %pc, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i49 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_179, ptr %_181) #7
  store i64 %_0.i49, ptr %_164, align 8
  br label %bb62

bb62:                                             ; preds = %bb58, %bb60
  %17 = load i64, ptr %_164, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %r, align 4
  %_189 = load ptr, ptr %pb, align 8
  %_191 = load ptr, ptr %pn, align 8
  %_194 = load i32, ptr %r, align 4
  %_193 = sext i32 %_194 to i64
  %_192 = sub i64 0, %_193
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_191, i64 %_192, i64 8) #7
  %_0.i66 = getelementptr inbounds ptr, ptr %_191, i64 %_192
  %_195 = load i32, ptr %r, align 4
  call void @vecswap2(ptr %_189, ptr %_0.i66, i32 %_195) #7
  %_198 = load ptr, ptr %pb, align 8
  %_200 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i48 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_198, ptr %_200) #7
  %19 = trunc i64 %_0.i48 to i32
  store i32 %19, ptr %r, align 4
  %_202 = load i32, ptr %r, align 4
  %_201 = icmp sgt i32 %_202, 1
  br i1 %_201, label %bb66, label %bb67

bb67:                                             ; preds = %bb66, %bb62
  %_211 = load i32, ptr %r, align 4
  %_210 = sext i32 %_211 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_210, i64 8) #7
  %_0.i65 = getelementptr inbounds ptr, ptr %a, i64 %_210
  %_248 = ptrtoint ptr %_0.i65 to i64
  %_251 = and i64 %_248, 7
  %_252 = icmp eq i64 %_251, 0
  br i1 %_252, label %bb81, label %panic27

bb66:                                             ; preds = %bb62
  %_204 = load i32, ptr %r, align 4
  call void @ssort2(ptr %a, i32 %_204, i32 %depth) #7
  br label %bb67

bb81:                                             ; preds = %bb67
  %_501 = ptrtoint ptr %_0.i65 to i64
  %_504 = icmp eq i64 %_501, 0
  %_505 = and i1 %_504, true
  %_506 = xor i1 %_505, true
  br i1 %_506, label %bb120, label %panic28

panic27:                                          ; preds = %bb67
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_248, ptr align 8 @alloc_6333862432cb17828e55e7228bc2ad33) #6
  unreachable

bb120:                                            ; preds = %bb81
  %_208 = load ptr, ptr %_0.i65, align 8
  %_212 = sext i32 %depth to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_208, i64 %_212, i64 1) #7
  %_0.i82 = getelementptr inbounds i8, ptr %_208, i64 %_212
  %_508 = ptrtoint ptr %_0.i82 to i64
  %_511 = icmp eq i64 %_508, 0
  %_512 = and i1 %_511, true
  %_513 = xor i1 %_512, true
  br i1 %_513, label %bb121, label %panic29

panic28:                                          ; preds = %bb81
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6333862432cb17828e55e7228bc2ad33) #6
  unreachable

bb121:                                            ; preds = %bb120
  %_206 = load i8, ptr %_0.i82, align 1
  %_205 = sext i8 %_206 to i32
  %20 = icmp eq i32 %_205, 0
  br i1 %20, label %bb75, label %bb70

panic29:                                          ; preds = %bb120
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_75afd1acf7786e0fd961259b137fa0e1) #6
  unreachable

bb75:                                             ; preds = %bb70, %bb121
  %_234 = load ptr, ptr %pd, align 8
  %_236 = load ptr, ptr %pc, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_234, ptr %_236) #7
  %21 = trunc i64 %_0.i to i32
  store i32 %21, ptr %r, align 4
  %_238 = load i32, ptr %r, align 4
  %_237 = icmp sgt i32 %_238, 1
  br i1 %_237, label %bb77, label %bb80

bb70:                                             ; preds = %bb121
  %_216 = load i32, ptr %r, align 4
  %_215 = sext i32 %_216 to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_215, i64 8) #7
  %_0.i64 = getelementptr inbounds ptr, ptr %a, i64 %_215
  %_222 = load ptr, ptr %pn, align 8
  %_226 = load ptr, ptr %pa, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i47 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_226, ptr %a) #7
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_222, i64 %_0.i47, i64 8) #7
  %_0.i63 = getelementptr inbounds ptr, ptr %_222, i64 %_0.i47
  %_229 = load ptr, ptr %pd, align 8
; call core::ptr::const_ptr::<impl *const T>::offset_from
  %_0.i46 = call i64 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$11offset_from17h345a27c157721d9bE"(ptr %_0.i63, ptr %_229) #7
  %_218 = sub i64 %_0.i46, 1
  %_217 = trunc i64 %_218 to i32
  %_231 = add i32 %depth, 1
  call void @ssort2(ptr %_0.i64, i32 %_217, i32 %_231) #7
  br label %bb75

bb80:                                             ; preds = %bb1, %bb77, %bb75
  ret void

bb77:                                             ; preds = %bb75
  %_242 = sext i32 %n to i64
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %a, i64 %_242, i64 8) #7
  %_0.i62 = getelementptr inbounds ptr, ptr %a, i64 %_242
  %_245 = load i32, ptr %r, align 4
  %_244 = sext i32 %_245 to i64
  %_243 = sub i64 0, %_244
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_0.i62, i64 %_243, i64 8) #7
  %_0.i61 = getelementptr inbounds ptr, ptr %_0.i62, i64 %_243
  %_246 = load i32, ptr %r, align 4
  call void @ssort2(ptr %_0.i61, i32 %_246, i32 %depth) #7
  br label %bb80

bb37:                                             ; preds = %bb36
  %_295 = load ptr, ptr %pc, align 8
  %_296 = ptrtoint ptr %_295 to i64
  %_299 = and i64 %_296, 7
  %_300 = icmp eq i64 %_299, 0
  br i1 %_300, label %bb89, label %panic30

bb39:                                             ; preds = %bb115, %bb36
  %_126 = load ptr, ptr %pc, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_126, i64 -1, i64 8) #7
  %_0.i59 = getelementptr inbounds ptr, ptr %_126, i64 -1
  store ptr %_0.i59, ptr %pc, align 8
  br label %bb33

bb89:                                             ; preds = %bb37
  %_444 = load ptr, ptr %pc, align 8
  %_445 = ptrtoint ptr %_444 to i64
  %_448 = icmp eq i64 %_445, 0
  %_449 = and i1 %_448, true
  %_450 = xor i1 %_449, true
  br i1 %_450, label %bb112, label %panic31

panic30:                                          ; preds = %bb37
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_296, ptr align 8 @alloc_95b188233bfcfc132df262ceefe1203c) #6
  unreachable

bb112:                                            ; preds = %bb89
  %22 = load ptr, ptr %pc, align 8
  %_120 = load ptr, ptr %22, align 8
  store ptr %_120, ptr %t, align 8
  %_289 = load ptr, ptr %pd, align 8
  %_290 = ptrtoint ptr %_289 to i64
  %_293 = and i64 %_290, 7
  %_294 = icmp eq i64 %_293, 0
  br i1 %_294, label %bb88, label %panic32

panic31:                                          ; preds = %bb89
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_95b188233bfcfc132df262ceefe1203c) #6
  unreachable

bb88:                                             ; preds = %bb112
  %_451 = load ptr, ptr %pd, align 8
  %_452 = ptrtoint ptr %_451 to i64
  %_455 = icmp eq i64 %_452, 0
  %_456 = and i1 %_455, true
  %_457 = xor i1 %_456, true
  br i1 %_457, label %bb113, label %panic33

panic32:                                          ; preds = %bb112
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_290, ptr align 8 @alloc_e64000dc11c7775fb33fccad0d79faa9) #6
  unreachable

bb113:                                            ; preds = %bb88
  %23 = load ptr, ptr %pd, align 8
  %_121 = load ptr, ptr %23, align 8
  %_283 = load ptr, ptr %pc, align 8
  %_284 = ptrtoint ptr %_283 to i64
  %_287 = and i64 %_284, 7
  %_288 = icmp eq i64 %_287, 0
  br i1 %_288, label %bb87, label %panic34

panic33:                                          ; preds = %bb88
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e64000dc11c7775fb33fccad0d79faa9) #6
  unreachable

bb87:                                             ; preds = %bb113
  %_458 = load ptr, ptr %pc, align 8
  %_459 = ptrtoint ptr %_458 to i64
  %_462 = icmp eq i64 %_459, 0
  %_463 = and i1 %_462, true
  %_464 = xor i1 %_463, true
  br i1 %_464, label %bb114, label %panic35

panic34:                                          ; preds = %bb113
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_284, ptr align 8 @alloc_09bb356c9b1dac47a7a9c037a8bc37dd) #6
  unreachable

bb114:                                            ; preds = %bb87
  %24 = load ptr, ptr %pc, align 8
  store ptr %_121, ptr %24, align 8
  %_122 = load ptr, ptr %t, align 8
  %_277 = load ptr, ptr %pd, align 8
  %_278 = ptrtoint ptr %_277 to i64
  %_281 = and i64 %_278, 7
  %_282 = icmp eq i64 %_281, 0
  br i1 %_282, label %bb86, label %panic36

panic35:                                          ; preds = %bb87
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_09bb356c9b1dac47a7a9c037a8bc37dd) #6
  unreachable

bb86:                                             ; preds = %bb114
  %_465 = load ptr, ptr %pd, align 8
  %_466 = ptrtoint ptr %_465 to i64
  %_469 = icmp eq i64 %_466, 0
  %_470 = and i1 %_469, true
  %_471 = xor i1 %_470, true
  br i1 %_471, label %bb115, label %panic37

panic36:                                          ; preds = %bb114
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_278, ptr align 8 @alloc_5bafddca295011d61b0007f2517b5745) #6
  unreachable

bb115:                                            ; preds = %bb86
  %25 = load ptr, ptr %pd, align 8
  store ptr %_122, ptr %25, align 8
  %_124 = load ptr, ptr %pd, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_124, i64 -1, i64 8) #7
  %_0.i60 = getelementptr inbounds ptr, ptr %_124, i64 -1
  store ptr %_0.i60, ptr %pd, align 8
  br label %bb39

panic37:                                          ; preds = %bb86
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5bafddca295011d61b0007f2517b5745) #6
  unreachable

bb29:                                             ; preds = %bb28
  %_325 = load ptr, ptr %pa, align 8
  %_326 = ptrtoint ptr %_325 to i64
  %_329 = and i64 %_326, 7
  %_330 = icmp eq i64 %_329, 0
  br i1 %_330, label %bb94, label %panic38

bb31:                                             ; preds = %bb110, %bb28
  %_107 = load ptr, ptr %pb, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_107, i64 1, i64 8) #7
  %_0.i57 = getelementptr inbounds ptr, ptr %_107, i64 1
  store ptr %_0.i57, ptr %pb, align 8
  br label %bb25

bb94:                                             ; preds = %bb29
  %_409 = load ptr, ptr %pa, align 8
  %_410 = ptrtoint ptr %_409 to i64
  %_413 = icmp eq i64 %_410, 0
  %_414 = and i1 %_413, true
  %_415 = xor i1 %_414, true
  br i1 %_415, label %bb107, label %panic39

panic38:                                          ; preds = %bb29
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_326, ptr align 8 @alloc_df4a29a0fe2fa9891c2d6668c743e2eb) #6
  unreachable

bb107:                                            ; preds = %bb94
  %26 = load ptr, ptr %pa, align 8
  %_101 = load ptr, ptr %26, align 8
  store ptr %_101, ptr %t, align 8
  %_319 = load ptr, ptr %pb, align 8
  %_320 = ptrtoint ptr %_319 to i64
  %_323 = and i64 %_320, 7
  %_324 = icmp eq i64 %_323, 0
  br i1 %_324, label %bb93, label %panic40

panic39:                                          ; preds = %bb94
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df4a29a0fe2fa9891c2d6668c743e2eb) #6
  unreachable

bb93:                                             ; preds = %bb107
  %_416 = load ptr, ptr %pb, align 8
  %_417 = ptrtoint ptr %_416 to i64
  %_420 = icmp eq i64 %_417, 0
  %_421 = and i1 %_420, true
  %_422 = xor i1 %_421, true
  br i1 %_422, label %bb108, label %panic41

panic40:                                          ; preds = %bb107
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_320, ptr align 8 @alloc_b508b10cc8cfa52ced31b70f2d42fc4c) #6
  unreachable

bb108:                                            ; preds = %bb93
  %27 = load ptr, ptr %pb, align 8
  %_102 = load ptr, ptr %27, align 8
  %_313 = load ptr, ptr %pa, align 8
  %_314 = ptrtoint ptr %_313 to i64
  %_317 = and i64 %_314, 7
  %_318 = icmp eq i64 %_317, 0
  br i1 %_318, label %bb92, label %panic42

panic41:                                          ; preds = %bb93
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b508b10cc8cfa52ced31b70f2d42fc4c) #6
  unreachable

bb92:                                             ; preds = %bb108
  %_423 = load ptr, ptr %pa, align 8
  %_424 = ptrtoint ptr %_423 to i64
  %_427 = icmp eq i64 %_424, 0
  %_428 = and i1 %_427, true
  %_429 = xor i1 %_428, true
  br i1 %_429, label %bb109, label %panic43

panic42:                                          ; preds = %bb108
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_314, ptr align 8 @alloc_392a2f0c001169818ce36299c31abc53) #6
  unreachable

bb109:                                            ; preds = %bb92
  %28 = load ptr, ptr %pa, align 8
  store ptr %_102, ptr %28, align 8
  %_103 = load ptr, ptr %t, align 8
  %_307 = load ptr, ptr %pb, align 8
  %_308 = ptrtoint ptr %_307 to i64
  %_311 = and i64 %_308, 7
  %_312 = icmp eq i64 %_311, 0
  br i1 %_312, label %bb91, label %panic44

panic43:                                          ; preds = %bb92
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_392a2f0c001169818ce36299c31abc53) #6
  unreachable

bb91:                                             ; preds = %bb109
  %_430 = load ptr, ptr %pb, align 8
  %_431 = ptrtoint ptr %_430 to i64
  %_434 = icmp eq i64 %_431, 0
  %_435 = and i1 %_434, true
  %_436 = xor i1 %_435, true
  br i1 %_436, label %bb110, label %panic45

panic44:                                          ; preds = %bb109
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_308, ptr align 8 @alloc_9d9b8f2302a761ddedaad27344d92d7d) #6
  unreachable

bb110:                                            ; preds = %bb91
  %29 = load ptr, ptr %pb, align 8
  store ptr %_103, ptr %29, align 8
  %_105 = load ptr, ptr %pa, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_105, i64 1, i64 8) #7
  %_0.i58 = getelementptr inbounds ptr, ptr %_105, i64 1
  store ptr %_0.i58, ptr %pa, align 8
  br label %bb31

panic45:                                          ; preds = %bb91
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d9b8f2302a761ddedaad27344d92d7d) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @ssort2main(ptr %a, i32 %n) unnamed_addr #2 {
start:
  call void @ssort2(ptr %a, i32 %n, i32 0) #7
  ret void
}

; Function Attrs: nounwind nonlazybind
define ptr @insert1(ptr %0, ptr %1) unnamed_addr #2 {
start:
  %s = alloca [8 x i8], align 8
  %p = alloca [8 x i8], align 8
  store ptr %0, ptr %p, align 8
  store ptr %1, ptr %s, align 8
  %_4 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %_4) #7
  br i1 %_3, label %bb2, label %bb5

bb5:                                              ; preds = %bb35, %start
  %_230 = load ptr, ptr %s, align 8
  %_231 = ptrtoint ptr %_230 to i64
  %_234 = icmp eq i64 %_231, 0
  %_235 = and i1 %_234, true
  %_236 = xor i1 %_235, true
  br i1 %_236, label %bb46, label %panic13

bb2:                                              ; preds = %start
  %_5 = call ptr @malloc(i64 32) #7
  store ptr %_5, ptr %p, align 8
  %_237 = load ptr, ptr %s, align 8
  %_238 = ptrtoint ptr %_237 to i64
  %_241 = icmp eq i64 %_238, 0
  %_242 = and i1 %_241, true
  %_243 = xor i1 %_242, true
  br i1 %_243, label %bb47, label %panic

bb47:                                             ; preds = %bb2
  %2 = load ptr, ptr %s, align 8
  %_8 = load i8, ptr %2, align 1
  %_112 = load ptr, ptr %p, align 8
  %_113 = ptrtoint ptr %_112 to i64
  %_116 = and i64 %_113, 7
  %_117 = icmp eq i64 %_116, 0
  br i1 %_117, label %bb29, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_435af8787e98466298fd69d9155cf3d7) #6
  unreachable

bb29:                                             ; preds = %bb47
  %_118 = load ptr, ptr %p, align 8
  %_119 = ptrtoint ptr %_118 to i64
  %_122 = icmp eq i64 %_119, 0
  %_123 = and i1 %_122, true
  %_124 = xor i1 %_123, true
  br i1 %_124, label %bb30, label %panic2

panic1:                                           ; preds = %bb47
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_113, ptr align 8 @alloc_b071171653be0dec6eeeae1f1fbd1408) #6
  unreachable

bb30:                                             ; preds = %bb29
  %3 = load ptr, ptr %p, align 8
  store i8 %_8, ptr %3, align 8
  %_106 = load ptr, ptr %p, align 8
  %_107 = ptrtoint ptr %_106 to i64
  %_110 = and i64 %_107, 7
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %bb28, label %panic3

panic2:                                           ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b071171653be0dec6eeeae1f1fbd1408) #6
  unreachable

bb28:                                             ; preds = %bb30
  %_125 = load ptr, ptr %p, align 8
  %_126 = ptrtoint ptr %_125 to i64
  %_129 = icmp eq i64 %_126, 0
  %_130 = and i1 %_129, true
  %_131 = xor i1 %_130, true
  br i1 %_131, label %bb31, label %panic4

panic3:                                           ; preds = %bb30
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_107, ptr align 8 @alloc_dd1bc3b4e7e7496b3f2e5ce39c3a73de) #6
  unreachable

bb31:                                             ; preds = %bb28
  %4 = load ptr, ptr %p, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  store ptr null, ptr %5, align 8
  %_100 = load ptr, ptr %p, align 8
  %_101 = ptrtoint ptr %_100 to i64
  %_104 = and i64 %_101, 7
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb27, label %panic5

panic4:                                           ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_dd1bc3b4e7e7496b3f2e5ce39c3a73de) #6
  unreachable

bb27:                                             ; preds = %bb31
  %_132 = load ptr, ptr %p, align 8
  %_133 = ptrtoint ptr %_132 to i64
  %_136 = icmp eq i64 %_133, 0
  %_137 = and i1 %_136, true
  %_138 = xor i1 %_137, true
  br i1 %_138, label %bb32, label %panic6

panic5:                                           ; preds = %bb31
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_101, ptr align 8 @alloc_20d4712de33a584d0158c601172b1350) #6
  unreachable

bb32:                                             ; preds = %bb27
  %6 = load ptr, ptr %p, align 8
  %7 = getelementptr inbounds i8, ptr %6, i64 24
  %_9 = load ptr, ptr %7, align 8
  %_94 = load ptr, ptr %p, align 8
  %_95 = ptrtoint ptr %_94 to i64
  %_98 = and i64 %_95, 7
  %_99 = icmp eq i64 %_98, 0
  br i1 %_99, label %bb26, label %panic7

panic6:                                           ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_20d4712de33a584d0158c601172b1350) #6
  unreachable

bb26:                                             ; preds = %bb32
  %_139 = load ptr, ptr %p, align 8
  %_140 = ptrtoint ptr %_139 to i64
  %_143 = icmp eq i64 %_140, 0
  %_144 = and i1 %_143, true
  %_145 = xor i1 %_144, true
  br i1 %_145, label %bb33, label %panic8

panic7:                                           ; preds = %bb32
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_95, ptr align 8 @alloc_0ee577b5aafe3097cc0cda8b23adbe8c) #6
  unreachable

bb33:                                             ; preds = %bb26
  %8 = load ptr, ptr %p, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr %_9, ptr %9, align 8
  %_88 = load ptr, ptr %p, align 8
  %_89 = ptrtoint ptr %_88 to i64
  %_92 = and i64 %_89, 7
  %_93 = icmp eq i64 %_92, 0
  br i1 %_93, label %bb25, label %panic9

panic8:                                           ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0ee577b5aafe3097cc0cda8b23adbe8c) #6
  unreachable

bb25:                                             ; preds = %bb33
  %_146 = load ptr, ptr %p, align 8
  %_147 = ptrtoint ptr %_146 to i64
  %_150 = icmp eq i64 %_147, 0
  %_151 = and i1 %_150, true
  %_152 = xor i1 %_151, true
  br i1 %_152, label %bb34, label %panic10

panic9:                                           ; preds = %bb33
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_89, ptr align 8 @alloc_b5063e544116bb6faf38d3d111c309a5) #6
  unreachable

bb34:                                             ; preds = %bb25
  %10 = load ptr, ptr %p, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 16
  %_10 = load ptr, ptr %11, align 8
  %_82 = load ptr, ptr %p, align 8
  %_83 = ptrtoint ptr %_82 to i64
  %_86 = and i64 %_83, 7
  %_87 = icmp eq i64 %_86, 0
  br i1 %_87, label %bb24, label %panic11

panic10:                                          ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b5063e544116bb6faf38d3d111c309a5) #6
  unreachable

bb24:                                             ; preds = %bb34
  %_153 = load ptr, ptr %p, align 8
  %_154 = ptrtoint ptr %_153 to i64
  %_157 = icmp eq i64 %_154, 0
  %_158 = and i1 %_157, true
  %_159 = xor i1 %_158, true
  br i1 %_159, label %bb35, label %panic12

panic11:                                          ; preds = %bb34
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_83, ptr align 8 @alloc_8228e0ddc8bfa667ddce3504bbc58979) #6
  unreachable

bb35:                                             ; preds = %bb24
  %12 = load ptr, ptr %p, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 8
  store ptr %_10, ptr %13, align 8
  br label %bb5

panic12:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8228e0ddc8bfa667ddce3504bbc58979) #6
  unreachable

bb46:                                             ; preds = %bb5
  %14 = load ptr, ptr %s, align 8
  %_13 = load i8, ptr %14, align 1
  %_12 = sext i8 %_13 to i32
  %_76 = load ptr, ptr %p, align 8
  %_77 = ptrtoint ptr %_76 to i64
  %_80 = and i64 %_77, 7
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %bb23, label %panic14

panic13:                                          ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_19370c4d5230d64b4e5945b24e76659e) #6
  unreachable

bb23:                                             ; preds = %bb46
  %_160 = load ptr, ptr %p, align 8
  %_161 = ptrtoint ptr %_160 to i64
  %_164 = icmp eq i64 %_161, 0
  %_165 = and i1 %_164, true
  %_166 = xor i1 %_165, true
  br i1 %_166, label %bb36, label %panic15

panic14:                                          ; preds = %bb46
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_77, ptr align 8 @alloc_b56652097ca95e8a3c64f3cb85908baa) #6
  unreachable

bb36:                                             ; preds = %bb23
  %15 = load ptr, ptr %p, align 8
  %_15 = load i8, ptr %15, align 8
  %_14 = sext i8 %_15 to i32
  %_11 = icmp slt i32 %_12, %_14
  br i1 %_11, label %bb6, label %bb8

panic15:                                          ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b56652097ca95e8a3c64f3cb85908baa) #6
  unreachable

bb8:                                              ; preds = %bb36
  %_223 = load ptr, ptr %s, align 8
  %_224 = ptrtoint ptr %_223 to i64
  %_227 = icmp eq i64 %_224, 0
  %_228 = and i1 %_227, true
  %_229 = xor i1 %_228, true
  br i1 %_229, label %bb45, label %panic16

bb6:                                              ; preds = %bb36
  %_70 = load ptr, ptr %p, align 8
  %_71 = ptrtoint ptr %_70 to i64
  %_74 = and i64 %_71, 7
  %_75 = icmp eq i64 %_74, 0
  br i1 %_75, label %bb22, label %panic28

bb45:                                             ; preds = %bb8
  %16 = load ptr, ptr %s, align 8
  %_21 = load i8, ptr %16, align 1
  %_20 = sext i8 %_21 to i32
  %_58 = load ptr, ptr %p, align 8
  %_59 = ptrtoint ptr %_58 to i64
  %_62 = and i64 %_59, 7
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb20, label %panic17

panic16:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e9f35d8e27df08867c0d87a4c4fa284b) #6
  unreachable

bb20:                                             ; preds = %bb45
  %_181 = load ptr, ptr %p, align 8
  %_182 = ptrtoint ptr %_181 to i64
  %_185 = icmp eq i64 %_182, 0
  %_186 = and i1 %_185, true
  %_187 = xor i1 %_186, true
  br i1 %_187, label %bb39, label %panic18

panic17:                                          ; preds = %bb45
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_59, ptr align 8 @alloc_3c046311c75a7b87a3c06e815bc09c74) #6
  unreachable

bb39:                                             ; preds = %bb20
  %17 = load ptr, ptr %p, align 8
  %_23 = load i8, ptr %17, align 8
  %_22 = sext i8 %_23 to i32
  %_19 = icmp eq i32 %_20, %_22
  br i1 %_19, label %bb9, label %bb13

panic18:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3c046311c75a7b87a3c06e815bc09c74) #6
  unreachable

bb13:                                             ; preds = %bb39
  %_40 = load ptr, ptr %p, align 8
  %_41 = ptrtoint ptr %_40 to i64
  %_44 = and i64 %_41, 7
  %_45 = icmp eq i64 %_44, 0
  br i1 %_45, label %bb17, label %panic19

bb9:                                              ; preds = %bb39
  %_216 = load ptr, ptr %s, align 8
  %_217 = ptrtoint ptr %_216 to i64
  %_220 = icmp eq i64 %_217, 0
  %_221 = and i1 %_220, true
  %_222 = xor i1 %_221, true
  br i1 %_222, label %bb44, label %panic23

bb17:                                             ; preds = %bb13
  %_202 = load ptr, ptr %p, align 8
  %_203 = ptrtoint ptr %_202 to i64
  %_206 = icmp eq i64 %_203, 0
  %_207 = and i1 %_206, true
  %_208 = xor i1 %_207, true
  br i1 %_208, label %bb42, label %panic20

panic19:                                          ; preds = %bb13
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_41, ptr align 8 @alloc_8cf3deec41e4821e115fe0fac7f6f16a) #6
  unreachable

bb42:                                             ; preds = %bb17
  %18 = load ptr, ptr %p, align 8
  %19 = getelementptr inbounds i8, ptr %18, i64 24
  %_32 = load ptr, ptr %19, align 8
  %_33 = load ptr, ptr %s, align 8
  %_31 = call ptr @insert1(ptr %_32, ptr %_33) #7
  %_34 = load ptr, ptr %p, align 8
  %_35 = ptrtoint ptr %_34 to i64
  %_38 = and i64 %_35, 7
  %_39 = icmp eq i64 %_38, 0
  br i1 %_39, label %bb16, label %panic21

panic20:                                          ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8cf3deec41e4821e115fe0fac7f6f16a) #6
  unreachable

bb16:                                             ; preds = %bb42
  %_209 = load ptr, ptr %p, align 8
  %_210 = ptrtoint ptr %_209 to i64
  %_213 = icmp eq i64 %_210, 0
  %_214 = and i1 %_213, true
  %_215 = xor i1 %_214, true
  br i1 %_215, label %bb43, label %panic22

panic21:                                          ; preds = %bb42
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_35, ptr align 8 @alloc_1fff323b3915963361b166c79282585b) #6
  unreachable

bb43:                                             ; preds = %bb16
  %20 = load ptr, ptr %p, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 24
  store ptr %_31, ptr %21, align 8
  br label %bb15

panic22:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1fff323b3915963361b166c79282585b) #6
  unreachable

bb15:                                             ; preds = %bb38, %bb41, %bb44, %bb43
  %_0 = load ptr, ptr %p, align 8
  ret ptr %_0

bb44:                                             ; preds = %bb9
  %22 = load ptr, ptr %s, align 8
  %_25 = load i8, ptr %22, align 1
  %_24 = sext i8 %_25 to i32
  %23 = icmp eq i32 %_24, 0
  br i1 %23, label %bb15, label %bb10

panic23:                                          ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cd86b481fd8d41211d74fa01cfcc35fd) #6
  unreachable

bb10:                                             ; preds = %bb44
  %_27 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_27, i64 1, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %_27, i64 1
  store ptr %_0.i, ptr %s, align 8
  %_52 = load ptr, ptr %p, align 8
  %_53 = ptrtoint ptr %_52 to i64
  %_56 = and i64 %_53, 7
  %_57 = icmp eq i64 %_56, 0
  br i1 %_57, label %bb19, label %panic24

bb19:                                             ; preds = %bb10
  %_188 = load ptr, ptr %p, align 8
  %_189 = ptrtoint ptr %_188 to i64
  %_192 = icmp eq i64 %_189, 0
  %_193 = and i1 %_192, true
  %_194 = xor i1 %_193, true
  br i1 %_194, label %bb40, label %panic25

panic24:                                          ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_53, ptr align 8 @alloc_b2c7fe7432d47d37a4f8a4625aea95c9) #6
  unreachable

bb40:                                             ; preds = %bb19
  %24 = load ptr, ptr %p, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 16
  %_29 = load ptr, ptr %25, align 8
  %_30 = load ptr, ptr %s, align 8
  %_28 = call ptr @insert1(ptr %_29, ptr %_30) #7
  %_46 = load ptr, ptr %p, align 8
  %_47 = ptrtoint ptr %_46 to i64
  %_50 = and i64 %_47, 7
  %_51 = icmp eq i64 %_50, 0
  br i1 %_51, label %bb18, label %panic26

panic25:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b2c7fe7432d47d37a4f8a4625aea95c9) #6
  unreachable

bb18:                                             ; preds = %bb40
  %_195 = load ptr, ptr %p, align 8
  %_196 = ptrtoint ptr %_195 to i64
  %_199 = icmp eq i64 %_196, 0
  %_200 = and i1 %_199, true
  %_201 = xor i1 %_200, true
  br i1 %_201, label %bb41, label %panic27

panic26:                                          ; preds = %bb40
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_47, ptr align 8 @alloc_d7eb41ec84cb9ad714b9ca03085d48d5) #6
  unreachable

bb41:                                             ; preds = %bb18
  %26 = load ptr, ptr %p, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 16
  store ptr %_28, ptr %27, align 8
  br label %bb15

panic27:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d7eb41ec84cb9ad714b9ca03085d48d5) #6
  unreachable

bb22:                                             ; preds = %bb6
  %_167 = load ptr, ptr %p, align 8
  %_168 = ptrtoint ptr %_167 to i64
  %_171 = icmp eq i64 %_168, 0
  %_172 = and i1 %_171, true
  %_173 = xor i1 %_172, true
  br i1 %_173, label %bb37, label %panic29

panic28:                                          ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_71, ptr align 8 @alloc_925d51738ca071a2f7f4b4fc8a5f074e) #6
  unreachable

bb37:                                             ; preds = %bb22
  %28 = load ptr, ptr %p, align 8
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %_17 = load ptr, ptr %29, align 8
  %_18 = load ptr, ptr %s, align 8
  %_16 = call ptr @insert1(ptr %_17, ptr %_18) #7
  %_64 = load ptr, ptr %p, align 8
  %_65 = ptrtoint ptr %_64 to i64
  %_68 = and i64 %_65, 7
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %bb21, label %panic30

panic29:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_925d51738ca071a2f7f4b4fc8a5f074e) #6
  unreachable

bb21:                                             ; preds = %bb37
  %_174 = load ptr, ptr %p, align 8
  %_175 = ptrtoint ptr %_174 to i64
  %_178 = icmp eq i64 %_175, 0
  %_179 = and i1 %_178, true
  %_180 = xor i1 %_179, true
  br i1 %_180, label %bb38, label %panic31

panic30:                                          ; preds = %bb37
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_65, ptr align 8 @alloc_647d3a1990b2f9e45dac9a19edc46281) #6
  unreachable

bb38:                                             ; preds = %bb21
  %30 = load ptr, ptr %p, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 8
  store ptr %_16, ptr %31, align 8
  br label %bb15

panic31:                                          ; preds = %bb21
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_647d3a1990b2f9e45dac9a19edc46281) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @cleanup1(ptr %p) unnamed_addr #2 {
start:
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_2 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %p) #7
  br i1 %_2, label %bb6, label %bb2

bb2:                                              ; preds = %start
  %_24 = ptrtoint ptr %p to i64
  %_27 = and i64 %_24, 7
  %_28 = icmp eq i64 %_27, 0
  br i1 %_28, label %bb9, label %panic

bb6:                                              ; preds = %bb12, %start
  ret void

bb9:                                              ; preds = %bb2
  %_30 = ptrtoint ptr %p to i64
  %_33 = icmp eq i64 %_30, 0
  %_34 = and i1 %_33, true
  %_35 = xor i1 %_34, true
  br i1 %_35, label %bb10, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_24, ptr align 8 @alloc_cb5c9a366f952b4b0f200f8b7b598728) #6
  unreachable

bb10:                                             ; preds = %bb9
  %0 = getelementptr inbounds i8, ptr %p, i64 8
  %_4 = load ptr, ptr %0, align 8
  call void @cleanup1(ptr %_4) #7
  %_18 = ptrtoint ptr %p to i64
  %_21 = and i64 %_18, 7
  %_22 = icmp eq i64 %_21, 0
  br i1 %_22, label %bb8, label %panic2

panic1:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cb5c9a366f952b4b0f200f8b7b598728) #6
  unreachable

bb8:                                              ; preds = %bb10
  %_37 = ptrtoint ptr %p to i64
  %_40 = icmp eq i64 %_37, 0
  %_41 = and i1 %_40, true
  %_42 = xor i1 %_41, true
  br i1 %_42, label %bb11, label %panic3

panic2:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_18, ptr align 8 @alloc_25e72b5569ecd70550961445ff7be553) #6
  unreachable

bb11:                                             ; preds = %bb8
  %1 = getelementptr inbounds i8, ptr %p, i64 16
  %_6 = load ptr, ptr %1, align 8
  call void @cleanup1(ptr %_6) #7
  %_12 = ptrtoint ptr %p to i64
  %_15 = and i64 %_12, 7
  %_16 = icmp eq i64 %_15, 0
  br i1 %_16, label %bb7, label %panic4

panic3:                                           ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_25e72b5569ecd70550961445ff7be553) #6
  unreachable

bb7:                                              ; preds = %bb11
  %_44 = ptrtoint ptr %p to i64
  %_47 = icmp eq i64 %_44, 0
  %_48 = and i1 %_47, true
  %_49 = xor i1 %_48, true
  br i1 %_49, label %bb12, label %panic5

panic4:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_12, ptr align 8 @alloc_6e96ba25813740385298a00d94688516) #6
  unreachable

bb12:                                             ; preds = %bb7
  %2 = getelementptr inbounds i8, ptr %p, i64 24
  %_8 = load ptr, ptr %2, align 8
  call void @cleanup1(ptr %_8) #7
  call void @free(ptr %p) #7
  br label %bb6

panic5:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6e96ba25813740385298a00d94688516) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @insert2(ptr %0) unnamed_addr #2 {
start:
  %p = alloca [8 x i8], align 8
  %pp = alloca [8 x i8], align 8
  %d = alloca [4 x i8], align 4
  %s = alloca [8 x i8], align 8
  store ptr %0, ptr %s, align 8
  store i32 0, ptr %d, align 4
  %instr = load ptr, ptr %s, align 8
  store ptr null, ptr %pp, align 8
  store ptr null, ptr %p, align 8
  %_460 = icmp eq i64 ptrtoint (ptr @root to i64), 0
  %_461 = and i1 %_460, true
  %_462 = xor i1 %_461, true
  br i1 %_462, label %bb82, label %panic

bb82:                                             ; preds = %start
  store ptr @root, ptr %p, align 8
  %_222 = load ptr, ptr %p, align 8
  %_223 = ptrtoint ptr %_222 to i64
  %_226 = and i64 %_223, 7
  %_227 = icmp eq i64 %_226, 0
  br i1 %_227, label %bb47, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fc18e86ab289918cf3e2c0aa5adbac7b) #6
  unreachable

bb47:                                             ; preds = %bb82
  %_228 = load ptr, ptr %p, align 8
  %_229 = ptrtoint ptr %_228 to i64
  %_232 = icmp eq i64 %_229, 0
  %_233 = and i1 %_232, true
  %_234 = xor i1 %_233, true
  br i1 %_234, label %bb48, label %panic2

panic1:                                           ; preds = %bb82
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_223, ptr align 8 @alloc_9ba14eb600e1626eb53eaf8f8316819a) #6
  unreachable

bb48:                                             ; preds = %bb47
  %1 = load ptr, ptr %p, align 8
  %_9 = load ptr, ptr %1, align 8
  store ptr %_9, ptr %pp, align 8
  br label %bb1

panic2:                                           ; preds = %bb47
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9ba14eb600e1626eb53eaf8f8316819a) #6
  unreachable

bb1:                                              ; preds = %bb78, %bb77, %bb79, %bb48
  %_11 = load ptr, ptr %pp, align 8
  %_216 = load ptr, ptr %p, align 8
  %_217 = ptrtoint ptr %_216 to i64
  %_220 = and i64 %_217, 7
  %_221 = icmp eq i64 %_220, 0
  br i1 %_221, label %bb46, label %panic3

bb46:                                             ; preds = %bb1
  %_235 = load ptr, ptr %p, align 8
  %_236 = ptrtoint ptr %_235 to i64
  %_239 = icmp eq i64 %_236, 0
  %_240 = and i1 %_239, true
  %_241 = xor i1 %_240, true
  br i1 %_241, label %bb49, label %panic4

panic3:                                           ; preds = %bb1
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_217, ptr align 8 @alloc_cc8170fd3fda3df227a567649efc464b) #6
  unreachable

bb49:                                             ; preds = %bb46
  %2 = load ptr, ptr %p, align 8
  %_12 = load ptr, ptr %2, align 8
  %_10 = icmp eq ptr %_11, %_12
  br i1 %_10, label %bb2, label %bb9

panic4:                                           ; preds = %bb46
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cc8170fd3fda3df227a567649efc464b) #6
  unreachable

bb9:                                              ; preds = %bb75, %bb49
  %_253 = icmp eq i64 ptrtoint (ptr @bufn to i64), 0
  %_254 = and i1 %_253, true
  %_255 = xor i1 %_254, true
  br i1 %_255, label %bb51, label %panic5

bb2:                                              ; preds = %bb49
  %_451 = load ptr, ptr %s, align 8
  %_452 = ptrtoint ptr %_451 to i64
  %_455 = icmp eq i64 %_452, 0
  %_456 = and i1 %_455, true
  %_457 = xor i1 %_456, true
  br i1 %_457, label %bb81, label %panic41

bb51:                                             ; preds = %bb9
  %fresh16 = load i32, ptr @bufn, align 4
  %_260 = icmp eq i64 ptrtoint (ptr @bufn to i64), 0
  %_261 = and i1 %_260, true
  %_262 = xor i1 %_261, true
  br i1 %_262, label %bb52, label %panic6

panic5:                                           ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e8047c038797b3a65755eb2903d04e4b) #6
  unreachable

bb52:                                             ; preds = %bb51
  %_33 = load i32, ptr @bufn, align 4
  %_267 = icmp eq i64 ptrtoint (ptr @bufn to i64), 0
  %_268 = and i1 %_267, true
  %_269 = xor i1 %_268, true
  br i1 %_269, label %bb53, label %panic7

panic6:                                           ; preds = %bb51
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1019acc1a4cf28f5ff3e41de8357b931) #6
  unreachable

bb53:                                             ; preds = %bb52
  %3 = sub i32 %_33, 1
  store i32 %3, ptr @bufn, align 4
  %4 = icmp eq i32 %fresh16, 0
  br i1 %4, label %bb10, label %bb15

panic7:                                           ; preds = %bb52
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cf7d84ea3f765f8e35f435385ff0bca4) #6
  unreachable

bb10:                                             ; preds = %bb53
  %_36 = call ptr @malloc(i64 32000) #7
  %_274 = icmp eq i64 ptrtoint (ptr @buffer to i64), 0
  %_275 = and i1 %_274, true
  %_276 = xor i1 %_275, true
  br i1 %_276, label %bb54, label %panic8

bb15:                                             ; preds = %bb60, %bb53
  %_323 = icmp eq i64 ptrtoint (ptr @buffer to i64), 0
  %_324 = and i1 %_323, true
  %_325 = xor i1 %_324, true
  br i1 %_325, label %bb61, label %panic16

bb54:                                             ; preds = %bb10
  store ptr %_36, ptr @buffer, align 8
  %_281 = icmp eq i64 ptrtoint (ptr @freen to i64), 0
  %_282 = and i1 %_281, true
  %_283 = xor i1 %_282, true
  br i1 %_283, label %bb55, label %panic9

panic8:                                           ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_512c7a92151522b874c93ed7c13a171f) #6
  unreachable

bb55:                                             ; preds = %bb54
  %fresh17 = load i32, ptr @freen, align 4
  %_288 = icmp eq i64 ptrtoint (ptr @freen to i64), 0
  %_289 = and i1 %_288, true
  %_290 = xor i1 %_289, true
  br i1 %_290, label %bb56, label %panic10

panic9:                                           ; preds = %bb54
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b8730a7025440362bac05809dab6cd55) #6
  unreachable

bb56:                                             ; preds = %bb55
  %_44 = load i32, ptr @freen, align 4
  %_295 = icmp eq i64 ptrtoint (ptr @freen to i64), 0
  %_296 = and i1 %_295, true
  %_297 = xor i1 %_296, true
  br i1 %_297, label %bb57, label %panic11

panic10:                                          ; preds = %bb55
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_382e3e66260731c55143337016485fba) #6
  unreachable

bb57:                                             ; preds = %bb56
  %5 = add i32 %_44, 1
  store i32 %5, ptr @freen, align 4
  %_302 = icmp eq i64 ptrtoint (ptr @buffer to i64), 0
  %_303 = and i1 %_302, true
  %_304 = xor i1 %_303, true
  br i1 %_304, label %bb58, label %panic12

panic11:                                          ; preds = %bb56
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6e5f0d714c6dd21a6d79ece1412c4b3f) #6
  unreachable

bb58:                                             ; preds = %bb57
  %_47 = load ptr, ptr @buffer, align 8
  %_50 = sext i32 %fresh17 to i64
  %_51 = icmp ult i64 %_50, 10000
  br i1 %_51, label %bb14, label %panic13

panic12:                                          ; preds = %bb57
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bdb084a6aab65ee2c9ffafceba9f8b7a) #6
  unreachable

bb14:                                             ; preds = %bb58
  %_309 = icmp eq i64 ptrtoint (ptr @freearr to i64), 0
  %_310 = and i1 %_309, true
  %_311 = xor i1 %_310, true
  br i1 %_311, label %bb59, label %panic14

panic13:                                          ; preds = %bb58
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_50, i64 10000, ptr align 8 @alloc_22b0cb1d2da6fa47a7b0c3f17ff24fc2) #6
  unreachable

bb59:                                             ; preds = %bb14
  %6 = getelementptr inbounds nuw ptr, ptr @freearr, i64 %_50
  store ptr %_47, ptr %6, align 8
  %_316 = icmp eq i64 ptrtoint (ptr @bufn to i64), 0
  %_317 = and i1 %_316, true
  %_318 = xor i1 %_317, true
  br i1 %_318, label %bb60, label %panic15

panic14:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_22b0cb1d2da6fa47a7b0c3f17ff24fc2) #6
  unreachable

bb60:                                             ; preds = %bb59
  store i32 999, ptr @bufn, align 4
  br label %bb15

panic15:                                          ; preds = %bb59
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_44e741677e74567097315b6546b12743) #6
  unreachable

bb61:                                             ; preds = %bb15
  %fresh18 = load ptr, ptr @buffer, align 8
  %_330 = icmp eq i64 ptrtoint (ptr @buffer to i64), 0
  %_331 = and i1 %_330, true
  %_332 = xor i1 %_331, true
  br i1 %_332, label %bb62, label %panic17

panic16:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_75ac31e483b001c867712a690bce0600) #6
  unreachable

bb62:                                             ; preds = %bb61
  %_56 = load ptr, ptr @buffer, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_56, i64 1, i64 32) #7
  %_0.i = getelementptr inbounds %tnode, ptr %_56, i64 1
  %_337 = icmp eq i64 ptrtoint (ptr @buffer to i64), 0
  %_338 = and i1 %_337, true
  %_339 = xor i1 %_338, true
  br i1 %_339, label %bb63, label %panic18

panic17:                                          ; preds = %bb61
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fe231ec286c64935b7a81e7bc4fed072) #6
  unreachable

bb63:                                             ; preds = %bb62
  store ptr %_0.i, ptr @buffer, align 8
  %_126 = load ptr, ptr %p, align 8
  %_127 = ptrtoint ptr %_126 to i64
  %_130 = and i64 %_127, 7
  %_131 = icmp eq i64 %_130, 0
  br i1 %_131, label %bb31, label %panic19

panic18:                                          ; preds = %bb62
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ea6fe377e867891fc9d32994e86c176d) #6
  unreachable

bb31:                                             ; preds = %bb63
  %_340 = load ptr, ptr %p, align 8
  %_341 = ptrtoint ptr %_340 to i64
  %_344 = icmp eq i64 %_341, 0
  %_345 = and i1 %_344, true
  %_346 = xor i1 %_345, true
  br i1 %_346, label %bb64, label %panic20

panic19:                                          ; preds = %bb63
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_127, ptr align 8 @alloc_92974a60d8bd8ee7b76cbbb87d11d6d8) #6
  unreachable

bb64:                                             ; preds = %bb31
  %7 = load ptr, ptr %p, align 8
  store ptr %fresh18, ptr %7, align 8
  %_120 = load ptr, ptr %p, align 8
  %_121 = ptrtoint ptr %_120 to i64
  %_124 = and i64 %_121, 7
  %_125 = icmp eq i64 %_124, 0
  br i1 %_125, label %bb30, label %panic21

panic20:                                          ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_92974a60d8bd8ee7b76cbbb87d11d6d8) #6
  unreachable

bb30:                                             ; preds = %bb64
  %_354 = load ptr, ptr %p, align 8
  %_355 = ptrtoint ptr %_354 to i64
  %_358 = icmp eq i64 %_355, 0
  %_359 = and i1 %_358, true
  %_360 = xor i1 %_359, true
  br i1 %_360, label %bb66, label %panic22

panic21:                                          ; preds = %bb64
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_121, ptr align 8 @alloc_2d1edfd14ac82e3dae4411bbba08e1c8) #6
  unreachable

bb66:                                             ; preds = %bb30
  %8 = load ptr, ptr %p, align 8
  %_59 = load ptr, ptr %8, align 8
  store ptr %_59, ptr %pp, align 8
  %_347 = load ptr, ptr %s, align 8
  %_348 = ptrtoint ptr %_347 to i64
  %_351 = icmp eq i64 %_348, 0
  %_352 = and i1 %_351, true
  %_353 = xor i1 %_352, true
  br i1 %_353, label %bb65, label %panic23

panic22:                                          ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2d1edfd14ac82e3dae4411bbba08e1c8) #6
  unreachable

bb65:                                             ; preds = %bb66
  %9 = load ptr, ptr %s, align 8
  %_60 = load i8, ptr %9, align 1
  %_114 = load ptr, ptr %pp, align 8
  %_115 = ptrtoint ptr %_114 to i64
  %_118 = and i64 %_115, 7
  %_119 = icmp eq i64 %_118, 0
  br i1 %_119, label %bb29, label %panic24

panic23:                                          ; preds = %bb66
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_06107d73ebca4a0de9bf634fdda4e4df) #6
  unreachable

bb29:                                             ; preds = %bb65
  %_361 = load ptr, ptr %pp, align 8
  %_362 = ptrtoint ptr %_361 to i64
  %_365 = icmp eq i64 %_362, 0
  %_366 = and i1 %_365, true
  %_367 = xor i1 %_366, true
  br i1 %_367, label %bb67, label %panic25

panic24:                                          ; preds = %bb65
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_115, ptr align 8 @alloc_d42a63273b4ba672ff81fddf67190284) #6
  unreachable

bb67:                                             ; preds = %bb29
  %10 = load ptr, ptr %pp, align 8
  store i8 %_60, ptr %10, align 8
  %_108 = load ptr, ptr %pp, align 8
  %_109 = ptrtoint ptr %_108 to i64
  %_112 = and i64 %_109, 7
  %_113 = icmp eq i64 %_112, 0
  br i1 %_113, label %bb28, label %panic26

panic25:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d42a63273b4ba672ff81fddf67190284) #6
  unreachable

bb28:                                             ; preds = %bb67
  %_368 = load ptr, ptr %pp, align 8
  %_369 = ptrtoint ptr %_368 to i64
  %_372 = icmp eq i64 %_369, 0
  %_373 = and i1 %_372, true
  %_374 = xor i1 %_373, true
  br i1 %_374, label %bb68, label %panic27

panic26:                                          ; preds = %bb67
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_109, ptr align 8 @alloc_52d16ff8be7340e057f829cc06541658) #6
  unreachable

bb68:                                             ; preds = %bb28
  %11 = load ptr, ptr %pp, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 24
  store ptr null, ptr %12, align 8
  %_102 = load ptr, ptr %pp, align 8
  %_103 = ptrtoint ptr %_102 to i64
  %_106 = and i64 %_103, 7
  %_107 = icmp eq i64 %_106, 0
  br i1 %_107, label %bb27, label %panic28

panic27:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_52d16ff8be7340e057f829cc06541658) #6
  unreachable

bb27:                                             ; preds = %bb68
  %_375 = load ptr, ptr %pp, align 8
  %_376 = ptrtoint ptr %_375 to i64
  %_379 = icmp eq i64 %_376, 0
  %_380 = and i1 %_379, true
  %_381 = xor i1 %_380, true
  br i1 %_381, label %bb69, label %panic29

panic28:                                          ; preds = %bb68
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_103, ptr align 8 @alloc_fdf2df796600091a3a2664b6b278ec3d) #6
  unreachable

bb69:                                             ; preds = %bb27
  %13 = load ptr, ptr %pp, align 8
  %14 = getelementptr inbounds i8, ptr %13, i64 24
  %_61 = load ptr, ptr %14, align 8
  %_96 = load ptr, ptr %pp, align 8
  %_97 = ptrtoint ptr %_96 to i64
  %_100 = and i64 %_97, 7
  %_101 = icmp eq i64 %_100, 0
  br i1 %_101, label %bb26, label %panic30

panic29:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_fdf2df796600091a3a2664b6b278ec3d) #6
  unreachable

bb26:                                             ; preds = %bb69
  %_382 = load ptr, ptr %pp, align 8
  %_383 = ptrtoint ptr %_382 to i64
  %_386 = icmp eq i64 %_383, 0
  %_387 = and i1 %_386, true
  %_388 = xor i1 %_387, true
  br i1 %_388, label %bb70, label %panic31

panic30:                                          ; preds = %bb69
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_97, ptr align 8 @alloc_bb0596e56811e6488434d819648ccf69) #6
  unreachable

bb70:                                             ; preds = %bb26
  %15 = load ptr, ptr %pp, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 16
  store ptr %_61, ptr %16, align 8
  %_90 = load ptr, ptr %pp, align 8
  %_91 = ptrtoint ptr %_90 to i64
  %_94 = and i64 %_91, 7
  %_95 = icmp eq i64 %_94, 0
  br i1 %_95, label %bb25, label %panic32

panic31:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bb0596e56811e6488434d819648ccf69) #6
  unreachable

bb25:                                             ; preds = %bb70
  %_389 = load ptr, ptr %pp, align 8
  %_390 = ptrtoint ptr %_389 to i64
  %_393 = icmp eq i64 %_390, 0
  %_394 = and i1 %_393, true
  %_395 = xor i1 %_394, true
  br i1 %_395, label %bb71, label %panic33

panic32:                                          ; preds = %bb70
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_91, ptr align 8 @alloc_30da9f20112d7387e6409a0639cd93c6) #6
  unreachable

bb71:                                             ; preds = %bb25
  %17 = load ptr, ptr %pp, align 8
  %18 = getelementptr inbounds i8, ptr %17, i64 16
  %_62 = load ptr, ptr %18, align 8
  %_84 = load ptr, ptr %pp, align 8
  %_85 = ptrtoint ptr %_84 to i64
  %_88 = and i64 %_85, 7
  %_89 = icmp eq i64 %_88, 0
  br i1 %_89, label %bb24, label %panic34

panic33:                                          ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_30da9f20112d7387e6409a0639cd93c6) #6
  unreachable

bb24:                                             ; preds = %bb71
  %_396 = load ptr, ptr %pp, align 8
  %_397 = ptrtoint ptr %_396 to i64
  %_400 = icmp eq i64 %_397, 0
  %_401 = and i1 %_400, true
  %_402 = xor i1 %_401, true
  br i1 %_402, label %bb72, label %panic35

panic34:                                          ; preds = %bb71
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_85, ptr align 8 @alloc_5cde9ffbfe51754fefc36502868f2109) #6
  unreachable

bb72:                                             ; preds = %bb24
  %19 = load ptr, ptr %pp, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 8
  store ptr %_62, ptr %20, align 8
  %fresh19 = load ptr, ptr %s, align 8
  %_65 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_65, i64 1, i64 1) #7
  %_0.i49 = getelementptr inbounds i8, ptr %_65, i64 1
  store ptr %_0.i49, ptr %s, align 8
  %_423 = ptrtoint ptr %fresh19 to i64
  %_426 = icmp eq i64 %_423, 0
  %_427 = and i1 %_426, true
  %_428 = xor i1 %_427, true
  br i1 %_428, label %bb76, label %panic36

panic35:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5cde9ffbfe51754fefc36502868f2109) #6
  unreachable

bb76:                                             ; preds = %bb72
  %_67 = load i8, ptr %fresh19, align 1
  %_66 = sext i8 %_67 to i32
  %21 = icmp eq i32 %_66, 0
  br i1 %21, label %bb18, label %bb20

panic36:                                          ; preds = %bb72
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1c662aefe449bdb79fae03a1b9a94e22) #6
  unreachable

bb18:                                             ; preds = %bb76
  %_407 = icmp eq i64 ptrtoint (ptr @storestring to i64), 0
  %_408 = and i1 %_407, true
  %_409 = xor i1 %_408, true
  br i1 %_409, label %bb73, label %panic37

bb20:                                             ; preds = %bb76
  %_417 = load ptr, ptr %pp, align 8
  %_418 = ptrtoint ptr %_417 to i64
  %_419 = icmp eq i64 %_418, 0
  %_420 = and i1 %_419, true
  %_421 = xor i1 %_420, true
  br i1 %_421, label %bb75, label %panic40

bb73:                                             ; preds = %bb18
  %_68 = load i32, ptr @storestring, align 4
  %22 = icmp eq i32 %_68, 0
  br i1 %22, label %bb21, label %bb19

panic37:                                          ; preds = %bb18
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8dd7f2c9c3958d8a210a2bbdb33533a7) #6
  unreachable

bb21:                                             ; preds = %bb80, %bb74, %bb73
  ret void

bb19:                                             ; preds = %bb73
  %_72 = load ptr, ptr %pp, align 8
  %_73 = ptrtoint ptr %_72 to i64
  %_76 = and i64 %_73, 7
  %_77 = icmp eq i64 %_76, 0
  br i1 %_77, label %bb22, label %panic38

bb22:                                             ; preds = %bb19
  %_410 = load ptr, ptr %pp, align 8
  %_411 = ptrtoint ptr %_410 to i64
  %_414 = icmp eq i64 %_411, 0
  %_415 = and i1 %_414, true
  %_416 = xor i1 %_415, true
  br i1 %_416, label %bb74, label %panic39

panic38:                                          ; preds = %bb19
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_73, ptr align 8 @alloc_d75c81f320386d0f65c439fb8edcef20) #6
  unreachable

bb74:                                             ; preds = %bb22
  %23 = load ptr, ptr %pp, align 8
  %24 = getelementptr inbounds i8, ptr %23, i64 16
  store ptr %instr, ptr %24, align 8
  br label %bb21

panic39:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d75c81f320386d0f65c439fb8edcef20) #6
  unreachable

bb75:                                             ; preds = %bb20
  %25 = load ptr, ptr %pp, align 8
  %_71 = getelementptr inbounds i8, ptr %25, i64 16
  store ptr %_71, ptr %p, align 8
  br label %bb9

panic40:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6a3423129b8579af2f34bae4d7af34ea) #6
  unreachable

bb81:                                             ; preds = %bb2
  %26 = load ptr, ptr %s, align 8
  %_14 = load i8, ptr %26, align 1
  %_13 = sext i8 %_14 to i32
  %_210 = load ptr, ptr %pp, align 8
  %_211 = ptrtoint ptr %_210 to i64
  %_214 = and i64 %_211, 7
  %_215 = icmp eq i64 %_214, 0
  br i1 %_215, label %bb45, label %panic42

panic41:                                          ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_32fef97f1106aadadaa127446b1f80e8) #6
  unreachable

bb45:                                             ; preds = %bb81
  %_242 = load ptr, ptr %pp, align 8
  %_243 = ptrtoint ptr %_242 to i64
  %_246 = icmp eq i64 %_243, 0
  %_247 = and i1 %_246, true
  %_248 = xor i1 %_247, true
  br i1 %_248, label %bb50, label %panic43

panic42:                                          ; preds = %bb81
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_211, ptr align 8 @alloc_9d464bd5b9b88233fbf37fee083abc39) #6
  unreachable

bb50:                                             ; preds = %bb45
  %27 = load ptr, ptr %pp, align 8
  %_16 = load i8, ptr %27, align 8
  %_15 = sext i8 %_16 to i32
  %28 = sub i32 %_13, %_15
  store i32 %28, ptr %d, align 4
  %_17 = load i32, ptr %d, align 4
  %29 = icmp eq i32 %_17, 0
  br i1 %29, label %bb3, label %bb6

panic43:                                          ; preds = %bb45
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9d464bd5b9b88233fbf37fee083abc39) #6
  unreachable

bb3:                                              ; preds = %bb50
  %fresh15 = load ptr, ptr %s, align 8
  %_20 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_20, i64 1, i64 1) #7
  %_0.i48 = getelementptr inbounds i8, ptr %_20, i64 1
  store ptr %_0.i48, ptr %s, align 8
  %_445 = ptrtoint ptr %fresh15 to i64
  %_448 = icmp eq i64 %_445, 0
  %_449 = and i1 %_448, true
  %_450 = xor i1 %_449, true
  br i1 %_450, label %bb80, label %panic44

bb6:                                              ; preds = %bb50
  %_26 = load i32, ptr %d, align 4
  %_25 = icmp slt i32 %_26, 0
  br i1 %_25, label %bb7, label %bb8

bb80:                                             ; preds = %bb3
  %_22 = load i8, ptr %fresh15, align 1
  %_21 = sext i8 %_22 to i32
  %30 = icmp eq i32 %_21, 0
  br i1 %30, label %bb21, label %bb5

panic44:                                          ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_160496531cb559f23f40c19879b2aaa7) #6
  unreachable

bb5:                                              ; preds = %bb80
  %_439 = load ptr, ptr %pp, align 8
  %_440 = ptrtoint ptr %_439 to i64
  %_441 = icmp eq i64 %_440, 0
  %_442 = and i1 %_441, true
  %_443 = xor i1 %_442, true
  br i1 %_443, label %bb79, label %panic45

bb79:                                             ; preds = %bb5
  %31 = load ptr, ptr %pp, align 8
  %_24 = getelementptr inbounds i8, ptr %31, i64 16
  store ptr %_24, ptr %p, align 8
  br label %bb1

panic45:                                          ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6a3c08fd5645800f60831570f815308c) #6
  unreachable

bb8:                                              ; preds = %bb6
  %_429 = load ptr, ptr %pp, align 8
  %_430 = ptrtoint ptr %_429 to i64
  %_431 = icmp eq i64 %_430, 0
  %_432 = and i1 %_431, true
  %_433 = xor i1 %_432, true
  br i1 %_433, label %bb77, label %panic46

bb7:                                              ; preds = %bb6
  %_434 = load ptr, ptr %pp, align 8
  %_435 = ptrtoint ptr %_434 to i64
  %_436 = icmp eq i64 %_435, 0
  %_437 = and i1 %_436, true
  %_438 = xor i1 %_437, true
  br i1 %_438, label %bb78, label %panic47

bb77:                                             ; preds = %bb8
  %32 = load ptr, ptr %pp, align 8
  %_30 = getelementptr inbounds i8, ptr %32, i64 24
  store ptr %_30, ptr %p, align 8
  br label %bb1

panic46:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a425f56e7349ceb5df928716f654d971) #6
  unreachable

bb78:                                             ; preds = %bb7
  %33 = load ptr, ptr %pp, align 8
  %_28 = getelementptr inbounds i8, ptr %33, i64 8
  store ptr %_28, ptr %p, align 8
  br label %bb1

panic47:                                          ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_438398c84c3c2a2c473a73aee51c0931) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @cleanup2() unnamed_addr #2 {
start:
  %i = alloca [4 x i8], align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %bb1

bb1:                                              ; preds = %bb9, %start
  %_3 = load i32, ptr %i, align 4
  %_28 = icmp eq i64 ptrtoint (ptr @freen to i64), 0
  %_29 = and i1 %_28, true
  %_30 = xor i1 %_29, true
  br i1 %_30, label %bb8, label %panic

bb8:                                              ; preds = %bb1
  %_4 = load i32, ptr @freen, align 4
  %_2 = icmp slt i32 %_3, %_4
  br i1 %_2, label %bb2, label %bb5

panic:                                            ; preds = %bb1
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cbebbc28abd89329ed05e0cf60e31f6d) #6
  unreachable

bb5:                                              ; preds = %bb8
  ret void

bb2:                                              ; preds = %bb8
  %_10 = load i32, ptr %i, align 4
  %_9 = sext i32 %_10 to i64
  %_11 = icmp ult i64 %_9, 10000
  br i1 %_11, label %bb3, label %panic1

bb3:                                              ; preds = %bb2
  %_35 = icmp eq i64 ptrtoint (ptr @freearr to i64), 0
  %_36 = and i1 %_35, true
  %_37 = xor i1 %_36, true
  br i1 %_37, label %bb9, label %panic2

panic1:                                           ; preds = %bb2
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_9, i64 10000, ptr align 8 @alloc_3102d1442863efd14ce6c87366dcf3c3) #6
  unreachable

bb9:                                              ; preds = %bb3
  %0 = getelementptr inbounds nuw ptr, ptr @freearr, i64 %_9
  %_7 = load ptr, ptr %0, align 8
  call void @free(ptr %_7) #7
  %1 = load i32, ptr %i, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr %i, align 4
  br label %bb1

panic2:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3102d1442863efd14ce6c87366dcf3c3) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @search1(ptr %0) unnamed_addr #2 {
start:
  %p = alloca [8 x i8], align 8
  %_0 = alloca [4 x i8], align 4
  %s = alloca [8 x i8], align 8
  store ptr %0, ptr %s, align 8
  store ptr null, ptr %p, align 8
  %_65 = icmp eq i64 ptrtoint (ptr @root to i64), 0
  %_66 = and i1 %_65, true
  %_67 = xor i1 %_66, true
  br i1 %_67, label %bb19, label %panic

bb19:                                             ; preds = %start
  %_3 = load ptr, ptr @root, align 8
  store ptr %_3, ptr %p, align 8
  br label %bb1

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_755cc7f72fe51197ca57050d6898d594) #6
  unreachable

bb1:                                              ; preds = %bb21, %bb23, %bb24, %bb19
  %_6 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %_6) #7
  br i1 %_5, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  %_117 = load ptr, ptr %s, align 8
  %_118 = ptrtoint ptr %_117 to i64
  %_121 = icmp eq i64 %_118, 0
  %_122 = and i1 %_121, true
  %_123 = xor i1 %_122, true
  br i1 %_123, label %bb27, label %panic1

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb12

bb27:                                             ; preds = %bb4
  %1 = load ptr, ptr %s, align 8
  %_9 = load i8, ptr %1, align 1
  %_8 = sext i8 %_9 to i32
  %_49 = load ptr, ptr %p, align 8
  %_50 = ptrtoint ptr %_49 to i64
  %_53 = and i64 %_50, 7
  %_54 = icmp eq i64 %_53, 0
  br i1 %_54, label %bb17, label %panic2

panic1:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_6e1d2fbacfa8d5267d4c6869e84fdc2a) #6
  unreachable

bb17:                                             ; preds = %bb27
  %_68 = load ptr, ptr %p, align 8
  %_69 = ptrtoint ptr %_68 to i64
  %_72 = icmp eq i64 %_69, 0
  %_73 = and i1 %_72, true
  %_74 = xor i1 %_73, true
  br i1 %_74, label %bb20, label %panic3

panic2:                                           ; preds = %bb27
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_50, ptr align 8 @alloc_079f0d4d48c991d78f4b9754108fea8c) #6
  unreachable

bb20:                                             ; preds = %bb17
  %2 = load ptr, ptr %p, align 8
  %_11 = load i8, ptr %2, align 8
  %_10 = sext i8 %_11 to i32
  %_7 = icmp slt i32 %_8, %_10
  br i1 %_7, label %bb5, label %bb6

panic3:                                           ; preds = %bb17
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_079f0d4d48c991d78f4b9754108fea8c) #6
  unreachable

bb6:                                              ; preds = %bb20
  %_110 = load ptr, ptr %s, align 8
  %_111 = ptrtoint ptr %_110 to i64
  %_114 = icmp eq i64 %_111, 0
  %_115 = and i1 %_114, true
  %_116 = xor i1 %_115, true
  br i1 %_116, label %bb26, label %panic4

bb5:                                              ; preds = %bb20
  %_43 = load ptr, ptr %p, align 8
  %_44 = ptrtoint ptr %_43 to i64
  %_47 = and i64 %_44, 7
  %_48 = icmp eq i64 %_47, 0
  br i1 %_48, label %bb16, label %panic12

bb26:                                             ; preds = %bb6
  %3 = load ptr, ptr %s, align 8
  %_15 = load i8, ptr %3, align 1
  %_14 = sext i8 %_15 to i32
  %_37 = load ptr, ptr %p, align 8
  %_38 = ptrtoint ptr %_37 to i64
  %_41 = and i64 %_38, 7
  %_42 = icmp eq i64 %_41, 0
  br i1 %_42, label %bb15, label %panic5

panic4:                                           ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8acc1c07702c53f7c8ed6d05dcd3a31e) #6
  unreachable

bb15:                                             ; preds = %bb26
  %_82 = load ptr, ptr %p, align 8
  %_83 = ptrtoint ptr %_82 to i64
  %_86 = icmp eq i64 %_83, 0
  %_87 = and i1 %_86, true
  %_88 = xor i1 %_87, true
  br i1 %_88, label %bb22, label %panic6

panic5:                                           ; preds = %bb26
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_38, ptr align 8 @alloc_4a52ff3b35558c87008b8432eef175ff) #6
  unreachable

bb22:                                             ; preds = %bb15
  %4 = load ptr, ptr %p, align 8
  %_17 = load i8, ptr %4, align 8
  %_16 = sext i8 %_17 to i32
  %_13 = icmp eq i32 %_14, %_16
  br i1 %_13, label %bb7, label %bb11

panic6:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4a52ff3b35558c87008b8432eef175ff) #6
  unreachable

bb11:                                             ; preds = %bb22
  %_25 = load ptr, ptr %p, align 8
  %_26 = ptrtoint ptr %_25 to i64
  %_29 = and i64 %_26, 7
  %_30 = icmp eq i64 %_29, 0
  br i1 %_30, label %bb13, label %panic7

bb7:                                              ; preds = %bb22
  %fresh20 = load ptr, ptr %s, align 8
  %_20 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_20, i64 1, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %_20, i64 1
  store ptr %_0.i, ptr %s, align 8
  %_104 = ptrtoint ptr %fresh20 to i64
  %_107 = icmp eq i64 %_104, 0
  %_108 = and i1 %_107, true
  %_109 = xor i1 %_108, true
  br i1 %_109, label %bb25, label %panic9

bb13:                                             ; preds = %bb11
  %_96 = load ptr, ptr %p, align 8
  %_97 = ptrtoint ptr %_96 to i64
  %_100 = icmp eq i64 %_97, 0
  %_101 = and i1 %_100, true
  %_102 = xor i1 %_101, true
  br i1 %_102, label %bb24, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_26, ptr align 8 @alloc_0aac314a234db30624fea8df23ade201) #6
  unreachable

bb24:                                             ; preds = %bb13
  %5 = load ptr, ptr %p, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 24
  %_24 = load ptr, ptr %6, align 8
  store ptr %_24, ptr %p, align 8
  br label %bb1

panic8:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0aac314a234db30624fea8df23ade201) #6
  unreachable

bb25:                                             ; preds = %bb7
  %_22 = load i8, ptr %fresh20, align 1
  %_21 = sext i8 %_22 to i32
  %7 = icmp eq i32 %_21, 0
  br i1 %7, label %bb9, label %bb10

panic9:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e7727933010261283292226dfbbb61c7) #6
  unreachable

bb9:                                              ; preds = %bb25
  store i32 1, ptr %_0, align 4
  br label %bb12

bb10:                                             ; preds = %bb25
  %_31 = load ptr, ptr %p, align 8
  %_32 = ptrtoint ptr %_31 to i64
  %_35 = and i64 %_32, 7
  %_36 = icmp eq i64 %_35, 0
  br i1 %_36, label %bb14, label %panic10

bb12:                                             ; preds = %bb3, %bb9
  %8 = load i32, ptr %_0, align 4
  ret i32 %8

bb14:                                             ; preds = %bb10
  %_89 = load ptr, ptr %p, align 8
  %_90 = ptrtoint ptr %_89 to i64
  %_93 = icmp eq i64 %_90, 0
  %_94 = and i1 %_93, true
  %_95 = xor i1 %_94, true
  br i1 %_95, label %bb23, label %panic11

panic10:                                          ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_32, ptr align 8 @alloc_7ef9a8ad7d5bad18c9ebbb919edff5c5) #6
  unreachable

bb23:                                             ; preds = %bb14
  %9 = load ptr, ptr %p, align 8
  %10 = getelementptr inbounds i8, ptr %9, i64 16
  %_23 = load ptr, ptr %10, align 8
  store ptr %_23, ptr %p, align 8
  br label %bb1

panic11:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_7ef9a8ad7d5bad18c9ebbb919edff5c5) #6
  unreachable

bb16:                                             ; preds = %bb5
  %_75 = load ptr, ptr %p, align 8
  %_76 = ptrtoint ptr %_75 to i64
  %_79 = icmp eq i64 %_76, 0
  %_80 = and i1 %_79, true
  %_81 = xor i1 %_80, true
  br i1 %_81, label %bb21, label %panic13

panic12:                                          ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_44, ptr align 8 @alloc_e5e8d1702c1fe77cc7595db089ee3d86) #6
  unreachable

bb21:                                             ; preds = %bb16
  %11 = load ptr, ptr %p, align 8
  %12 = getelementptr inbounds i8, ptr %11, i64 8
  %_12 = load ptr, ptr %12, align 8
  store ptr %_12, ptr %p, align 8
  br label %bb1

panic13:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e5e8d1702c1fe77cc7595db089ee3d86) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define i32 @search2(ptr %0) unnamed_addr #2 {
start:
  %p = alloca [8 x i8], align 8
  %sc = alloca [4 x i8], align 4
  %d = alloca [4 x i8], align 4
  %_0 = alloca [4 x i8], align 4
  %s = alloca [8 x i8], align 8
  store ptr %0, ptr %s, align 8
  store i32 0, ptr %d, align 4
  store i32 0, ptr %sc, align 4
  store ptr null, ptr %p, align 8
  %_95 = load ptr, ptr %s, align 8
  %_96 = ptrtoint ptr %_95 to i64
  %_99 = icmp eq i64 %_96, 0
  %_100 = and i1 %_99, true
  %_101 = xor i1 %_100, true
  br i1 %_101, label %bb24, label %panic

bb24:                                             ; preds = %start
  %1 = load ptr, ptr %s, align 8
  %_5 = load i8, ptr %1, align 1
  %2 = sext i8 %_5 to i32
  store i32 %2, ptr %sc, align 4
  %_57 = icmp eq i64 ptrtoint (ptr @root to i64), 0
  %_58 = and i1 %_57, true
  %_59 = xor i1 %_58, true
  br i1 %_59, label %bb18, label %panic1

panic:                                            ; preds = %start
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_526b12d3753382e92a0c9a3a7388d180) #6
  unreachable

bb18:                                             ; preds = %bb24
  %_6 = load ptr, ptr @root, align 8
  store ptr %_6, ptr %p, align 8
  br label %bb1

panic1:                                           ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_25a1f4e48918ae1701d7de73ca0ea060) #6
  unreachable

bb1:                                              ; preds = %bb21, %bb22, %bb20, %bb18
  %_9 = load ptr, ptr %p, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_8 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %_9) #7
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  %_10 = load i32, ptr %sc, align 4
  %_41 = load ptr, ptr %p, align 8
  %_42 = ptrtoint ptr %_41 to i64
  %_45 = and i64 %_42, 7
  %_46 = icmp eq i64 %_45, 0
  br i1 %_46, label %bb16, label %panic2

bb3:                                              ; preds = %bb1
  store i32 0, ptr %_0, align 4
  br label %bb12

bb16:                                             ; preds = %bb4
  %_60 = load ptr, ptr %p, align 8
  %_61 = ptrtoint ptr %_60 to i64
  %_64 = icmp eq i64 %_61, 0
  %_65 = and i1 %_64, true
  %_66 = xor i1 %_65, true
  br i1 %_66, label %bb19, label %panic3

panic2:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_42, ptr align 8 @alloc_99123c66855a70e64e7cd9a01ba5fd70) #6
  unreachable

bb19:                                             ; preds = %bb16
  %3 = load ptr, ptr %p, align 8
  %_12 = load i8, ptr %3, align 8
  %_11 = sext i8 %_12 to i32
  %4 = sub i32 %_10, %_11
  store i32 %4, ptr %d, align 4
  %_13 = load i32, ptr %d, align 4
  %5 = icmp eq i32 %_13, 0
  br i1 %5, label %bb5, label %bb9

panic3:                                           ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_99123c66855a70e64e7cd9a01ba5fd70) #6
  unreachable

bb5:                                              ; preds = %bb19
  %_14 = load i32, ptr %sc, align 4
  %6 = icmp eq i32 %_14, 0
  br i1 %6, label %bb6, label %bb7

bb9:                                              ; preds = %bb19
  %_20 = load i32, ptr %d, align 4
  %_19 = icmp slt i32 %_20, 0
  br i1 %_19, label %bb10, label %bb11

bb6:                                              ; preds = %bb5
  store i32 1, ptr %_0, align 4
  br label %bb12

bb7:                                              ; preds = %bb5
  %_16 = load ptr, ptr %s, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %_16, i64 1, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %_16, i64 1
  store ptr %_0.i, ptr %s, align 8
  %_88 = load ptr, ptr %s, align 8
  %_89 = ptrtoint ptr %_88 to i64
  %_92 = icmp eq i64 %_89, 0
  %_93 = and i1 %_92, true
  %_94 = xor i1 %_93, true
  br i1 %_94, label %bb23, label %panic4

bb12:                                             ; preds = %bb3, %bb6
  %7 = load i32, ptr %_0, align 4
  ret i32 %7

bb23:                                             ; preds = %bb7
  %8 = load ptr, ptr %s, align 8
  %_17 = load i8, ptr %8, align 1
  %9 = sext i8 %_17 to i32
  store i32 %9, ptr %sc, align 4
  %_35 = load ptr, ptr %p, align 8
  %_36 = ptrtoint ptr %_35 to i64
  %_39 = and i64 %_36, 7
  %_40 = icmp eq i64 %_39, 0
  br i1 %_40, label %bb15, label %panic5

panic4:                                           ; preds = %bb7
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5b40389847c0b51ef307c75fb255f6f9) #6
  unreachable

bb15:                                             ; preds = %bb23
  %_67 = load ptr, ptr %p, align 8
  %_68 = ptrtoint ptr %_67 to i64
  %_71 = icmp eq i64 %_68, 0
  %_72 = and i1 %_71, true
  %_73 = xor i1 %_72, true
  br i1 %_73, label %bb20, label %panic6

panic5:                                           ; preds = %bb23
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_36, ptr align 8 @alloc_0bf4e0d6744f50d1b7bd8c1c4e05bd09) #6
  unreachable

bb20:                                             ; preds = %bb15
  %10 = load ptr, ptr %p, align 8
  %11 = getelementptr inbounds i8, ptr %10, i64 16
  %_18 = load ptr, ptr %11, align 8
  store ptr %_18, ptr %p, align 8
  br label %bb1

panic6:                                           ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_0bf4e0d6744f50d1b7bd8c1c4e05bd09) #6
  unreachable

bb11:                                             ; preds = %bb9
  %_23 = load ptr, ptr %p, align 8
  %_24 = ptrtoint ptr %_23 to i64
  %_27 = and i64 %_24, 7
  %_28 = icmp eq i64 %_27, 0
  br i1 %_28, label %bb13, label %panic7

bb10:                                             ; preds = %bb9
  %_29 = load ptr, ptr %p, align 8
  %_30 = ptrtoint ptr %_29 to i64
  %_33 = and i64 %_30, 7
  %_34 = icmp eq i64 %_33, 0
  br i1 %_34, label %bb14, label %panic9

bb13:                                             ; preds = %bb11
  %_81 = load ptr, ptr %p, align 8
  %_82 = ptrtoint ptr %_81 to i64
  %_85 = icmp eq i64 %_82, 0
  %_86 = and i1 %_85, true
  %_87 = xor i1 %_86, true
  br i1 %_87, label %bb22, label %panic8

panic7:                                           ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_24, ptr align 8 @alloc_189ace792f057af8d4c0f2bde5298951) #6
  unreachable

bb22:                                             ; preds = %bb13
  %12 = load ptr, ptr %p, align 8
  %13 = getelementptr inbounds i8, ptr %12, i64 24
  %_22 = load ptr, ptr %13, align 8
  store ptr %_22, ptr %p, align 8
  br label %bb1

panic8:                                           ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_189ace792f057af8d4c0f2bde5298951) #6
  unreachable

bb14:                                             ; preds = %bb10
  %_74 = load ptr, ptr %p, align 8
  %_75 = ptrtoint ptr %_74 to i64
  %_78 = icmp eq i64 %_75, 0
  %_79 = and i1 %_78, true
  %_80 = xor i1 %_79, true
  br i1 %_80, label %bb21, label %panic10

panic9:                                           ; preds = %bb10
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_30, ptr align 8 @alloc_8ec38f9d0691da5bfd313c29dc7b60ad) #6
  unreachable

bb21:                                             ; preds = %bb14
  %14 = load ptr, ptr %p, align 8
  %15 = getelementptr inbounds i8, ptr %14, i64 8
  %_21 = load ptr, ptr %15, align 8
  store ptr %_21, ptr %p, align 8
  br label %bb1

panic10:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_8ec38f9d0691da5bfd313c29dc7b60ad) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @pmsearch(ptr %p, ptr %s) unnamed_addr #2 {
start:
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %p) #7
  br i1 %_3, label %bb18, label %bb2

bb2:                                              ; preds = %start
  %_165 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_166 = and i1 %_165, true
  %_167 = xor i1 %_166, true
  br i1 %_167, label %bb36, label %panic

bb18:                                             ; preds = %bb51, %bb50, %start
  ret void

bb36:                                             ; preds = %bb2
  %_158 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_159 = and i1 %_158, true
  %_160 = xor i1 %_159, true
  br i1 %_160, label %bb35, label %panic1

panic:                                            ; preds = %bb2
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4bf63194ca85f85c596ff704bc836e57) #6
  unreachable

bb35:                                             ; preds = %bb36
  %0 = load i32, ptr @nodecnt, align 4
  %1 = add i32 %0, 1
  store i32 %1, ptr @nodecnt, align 4
  %_179 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_180 = and i1 %_179, true
  %_181 = xor i1 %_180, true
  br i1 %_181, label %bb38, label %panic2

panic1:                                           ; preds = %bb36
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_4bf63194ca85f85c596ff704bc836e57) #6
  unreachable

bb38:                                             ; preds = %bb35
  %_169 = ptrtoint ptr %s to i64
  %_172 = icmp eq i64 %_169, 0
  %_173 = and i1 %_172, true
  %_174 = xor i1 %_173, true
  br i1 %_174, label %bb37, label %panic3

panic2:                                           ; preds = %bb35
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cae4cf4504d45e7d3b1b2bb83b18b96a) #6
  unreachable

bb37:                                             ; preds = %bb38
  %_8 = load i8, ptr %s, align 1
  %_7 = sext i8 %_8 to i32
  %_6 = icmp eq i32 %_7, 46
  br i1 %_6, label %bb4, label %bb3

panic3:                                           ; preds = %bb38
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e898bdd34656d7ec1e936e48992edef4) #6
  unreachable

bb3:                                              ; preds = %bb37
  %_316 = ptrtoint ptr %s to i64
  %_319 = icmp eq i64 %_316, 0
  %_320 = and i1 %_319, true
  %_321 = xor i1 %_320, true
  br i1 %_321, label %bb58, label %panic4

bb4:                                              ; preds = %bb39, %bb37
  %_125 = ptrtoint ptr %p to i64
  %_128 = and i64 %_125, 7
  %_129 = icmp eq i64 %_128, 0
  br i1 %_129, label %bb30, label %panic7

bb58:                                             ; preds = %bb3
  %_12 = load i8, ptr %s, align 1
  %_11 = sext i8 %_12 to i32
  %_131 = ptrtoint ptr %p to i64
  %_134 = and i64 %_131, 7
  %_135 = icmp eq i64 %_134, 0
  br i1 %_135, label %bb31, label %panic5

panic4:                                           ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1a0cfd9055369d352d038a5b23229123) #6
  unreachable

bb31:                                             ; preds = %bb58
  %_183 = ptrtoint ptr %p to i64
  %_186 = icmp eq i64 %_183, 0
  %_187 = and i1 %_186, true
  %_188 = xor i1 %_187, true
  br i1 %_188, label %bb39, label %panic6

panic5:                                           ; preds = %bb58
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_131, ptr align 8 @alloc_1b4705f90bc541c5507f477e1e64420b) #6
  unreachable

bb39:                                             ; preds = %bb31
  %_14 = load i8, ptr %p, align 8
  %_13 = sext i8 %_14 to i32
  %_10 = icmp slt i32 %_11, %_13
  br i1 %_10, label %bb4, label %bb5

panic6:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1b4705f90bc541c5507f477e1e64420b) #6
  unreachable

bb5:                                              ; preds = %bb40, %bb39
  %_309 = ptrtoint ptr %s to i64
  %_312 = icmp eq i64 %_309, 0
  %_313 = and i1 %_312, true
  %_314 = xor i1 %_313, true
  br i1 %_314, label %bb57, label %panic9

bb30:                                             ; preds = %bb4
  %_190 = ptrtoint ptr %p to i64
  %_193 = icmp eq i64 %_190, 0
  %_194 = and i1 %_193, true
  %_195 = xor i1 %_194, true
  br i1 %_195, label %bb40, label %panic8

panic7:                                           ; preds = %bb4
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_125, ptr align 8 @alloc_9da86e97fb6a93b029dbcbe7c87d0559) #6
  unreachable

bb40:                                             ; preds = %bb30
  %2 = getelementptr inbounds i8, ptr %p, i64 8
  %_16 = load ptr, ptr %2, align 8
  call void @pmsearch(ptr %_16, ptr %s) #7
  br label %bb5

panic8:                                           ; preds = %bb30
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9da86e97fb6a93b029dbcbe7c87d0559) #6
  unreachable

bb57:                                             ; preds = %bb5
  %_19 = load i8, ptr %s, align 1
  %_18 = sext i8 %_19 to i32
  %_17 = icmp eq i32 %_18, 46
  br i1 %_17, label %bb7, label %bb6

panic9:                                           ; preds = %bb5
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ced1cfb0967c933593eeea17a2c1d687) #6
  unreachable

bb6:                                              ; preds = %bb57
  %_302 = ptrtoint ptr %s to i64
  %_305 = icmp eq i64 %_302, 0
  %_306 = and i1 %_305, true
  %_307 = xor i1 %_306, true
  br i1 %_307, label %bb56, label %panic10

bb7:                                              ; preds = %bb41, %bb57
  %_113 = ptrtoint ptr %p to i64
  %_116 = and i64 %_113, 7
  %_117 = icmp eq i64 %_116, 0
  br i1 %_117, label %bb28, label %panic13

bb56:                                             ; preds = %bb6
  %_23 = load i8, ptr %s, align 1
  %_22 = sext i8 %_23 to i32
  %_119 = ptrtoint ptr %p to i64
  %_122 = and i64 %_119, 7
  %_123 = icmp eq i64 %_122, 0
  br i1 %_123, label %bb29, label %panic11

panic10:                                          ; preds = %bb6
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_3ce74fa0eef4ae463c6dd7e0c7d550a7) #6
  unreachable

bb29:                                             ; preds = %bb56
  %_197 = ptrtoint ptr %p to i64
  %_200 = icmp eq i64 %_197, 0
  %_201 = and i1 %_200, true
  %_202 = xor i1 %_201, true
  br i1 %_202, label %bb41, label %panic12

panic11:                                          ; preds = %bb56
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_119, ptr align 8 @alloc_2f730b67c1b3676f761bc33513c193d8) #6
  unreachable

bb41:                                             ; preds = %bb29
  %_25 = load i8, ptr %p, align 8
  %_24 = sext i8 %_25 to i32
  %_21 = icmp eq i32 %_22, %_24
  br i1 %_21, label %bb7, label %bb11

panic12:                                          ; preds = %bb29
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_2f730b67c1b3676f761bc33513c193d8) #6
  unreachable

bb11:                                             ; preds = %bb43, %bb55, %bb42, %bb41
  %_288 = ptrtoint ptr %s to i64
  %_291 = icmp eq i64 %_288, 0
  %_292 = and i1 %_291, true
  %_293 = xor i1 %_292, true
  br i1 %_293, label %bb54, label %panic18

bb28:                                             ; preds = %bb7
  %_204 = ptrtoint ptr %p to i64
  %_207 = icmp eq i64 %_204, 0
  %_208 = and i1 %_207, true
  %_209 = xor i1 %_208, true
  br i1 %_209, label %bb42, label %panic14

panic13:                                          ; preds = %bb7
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_113, ptr align 8 @alloc_f1120cdb7edaa31fddcd2306503925dc) #6
  unreachable

bb42:                                             ; preds = %bb28
  %_27 = load i8, ptr %p, align 8
  %_26 = sext i8 %_27 to i32
  %3 = icmp eq i32 %_26, 0
  br i1 %3, label %bb11, label %bb8

panic14:                                          ; preds = %bb28
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f1120cdb7edaa31fddcd2306503925dc) #6
  unreachable

bb8:                                              ; preds = %bb42
  %_295 = ptrtoint ptr %s to i64
  %_298 = icmp eq i64 %_295, 0
  %_299 = and i1 %_298, true
  %_300 = xor i1 %_299, true
  br i1 %_300, label %bb55, label %panic15

bb55:                                             ; preds = %bb8
  %_29 = load i8, ptr %s, align 1
  %_28 = sext i8 %_29 to i32
  %4 = icmp eq i32 %_28, 0
  br i1 %4, label %bb11, label %bb9

panic15:                                          ; preds = %bb8
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a032a07850a00cbeedcb8ff1b593a993) #6
  unreachable

bb9:                                              ; preds = %bb55
  %_107 = ptrtoint ptr %p to i64
  %_110 = and i64 %_107, 7
  %_111 = icmp eq i64 %_110, 0
  br i1 %_111, label %bb27, label %panic16

bb27:                                             ; preds = %bb9
  %_211 = ptrtoint ptr %p to i64
  %_214 = icmp eq i64 %_211, 0
  %_215 = and i1 %_214, true
  %_216 = xor i1 %_215, true
  br i1 %_216, label %bb43, label %panic17

panic16:                                          ; preds = %bb9
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_107, ptr align 8 @alloc_cedb99397be4e33b7cae707fbfee3560) #6
  unreachable

bb43:                                             ; preds = %bb27
  %5 = getelementptr inbounds i8, ptr %p, i64 16
  %_31 = load ptr, ptr %5, align 8
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %s, i64 1, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %s, i64 1
  call void @pmsearch(ptr %_31, ptr %_0.i) #7
  br label %bb11

panic17:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_cedb99397be4e33b7cae707fbfee3560) #6
  unreachable

bb54:                                             ; preds = %bb11
  %_35 = load i8, ptr %s, align 1
  %_34 = sext i8 %_35 to i32
  %6 = icmp eq i32 %_34, 0
  br i1 %6, label %bb12, label %bb15

panic18:                                          ; preds = %bb11
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_5f5836adba3b64f7de7b17a966dbe33a) #6
  unreachable

bb12:                                             ; preds = %bb54
  %_101 = ptrtoint ptr %p to i64
  %_104 = and i64 %_101, 7
  %_105 = icmp eq i64 %_104, 0
  br i1 %_105, label %bb26, label %panic19

bb15:                                             ; preds = %bb49, %bb44, %bb54
  %_281 = ptrtoint ptr %s to i64
  %_284 = icmp eq i64 %_281, 0
  %_285 = and i1 %_284, true
  %_286 = xor i1 %_285, true
  br i1 %_286, label %bb53, label %panic28

bb26:                                             ; preds = %bb12
  %_218 = ptrtoint ptr %p to i64
  %_221 = icmp eq i64 %_218, 0
  %_222 = and i1 %_221, true
  %_223 = xor i1 %_222, true
  br i1 %_223, label %bb44, label %panic20

panic19:                                          ; preds = %bb12
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_101, ptr align 8 @alloc_d83d55e18bd6ad7882e3a404b426b616) #6
  unreachable

bb44:                                             ; preds = %bb26
  %_37 = load i8, ptr %p, align 8
  %_36 = sext i8 %_37 to i32
  %7 = icmp eq i32 %_36, 0
  br i1 %7, label %bb13, label %bb15

panic20:                                          ; preds = %bb26
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_d83d55e18bd6ad7882e3a404b426b616) #6
  unreachable

bb13:                                             ; preds = %bb44
  %_228 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_229 = and i1 %_228, true
  %_230 = xor i1 %_229, true
  br i1 %_230, label %bb45, label %panic21

bb45:                                             ; preds = %bb13
  %fresh21 = load i32, ptr @srchtop, align 4
  %_235 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_236 = and i1 %_235, true
  %_237 = xor i1 %_236, true
  br i1 %_237, label %bb46, label %panic22

panic21:                                          ; preds = %bb13
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1b9e96c7c2808856d828befdbf6eab68) #6
  unreachable

bb46:                                             ; preds = %bb45
  %_40 = load i32, ptr @srchtop, align 4
  %_242 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_243 = and i1 %_242, true
  %_244 = xor i1 %_243, true
  br i1 %_244, label %bb47, label %panic23

panic22:                                          ; preds = %bb45
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_170603b64a768b28226b0a6409c7b631) #6
  unreachable

bb47:                                             ; preds = %bb46
  %8 = add i32 %_40, 1
  store i32 %8, ptr @srchtop, align 4
  %_77 = ptrtoint ptr %p to i64
  %_80 = and i64 %_77, 7
  %_81 = icmp eq i64 %_80, 0
  br i1 %_81, label %bb22, label %panic24

panic23:                                          ; preds = %bb46
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_e71f892506dc0da233308d5ee9b04fec) #6
  unreachable

bb22:                                             ; preds = %bb47
  %_246 = ptrtoint ptr %p to i64
  %_249 = icmp eq i64 %_246, 0
  %_250 = and i1 %_249, true
  %_251 = xor i1 %_250, true
  br i1 %_251, label %bb48, label %panic25

panic24:                                          ; preds = %bb47
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_77, ptr align 8 @alloc_df24740ee156ab6a0544ef2ccebbb4d2) #6
  unreachable

bb48:                                             ; preds = %bb22
  %9 = getelementptr inbounds i8, ptr %p, i64 16
  %_43 = load ptr, ptr %9, align 8
  %_45 = sext i32 %fresh21 to i64
  %_46 = icmp ult i64 %_45, 100000
  br i1 %_46, label %bb14, label %panic26

panic25:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df24740ee156ab6a0544ef2ccebbb4d2) #6
  unreachable

bb14:                                             ; preds = %bb48
  %_256 = icmp eq i64 ptrtoint (ptr @srcharr to i64), 0
  %_257 = and i1 %_256, true
  %_258 = xor i1 %_257, true
  br i1 %_258, label %bb49, label %panic27

panic26:                                          ; preds = %bb48
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_45, i64 100000, ptr align 8 @alloc_38df4db7110dac3ec7d15bf6692fdc34) #6
  unreachable

bb49:                                             ; preds = %bb14
  %10 = getelementptr inbounds nuw ptr, ptr @srcharr, i64 %_45
  store ptr %_43, ptr %10, align 8
  br label %bb15

panic27:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_38df4db7110dac3ec7d15bf6692fdc34) #6
  unreachable

bb53:                                             ; preds = %bb15
  %_49 = load i8, ptr %s, align 1
  %_48 = sext i8 %_49 to i32
  %_47 = icmp eq i32 %_48, 46
  br i1 %_47, label %bb17, label %bb16

panic28:                                          ; preds = %bb15
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_1a33e92b6bd4741f5fef4d508f36f1c9) #6
  unreachable

bb16:                                             ; preds = %bb53
  %_274 = ptrtoint ptr %s to i64
  %_277 = icmp eq i64 %_274, 0
  %_278 = and i1 %_277, true
  %_279 = xor i1 %_278, true
  br i1 %_279, label %bb52, label %panic29

bb17:                                             ; preds = %bb50, %bb53
  %_59 = ptrtoint ptr %p to i64
  %_62 = and i64 %_59, 7
  %_63 = icmp eq i64 %_62, 0
  br i1 %_63, label %bb19, label %panic32

bb52:                                             ; preds = %bb16
  %_53 = load i8, ptr %s, align 1
  %_52 = sext i8 %_53 to i32
  %_65 = ptrtoint ptr %p to i64
  %_68 = and i64 %_65, 7
  %_69 = icmp eq i64 %_68, 0
  br i1 %_69, label %bb20, label %panic30

panic29:                                          ; preds = %bb16
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_623af4bbc7bfb303caaf05c477d58fb0) #6
  unreachable

bb20:                                             ; preds = %bb52
  %_260 = ptrtoint ptr %p to i64
  %_263 = icmp eq i64 %_260, 0
  %_264 = and i1 %_263, true
  %_265 = xor i1 %_264, true
  br i1 %_265, label %bb50, label %panic31

panic30:                                          ; preds = %bb52
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_65, ptr align 8 @alloc_02123ecf7e8f5f08e8c14c6d007ad069) #6
  unreachable

bb50:                                             ; preds = %bb20
  %_55 = load i8, ptr %p, align 8
  %_54 = sext i8 %_55 to i32
  %_51 = icmp sgt i32 %_52, %_54
  br i1 %_51, label %bb17, label %bb18

panic31:                                          ; preds = %bb20
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_02123ecf7e8f5f08e8c14c6d007ad069) #6
  unreachable

bb19:                                             ; preds = %bb17
  %_267 = ptrtoint ptr %p to i64
  %_270 = icmp eq i64 %_267, 0
  %_271 = and i1 %_270, true
  %_272 = xor i1 %_271, true
  br i1 %_272, label %bb51, label %panic33

panic32:                                          ; preds = %bb17
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_59, ptr align 8 @alloc_373c67bc90327b49cd2ae7ec6806042a) #6
  unreachable

bb51:                                             ; preds = %bb19
  %11 = getelementptr inbounds i8, ptr %p, i64 24
  %_57 = load ptr, ptr %11, align 8
  call void @pmsearch(ptr %_57, ptr %s) #7
  br label %bb18

panic33:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_373c67bc90327b49cd2ae7ec6806042a) #6
  unreachable
}

; Function Attrs: nounwind nonlazybind
define void @nearsearch(ptr %p, ptr %s, i32 %d) unnamed_addr #2 {
start:
  %_37 = alloca [4 x i8], align 4
  %_33 = alloca [8 x i8], align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h2ce6ad0526d85333E"(ptr %p) #7
  br i1 %_4, label %bb21, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp slt i32 %d, 0
  br i1 %_5, label %bb21, label %bb3

bb21:                                             ; preds = %bb52, %bb51, %bb2, %start
  ret void

bb3:                                              ; preds = %bb2
  %_152 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_153 = and i1 %_152, true
  %_154 = xor i1 %_153, true
  br i1 %_154, label %bb38, label %panic

bb38:                                             ; preds = %bb3
  %_145 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_146 = and i1 %_145, true
  %_147 = xor i1 %_146, true
  br i1 %_147, label %bb37, label %panic1

panic:                                            ; preds = %bb3
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df130857e2ee379875af15dbd1d3c156) #6
  unreachable

bb37:                                             ; preds = %bb38
  %0 = load i32, ptr @nodecnt, align 4
  %1 = add i32 %0, 1
  store i32 %1, ptr @nodecnt, align 4
  %_159 = icmp eq i64 ptrtoint (ptr @nodecnt to i64), 0
  %_160 = and i1 %_159, true
  %_161 = xor i1 %_160, true
  br i1 %_161, label %bb39, label %panic2

panic1:                                           ; preds = %bb38
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_df130857e2ee379875af15dbd1d3c156) #6
  unreachable

bb39:                                             ; preds = %bb37
  %_8 = icmp sgt i32 %d, 0
  br i1 %_8, label %bb5, label %bb4

panic2:                                           ; preds = %bb37
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_bff501312ee83c950009dd55fd57ceca) #6
  unreachable

bb4:                                              ; preds = %bb39
  %_268 = ptrtoint ptr %s to i64
  %_271 = icmp eq i64 %_268, 0
  %_272 = and i1 %_271, true
  %_273 = xor i1 %_272, true
  br i1 %_273, label %bb55, label %panic3

bb5:                                              ; preds = %bb40, %bb39
  %_112 = ptrtoint ptr %p to i64
  %_115 = and i64 %_112, 7
  %_116 = icmp eq i64 %_115, 0
  br i1 %_116, label %bb32, label %panic6

bb55:                                             ; preds = %bb4
  %_11 = load i8, ptr %s, align 1
  %_10 = sext i8 %_11 to i32
  %_118 = ptrtoint ptr %p to i64
  %_121 = and i64 %_118, 7
  %_122 = icmp eq i64 %_121, 0
  br i1 %_122, label %bb33, label %panic4

panic3:                                           ; preds = %bb4
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_076f5716a19e8df3b28b3e04b1f7f811) #6
  unreachable

bb33:                                             ; preds = %bb55
  %_163 = ptrtoint ptr %p to i64
  %_166 = icmp eq i64 %_163, 0
  %_167 = and i1 %_166, true
  %_168 = xor i1 %_167, true
  br i1 %_168, label %bb40, label %panic5

panic4:                                           ; preds = %bb55
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_118, ptr align 8 @alloc_b19686fddde7421bdc3dd27cca7856ee) #6
  unreachable

bb40:                                             ; preds = %bb33
  %_13 = load i8, ptr %p, align 8
  %_12 = sext i8 %_13 to i32
  %_9 = icmp slt i32 %_10, %_12
  br i1 %_9, label %bb5, label %bb6

panic5:                                           ; preds = %bb33
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b19686fddde7421bdc3dd27cca7856ee) #6
  unreachable

bb6:                                              ; preds = %bb41, %bb40
  %_106 = ptrtoint ptr %p to i64
  %_109 = and i64 %_106, 7
  %_110 = icmp eq i64 %_109, 0
  br i1 %_110, label %bb31, label %panic8

bb32:                                             ; preds = %bb5
  %_170 = ptrtoint ptr %p to i64
  %_173 = icmp eq i64 %_170, 0
  %_174 = and i1 %_173, true
  %_175 = xor i1 %_174, true
  br i1 %_175, label %bb41, label %panic7

panic6:                                           ; preds = %bb5
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_112, ptr align 8 @alloc_9913977e883814b9c772e0407fb7b160) #6
  unreachable

bb41:                                             ; preds = %bb32
  %2 = getelementptr inbounds i8, ptr %p, i64 8
  %_15 = load ptr, ptr %2, align 8
  call void @nearsearch(ptr %_15, ptr %s, i32 %d) #7
  br label %bb6

panic7:                                           ; preds = %bb32
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9913977e883814b9c772e0407fb7b160) #6
  unreachable

bb31:                                             ; preds = %bb6
  %_177 = ptrtoint ptr %p to i64
  %_180 = icmp eq i64 %_177, 0
  %_181 = and i1 %_180, true
  %_182 = xor i1 %_181, true
  br i1 %_182, label %bb42, label %panic9

panic8:                                           ; preds = %bb6
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_106, ptr align 8 @alloc_ff0948a1ee8e64dcf2f9d3e89deb1614) #6
  unreachable

bb42:                                             ; preds = %bb31
  %_17 = load i8, ptr %p, align 8
  %_16 = sext i8 %_17 to i32
  %3 = icmp eq i32 %_16, 0
  br i1 %3, label %bb7, label %bb11

panic9:                                           ; preds = %bb31
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_ff0948a1ee8e64dcf2f9d3e89deb1614) #6
  unreachable

bb7:                                              ; preds = %bb42
  %_20 = call i64 @strlen(ptr %s) #7
  %_19 = trunc i64 %_20 to i32
  %_18 = icmp sle i32 %_19, %d
  br i1 %_18, label %bb9, label %bb18

bb11:                                             ; preds = %bb42
  %_70 = ptrtoint ptr %p to i64
  %_73 = and i64 %_70, 7
  %_74 = icmp eq i64 %_73, 0
  br i1 %_74, label %bb25, label %panic17

bb18:                                             ; preds = %bb17, %bb47, %bb7
  %_43 = icmp sgt i32 %d, 0
  br i1 %_43, label %bb20, label %bb19

bb9:                                              ; preds = %bb7
  %_187 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_188 = and i1 %_187, true
  %_189 = xor i1 %_188, true
  br i1 %_189, label %bb43, label %panic10

bb43:                                             ; preds = %bb9
  %fresh22 = load i32, ptr @srchtop, align 4
  %_194 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_195 = and i1 %_194, true
  %_196 = xor i1 %_195, true
  br i1 %_196, label %bb44, label %panic11

panic10:                                          ; preds = %bb9
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b31d53f0c4e05265397c4e213c784c90) #6
  unreachable

bb44:                                             ; preds = %bb43
  %_24 = load i32, ptr @srchtop, align 4
  %_201 = icmp eq i64 ptrtoint (ptr @srchtop to i64), 0
  %_202 = and i1 %_201, true
  %_203 = xor i1 %_202, true
  br i1 %_203, label %bb45, label %panic12

panic11:                                          ; preds = %bb43
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_044da1895963630b2484683b3a5fc245) #6
  unreachable

bb45:                                             ; preds = %bb44
  %4 = add i32 %_24, 1
  store i32 %4, ptr @srchtop, align 4
  %_82 = ptrtoint ptr %p to i64
  %_85 = and i64 %_82, 7
  %_86 = icmp eq i64 %_85, 0
  br i1 %_86, label %bb27, label %panic13

panic12:                                          ; preds = %bb44
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_9e0d73468c81920de2d6cac62a7db916) #6
  unreachable

bb27:                                             ; preds = %bb45
  %_205 = ptrtoint ptr %p to i64
  %_208 = icmp eq i64 %_205, 0
  %_209 = and i1 %_208, true
  %_210 = xor i1 %_209, true
  br i1 %_210, label %bb46, label %panic14

panic13:                                          ; preds = %bb45
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_82, ptr align 8 @alloc_a60a5a97bd02dff23f3ab51f8699ef82) #6
  unreachable

bb46:                                             ; preds = %bb27
  %5 = getelementptr inbounds i8, ptr %p, i64 16
  %_27 = load ptr, ptr %5, align 8
  %_29 = sext i32 %fresh22 to i64
  %_30 = icmp ult i64 %_29, 100000
  br i1 %_30, label %bb10, label %panic15

panic14:                                          ; preds = %bb27
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a60a5a97bd02dff23f3ab51f8699ef82) #6
  unreachable

bb10:                                             ; preds = %bb46
  %_215 = icmp eq i64 ptrtoint (ptr @srcharr to i64), 0
  %_216 = and i1 %_215, true
  %_217 = xor i1 %_216, true
  br i1 %_217, label %bb47, label %panic16

panic15:                                          ; preds = %bb46
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64 %_29, i64 100000, ptr align 8 @alloc_c0f60b84332aa92159d281b8764605db) #6
  unreachable

bb47:                                             ; preds = %bb10
  %6 = getelementptr inbounds nuw ptr, ptr @srcharr, i64 %_29
  store ptr %_27, ptr %6, align 8
  br label %bb18

panic16:                                          ; preds = %bb10
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_c0f60b84332aa92159d281b8764605db) #6
  unreachable

bb25:                                             ; preds = %bb11
  %_226 = ptrtoint ptr %p to i64
  %_229 = icmp eq i64 %_226, 0
  %_230 = and i1 %_229, true
  %_231 = xor i1 %_230, true
  br i1 %_231, label %bb49, label %panic18

panic17:                                          ; preds = %bb11
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_70, ptr align 8 @alloc_b8653b2675c460b5ba810e9203d5a521) #6
  unreachable

bb49:                                             ; preds = %bb25
  %7 = getelementptr inbounds i8, ptr %p, i64 16
  %_32 = load ptr, ptr %7, align 8
  %_219 = ptrtoint ptr %s to i64
  %_222 = icmp eq i64 %_219, 0
  %_223 = and i1 %_222, true
  %_224 = xor i1 %_223, true
  br i1 %_224, label %bb48, label %panic19

panic18:                                          ; preds = %bb25
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_b8653b2675c460b5ba810e9203d5a521) #6
  unreachable

bb48:                                             ; preds = %bb49
  %_35 = load i8, ptr %s, align 1
  %_34 = sext i8 %_35 to i32
  %8 = icmp eq i32 %_34, 0
  br i1 %8, label %bb13, label %bb12

panic19:                                          ; preds = %bb49
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_99c14adcf6839db4aec7df70febd7b77) #6
  unreachable

bb13:                                             ; preds = %bb48
  store ptr %s, ptr %_33, align 8
  br label %bb14

bb12:                                             ; preds = %bb48
; call core::ptr::mut_ptr::<impl *mut T>::offset::precondition_check
  call void @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset18precondition_check17hced17e0cea48f428E"(ptr %s, i64 1, i64 1) #7
  %_0.i = getelementptr inbounds i8, ptr %s, i64 1
  store ptr %_0.i, ptr %_33, align 8
  br label %bb14

bb14:                                             ; preds = %bb12, %bb13
  %_261 = ptrtoint ptr %s to i64
  %_264 = icmp eq i64 %_261, 0
  %_265 = and i1 %_264, true
  %_266 = xor i1 %_265, true
  br i1 %_266, label %bb54, label %panic20

bb54:                                             ; preds = %bb14
  %_40 = load i8, ptr %s, align 1
  %_39 = sext i8 %_40 to i32
  %_64 = ptrtoint ptr %p to i64
  %_67 = and i64 %_64, 7
  %_68 = icmp eq i64 %_67, 0
  br i1 %_68, label %bb24, label %panic21

panic20:                                          ; preds = %bb14
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_a9e17cdcc07b0fe5824b1954e849603e) #6
  unreachable

bb24:                                             ; preds = %bb54
  %_233 = ptrtoint ptr %p to i64
  %_236 = icmp eq i64 %_233, 0
  %_237 = and i1 %_236, true
  %_238 = xor i1 %_237, true
  br i1 %_238, label %bb50, label %panic22

panic21:                                          ; preds = %bb54
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_64, ptr align 8 @alloc_266a6ebe4e29d621d2473cffe920a6a9) #6
  unreachable

bb50:                                             ; preds = %bb24
  %_42 = load i8, ptr %p, align 8
  %_41 = sext i8 %_42 to i32
  %_38 = icmp eq i32 %_39, %_41
  br i1 %_38, label %bb15, label %bb16

panic22:                                          ; preds = %bb24
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_266a6ebe4e29d621d2473cffe920a6a9) #6
  unreachable

bb16:                                             ; preds = %bb50
  %9 = sub i32 %d, 1
  store i32 %9, ptr %_37, align 4
  br label %bb17

bb15:                                             ; preds = %bb50
  store i32 %d, ptr %_37, align 4
  br label %bb17

bb17:                                             ; preds = %bb15, %bb16
  %10 = load ptr, ptr %_33, align 8
  %11 = load i32, ptr %_37, align 4
  call void @nearsearch(ptr %_32, ptr %10, i32 %11) #7
  br label %bb18

bb19:                                             ; preds = %bb18
  %_254 = ptrtoint ptr %s to i64
  %_257 = icmp eq i64 %_254, 0
  %_258 = and i1 %_257, true
  %_259 = xor i1 %_258, true
  br i1 %_259, label %bb53, label %panic23

bb20:                                             ; preds = %bb51, %bb18
  %_52 = ptrtoint ptr %p to i64
  %_55 = and i64 %_52, 7
  %_56 = icmp eq i64 %_55, 0
  br i1 %_56, label %bb22, label %panic26

bb53:                                             ; preds = %bb19
  %_46 = load i8, ptr %s, align 1
  %_45 = sext i8 %_46 to i32
  %_58 = ptrtoint ptr %p to i64
  %_61 = and i64 %_58, 7
  %_62 = icmp eq i64 %_61, 0
  br i1 %_62, label %bb23, label %panic24

panic23:                                          ; preds = %bb19
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f1cf2b36e941457b8cb55ac0c5ff77d3) #6
  unreachable

bb23:                                             ; preds = %bb53
  %_240 = ptrtoint ptr %p to i64
  %_243 = icmp eq i64 %_240, 0
  %_244 = and i1 %_243, true
  %_245 = xor i1 %_244, true
  br i1 %_245, label %bb51, label %panic25

panic24:                                          ; preds = %bb53
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_58, ptr align 8 @alloc_25e8c6ce586d5e93855fec9caa93d113) #6
  unreachable

bb51:                                             ; preds = %bb23
  %_48 = load i8, ptr %p, align 8
  %_47 = sext i8 %_48 to i32
  %_44 = icmp sgt i32 %_45, %_47
  br i1 %_44, label %bb20, label %bb21

panic25:                                          ; preds = %bb23
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_25e8c6ce586d5e93855fec9caa93d113) #6
  unreachable

bb22:                                             ; preds = %bb20
  %_247 = ptrtoint ptr %p to i64
  %_250 = icmp eq i64 %_247, 0
  %_251 = and i1 %_250, true
  %_252 = xor i1 %_251, true
  br i1 %_252, label %bb52, label %panic27

panic26:                                          ; preds = %bb20
; call core::panicking::panic_misaligned_pointer_dereference
  call void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64 8, i64 %_52, ptr align 8 @alloc_f5f3005860f5c2edc4ffaceed8986a91) #6
  unreachable

bb52:                                             ; preds = %bb22
  %12 = getelementptr inbounds i8, ptr %p, i64 24
  %_50 = load ptr, ptr %12, align 8
  call void @nearsearch(ptr %_50, ptr %s, i32 %d) #7
  br label %bb21

panic27:                                          ; preds = %bb22
; call core::panicking::panic_null_pointer_dereference
  call void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8 @alloc_f5f3005860f5c2edc4ffaceed8986a91) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #3

; core::panicking::panic_nounwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking14panic_nounwind17h211d9ce8d63f12e7E(ptr align 1, i64) unnamed_addr #4

; core::panicking::panic
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking5panic17h6e0ea58e8f0c3298E(ptr align 1, i64, ptr align 8) unnamed_addr #4

; core::panicking::panic_misaligned_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking36panic_misaligned_pointer_dereference17hcc3cbded9382b6e5E(i64, i64, ptr align 8) unnamed_addr #5

; core::panicking::panic_null_pointer_dereference
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking30panic_null_pointer_dereference17hf718fcc86a223baaE(ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare i32 @rand() unnamed_addr #2

; core::panicking::panic_const::panic_const_rem_by_zero
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h8cc4f221597e73ceE(ptr align 8) unnamed_addr #4

; core::panicking::panic_const::panic_const_rem_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_rem_overflow17h799fde26ff2294a6E(ptr align 8) unnamed_addr #4

; core::panicking::panic_const::panic_const_div_overflow
; Function Attrs: cold noinline noreturn nounwind nonlazybind
declare void @_ZN4core9panicking11panic_const24panic_const_div_overflow17h1ac73c9e33e18298E(ptr align 8) unnamed_addr #4

; Function Attrs: nounwind nonlazybind
declare ptr @malloc(i64) unnamed_addr #2

; Function Attrs: nounwind nonlazybind
declare void @free(ptr) unnamed_addr #2

; core::panicking::panic_bounds_check
; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize
declare void @_ZN4core9panicking18panic_bounds_check17h27d1e4f0cb1112dfE(i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nounwind nonlazybind
declare i64 @strlen(ptr) unnamed_addr #2

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
