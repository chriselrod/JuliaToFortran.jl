	.file	"kernels.f90"
	.text
	.p2align 4,,15
	.globl	__kernels_MOD_mulkernel
	.type	__kernels_MOD_mulkernel, @function
__kernels_MOD_mulkernel:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-64, %rsp
	subq	$200, %rsp
	vbroadcastsd	(%rdx), %zmm25
	vmovupd	(%rsi), %zmm0
	vmulpd	%zmm0, %zmm25, %zmm11
	vmovupd	64(%rsi), %zmm1
	vmulpd	%zmm25, %zmm1, %zmm25
	vbroadcastsd	256(%rdx), %zmm24
	vmulpd	%zmm0, %zmm24, %zmm10
	vmulpd	%zmm1, %zmm24, %zmm24
	vbroadcastsd	512(%rdx), %zmm23
	vmulpd	%zmm0, %zmm23, %zmm9
	vmulpd	%zmm1, %zmm23, %zmm23
	vbroadcastsd	768(%rdx), %zmm22
	vmulpd	%zmm0, %zmm22, %zmm8
	vmulpd	%zmm1, %zmm22, %zmm22
	vbroadcastsd	1024(%rdx), %zmm18
	vmulpd	%zmm0, %zmm18, %zmm7
	vmulpd	%zmm1, %zmm18, %zmm18
	vbroadcastsd	1280(%rdx), %zmm17
	vmulpd	%zmm0, %zmm17, %zmm6
	vmulpd	%zmm1, %zmm17, %zmm17
	vbroadcastsd	1536(%rdx), %zmm16
	vmulpd	%zmm0, %zmm16, %zmm5
	vmulpd	%zmm1, %zmm16, %zmm16
	vbroadcastsd	1792(%rdx), %zmm26
	vmulpd	%zmm0, %zmm26, %zmm13
	vmulpd	%zmm1, %zmm26, %zmm26
	vbroadcastsd	2048(%rdx), %zmm30
	vmulpd	%zmm0, %zmm30, %zmm3
	vmulpd	%zmm1, %zmm30, %zmm30
	vbroadcastsd	2304(%rdx), %zmm19
	vmulpd	%zmm0, %zmm19, %zmm2
	vmulpd	%zmm1, %zmm19, %zmm19
	vbroadcastsd	2560(%rdx), %zmm28
	vmulpd	%zmm0, %zmm28, %zmm31
	vmulpd	%zmm1, %zmm28, %zmm28
	vbroadcastsd	2816(%rdx), %zmm27
	vmulpd	%zmm0, %zmm27, %zmm29
	vmulpd	%zmm1, %zmm27, %zmm27
	vbroadcastsd	3072(%rdx), %zmm20
	vmulpd	%zmm0, %zmm20, %zmm4
	vmulpd	%zmm1, %zmm20, %zmm20
	vbroadcastsd	3328(%rdx), %zmm14
	vmulpd	%zmm0, %zmm14, %zmm12
	vmulpd	%zmm1, %zmm14, %zmm14
	vbroadcastsd	8(%rdx), %zmm15
	vmovupd	128(%rsi), %zmm0
	vfmadd231pd	%zmm0, %zmm15, %zmm11
	vmovupd	192(%rsi), %zmm1
	vfmadd231pd	%zmm15, %zmm1, %zmm25
	vbroadcastsd	264(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm10
	vfmadd231pd	%zmm1, %zmm15, %zmm24
	vbroadcastsd	520(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm9
	vfmadd231pd	%zmm1, %zmm15, %zmm23
	vbroadcastsd	776(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm8
	vfmadd231pd	%zmm1, %zmm15, %zmm22
	vbroadcastsd	1032(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm7
	vfmadd231pd	%zmm1, %zmm15, %zmm18
	vbroadcastsd	1288(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm6
	vfmadd231pd	%zmm1, %zmm15, %zmm17
	vbroadcastsd	1544(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm5
	vfmadd231pd	%zmm1, %zmm15, %zmm16
	vbroadcastsd	1800(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm13
	vfmadd231pd	%zmm1, %zmm15, %zmm26
	vbroadcastsd	2056(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm3
	vfmadd231pd	%zmm1, %zmm15, %zmm30
	vbroadcastsd	2312(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm2
	vfmadd231pd	%zmm1, %zmm15, %zmm19
	vbroadcastsd	2568(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm31
	vfmadd231pd	%zmm1, %zmm15, %zmm28
	vbroadcastsd	2824(%rdx), %zmm15
	vfmadd231pd	%zmm0, %zmm15, %zmm29
	vfmadd231pd	%zmm1, %zmm15, %zmm27
	vbroadcastsd	3080(%rdx), %zmm21
	vfmadd231pd	%zmm0, %zmm21, %zmm4
	vfmadd231pd	%zmm1, %zmm21, %zmm20
	vbroadcastsd	3336(%rdx), %zmm15
	vfmadd132pd	%zmm15, %zmm12, %zmm0
	vfmadd132pd	%zmm1, %zmm14, %zmm15
	vbroadcastsd	16(%rdx), %zmm1
	vmovupd	256(%rsi), %zmm12
	vfmadd231pd	%zmm12, %zmm1, %zmm11
	vmovupd	320(%rsi), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm25
	vbroadcastsd	272(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm10
	vfmadd231pd	%zmm14, %zmm1, %zmm24
	vbroadcastsd	528(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm9
	vfmadd231pd	%zmm14, %zmm1, %zmm23
	vbroadcastsd	784(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm8
	vfmadd231pd	%zmm14, %zmm1, %zmm22
	vbroadcastsd	1040(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm7
	vfmadd231pd	%zmm14, %zmm1, %zmm18
	vbroadcastsd	1296(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm6
	vfmadd231pd	%zmm14, %zmm1, %zmm17
	vbroadcastsd	1552(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm5
	vfmadd231pd	%zmm14, %zmm1, %zmm16
	vbroadcastsd	1808(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm13
	vfmadd231pd	%zmm14, %zmm1, %zmm26
	vbroadcastsd	2064(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm3
	vfmadd231pd	%zmm14, %zmm1, %zmm30
	vbroadcastsd	2320(%rdx), %zmm1
	vfmadd231pd	%zmm12, %zmm1, %zmm2
	vfmadd231pd	%zmm14, %zmm1, %zmm19
	vbroadcastsd	2576(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm31
	vmovapd	%zmm31, %zmm1
	vfmadd231pd	%zmm14, %zmm21, %zmm28
	vbroadcastsd	2832(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm29
	vfmadd231pd	%zmm14, %zmm31, %zmm27
	vbroadcastsd	3088(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm4
	vfmadd231pd	%zmm14, %zmm21, %zmm20
	vbroadcastsd	3344(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm0
	vfmadd132pd	%zmm31, %zmm15, %zmm14
	vbroadcastsd	24(%rdx), %zmm21
	vmovupd	384(%rsi), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm11
	vmovupd	448(%rsi), %zmm15
	vfmadd231pd	%zmm21, %zmm15, %zmm25
	vbroadcastsd	280(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm10
	vfmadd231pd	%zmm15, %zmm31, %zmm24
	vbroadcastsd	536(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm9
	vfmadd231pd	%zmm15, %zmm21, %zmm23
	vbroadcastsd	792(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm8
	vfmadd231pd	%zmm15, %zmm31, %zmm22
	vbroadcastsd	1048(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm7
	vfmadd231pd	%zmm15, %zmm21, %zmm18
	vbroadcastsd	1304(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm6
	vfmadd231pd	%zmm15, %zmm31, %zmm17
	vbroadcastsd	1560(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm5
	vfmadd231pd	%zmm15, %zmm21, %zmm16
	vbroadcastsd	1816(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm13
	vfmadd231pd	%zmm15, %zmm31, %zmm26
	vbroadcastsd	2072(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm3
	vfmadd231pd	%zmm15, %zmm21, %zmm30
	vbroadcastsd	2328(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm2
	vfmadd231pd	%zmm15, %zmm31, %zmm19
	vbroadcastsd	2584(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm1
	vfmadd231pd	%zmm15, %zmm21, %zmm28
	vbroadcastsd	2840(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm29
	vfmadd231pd	%zmm15, %zmm31, %zmm27
	vbroadcastsd	3096(%rdx), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm4
	vfmadd132pd	%zmm15, %zmm20, %zmm21
	vbroadcastsd	3352(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm0
	vfmadd132pd	%zmm20, %zmm14, %zmm15
	vbroadcastsd	32(%rdx), %zmm31
	vmovupd	512(%rsi), %zmm12
	vfmadd231pd	%zmm12, %zmm31, %zmm11
	vmovupd	576(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm25
	vbroadcastsd	288(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm20, %zmm24
	vbroadcastsd	544(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm9
	vfmadd231pd	%zmm14, %zmm31, %zmm23
	vbroadcastsd	800(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm20, %zmm22
	vbroadcastsd	1056(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm7
	vfmadd231pd	%zmm14, %zmm31, %zmm18
	vbroadcastsd	1312(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm20, %zmm17
	vbroadcastsd	1568(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm5
	vfmadd231pd	%zmm14, %zmm31, %zmm16
	vbroadcastsd	1824(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm20, %zmm26
	vbroadcastsd	2080(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm3
	vfmadd231pd	%zmm14, %zmm31, %zmm30
	vbroadcastsd	2336(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm20, %zmm19
	vbroadcastsd	2592(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm1
	vfmadd231pd	%zmm14, %zmm31, %zmm28
	vbroadcastsd	2848(%rdx), %zmm20
	vfmadd231pd	%zmm12, %zmm20, %zmm29
	vfmadd231pd	%zmm14, %zmm20, %zmm27
	vbroadcastsd	3104(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm4
	vfmadd231pd	%zmm14, %zmm31, %zmm21
	vbroadcastsd	3360(%rdx), %zmm20
	vfmadd132pd	%zmm20, %zmm0, %zmm12
	vfmadd132pd	%zmm20, %zmm15, %zmm14
	vbroadcastsd	40(%rdx), %zmm0
	vmovupd	640(%rsi), %zmm31
	vfmadd231pd	%zmm31, %zmm0, %zmm11
	vmovupd	704(%rsi), %zmm20
	vfmadd231pd	%zmm0, %zmm20, %zmm25
	vbroadcastsd	296(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm10
	vfmadd231pd	%zmm20, %zmm15, %zmm24
	vbroadcastsd	552(%rdx), %zmm0
	vfmadd231pd	%zmm31, %zmm0, %zmm9
	vfmadd231pd	%zmm20, %zmm0, %zmm23
	vbroadcastsd	808(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm8
	vfmadd231pd	%zmm20, %zmm15, %zmm22
	vbroadcastsd	1064(%rdx), %zmm0
	vfmadd231pd	%zmm31, %zmm0, %zmm7
	vfmadd231pd	%zmm20, %zmm0, %zmm18
	vbroadcastsd	1320(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm6
	vfmadd231pd	%zmm20, %zmm15, %zmm17
	vbroadcastsd	1576(%rdx), %zmm0
	vfmadd231pd	%zmm31, %zmm0, %zmm5
	vfmadd231pd	%zmm20, %zmm0, %zmm16
	vbroadcastsd	1832(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm13
	vfmadd231pd	%zmm20, %zmm15, %zmm26
	vbroadcastsd	2088(%rdx), %zmm0
	vfmadd231pd	%zmm31, %zmm0, %zmm3
	vfmadd231pd	%zmm20, %zmm0, %zmm30
	vbroadcastsd	2344(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm2
	vfmadd231pd	%zmm20, %zmm15, %zmm19
	vbroadcastsd	2600(%rdx), %zmm0
	vfmadd231pd	%zmm31, %zmm0, %zmm1
	vfmadd231pd	%zmm20, %zmm0, %zmm28
	vbroadcastsd	2856(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm29
	vmovapd	%zmm29, %zmm0
	vfmadd231pd	%zmm20, %zmm15, %zmm27
	vbroadcastsd	3112(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm4
	vfmadd231pd	%zmm20, %zmm15, %zmm21
	vbroadcastsd	3368(%rdx), %zmm15
	vfmadd231pd	%zmm31, %zmm15, %zmm12
	vfmadd132pd	%zmm20, %zmm14, %zmm15
	vbroadcastsd	48(%rdx), %zmm29
	vmovupd	768(%rsi), %zmm31
	vfmadd231pd	%zmm31, %zmm29, %zmm11
	vmovupd	832(%rsi), %zmm14
	vfmadd231pd	%zmm29, %zmm14, %zmm25
	vbroadcastsd	304(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm20, %zmm24
	vbroadcastsd	560(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm9
	vfmadd231pd	%zmm14, %zmm29, %zmm23
	vbroadcastsd	816(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm20, %zmm22
	vbroadcastsd	1072(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm7
	vfmadd231pd	%zmm14, %zmm29, %zmm18
	vbroadcastsd	1328(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm20, %zmm17
	vbroadcastsd	1584(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm5
	vfmadd231pd	%zmm14, %zmm29, %zmm16
	vbroadcastsd	1840(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm20, %zmm26
	vbroadcastsd	2096(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm3
	vfmadd231pd	%zmm14, %zmm29, %zmm30
	vbroadcastsd	2352(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm20, %zmm19
	vbroadcastsd	2608(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm1
	vfmadd231pd	%zmm14, %zmm29, %zmm28
	vbroadcastsd	2864(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm0
	vfmadd231pd	%zmm14, %zmm20, %zmm27
	vbroadcastsd	3120(%rdx), %zmm29
	vfmadd231pd	%zmm31, %zmm29, %zmm4
	vfmadd231pd	%zmm14, %zmm29, %zmm21
	vbroadcastsd	3376(%rdx), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm12
	vfmadd231pd	%zmm14, %zmm20, %zmm15
	vbroadcastsd	56(%rdx), %zmm31
	vmovupd	896(%rsi), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm11
	vmovupd	960(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm25
	vbroadcastsd	312(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm10
	vfmadd231pd	%zmm14, %zmm29, %zmm24
	vbroadcastsd	568(%rdx), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm9
	vfmadd231pd	%zmm14, %zmm31, %zmm23
	vbroadcastsd	824(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm8
	vfmadd231pd	%zmm14, %zmm29, %zmm22
	vbroadcastsd	1080(%rdx), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm7
	vfmadd231pd	%zmm14, %zmm31, %zmm18
	vbroadcastsd	1336(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm6
	vfmadd231pd	%zmm14, %zmm29, %zmm17
	vbroadcastsd	1592(%rdx), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm5
	vfmadd231pd	%zmm14, %zmm31, %zmm16
	vbroadcastsd	1848(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm13
	vfmadd231pd	%zmm14, %zmm29, %zmm26
	vbroadcastsd	2104(%rdx), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm3
	vfmadd231pd	%zmm14, %zmm31, %zmm30
	vbroadcastsd	2360(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm2
	vfmadd231pd	%zmm14, %zmm29, %zmm19
	vbroadcastsd	2616(%rdx), %zmm29
	vfmadd231pd	%zmm20, %zmm29, %zmm1
	vfmadd132pd	%zmm14, %zmm28, %zmm29
	vbroadcastsd	2872(%rdx), %zmm28
	vfmadd231pd	%zmm20, %zmm28, %zmm0
	vfmadd231pd	%zmm14, %zmm28, %zmm27
	vbroadcastsd	3128(%rdx), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm4
	vfmadd231pd	%zmm14, %zmm31, %zmm21
	vbroadcastsd	3384(%rdx), %zmm28
	vfmadd231pd	%zmm20, %zmm28, %zmm12
	vfmadd231pd	%zmm14, %zmm28, %zmm15
	vbroadcastsd	64(%rdx), %zmm31
	vmovupd	1024(%rsi), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm11
	vmovupd	1088(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm25
	vbroadcastsd	320(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm28, %zmm24
	vbroadcastsd	576(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm9
	vfmadd231pd	%zmm14, %zmm31, %zmm23
	vbroadcastsd	832(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm28, %zmm22
	vbroadcastsd	1088(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm7
	vfmadd231pd	%zmm14, %zmm31, %zmm18
	vbroadcastsd	1344(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm28, %zmm17
	vbroadcastsd	1600(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm5
	vfmadd231pd	%zmm14, %zmm31, %zmm16
	vbroadcastsd	1856(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm28, %zmm26
	vbroadcastsd	2112(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm3
	vfmadd231pd	%zmm14, %zmm31, %zmm30
	vbroadcastsd	2368(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm28, %zmm19
	vbroadcastsd	2624(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm1
	vfmadd231pd	%zmm14, %zmm31, %zmm29
	vbroadcastsd	2880(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm0
	vfmadd231pd	%zmm14, %zmm28, %zmm27
	vbroadcastsd	3136(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm4
	vfmadd231pd	%zmm14, %zmm31, %zmm21
	vbroadcastsd	3392(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm12
	vfmadd231pd	%zmm14, %zmm28, %zmm15
	vbroadcastsd	72(%rdx), %zmm31
	vmovupd	1152(%rsi), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm11
	vmovupd	1216(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm25
	vbroadcastsd	328(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm28, %zmm24
	vbroadcastsd	584(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm9
	vfmadd231pd	%zmm14, %zmm31, %zmm23
	vbroadcastsd	840(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm28, %zmm22
	vbroadcastsd	1096(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm7
	vfmadd231pd	%zmm14, %zmm31, %zmm18
	vbroadcastsd	1352(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm28, %zmm17
	vbroadcastsd	1608(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm5
	vfmadd231pd	%zmm14, %zmm31, %zmm16
	vbroadcastsd	1864(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm28, %zmm26
	vbroadcastsd	2120(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm3
	vfmadd231pd	%zmm14, %zmm31, %zmm30
	vbroadcastsd	2376(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm28, %zmm19
	vbroadcastsd	2632(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm1
	vfmadd231pd	%zmm14, %zmm31, %zmm29
	vbroadcastsd	2888(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm0
	vfmadd231pd	%zmm14, %zmm28, %zmm27
	vbroadcastsd	3144(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm4
	vfmadd231pd	%zmm14, %zmm31, %zmm21
	vbroadcastsd	3400(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm12
	vfmadd231pd	%zmm14, %zmm28, %zmm15
	vbroadcastsd	80(%rdx), %zmm31
	vmovupd	1280(%rsi), %zmm20
	vfmadd231pd	%zmm31, %zmm20, %zmm11
	vmovupd	1344(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm25
	vbroadcastsd	336(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm28, %zmm24
	vbroadcastsd	592(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm9
	vfmadd231pd	%zmm14, %zmm31, %zmm23
	vbroadcastsd	848(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm28, %zmm22
	vbroadcastsd	1104(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm7
	vfmadd231pd	%zmm14, %zmm31, %zmm18
	vbroadcastsd	1360(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm28, %zmm17
	vbroadcastsd	1616(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm5
	vfmadd231pd	%zmm14, %zmm31, %zmm16
	vbroadcastsd	1872(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm28, %zmm26
	vbroadcastsd	2128(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm3
	vfmadd231pd	%zmm14, %zmm31, %zmm30
	vbroadcastsd	2384(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm28, %zmm19
	vbroadcastsd	2640(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm1
	vfmadd231pd	%zmm14, %zmm31, %zmm29
	vbroadcastsd	2896(%rdx), %zmm28
	vfmadd231pd	%zmm28, %zmm20, %zmm0
	vfmadd132pd	%zmm14, %zmm27, %zmm28
	vbroadcastsd	3152(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm4
	vfmadd231pd	%zmm14, %zmm27, %zmm21
	vbroadcastsd	3408(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm12
	vfmadd231pd	%zmm14, %zmm31, %zmm15
	vbroadcastsd	88(%rdx), %zmm27
	vmovupd	1408(%rsi), %zmm20
	vfmadd231pd	%zmm27, %zmm20, %zmm11
	vmovupd	1472(%rsi), %zmm14
	vfmadd231pd	%zmm27, %zmm14, %zmm25
	vbroadcastsd	344(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm10
	vfmadd231pd	%zmm14, %zmm31, %zmm24
	vbroadcastsd	600(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm9
	vfmadd231pd	%zmm14, %zmm27, %zmm23
	vbroadcastsd	856(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm8
	vfmadd231pd	%zmm14, %zmm31, %zmm22
	vbroadcastsd	1112(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm7
	vfmadd231pd	%zmm14, %zmm27, %zmm18
	vbroadcastsd	1368(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm6
	vfmadd231pd	%zmm14, %zmm31, %zmm17
	vbroadcastsd	1624(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm5
	vfmadd231pd	%zmm14, %zmm27, %zmm16
	vbroadcastsd	1880(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm13
	vfmadd231pd	%zmm14, %zmm31, %zmm26
	vbroadcastsd	2136(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm3
	vfmadd231pd	%zmm14, %zmm27, %zmm30
	vbroadcastsd	2392(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm2
	vfmadd231pd	%zmm14, %zmm31, %zmm19
	vbroadcastsd	2648(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm1
	vfmadd231pd	%zmm14, %zmm27, %zmm29
	vbroadcastsd	2904(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm0
	vfmadd231pd	%zmm14, %zmm31, %zmm28
	vbroadcastsd	3160(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm20, %zmm4
	vfmadd231pd	%zmm14, %zmm27, %zmm21
	vbroadcastsd	3416(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm12
	vfmadd231pd	%zmm14, %zmm31, %zmm15
	vbroadcastsd	96(%rdx), %zmm27
	vmovupd	1536(%rsi), %zmm14
	vfmadd231pd	%zmm27, %zmm14, %zmm11
	vmovupd	1600(%rsi), %zmm20
	vfmadd231pd	%zmm27, %zmm20, %zmm25
	vbroadcastsd	352(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm10
	vfmadd231pd	%zmm20, %zmm31, %zmm24
	vbroadcastsd	608(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm9
	vfmadd231pd	%zmm20, %zmm27, %zmm23
	vbroadcastsd	864(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm8
	vfmadd231pd	%zmm20, %zmm31, %zmm22
	vbroadcastsd	1120(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm7
	vfmadd231pd	%zmm20, %zmm27, %zmm18
	vbroadcastsd	1376(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm6
	vfmadd231pd	%zmm20, %zmm31, %zmm17
	vbroadcastsd	1632(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm5
	vfmadd231pd	%zmm20, %zmm27, %zmm16
	vbroadcastsd	1888(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm13
	vfmadd231pd	%zmm20, %zmm31, %zmm26
	vbroadcastsd	2144(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm3
	vfmadd231pd	%zmm20, %zmm27, %zmm30
	vbroadcastsd	2400(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm2
	vfmadd231pd	%zmm20, %zmm31, %zmm19
	vbroadcastsd	2656(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm1
	vfmadd231pd	%zmm20, %zmm27, %zmm29
	vbroadcastsd	2912(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm0
	vfmadd231pd	%zmm20, %zmm31, %zmm28
	vbroadcastsd	3168(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm4
	vfmadd231pd	%zmm20, %zmm27, %zmm21
	vbroadcastsd	3424(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm12
	vfmadd231pd	%zmm20, %zmm31, %zmm15
	vbroadcastsd	104(%rdx), %zmm27
	vmovupd	1664(%rsi), %zmm14
	vfmadd231pd	%zmm27, %zmm14, %zmm11
	vmovupd	1728(%rsi), %zmm20
	vfmadd231pd	%zmm27, %zmm20, %zmm25
	vbroadcastsd	360(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm10
	vfmadd231pd	%zmm20, %zmm31, %zmm24
	vbroadcastsd	616(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm9
	vfmadd231pd	%zmm20, %zmm27, %zmm23
	vbroadcastsd	872(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm8
	vfmadd231pd	%zmm20, %zmm31, %zmm22
	vbroadcastsd	1128(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm7
	vfmadd231pd	%zmm20, %zmm27, %zmm18
	vbroadcastsd	1384(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm6
	vfmadd231pd	%zmm20, %zmm31, %zmm17
	vbroadcastsd	1640(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm5
	vfmadd231pd	%zmm20, %zmm27, %zmm16
	vbroadcastsd	1896(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm13
	vfmadd231pd	%zmm20, %zmm31, %zmm26
	vbroadcastsd	2152(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm3
	vfmadd231pd	%zmm20, %zmm27, %zmm30
	vbroadcastsd	2408(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm2
	vfmadd231pd	%zmm20, %zmm31, %zmm19
	vbroadcastsd	2664(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm1
	vfmadd231pd	%zmm20, %zmm27, %zmm29
	vbroadcastsd	2920(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm0
	vfmadd231pd	%zmm20, %zmm31, %zmm28
	vbroadcastsd	3176(%rdx), %zmm27
	vfmadd231pd	%zmm27, %zmm14, %zmm4
	vfmadd132pd	%zmm20, %zmm21, %zmm27
	vbroadcastsd	3432(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm12
	vfmadd231pd	%zmm20, %zmm21, %zmm15
	vbroadcastsd	112(%rdx), %zmm20
	vmovupd	1792(%rsi), %zmm14
	vfmadd231pd	%zmm20, %zmm14, %zmm11
	vmovupd	1856(%rsi), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm25
	vbroadcastsd	368(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm10
	vfmadd231pd	%zmm31, %zmm21, %zmm24
	vbroadcastsd	624(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm9
	vfmadd231pd	%zmm31, %zmm20, %zmm23
	vbroadcastsd	880(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm8
	vfmadd231pd	%zmm31, %zmm21, %zmm22
	vbroadcastsd	1136(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm7
	vfmadd231pd	%zmm31, %zmm20, %zmm18
	vbroadcastsd	1392(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm6
	vfmadd231pd	%zmm31, %zmm21, %zmm17
	vbroadcastsd	1648(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm5
	vfmadd231pd	%zmm31, %zmm20, %zmm16
	vbroadcastsd	1904(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm13
	vfmadd231pd	%zmm31, %zmm21, %zmm26
	vbroadcastsd	2160(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm3
	vfmadd231pd	%zmm31, %zmm20, %zmm30
	vbroadcastsd	2416(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm2
	vfmadd231pd	%zmm31, %zmm21, %zmm19
	vbroadcastsd	2672(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm1
	vfmadd231pd	%zmm31, %zmm20, %zmm29
	vbroadcastsd	2928(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm0
	vfmadd231pd	%zmm31, %zmm21, %zmm28
	vbroadcastsd	3184(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm4
	vfmadd231pd	%zmm31, %zmm20, %zmm27
	vbroadcastsd	3440(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm14, %zmm12
	vfmadd231pd	%zmm31, %zmm21, %zmm15
	vbroadcastsd	120(%rdx), %zmm31
	vmovupd	1920(%rsi), %zmm14
	vfmadd231pd	%zmm31, %zmm14, %zmm11
	vmovupd	1984(%rsi), %zmm21
	vfmadd231pd	%zmm31, %zmm21, %zmm25
	vbroadcastsd	376(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm10
	vfmadd231pd	%zmm21, %zmm20, %zmm24
	vbroadcastsd	632(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm9
	vfmadd231pd	%zmm21, %zmm31, %zmm23
	vbroadcastsd	888(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm8
	vfmadd231pd	%zmm21, %zmm20, %zmm22
	vbroadcastsd	1144(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm7
	vfmadd231pd	%zmm21, %zmm31, %zmm18
	vbroadcastsd	1400(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm6
	vfmadd231pd	%zmm21, %zmm20, %zmm17
	vbroadcastsd	1656(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm5
	vfmadd231pd	%zmm21, %zmm31, %zmm16
	vbroadcastsd	1912(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm13
	vfmadd231pd	%zmm21, %zmm20, %zmm26
	vbroadcastsd	2168(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm3
	vfmadd231pd	%zmm21, %zmm31, %zmm30
	vbroadcastsd	2424(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm2
	vfmadd231pd	%zmm21, %zmm20, %zmm19
	vbroadcastsd	2680(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm1
	vfmadd231pd	%zmm21, %zmm31, %zmm29
	vbroadcastsd	2936(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm14, %zmm0
	vfmadd231pd	%zmm21, %zmm20, %zmm28
	vbroadcastsd	3192(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm14, %zmm4
	vfmadd231pd	%zmm21, %zmm31, %zmm27
	vbroadcastsd	3448(%rdx), %zmm20
	vfmadd132pd	%zmm20, %zmm12, %zmm14
	vfmadd231pd	%zmm21, %zmm20, %zmm15
	vbroadcastsd	128(%rdx), %zmm31
	vmovupd	2048(%rsi), %zmm21
	vfmadd231pd	%zmm31, %zmm21, %zmm11
	vmovupd	2112(%rsi), %zmm12
	vfmadd231pd	%zmm31, %zmm12, %zmm25
	vbroadcastsd	384(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm10
	vfmadd231pd	%zmm12, %zmm20, %zmm24
	vbroadcastsd	640(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm9
	vfmadd231pd	%zmm12, %zmm31, %zmm23
	vbroadcastsd	896(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm8
	vfmadd231pd	%zmm12, %zmm20, %zmm22
	vbroadcastsd	1152(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm7
	vfmadd231pd	%zmm12, %zmm31, %zmm18
	vbroadcastsd	1408(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm6
	vfmadd231pd	%zmm12, %zmm20, %zmm17
	vbroadcastsd	1664(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm5
	vfmadd231pd	%zmm12, %zmm31, %zmm16
	vbroadcastsd	1920(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm13
	vfmadd231pd	%zmm12, %zmm20, %zmm26
	vbroadcastsd	2176(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm3
	vfmadd231pd	%zmm12, %zmm31, %zmm30
	vbroadcastsd	2432(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm2
	vfmadd231pd	%zmm12, %zmm20, %zmm19
	vbroadcastsd	2688(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm1
	vfmadd231pd	%zmm12, %zmm31, %zmm29
	vbroadcastsd	2944(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm0
	vfmadd231pd	%zmm12, %zmm20, %zmm28
	vbroadcastsd	3200(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm21, %zmm4
	vfmadd231pd	%zmm12, %zmm31, %zmm27
	vbroadcastsd	3456(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm21, %zmm14
	vfmadd132pd	%zmm12, %zmm15, %zmm20
	vbroadcastsd	136(%rdx), %zmm12
	vmovupd	2176(%rsi), %zmm21
	vfmadd231pd	%zmm12, %zmm21, %zmm11
	vmovupd	2240(%rsi), %zmm15
	vfmadd231pd	%zmm15, %zmm12, %zmm25
	vbroadcastsd	392(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm10
	vfmadd231pd	%zmm12, %zmm15, %zmm24
	vbroadcastsd	648(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm9
	vfmadd231pd	%zmm12, %zmm15, %zmm23
	vbroadcastsd	904(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm8
	vfmadd231pd	%zmm12, %zmm15, %zmm22
	vbroadcastsd	1160(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm7
	vfmadd231pd	%zmm12, %zmm15, %zmm18
	vbroadcastsd	1416(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm6
	vfmadd231pd	%zmm12, %zmm15, %zmm17
	vbroadcastsd	1672(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm5
	vfmadd231pd	%zmm12, %zmm15, %zmm16
	vbroadcastsd	1928(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm13
	vfmadd231pd	%zmm12, %zmm15, %zmm26
	vbroadcastsd	2184(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm3
	vfmadd231pd	%zmm12, %zmm15, %zmm30
	vbroadcastsd	2440(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm2
	vfmadd231pd	%zmm12, %zmm15, %zmm19
	vbroadcastsd	2696(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm1
	vfmadd231pd	%zmm12, %zmm15, %zmm29
	vbroadcastsd	2952(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm0
	vfmadd231pd	%zmm12, %zmm15, %zmm28
	vbroadcastsd	3208(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm4
	vfmadd231pd	%zmm12, %zmm15, %zmm27
	vbroadcastsd	3464(%rdx), %zmm12
	vfmadd231pd	%zmm12, %zmm21, %zmm14
	vfmadd231pd	%zmm12, %zmm15, %zmm20
	vbroadcastsd	144(%rdx), %zmm15
	vmovupd	2304(%rsi), %zmm31
	vfmadd231pd	%zmm15, %zmm31, %zmm11
	vmovupd	2368(%rsi), %zmm12
	vfmadd231pd	%zmm12, %zmm15, %zmm25
	vbroadcastsd	400(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm10
	vfmadd231pd	%zmm15, %zmm12, %zmm24
	vbroadcastsd	656(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm9
	vfmadd231pd	%zmm15, %zmm12, %zmm23
	vbroadcastsd	912(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm8
	vfmadd231pd	%zmm15, %zmm12, %zmm22
	vbroadcastsd	1168(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm7
	vfmadd231pd	%zmm15, %zmm12, %zmm18
	vbroadcastsd	1424(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm6
	vfmadd231pd	%zmm15, %zmm12, %zmm17
	vbroadcastsd	1680(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm5
	vfmadd231pd	%zmm15, %zmm12, %zmm16
	vbroadcastsd	1936(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm13
	vfmadd231pd	%zmm15, %zmm12, %zmm26
	vbroadcastsd	2192(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm3
	vfmadd231pd	%zmm15, %zmm12, %zmm30
	vbroadcastsd	2448(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm2
	vfmadd231pd	%zmm15, %zmm12, %zmm19
	vbroadcastsd	2704(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm1
	vfmadd231pd	%zmm15, %zmm12, %zmm29
	vbroadcastsd	2960(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm0
	vfmadd231pd	%zmm15, %zmm12, %zmm28
	vbroadcastsd	3216(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm4
	vfmadd231pd	%zmm15, %zmm12, %zmm27
	vbroadcastsd	3472(%rdx), %zmm15
	vfmadd231pd	%zmm15, %zmm31, %zmm14
	vfmadd132pd	%zmm12, %zmm20, %zmm15
	vbroadcastsd	152(%rdx), %zmm20
	vmovupd	2432(%rsi), %zmm12
	vfmadd231pd	%zmm20, %zmm12, %zmm11
	vmovupd	2496(%rsi), %zmm31
	vfmadd231pd	%zmm31, %zmm20, %zmm25
	vbroadcastsd	408(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm10
	vfmadd231pd	%zmm21, %zmm31, %zmm24
	vbroadcastsd	664(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm9
	vfmadd231pd	%zmm20, %zmm31, %zmm23
	vbroadcastsd	920(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm8
	vfmadd231pd	%zmm21, %zmm31, %zmm22
	vbroadcastsd	1176(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm7
	vfmadd231pd	%zmm20, %zmm31, %zmm18
	vbroadcastsd	1432(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm6
	vfmadd231pd	%zmm21, %zmm31, %zmm17
	vbroadcastsd	1688(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm5
	vfmadd231pd	%zmm20, %zmm31, %zmm16
	vbroadcastsd	1944(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm13
	vfmadd231pd	%zmm21, %zmm31, %zmm26
	vbroadcastsd	2200(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm3
	vfmadd231pd	%zmm20, %zmm31, %zmm30
	vbroadcastsd	2456(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm2
	vfmadd231pd	%zmm21, %zmm31, %zmm19
	vbroadcastsd	2712(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm1
	vfmadd231pd	%zmm20, %zmm31, %zmm29
	vbroadcastsd	2968(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm0
	vfmadd231pd	%zmm21, %zmm31, %zmm28
	vbroadcastsd	3224(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm4
	vfmadd231pd	%zmm20, %zmm31, %zmm27
	vbroadcastsd	3480(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm14
	vfmadd132pd	%zmm21, %zmm15, %zmm31
	vmovapd	%zmm31, %zmm12
	vbroadcastsd	160(%rdx), %zmm20
	vmovupd	2560(%rsi), %zmm31
	vfmadd231pd	%zmm20, %zmm31, %zmm11
	vmovupd	2624(%rsi), %zmm15
	vfmadd231pd	%zmm15, %zmm20, %zmm25
	vbroadcastsd	416(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm10
	vfmadd231pd	%zmm21, %zmm15, %zmm24
	vbroadcastsd	672(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm9
	vfmadd231pd	%zmm20, %zmm15, %zmm23
	vbroadcastsd	928(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm8
	vfmadd231pd	%zmm21, %zmm15, %zmm22
	vbroadcastsd	1184(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm7
	vfmadd231pd	%zmm20, %zmm15, %zmm18
	vbroadcastsd	1440(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm6
	vfmadd231pd	%zmm21, %zmm15, %zmm17
	vbroadcastsd	1696(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm5
	vfmadd231pd	%zmm20, %zmm15, %zmm16
	vbroadcastsd	1952(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm13
	vfmadd231pd	%zmm21, %zmm15, %zmm26
	vbroadcastsd	2208(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm3
	vfmadd231pd	%zmm20, %zmm15, %zmm30
	vbroadcastsd	2464(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm2
	vfmadd231pd	%zmm21, %zmm15, %zmm19
	vbroadcastsd	2720(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm1
	vfmadd231pd	%zmm20, %zmm15, %zmm29
	vbroadcastsd	2976(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm0
	vfmadd231pd	%zmm21, %zmm15, %zmm28
	vbroadcastsd	3232(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm31, %zmm4
	vfmadd231pd	%zmm20, %zmm15, %zmm27
	vbroadcastsd	3488(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm31, %zmm14
	vmovapd	%zmm15, %zmm31
	vfmadd132pd	%zmm21, %zmm12, %zmm31
	vbroadcastsd	168(%rdx), %zmm20
	vmovupd	2688(%rsi), %zmm12
	vfmadd231pd	%zmm20, %zmm12, %zmm11
	vmovupd	2752(%rsi), %zmm15
	vfmadd231pd	%zmm15, %zmm20, %zmm25
	vbroadcastsd	424(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm10
	vfmadd231pd	%zmm21, %zmm15, %zmm24
	vbroadcastsd	680(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm9
	vfmadd231pd	%zmm20, %zmm15, %zmm23
	vbroadcastsd	936(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm8
	vfmadd231pd	%zmm21, %zmm15, %zmm22
	vbroadcastsd	1192(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm12, %zmm7
	vfmadd132pd	%zmm15, %zmm18, %zmm21
	vbroadcastsd	1448(%rdx), %zmm18
	vfmadd231pd	%zmm18, %zmm12, %zmm6
	vfmadd132pd	%zmm15, %zmm17, %zmm18
	vmovapd	%zmm18, 136(%rsp)
	vbroadcastsd	1704(%rdx), %zmm17
	vfmadd231pd	%zmm17, %zmm12, %zmm5
	vfmadd132pd	%zmm15, %zmm16, %zmm17
	vmovapd	%zmm17, 72(%rsp)
	vbroadcastsd	1960(%rdx), %zmm16
	vfmadd231pd	%zmm16, %zmm12, %zmm13
	vmovapd	%zmm13, 8(%rsp)
	vfmadd132pd	%zmm15, %zmm26, %zmm16
	vmovapd	%zmm16, -56(%rsp)
	vbroadcastsd	2216(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm3
	vfmadd231pd	%zmm13, %zmm15, %zmm30
	vbroadcastsd	2472(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm2
	vfmadd231pd	%zmm13, %zmm15, %zmm19
	vbroadcastsd	2728(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm1
	vfmadd231pd	%zmm13, %zmm15, %zmm29
	vbroadcastsd	2984(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm0
	vfmadd231pd	%zmm13, %zmm15, %zmm28
	vbroadcastsd	3240(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm4
	vfmadd231pd	%zmm13, %zmm15, %zmm27
	vbroadcastsd	3496(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm12, %zmm14
	vfmadd132pd	%zmm13, %zmm31, %zmm15
	vbroadcastsd	176(%rdx), %zmm26
	vmovupd	2816(%rsi), %zmm12
	vfmadd231pd	%zmm26, %zmm12, %zmm11
	vmovupd	2880(%rsi), %zmm13
	vfmadd231pd	%zmm13, %zmm26, %zmm25
	vbroadcastsd	432(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm12, %zmm10
	vfmadd231pd	%zmm31, %zmm13, %zmm24
	vbroadcastsd	688(%rdx), %zmm20
	vfmadd231pd	%zmm20, %zmm12, %zmm9
	vfmadd231pd	%zmm20, %zmm13, %zmm23
	vbroadcastsd	944(%rdx), %zmm18
	vfmadd231pd	%zmm18, %zmm12, %zmm8
	vfmadd231pd	%zmm18, %zmm13, %zmm22
	vbroadcastsd	1200(%rdx), %zmm18
	vbroadcastsd	1456(%rdx), %zmm17
	vbroadcastsd	1712(%rdx), %zmm16
	vbroadcastsd	1968(%rdx), %zmm26
	vbroadcastsd	2224(%rdx), %zmm31
	vfmadd231pd	%zmm12, %zmm31, %zmm3
	vmovapd	%zmm3, %zmm20
	vfmadd132pd	%zmm13, %zmm30, %zmm31
	vmovapd	%zmm31, -120(%rsp)
	vbroadcastsd	2480(%rdx), %zmm3
	vfmadd231pd	%zmm12, %zmm3, %zmm2
	vfmadd231pd	%zmm13, %zmm3, %zmm19
	vbroadcastsd	2736(%rdx), %zmm3
	vfmadd231pd	%zmm12, %zmm3, %zmm1
	vfmadd231pd	%zmm13, %zmm3, %zmm29
	vbroadcastsd	2992(%rdx), %zmm3
	vfmadd231pd	%zmm12, %zmm3, %zmm0
	vfmadd231pd	%zmm13, %zmm3, %zmm28
	vbroadcastsd	3248(%rdx), %zmm3
	vfmadd231pd	%zmm12, %zmm3, %zmm4
	vfmadd231pd	%zmm13, %zmm3, %zmm27
	vbroadcastsd	3504(%rdx), %zmm3
	vfmadd231pd	%zmm12, %zmm3, %zmm14
	vfmadd231pd	%zmm13, %zmm3, %zmm15
	vbroadcastsd	184(%rdx), %zmm3
	vmovupd	2944(%rsi), %zmm30
	vfmadd231pd	%zmm3, %zmm30, %zmm11
	vmovupd	3008(%rsi), %zmm31
	vfmadd132pd	%zmm31, %zmm25, %zmm3
	vbroadcastsd	440(%rdx), %zmm25
	vfmadd231pd	%zmm25, %zmm30, %zmm10
	vfmadd132pd	%zmm31, %zmm24, %zmm25
	vbroadcastsd	696(%rdx), %zmm24
	vfmadd231pd	%zmm24, %zmm30, %zmm9
	vfmadd132pd	%zmm31, %zmm23, %zmm24
	vbroadcastsd	952(%rdx), %zmm23
	vfmadd231pd	%zmm23, %zmm30, %zmm8
	vfmadd132pd	%zmm31, %zmm22, %zmm23
	vbroadcastsd	1208(%rdx), %zmm22
	vfmadd231pd	%zmm18, %zmm12, %zmm7
	vfmadd231pd	%zmm22, %zmm30, %zmm7
	vfmadd132pd	%zmm13, %zmm21, %zmm18
	vfmadd132pd	%zmm31, %zmm18, %zmm22
	vbroadcastsd	1464(%rdx), %zmm18
	vfmadd231pd	%zmm17, %zmm12, %zmm6
	vfmadd231pd	%zmm18, %zmm30, %zmm6
	vfmadd213pd	136(%rsp), %zmm13, %zmm17
	vfmadd132pd	%zmm31, %zmm17, %zmm18
	vbroadcastsd	1720(%rdx), %zmm17
	vfmadd231pd	%zmm16, %zmm12, %zmm5
	vfmadd231pd	%zmm17, %zmm30, %zmm5
	vfmadd213pd	72(%rsp), %zmm13, %zmm16
	vfmadd132pd	%zmm31, %zmm16, %zmm17
	vbroadcastsd	1976(%rdx), %zmm16
	vfmadd213pd	8(%rsp), %zmm26, %zmm12
	vfmadd231pd	%zmm16, %zmm30, %zmm12
	vfmadd213pd	-56(%rsp), %zmm26, %zmm13
	vfmadd132pd	%zmm31, %zmm13, %zmm16
	vbroadcastsd	2232(%rdx), %zmm21
	vfmadd231pd	%zmm21, %zmm30, %zmm20
	vfmadd213pd	-120(%rsp), %zmm31, %zmm21
	vbroadcastsd	2488(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm30, %zmm2
	vfmadd231pd	%zmm13, %zmm31, %zmm19
	vbroadcastsd	2744(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm30, %zmm1
	vfmadd231pd	%zmm13, %zmm31, %zmm29
	vbroadcastsd	3000(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm30, %zmm0
	vfmadd231pd	%zmm13, %zmm31, %zmm28
	vbroadcastsd	3256(%rdx), %zmm13
	vfmadd231pd	%zmm13, %zmm30, %zmm4
	vfmadd231pd	%zmm13, %zmm31, %zmm27
	vbroadcastsd	3512(%rdx), %zmm26
	vfmadd231pd	%zmm26, %zmm30, %zmm14
	vfmadd231pd	%zmm26, %zmm31, %zmm15
	vbroadcastsd	192(%rdx), %zmm30
	vmovupd	3072(%rsi), %zmm13
	vfmadd231pd	%zmm30, %zmm13, %zmm11
	vmovupd	3136(%rsi), %zmm26
	vfmadd231pd	%zmm26, %zmm30, %zmm3
	vbroadcastsd	448(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm10
	vfmadd231pd	%zmm31, %zmm26, %zmm25
	vbroadcastsd	704(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm9
	vfmadd231pd	%zmm30, %zmm26, %zmm24
	vbroadcastsd	960(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm8
	vfmadd231pd	%zmm31, %zmm26, %zmm23
	vbroadcastsd	1216(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm7
	vfmadd231pd	%zmm30, %zmm26, %zmm22
	vbroadcastsd	1472(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm6
	vfmadd231pd	%zmm31, %zmm26, %zmm18
	vbroadcastsd	1728(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm5
	vfmadd231pd	%zmm30, %zmm26, %zmm17
	vbroadcastsd	1984(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm12
	vfmadd231pd	%zmm31, %zmm26, %zmm16
	vbroadcastsd	2240(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm20
	vfmadd231pd	%zmm30, %zmm26, %zmm21
	vbroadcastsd	2496(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm2
	vfmadd231pd	%zmm31, %zmm26, %zmm19
	vbroadcastsd	2752(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm1
	vfmadd231pd	%zmm30, %zmm26, %zmm29
	vbroadcastsd	3008(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm0
	vfmadd231pd	%zmm31, %zmm26, %zmm28
	vbroadcastsd	3264(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm4
	vfmadd231pd	%zmm30, %zmm26, %zmm27
	vbroadcastsd	3520(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm14
	vfmadd231pd	%zmm31, %zmm26, %zmm15
	vbroadcastsd	200(%rdx), %zmm30
	vmovupd	3200(%rsi), %zmm13
	vfmadd231pd	%zmm30, %zmm13, %zmm11
	vmovupd	3264(%rsi), %zmm26
	vfmadd231pd	%zmm26, %zmm30, %zmm3
	vbroadcastsd	456(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm10
	vfmadd231pd	%zmm31, %zmm26, %zmm25
	vbroadcastsd	712(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm9
	vfmadd231pd	%zmm30, %zmm26, %zmm24
	vbroadcastsd	968(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm8
	vfmadd231pd	%zmm31, %zmm26, %zmm23
	vbroadcastsd	1224(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm7
	vfmadd231pd	%zmm30, %zmm26, %zmm22
	vbroadcastsd	1480(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm6
	vfmadd231pd	%zmm31, %zmm26, %zmm18
	vbroadcastsd	1736(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm5
	vfmadd231pd	%zmm30, %zmm26, %zmm17
	vbroadcastsd	1992(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm12
	vfmadd231pd	%zmm31, %zmm26, %zmm16
	vbroadcastsd	2248(%rdx), %zmm30
	vfmadd231pd	%zmm30, %zmm13, %zmm20
	vfmadd231pd	%zmm30, %zmm26, %zmm21
	vbroadcastsd	2504(%rdx), %zmm31
	vfmadd231pd	%zmm31, %zmm13, %zmm2
	vfmadd231pd	%zmm31, %zmm26, %zmm19
	vbroadcastsd	2760(%rdx), %zmm30
	vmovapd	%zmm1, %zmm31
	vfmadd231pd	%zmm30, %zmm13, %zmm31
	vfmadd231pd	%zmm30, %zmm26, %zmm29
	vbroadcastsd	3016(%rdx), %zmm1
	vfmadd231pd	%zmm1, %zmm13, %zmm0
	vfmadd231pd	%zmm1, %zmm26, %zmm28
	vbroadcastsd	3272(%rdx), %zmm1
	vfmadd231pd	%zmm1, %zmm13, %zmm4
	vfmadd231pd	%zmm1, %zmm26, %zmm27
	vbroadcastsd	3528(%rdx), %zmm30
	vfmadd132pd	%zmm30, %zmm14, %zmm13
	vfmadd231pd	%zmm30, %zmm26, %zmm15
	vbroadcastsd	208(%rdx), %zmm14
	vmovupd	3328(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm14, %zmm11
	vmovupd	3392(%rsi), %zmm30
	vfmadd231pd	%zmm30, %zmm14, %zmm3
	vbroadcastsd	464(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm10
	vfmadd231pd	%zmm14, %zmm30, %zmm25
	vbroadcastsd	720(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm9
	vfmadd231pd	%zmm14, %zmm30, %zmm24
	vbroadcastsd	976(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm8
	vfmadd231pd	%zmm14, %zmm30, %zmm23
	vbroadcastsd	1232(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm7
	vfmadd231pd	%zmm14, %zmm30, %zmm22
	vbroadcastsd	1488(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm6
	vfmadd231pd	%zmm14, %zmm30, %zmm18
	vbroadcastsd	1744(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm5
	vfmadd231pd	%zmm14, %zmm30, %zmm17
	vbroadcastsd	2000(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm12
	vfmadd231pd	%zmm14, %zmm30, %zmm16
	vbroadcastsd	2256(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm20
	vfmadd231pd	%zmm14, %zmm30, %zmm21
	vbroadcastsd	2512(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm2
	vfmadd231pd	%zmm14, %zmm30, %zmm19
	vbroadcastsd	2768(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm31
	vfmadd231pd	%zmm14, %zmm30, %zmm29
	vbroadcastsd	3024(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm0
	vfmadd231pd	%zmm14, %zmm30, %zmm28
	vbroadcastsd	3280(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm4
	vfmadd231pd	%zmm14, %zmm30, %zmm27
	vbroadcastsd	3536(%rdx), %zmm26
	vfmadd231pd	%zmm1, %zmm26, %zmm13
	vfmadd231pd	%zmm26, %zmm30, %zmm15
	vbroadcastsd	216(%rdx), %zmm26
	vmovupd	3456(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm26, %zmm11
	vmovupd	3520(%rsi), %zmm14
	vfmadd132pd	%zmm14, %zmm3, %zmm26
	vbroadcastsd	472(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm10
	vfmadd231pd	%zmm3, %zmm14, %zmm25
	vbroadcastsd	728(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm9
	vfmadd231pd	%zmm3, %zmm14, %zmm24
	vbroadcastsd	984(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm8
	vfmadd231pd	%zmm3, %zmm14, %zmm23
	vbroadcastsd	1240(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm7
	vfmadd231pd	%zmm3, %zmm14, %zmm22
	vbroadcastsd	1496(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm6
	vfmadd231pd	%zmm3, %zmm14, %zmm18
	vbroadcastsd	1752(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm5
	vfmadd231pd	%zmm3, %zmm14, %zmm17
	vbroadcastsd	2008(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm12
	vfmadd231pd	%zmm3, %zmm14, %zmm16
	vbroadcastsd	2264(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm20
	vfmadd231pd	%zmm3, %zmm14, %zmm21
	vbroadcastsd	2520(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm2
	vfmadd231pd	%zmm3, %zmm14, %zmm19
	vbroadcastsd	2776(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm31
	vfmadd231pd	%zmm3, %zmm14, %zmm29
	vbroadcastsd	3032(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm0
	vfmadd231pd	%zmm3, %zmm14, %zmm28
	vbroadcastsd	3288(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm4
	vfmadd231pd	%zmm3, %zmm14, %zmm27
	vbroadcastsd	3544(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm13
	vfmadd231pd	%zmm3, %zmm14, %zmm15
	vbroadcastsd	224(%rdx), %zmm14
	vmovupd	3584(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm14, %zmm11
	vmovupd	3648(%rsi), %zmm3
	vfmadd231pd	%zmm3, %zmm14, %zmm26
	vbroadcastsd	480(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm10
	vfmadd231pd	%zmm14, %zmm3, %zmm25
	vbroadcastsd	736(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm9
	vfmadd231pd	%zmm14, %zmm3, %zmm24
	vbroadcastsd	992(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm8
	vfmadd231pd	%zmm14, %zmm3, %zmm23
	vbroadcastsd	1248(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm7
	vfmadd231pd	%zmm14, %zmm3, %zmm22
	vbroadcastsd	1504(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm6
	vfmadd231pd	%zmm14, %zmm3, %zmm18
	vbroadcastsd	1760(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm5
	vfmadd231pd	%zmm14, %zmm3, %zmm17
	vbroadcastsd	2016(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm12
	vfmadd231pd	%zmm14, %zmm3, %zmm16
	vbroadcastsd	2272(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm20
	vfmadd231pd	%zmm14, %zmm3, %zmm21
	vbroadcastsd	2528(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm2
	vfmadd231pd	%zmm14, %zmm3, %zmm19
	vbroadcastsd	2784(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm31
	vfmadd231pd	%zmm14, %zmm3, %zmm29
	vbroadcastsd	3040(%rdx), %zmm14
	vmovapd	%zmm0, %zmm30
	vfmadd231pd	%zmm1, %zmm14, %zmm30
	vfmadd231pd	%zmm14, %zmm3, %zmm28
	vbroadcastsd	3296(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm4
	vfmadd231pd	%zmm0, %zmm3, %zmm27
	vbroadcastsd	3552(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm13
	vfmadd231pd	%zmm14, %zmm3, %zmm15
	vbroadcastsd	232(%rdx), %zmm3
	vmovupd	3712(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm3, %zmm11
	vmovupd	3776(%rsi), %zmm0
	vfmadd231pd	%zmm0, %zmm3, %zmm26
	vbroadcastsd	488(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm10
	vfmadd231pd	%zmm14, %zmm0, %zmm25
	vbroadcastsd	744(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm9
	vfmadd231pd	%zmm3, %zmm0, %zmm24
	vbroadcastsd	1000(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm8
	vfmadd231pd	%zmm14, %zmm0, %zmm23
	vbroadcastsd	1256(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm7
	vfmadd231pd	%zmm3, %zmm0, %zmm22
	vbroadcastsd	1512(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm6
	vfmadd231pd	%zmm14, %zmm0, %zmm18
	vbroadcastsd	1768(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm5
	vfmadd231pd	%zmm3, %zmm0, %zmm17
	vbroadcastsd	2024(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm12
	vfmadd231pd	%zmm14, %zmm0, %zmm16
	vbroadcastsd	2280(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm20
	vfmadd231pd	%zmm3, %zmm0, %zmm21
	vbroadcastsd	2536(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm2
	vmovapd	%zmm2, %zmm14
	vfmadd231pd	%zmm3, %zmm0, %zmm19
	vbroadcastsd	2792(%rdx), %zmm2
	vfmadd231pd	%zmm1, %zmm2, %zmm31
	vfmadd231pd	%zmm2, %zmm0, %zmm29
	vbroadcastsd	3048(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm30
	vfmadd231pd	%zmm3, %zmm0, %zmm28
	vbroadcastsd	3304(%rdx), %zmm2
	vfmadd231pd	%zmm1, %zmm2, %zmm4
	vfmadd231pd	%zmm2, %zmm0, %zmm27
	vbroadcastsd	3560(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm13
	vfmadd231pd	%zmm3, %zmm0, %zmm15
	vbroadcastsd	240(%rdx), %zmm0
	vmovupd	3840(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm0, %zmm11
	vmovupd	3904(%rsi), %zmm2
	vfmadd231pd	%zmm2, %zmm0, %zmm26
	vbroadcastsd	496(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm10
	vfmadd231pd	%zmm3, %zmm2, %zmm25
	vbroadcastsd	752(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm9
	vfmadd231pd	%zmm0, %zmm2, %zmm24
	vbroadcastsd	1008(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm8
	vfmadd231pd	%zmm3, %zmm2, %zmm23
	vbroadcastsd	1264(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm7
	vfmadd231pd	%zmm0, %zmm2, %zmm22
	vbroadcastsd	1520(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm6
	vfmadd231pd	%zmm3, %zmm2, %zmm18
	vbroadcastsd	1776(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm5
	vfmadd231pd	%zmm0, %zmm2, %zmm17
	vbroadcastsd	2032(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm12
	vfmadd231pd	%zmm3, %zmm2, %zmm16
	vbroadcastsd	2288(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm20
	vfmadd231pd	%zmm0, %zmm2, %zmm21
	vbroadcastsd	2544(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm14
	vfmadd231pd	%zmm3, %zmm2, %zmm19
	vbroadcastsd	2800(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm31
	vfmadd231pd	%zmm0, %zmm2, %zmm29
	vbroadcastsd	3056(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm30
	vfmadd231pd	%zmm3, %zmm2, %zmm28
	vbroadcastsd	3312(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm4
	vfmadd231pd	%zmm0, %zmm2, %zmm27
	vbroadcastsd	3568(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm13
	vfmadd231pd	%zmm3, %zmm2, %zmm15
	vbroadcastsd	248(%rdx), %zmm2
	vmovupd	3968(%rsi), %zmm1
	vfmadd231pd	%zmm1, %zmm2, %zmm11
	vmovupd	%zmm11, (%rdi)
	vmovupd	4032(%rsi), %zmm11
	vfmadd231pd	%zmm11, %zmm2, %zmm26
	vmovupd	%zmm26, 64(%rdi)
	vbroadcastsd	504(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm10
	vmovupd	%zmm10, 128(%rdi)
	vfmadd231pd	%zmm0, %zmm11, %zmm25
	vmovupd	%zmm25, 192(%rdi)
	vbroadcastsd	760(%rdx), %zmm10
	vfmadd231pd	%zmm1, %zmm10, %zmm9
	vmovupd	%zmm9, 256(%rdi)
	vfmadd231pd	%zmm10, %zmm11, %zmm24
	vmovupd	%zmm24, 320(%rdi)
	vbroadcastsd	1016(%rdx), %zmm9
	vfmadd231pd	%zmm1, %zmm9, %zmm8
	vmovupd	%zmm8, 384(%rdi)
	vfmadd231pd	%zmm9, %zmm11, %zmm23
	vmovupd	%zmm23, 448(%rdi)
	vbroadcastsd	1272(%rdx), %zmm8
	vfmadd231pd	%zmm1, %zmm8, %zmm7
	vmovupd	%zmm7, 512(%rdi)
	vfmadd231pd	%zmm8, %zmm11, %zmm22
	vmovupd	%zmm22, 576(%rdi)
	vbroadcastsd	1528(%rdx), %zmm7
	vfmadd231pd	%zmm1, %zmm7, %zmm6
	vmovupd	%zmm6, 640(%rdi)
	vfmadd231pd	%zmm7, %zmm11, %zmm18
	vmovupd	%zmm18, 704(%rdi)
	vbroadcastsd	1784(%rdx), %zmm6
	vfmadd231pd	%zmm1, %zmm6, %zmm5
	vmovupd	%zmm5, 768(%rdi)
	vfmadd231pd	%zmm6, %zmm11, %zmm17
	vmovupd	%zmm17, 832(%rdi)
	vbroadcastsd	2040(%rdx), %zmm5
	vfmadd231pd	%zmm1, %zmm5, %zmm12
	vmovupd	%zmm12, 896(%rdi)
	vfmadd231pd	%zmm5, %zmm11, %zmm16
	vmovupd	%zmm16, 960(%rdi)
	vbroadcastsd	2296(%rdx), %zmm12
	vfmadd231pd	%zmm1, %zmm12, %zmm20
	vmovupd	%zmm20, 1024(%rdi)
	vfmadd231pd	%zmm12, %zmm11, %zmm21
	vmovupd	%zmm21, 1088(%rdi)
	vbroadcastsd	2552(%rdx), %zmm3
	vfmadd231pd	%zmm1, %zmm3, %zmm14
	vmovupd	%zmm14, 1152(%rdi)
	vfmadd231pd	%zmm3, %zmm11, %zmm19
	vmovupd	%zmm19, 1216(%rdi)
	vbroadcastsd	2808(%rdx), %zmm14
	vfmadd231pd	%zmm1, %zmm14, %zmm31
	vmovupd	%zmm31, 1280(%rdi)
	vfmadd231pd	%zmm14, %zmm11, %zmm29
	vmovupd	%zmm29, 1344(%rdi)
	vbroadcastsd	3064(%rdx), %zmm2
	vfmadd231pd	%zmm1, %zmm2, %zmm30
	vmovupd	%zmm30, 1408(%rdi)
	vfmadd231pd	%zmm2, %zmm11, %zmm28
	vmovupd	%zmm28, 1472(%rdi)
	vbroadcastsd	3320(%rdx), %zmm0
	vfmadd231pd	%zmm1, %zmm0, %zmm4
	vmovupd	%zmm4, 1536(%rdi)
	vfmadd231pd	%zmm0, %zmm11, %zmm27
	vmovupd	%zmm27, 1600(%rdi)
	vbroadcastsd	3576(%rdx), %zmm4
	vfmadd132pd	%zmm4, %zmm13, %zmm1
	vmovupd	%zmm1, 1664(%rdi)
	vfmadd132pd	%zmm4, %zmm15, %zmm11
	vmovupd	%zmm11, 1728(%rdi)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	__kernels_MOD_mulkernel, .-__kernels_MOD_mulkernel
	.p2align 4,,15
	.globl	__kernels_MOD_mulkernel_loop32
	.type	__kernels_MOD_mulkernel_loop32, @function
__kernels_MOD_mulkernel_loop32:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-64, %rsp
	subq	$15432, %rsp
	vbroadcastsd	(%rdx), %zmm2
	vmovupd	(%rsi), %zmm0
	vmulpd	%zmm2, %zmm0, %zmm1
	vmovupd	%zmm1, (%rdi)
	vmovupd	64(%rsi), %zmm4
	vmulpd	%zmm2, %zmm4, %zmm3
	vmovupd	%zmm3, 64(%rdi)
	vbroadcastsd	256(%rdx), %zmm5
	vmulpd	%zmm5, %zmm0, %zmm6
	vmovupd	%zmm6, 128(%rdi)
	vmulpd	%zmm4, %zmm5, %zmm7
	vmovupd	%zmm7, 192(%rdi)
	vbroadcastsd	512(%rdx), %zmm8
	vmulpd	%zmm8, %zmm0, %zmm9
	vmovupd	%zmm9, 256(%rdi)
	vmulpd	%zmm4, %zmm8, %zmm10
	vmovupd	%zmm10, 320(%rdi)
	vbroadcastsd	768(%rdx), %zmm11
	vmulpd	%zmm11, %zmm0, %zmm12
	vmovupd	%zmm12, 384(%rdi)
	vmulpd	%zmm4, %zmm11, %zmm13
	vmovupd	%zmm13, 448(%rdi)
	vbroadcastsd	1024(%rdx), %zmm14
	vmulpd	%zmm14, %zmm0, %zmm15
	vmovupd	%zmm15, 512(%rdi)
	vmulpd	%zmm4, %zmm14, %zmm2
	vmovupd	%zmm2, 576(%rdi)
	vbroadcastsd	1280(%rdx), %zmm1
	vmulpd	%zmm1, %zmm0, %zmm3
	vmovupd	%zmm3, 640(%rdi)
	vmulpd	%zmm4, %zmm1, %zmm5
	vmovupd	%zmm5, 704(%rdi)
	vbroadcastsd	1536(%rdx), %zmm6
	vmulpd	%zmm6, %zmm0, %zmm7
	vmovupd	%zmm7, 768(%rdi)
	vmulpd	%zmm4, %zmm6, %zmm8
	vmovupd	%zmm8, 832(%rdi)
	vbroadcastsd	1792(%rdx), %zmm9
	vmulpd	%zmm9, %zmm0, %zmm10
	vmovupd	%zmm10, 896(%rdi)
	vmulpd	%zmm4, %zmm9, %zmm11
	vmovupd	%zmm11, 960(%rdi)
	vbroadcastsd	2048(%rdx), %zmm12
	vmulpd	%zmm12, %zmm0, %zmm13
	vmovupd	%zmm13, 1024(%rdi)
	vmulpd	%zmm4, %zmm12, %zmm14
	vmovupd	%zmm14, 1088(%rdi)
	vbroadcastsd	2304(%rdx), %zmm15
	vmulpd	%zmm15, %zmm0, %zmm2
	vmovupd	%zmm2, 1152(%rdi)
	vmulpd	%zmm4, %zmm15, %zmm1
	vmovupd	%zmm1, 1216(%rdi)
	vbroadcastsd	2560(%rdx), %zmm5
	vmulpd	%zmm5, %zmm0, %zmm3
	vmovupd	%zmm3, 1280(%rdi)
	vmulpd	%zmm4, %zmm5, %zmm6
	vmovupd	%zmm6, 1344(%rdi)
	vbroadcastsd	2816(%rdx), %zmm7
	vmulpd	%zmm7, %zmm0, %zmm8
	vmovupd	%zmm8, 1408(%rdi)
	vmulpd	%zmm4, %zmm7, %zmm9
	vmovupd	%zmm9, 1472(%rdi)
	vbroadcastsd	3072(%rdx), %zmm10
	vmulpd	%zmm10, %zmm0, %zmm11
	vmovupd	%zmm11, 1536(%rdi)
	vmulpd	%zmm4, %zmm10, %zmm12
	vmovupd	%zmm12, 1600(%rdi)
	vbroadcastsd	3328(%rdx), %zmm13
	vmulpd	%zmm13, %zmm0, %zmm0
	vmovupd	%zmm0, 1664(%rdi)
	vmulpd	%zmm4, %zmm13, %zmm4
	vmovupd	%zmm4, 1728(%rdi)
	vmovsd	(%rdi), %xmm18
	vmovsd	%xmm18, -80(%rsp)
	vmovsd	8(%rdi), %xmm20
	vmovsd	%xmm20, 176(%rsp)
	vmovsd	16(%rdi), %xmm24
	vmovsd	%xmm24, 168(%rsp)
	vmovsd	24(%rdi), %xmm16
	vmovsd	%xmm16, 160(%rsp)
	vmovsd	32(%rdi), %xmm19
	vmovsd	%xmm19, 152(%rsp)
	vmovsd	40(%rdi), %xmm21
	vmovsd	%xmm21, 144(%rsp)
	vmovsd	48(%rdi), %xmm23
	vmovsd	%xmm23, 136(%rsp)
	vmovsd	56(%rdi), %xmm17
	vmovsd	%xmm17, 128(%rsp)
	vmovsd	64(%rdi), %xmm22
	vmovsd	%xmm22, 120(%rsp)
	vmovsd	72(%rdi), %xmm25
	vmovsd	%xmm25, 112(%rsp)
	vmovsd	80(%rdi), %xmm26
	vmovsd	%xmm26, 104(%rsp)
	vmovsd	88(%rdi), %xmm27
	vmovsd	%xmm27, 96(%rsp)
	vmovsd	96(%rdi), %xmm28
	vmovsd	%xmm28, 88(%rsp)
	vmovsd	104(%rdi), %xmm29
	vmovsd	%xmm29, 80(%rsp)
	vmovsd	112(%rdi), %xmm30
	vmovsd	%xmm30, 72(%rsp)
	vmovsd	120(%rdi), %xmm31
	vmovsd	%xmm31, 64(%rsp)
	vmovsd	128(%rdi), %xmm18
	vmovsd	%xmm18, 56(%rsp)
	vmovsd	136(%rdi), %xmm20
	vmovsd	%xmm20, 48(%rsp)
	vmovsd	144(%rdi), %xmm24
	vmovsd	%xmm24, 40(%rsp)
	vmovsd	152(%rdi), %xmm16
	vmovsd	%xmm16, 32(%rsp)
	vmovsd	160(%rdi), %xmm19
	vmovsd	%xmm19, 24(%rsp)
	vmovsd	168(%rdi), %xmm21
	vmovsd	%xmm21, 16(%rsp)
	vmovsd	176(%rdi), %xmm23
	vmovsd	%xmm23, 8(%rsp)
	vmovsd	184(%rdi), %xmm17
	vmovsd	%xmm17, (%rsp)
	vmovsd	192(%rdi), %xmm22
	vmovsd	%xmm22, -8(%rsp)
	vmovsd	200(%rdi), %xmm25
	vmovsd	%xmm25, -16(%rsp)
	vmovsd	208(%rdi), %xmm26
	vmovsd	%xmm26, -24(%rsp)
	vmovsd	216(%rdi), %xmm27
	vmovsd	%xmm27, -32(%rsp)
	vmovsd	224(%rdi), %xmm28
	vmovsd	%xmm28, -40(%rsp)
	vmovsd	232(%rdi), %xmm29
	vmovsd	%xmm29, -48(%rsp)
	vmovsd	240(%rdi), %xmm30
	vmovsd	%xmm30, -56(%rsp)
	vmovsd	248(%rdi), %xmm31
	vmovsd	%xmm31, -64(%rsp)
	vmovsd	256(%rdi), %xmm18
	vmovsd	%xmm18, -72(%rsp)
	vmovsd	264(%rdi), %xmm20
	vmovsd	%xmm20, 432(%rsp)
	vmovsd	272(%rdi), %xmm24
	vmovsd	%xmm24, 424(%rsp)
	vmovsd	280(%rdi), %xmm16
	vmovsd	%xmm16, 416(%rsp)
	vmovsd	288(%rdi), %xmm19
	vmovsd	%xmm19, 408(%rsp)
	vmovsd	296(%rdi), %xmm21
	vmovsd	%xmm21, 400(%rsp)
	vmovsd	304(%rdi), %xmm23
	vmovsd	%xmm23, 392(%rsp)
	vmovsd	312(%rdi), %xmm17
	vmovsd	%xmm17, 384(%rsp)
	vmovsd	320(%rdi), %xmm22
	vmovsd	%xmm22, 376(%rsp)
	vmovsd	328(%rdi), %xmm25
	vmovsd	%xmm25, 368(%rsp)
	vmovsd	336(%rdi), %xmm26
	vmovsd	%xmm26, 360(%rsp)
	vmovsd	344(%rdi), %xmm27
	vmovsd	%xmm27, 352(%rsp)
	vmovsd	352(%rdi), %xmm28
	vmovsd	%xmm28, 344(%rsp)
	vmovsd	360(%rdi), %xmm29
	vmovsd	%xmm29, 336(%rsp)
	vmovsd	368(%rdi), %xmm30
	vmovsd	%xmm30, 328(%rsp)
	vmovsd	376(%rdi), %xmm31
	vmovsd	%xmm31, 320(%rsp)
	vmovsd	384(%rdi), %xmm18
	vmovsd	%xmm18, 312(%rsp)
	vmovsd	392(%rdi), %xmm20
	vmovsd	%xmm20, 304(%rsp)
	vmovsd	400(%rdi), %xmm24
	vmovsd	%xmm24, 296(%rsp)
	vmovsd	408(%rdi), %xmm16
	vmovsd	%xmm16, 288(%rsp)
	vmovsd	416(%rdi), %xmm19
	vmovsd	%xmm19, 280(%rsp)
	vmovsd	424(%rdi), %xmm21
	vmovsd	%xmm21, 272(%rsp)
	vmovsd	432(%rdi), %xmm23
	vmovsd	%xmm23, 264(%rsp)
	vmovsd	440(%rdi), %xmm17
	vmovsd	%xmm17, 256(%rsp)
	vmovsd	448(%rdi), %xmm22
	vmovsd	%xmm22, 248(%rsp)
	vmovsd	456(%rdi), %xmm25
	vmovsd	%xmm25, 240(%rsp)
	vmovsd	464(%rdi), %xmm26
	vmovsd	%xmm26, 232(%rsp)
	vmovsd	472(%rdi), %xmm27
	vmovsd	%xmm27, 224(%rsp)
	vmovsd	480(%rdi), %xmm28
	vmovsd	%xmm28, 216(%rsp)
	vmovsd	488(%rdi), %xmm29
	vmovsd	%xmm29, 208(%rsp)
	vmovsd	496(%rdi), %xmm30
	vmovsd	%xmm30, 200(%rsp)
	vmovsd	504(%rdi), %xmm31
	vmovsd	%xmm31, 192(%rsp)
	vmovsd	512(%rdi), %xmm18
	vmovsd	%xmm18, 184(%rsp)
	vmovsd	520(%rdi), %xmm20
	vmovsd	%xmm20, 688(%rsp)
	vmovsd	528(%rdi), %xmm24
	vmovsd	%xmm24, 680(%rsp)
	vmovsd	536(%rdi), %xmm16
	vmovsd	%xmm16, 672(%rsp)
	vmovsd	544(%rdi), %xmm19
	vmovsd	%xmm19, 664(%rsp)
	vmovsd	552(%rdi), %xmm21
	vmovsd	%xmm21, 656(%rsp)
	vmovsd	560(%rdi), %xmm23
	vmovsd	%xmm23, 648(%rsp)
	vmovsd	568(%rdi), %xmm17
	vmovsd	%xmm17, 640(%rsp)
	vmovsd	576(%rdi), %xmm22
	vmovsd	%xmm22, 632(%rsp)
	vmovsd	584(%rdi), %xmm25
	vmovsd	%xmm25, 624(%rsp)
	vmovsd	592(%rdi), %xmm26
	vmovsd	%xmm26, 616(%rsp)
	vmovsd	600(%rdi), %xmm27
	vmovsd	%xmm27, 608(%rsp)
	vmovsd	608(%rdi), %xmm28
	vmovsd	%xmm28, 600(%rsp)
	vmovsd	616(%rdi), %xmm29
	vmovsd	%xmm29, 592(%rsp)
	vmovsd	624(%rdi), %xmm30
	vmovsd	%xmm30, 584(%rsp)
	vmovsd	632(%rdi), %xmm31
	vmovsd	%xmm31, 576(%rsp)
	vmovsd	640(%rdi), %xmm18
	vmovsd	%xmm18, 568(%rsp)
	vmovsd	648(%rdi), %xmm20
	vmovsd	%xmm20, 560(%rsp)
	vmovsd	656(%rdi), %xmm24
	vmovsd	%xmm24, 552(%rsp)
	vmovsd	664(%rdi), %xmm16
	vmovsd	%xmm16, 544(%rsp)
	vmovsd	672(%rdi), %xmm19
	vmovsd	%xmm19, 536(%rsp)
	vmovsd	680(%rdi), %xmm21
	vmovsd	%xmm21, 528(%rsp)
	vmovsd	688(%rdi), %xmm23
	vmovsd	%xmm23, 520(%rsp)
	vmovsd	696(%rdi), %xmm17
	vmovsd	%xmm17, 512(%rsp)
	vmovsd	704(%rdi), %xmm22
	vmovsd	%xmm22, 504(%rsp)
	vmovsd	712(%rdi), %xmm25
	vmovsd	%xmm25, 496(%rsp)
	vmovsd	720(%rdi), %xmm26
	vmovsd	%xmm26, 488(%rsp)
	vmovsd	728(%rdi), %xmm27
	vmovsd	%xmm27, 480(%rsp)
	vmovsd	736(%rdi), %xmm28
	vmovsd	%xmm28, 472(%rsp)
	vmovsd	744(%rdi), %xmm29
	vmovsd	%xmm29, 464(%rsp)
	vmovsd	752(%rdi), %xmm30
	vmovsd	%xmm30, 456(%rsp)
	vmovsd	760(%rdi), %xmm31
	vmovsd	%xmm31, 448(%rsp)
	vmovsd	768(%rdi), %xmm18
	vmovsd	%xmm18, 440(%rsp)
	vmovsd	776(%rdi), %xmm20
	vmovsd	%xmm20, 944(%rsp)
	vmovsd	784(%rdi), %xmm24
	vmovsd	%xmm24, 936(%rsp)
	vmovsd	792(%rdi), %xmm16
	vmovsd	%xmm16, 928(%rsp)
	vmovsd	800(%rdi), %xmm19
	vmovsd	%xmm19, 920(%rsp)
	vmovsd	808(%rdi), %xmm21
	vmovsd	%xmm21, 912(%rsp)
	vmovsd	816(%rdi), %xmm23
	vmovsd	%xmm23, 904(%rsp)
	vmovsd	824(%rdi), %xmm17
	vmovsd	%xmm17, 896(%rsp)
	vmovsd	832(%rdi), %xmm22
	vmovsd	%xmm22, 888(%rsp)
	vmovsd	840(%rdi), %xmm25
	vmovsd	%xmm25, 880(%rsp)
	vmovsd	848(%rdi), %xmm26
	vmovsd	%xmm26, 872(%rsp)
	vmovsd	856(%rdi), %xmm27
	vmovsd	%xmm27, 864(%rsp)
	vmovsd	864(%rdi), %xmm28
	vmovsd	%xmm28, 856(%rsp)
	vmovsd	872(%rdi), %xmm29
	vmovsd	%xmm29, 848(%rsp)
	vmovsd	880(%rdi), %xmm30
	vmovsd	%xmm30, 840(%rsp)
	vmovsd	888(%rdi), %xmm31
	vmovsd	%xmm31, 832(%rsp)
	vmovsd	896(%rdi), %xmm18
	vmovsd	%xmm18, 824(%rsp)
	vmovsd	904(%rdi), %xmm20
	vmovsd	%xmm20, 816(%rsp)
	vmovsd	912(%rdi), %xmm24
	vmovsd	%xmm24, 808(%rsp)
	vmovsd	920(%rdi), %xmm16
	vmovsd	%xmm16, 800(%rsp)
	vmovsd	928(%rdi), %xmm19
	vmovsd	%xmm19, 792(%rsp)
	vmovsd	936(%rdi), %xmm21
	vmovsd	%xmm21, 784(%rsp)
	vmovsd	944(%rdi), %xmm23
	vmovsd	%xmm23, 776(%rsp)
	vmovsd	952(%rdi), %xmm17
	vmovsd	%xmm17, 768(%rsp)
	vmovsd	960(%rdi), %xmm22
	vmovsd	%xmm22, 760(%rsp)
	vmovsd	968(%rdi), %xmm25
	vmovsd	%xmm25, 752(%rsp)
	vmovsd	976(%rdi), %xmm26
	vmovsd	%xmm26, 744(%rsp)
	vmovsd	984(%rdi), %xmm27
	vmovsd	%xmm27, 736(%rsp)
	vmovsd	992(%rdi), %xmm28
	vmovsd	%xmm28, 728(%rsp)
	vmovsd	1000(%rdi), %xmm29
	vmovsd	%xmm29, 720(%rsp)
	vmovsd	1008(%rdi), %xmm30
	vmovsd	%xmm30, 712(%rsp)
	vmovsd	1016(%rdi), %xmm31
	vmovsd	%xmm31, 704(%rsp)
	vmovsd	1024(%rdi), %xmm18
	vmovsd	%xmm18, 696(%rsp)
	vmovsd	1032(%rdi), %xmm20
	vmovsd	%xmm20, 6640(%rsp)
	vmovsd	1040(%rdi), %xmm24
	vmovsd	%xmm24, 6632(%rsp)
	vmovsd	1048(%rdi), %xmm16
	vmovsd	%xmm16, 6624(%rsp)
	vmovsd	1056(%rdi), %xmm19
	vmovsd	%xmm19, 6616(%rsp)
	vmovsd	1064(%rdi), %xmm21
	vmovsd	%xmm21, 6608(%rsp)
	vmovsd	1072(%rdi), %xmm23
	vmovsd	%xmm23, 6600(%rsp)
	vmovsd	1080(%rdi), %xmm17
	vmovsd	%xmm17, 1152(%rsp)
	vmovsd	1088(%rdi), %xmm22
	vmovsd	%xmm22, 1144(%rsp)
	vmovsd	1096(%rdi), %xmm25
	vmovsd	%xmm25, 1136(%rsp)
	vmovsd	1104(%rdi), %xmm26
	vmovsd	%xmm26, 1128(%rsp)
	vmovsd	1112(%rdi), %xmm27
	vmovsd	%xmm27, 1120(%rsp)
	vmovsd	1120(%rdi), %xmm28
	vmovsd	%xmm28, 1112(%rsp)
	vmovsd	1128(%rdi), %xmm29
	vmovsd	%xmm29, 1104(%rsp)
	vmovsd	1136(%rdi), %xmm30
	vmovsd	%xmm30, 1096(%rsp)
	vmovsd	1144(%rdi), %xmm31
	vmovsd	%xmm31, 1088(%rsp)
	vmovsd	1152(%rdi), %xmm18
	vmovsd	%xmm18, 1080(%rsp)
	vmovsd	1160(%rdi), %xmm20
	vmovsd	%xmm20, 1072(%rsp)
	vmovsd	1168(%rdi), %xmm24
	vmovsd	%xmm24, 1064(%rsp)
	vmovsd	1176(%rdi), %xmm16
	vmovsd	%xmm16, 1056(%rsp)
	vmovsd	1184(%rdi), %xmm19
	vmovsd	%xmm19, 1048(%rsp)
	vmovsd	1192(%rdi), %xmm21
	vmovsd	%xmm21, 1040(%rsp)
	vmovsd	1200(%rdi), %xmm23
	vmovsd	%xmm23, 1032(%rsp)
	vmovsd	1208(%rdi), %xmm17
	vmovsd	%xmm17, 1024(%rsp)
	vmovsd	1216(%rdi), %xmm22
	vmovsd	%xmm22, 1016(%rsp)
	vmovsd	1224(%rdi), %xmm25
	vmovsd	%xmm25, 1008(%rsp)
	vmovsd	1232(%rdi), %xmm26
	vmovsd	%xmm26, 1000(%rsp)
	vmovsd	1240(%rdi), %xmm27
	vmovsd	%xmm27, 992(%rsp)
	vmovsd	1248(%rdi), %xmm28
	vmovsd	%xmm28, 984(%rsp)
	vmovsd	1256(%rdi), %xmm29
	vmovsd	%xmm29, 976(%rsp)
	vmovsd	1264(%rdi), %xmm30
	vmovsd	%xmm30, 968(%rsp)
	vmovsd	1272(%rdi), %xmm31
	vmovsd	%xmm31, 960(%rsp)
	vmovsd	1280(%rdi), %xmm18
	vmovsd	%xmm18, 952(%rsp)
	vmovsd	1288(%rdi), %xmm20
	vmovsd	%xmm20, 7272(%rsp)
	vmovsd	1296(%rdi), %xmm24
	vmovsd	%xmm24, 7264(%rsp)
	vmovsd	1304(%rdi), %xmm16
	vmovsd	%xmm16, 7248(%rsp)
	vmovsd	1312(%rdi), %xmm19
	vmovsd	%xmm19, 7240(%rsp)
	vmovsd	1320(%rdi), %xmm21
	vmovsd	%xmm21, 7224(%rsp)
	vmovsd	1328(%rdi), %xmm23
	vmovsd	%xmm23, 7216(%rsp)
	vmovsd	1336(%rdi), %xmm17
	vmovsd	%xmm17, 7200(%rsp)
	vmovsd	1344(%rdi), %xmm22
	vmovsd	%xmm22, 7192(%rsp)
	vmovsd	1352(%rdi), %xmm25
	vmovsd	%xmm25, 7176(%rsp)
	vmovsd	1360(%rdi), %xmm26
	vmovsd	%xmm26, 7168(%rsp)
	vmovsd	1368(%rdi), %xmm27
	vmovsd	%xmm27, 7152(%rsp)
	vmovsd	1376(%rdi), %xmm28
	vmovsd	%xmm28, 7144(%rsp)
	vmovsd	1384(%rdi), %xmm29
	vmovsd	%xmm29, 7128(%rsp)
	vmovsd	1392(%rdi), %xmm30
	vmovsd	%xmm30, 7120(%rsp)
	vmovsd	1400(%rdi), %xmm31
	vmovsd	%xmm31, 7104(%rsp)
	vmovsd	1408(%rdi), %xmm18
	vmovsd	%xmm18, 7096(%rsp)
	vmovsd	1416(%rdi), %xmm20
	vmovsd	%xmm20, 7080(%rsp)
	vmovsd	1424(%rdi), %xmm24
	vmovsd	%xmm24, 7072(%rsp)
	vmovsd	1432(%rdi), %xmm16
	vmovsd	%xmm16, 7056(%rsp)
	vmovsd	1440(%rdi), %xmm19
	vmovsd	%xmm19, 7048(%rsp)
	vmovsd	1448(%rdi), %xmm21
	vmovsd	%xmm21, 7032(%rsp)
	vmovsd	1456(%rdi), %xmm23
	vmovsd	%xmm23, 7024(%rsp)
	vmovsd	1464(%rdi), %xmm17
	vmovsd	%xmm17, 7008(%rsp)
	vmovsd	1472(%rdi), %xmm22
	vmovsd	%xmm22, 7000(%rsp)
	vmovsd	1480(%rdi), %xmm25
	vmovsd	%xmm25, 6984(%rsp)
	vmovsd	1488(%rdi), %xmm26
	vmovsd	%xmm26, 6976(%rsp)
	vmovsd	1496(%rdi), %xmm27
	vmovsd	%xmm27, 6960(%rsp)
	vmovsd	1504(%rdi), %xmm28
	vmovsd	%xmm28, 6952(%rsp)
	vmovsd	1512(%rdi), %xmm29
	vmovsd	%xmm29, 6936(%rsp)
	vmovsd	1520(%rdi), %xmm30
	vmovsd	%xmm30, 6928(%rsp)
	vmovsd	1528(%rdi), %xmm31
	vmovsd	%xmm31, 6912(%rsp)
	vmovsd	1536(%rdi), %xmm18
	vmovsd	%xmm18, 6904(%rsp)
	vmovsd	1544(%rdi), %xmm20
	vmovsd	%xmm20, 7288(%rsp)
	vmovsd	1552(%rdi), %xmm24
	vmovsd	%xmm24, 6920(%rsp)
	vmovsd	1560(%rdi), %xmm16
	vmovsd	%xmm16, 6944(%rsp)
	vmovsd	1568(%rdi), %xmm19
	vmovsd	%xmm19, 6968(%rsp)
	vmovsd	1576(%rdi), %xmm21
	vmovsd	%xmm21, 6992(%rsp)
	vmovsd	1584(%rdi), %xmm23
	vmovsd	%xmm23, 7016(%rsp)
	vmovsd	1592(%rdi), %xmm17
	vmovsd	%xmm17, 7040(%rsp)
	vmovsd	1600(%rdi), %xmm22
	vmovsd	%xmm22, 7064(%rsp)
	vmovsd	1608(%rdi), %xmm25
	vmovsd	%xmm25, 7088(%rsp)
	vmovsd	1616(%rdi), %xmm26
	vmovsd	%xmm26, 7112(%rsp)
	vmovsd	1624(%rdi), %xmm27
	vmovsd	%xmm27, 7136(%rsp)
	vmovsd	1632(%rdi), %xmm28
	vmovsd	%xmm28, 7160(%rsp)
	vmovsd	1640(%rdi), %xmm29
	vmovsd	%xmm29, 7184(%rsp)
	vmovsd	1648(%rdi), %xmm30
	vmovsd	%xmm30, 7208(%rsp)
	vmovsd	1656(%rdi), %xmm31
	vmovsd	%xmm31, 7232(%rsp)
	vmovsd	1664(%rdi), %xmm18
	vmovsd	%xmm18, 7256(%rsp)
	vmovsd	1672(%rdi), %xmm20
	vmovsd	%xmm20, 7280(%rsp)
	vmovsd	1680(%rdi), %xmm24
	vmovsd	%xmm24, 7296(%rsp)
	vmovsd	1688(%rdi), %xmm16
	vmovsd	%xmm16, 6800(%rsp)
	vmovsd	1696(%rdi), %xmm19
	vmovsd	%xmm19, 6808(%rsp)
	vmovsd	1704(%rdi), %xmm21
	vmovsd	%xmm21, 6816(%rsp)
	vmovsd	1712(%rdi), %xmm23
	vmovsd	%xmm23, 6824(%rsp)
	vmovsd	1720(%rdi), %xmm17
	vmovsd	%xmm17, 6832(%rsp)
	vmovsd	1728(%rdi), %xmm22
	vmovsd	%xmm22, 6840(%rsp)
	vmovsd	1736(%rdi), %xmm25
	vmovsd	%xmm25, 6848(%rsp)
	vmovsd	1744(%rdi), %xmm26
	vmovsd	%xmm26, 6856(%rsp)
	vmovsd	1752(%rdi), %xmm27
	vmovsd	%xmm27, 6864(%rsp)
	vmovsd	1760(%rdi), %xmm28
	vmovsd	%xmm28, 6872(%rsp)
	vmovsd	1768(%rdi), %xmm29
	vmovsd	%xmm29, 6880(%rsp)
	vmovsd	1776(%rdi), %xmm30
	vmovsd	%xmm30, 6888(%rsp)
	vmovsd	1784(%rdi), %xmm31
	vmovsd	%xmm31, 6896(%rsp)
	leaq	8(%rdx), %rcx
	leaq	128(%rsi), %rax
	addq	$200, %rdx
	vxorpd	%xmm20, %xmm20, %xmm20
	vmovapd	%zmm20, 14728(%rsp)
	vmovapd	%zmm20, 14792(%rsp)
	vmovapd	%zmm20, 14152(%rsp)
	vmovapd	%zmm20, 12872(%rsp)
	vmovapd	%zmm20, 14216(%rsp)
	vmovapd	%zmm20, 15368(%rsp)
	vmovapd	%zmm20, 14280(%rsp)
	vmovapd	%zmm20, 13448(%rsp)
	vmovapd	%zmm20, 14344(%rsp)
	vmovapd	%zmm20, 13704(%rsp)
	vmovapd	%zmm20, 14472(%rsp)
	vmovapd	%zmm20, 11144(%rsp)
	vmovapd	%zmm20, 14536(%rsp)
	vmovapd	%zmm20, 11464(%rsp)
	vmovapd	%zmm20, 14600(%rsp)
	vmovapd	%zmm20, 11720(%rsp)
	vmovapd	%zmm20, 14664(%rsp)
	vmovapd	%zmm20, %zmm14
	vmovapd	%zmm20, %zmm13
	vmovapd	%zmm14, %zmm12
	vmovapd	%zmm14, %zmm11
	vmovapd	%zmm14, %zmm10
	vmovapd	%zmm14, %zmm9
	vmovapd	%zmm14, %zmm8
	vmovapd	%zmm14, %zmm7
	vmovapd	%zmm14, %zmm6
	vmovapd	%zmm14, %zmm5
	vmovapd	%zmm14, %zmm4
	vmovapd	%zmm14, %zmm3
	vmovapd	%zmm20, 7560(%rsp)
	vmovapd	%zmm20, 14856(%rsp)
	vmovapd	%zmm20, 7496(%rsp)
	vmovapd	%zmm20, 12744(%rsp)
	vmovapd	%zmm20, 7432(%rsp)
	vmovapd	%zmm20, 12808(%rsp)
	vmovapd	%zmm20, 7368(%rsp)
	vmovapd	%zmm20, 12936(%rsp)
	vmovapd	%zmm20, 7304(%rsp)
	vmovapd	%zmm20, 13000(%rsp)
	vmovapd	%zmm20, 15304(%rsp)
	vmovapd	%zmm20, 13064(%rsp)
	vmovapd	%zmm20, 8584(%rsp)
	vmovapd	%zmm20, 13128(%rsp)
	vmovapd	%zmm20, 8520(%rsp)
	vmovapd	%zmm20, 13192(%rsp)
	vmovapd	%zmm20, 8456(%rsp)
	vmovapd	%zmm20, 13256(%rsp)
	vmovapd	%zmm20, 8392(%rsp)
	vmovapd	%zmm20, 13320(%rsp)
	vmovapd	%zmm20, 8328(%rsp)
	vmovapd	%zmm20, 13384(%rsp)
	vmovapd	%zmm20, 8264(%rsp)
	vmovapd	%zmm20, 13512(%rsp)
	vmovapd	%zmm20, 8200(%rsp)
	vmovapd	%zmm20, 13576(%rsp)
	vmovapd	%zmm20, 8136(%rsp)
	vmovapd	%zmm20, 13640(%rsp)
	vmovapd	%zmm20, 8072(%rsp)
	vmovapd	%zmm20, 13768(%rsp)
	vmovapd	%zmm20, 8008(%rsp)
	vmovapd	%zmm20, 13896(%rsp)
	vmovapd	%zmm20, 7944(%rsp)
	vmovapd	%zmm20, 14024(%rsp)
	vmovapd	%zmm20, 7880(%rsp)
	vmovapd	%zmm20, 11208(%rsp)
	vmovapd	%zmm20, 7816(%rsp)
	vmovapd	%zmm20, 11272(%rsp)
	vmovapd	%zmm20, 7752(%rsp)
	vmovapd	%zmm20, 11336(%rsp)
	vmovapd	%zmm20, 7688(%rsp)
	vmovapd	%zmm20, 11400(%rsp)
	vmovapd	%zmm20, 7624(%rsp)
	vmovapd	%zmm20, 11528(%rsp)
	vmovapd	%zmm20, 15240(%rsp)
	vmovapd	%zmm20, 11592(%rsp)
	vmovapd	%zmm20, 9480(%rsp)
	vmovapd	%zmm20, 11656(%rsp)
	vmovapd	%zmm20, 9416(%rsp)
	vmovapd	%zmm20, 11784(%rsp)
	vmovapd	%zmm20, 9352(%rsp)
	vmovapd	%zmm20, 11848(%rsp)
	vmovapd	%zmm20, 9288(%rsp)
	vmovapd	%zmm20, 11912(%rsp)
	vmovapd	%zmm20, 9224(%rsp)
	vmovapd	%zmm20, 11976(%rsp)
	vmovapd	%zmm20, 9160(%rsp)
	vmovapd	%zmm20, 12104(%rsp)
	vmovapd	%zmm20, 9096(%rsp)
	vmovapd	%zmm20, 12232(%rsp)
	vmovapd	%zmm20, 9032(%rsp)
	vmovapd	%zmm20, 12360(%rsp)
	vmovapd	%zmm20, 8968(%rsp)
	vmovapd	%zmm20, 12488(%rsp)
	vmovapd	%zmm20, 8904(%rsp)
	vmovapd	%zmm20, 12616(%rsp)
	vmovapd	%zmm20, 8840(%rsp)
	vmovapd	%zmm20, 9544(%rsp)
	vmovapd	%zmm20, 8776(%rsp)
	vmovapd	%zmm20, 9608(%rsp)
	vmovapd	%zmm20, 8712(%rsp)
	vmovapd	%zmm20, 9672(%rsp)
	vmovapd	%zmm20, 8648(%rsp)
	vmovapd	%zmm20, 9736(%rsp)
	vmovapd	%zmm20, 2824(%rsp)
	vmovapd	%zmm20, 9800(%rsp)
	vmovapd	%zmm20, 2696(%rsp)
	vmovapd	%zmm20, 9864(%rsp)
	vmovapd	%zmm20, 15176(%rsp)
	vmovapd	%zmm20, 9928(%rsp)
	vmovapd	%zmm20, 11080(%rsp)
	vmovapd	%zmm20, 9992(%rsp)
	vmovapd	%zmm20, 10952(%rsp)
	vmovapd	%zmm20, 10120(%rsp)
	vmovapd	%zmm20, 10824(%rsp)
	vmovapd	%zmm20, 10248(%rsp)
	vmovapd	%zmm20, 10696(%rsp)
	vmovapd	%zmm20, 10376(%rsp)
	vmovapd	%zmm20, 10568(%rsp)
	vmovapd	%zmm20, 10504(%rsp)
	vmovapd	%zmm20, 10440(%rsp)
	vmovapd	%zmm20, 10632(%rsp)
	vmovapd	%zmm20, 10312(%rsp)
	vmovapd	%zmm20, 10760(%rsp)
	vmovapd	%zmm20, 10184(%rsp)
	vmovapd	%zmm20, 10888(%rsp)
	vmovapd	%zmm20, 10056(%rsp)
	vmovapd	%zmm20, 11016(%rsp)
	vmovapd	%zmm20, 4168(%rsp)
	vmovapd	%zmm20, 2632(%rsp)
	vmovapd	%zmm20, 4104(%rsp)
	vmovapd	%zmm20, 2760(%rsp)
	vmovapd	%zmm20, 4040(%rsp)
	vmovapd	%zmm20, 2888(%rsp)
	vmovapd	%zmm20, 3976(%rsp)
	vmovapd	%zmm20, 2952(%rsp)
	vmovapd	%zmm20, 3912(%rsp)
	vmovapd	%zmm20, 3016(%rsp)
	vmovapd	%zmm20, 3848(%rsp)
	vmovapd	%zmm20, 3080(%rsp)
	vmovapd	%zmm20, 3784(%rsp)
	vmovapd	%zmm20, 3144(%rsp)
	vmovapd	%zmm20, 15112(%rsp)
	vmovapd	%zmm20, 3208(%rsp)
	vmovapd	%zmm20, 12680(%rsp)
	vmovapd	%zmm20, 3272(%rsp)
	vmovapd	%zmm20, 12552(%rsp)
	vmovapd	%zmm20, 3336(%rsp)
	vmovapd	%zmm20, 12424(%rsp)
	vmovapd	%zmm20, 3400(%rsp)
	vmovapd	%zmm20, 12296(%rsp)
	vmovapd	%zmm20, 3464(%rsp)
	vmovapd	%zmm20, 12168(%rsp)
	vmovapd	%zmm20, 3528(%rsp)
	vmovapd	%zmm20, 12040(%rsp)
	vmovapd	%zmm20, 3592(%rsp)
	vmovapd	%zmm20, 4808(%rsp)
	vmovapd	%zmm20, 3656(%rsp)
	vmovapd	%zmm20, 4744(%rsp)
	vmovapd	%zmm20, 3720(%rsp)
	vmovapd	%zmm20, 4680(%rsp)
	vmovapd	%zmm20, 1608(%rsp)
	vmovapd	%zmm20, 4616(%rsp)
	vmovapd	%zmm20, 1672(%rsp)
	vmovapd	%zmm20, 4552(%rsp)
	vmovapd	%zmm20, 1736(%rsp)
	vmovapd	%zmm20, 4488(%rsp)
	vmovapd	%zmm20, 1800(%rsp)
	vmovapd	%zmm20, 4424(%rsp)
	vmovapd	%zmm20, 1864(%rsp)
	vmovapd	%zmm20, 4360(%rsp)
	vmovapd	%zmm20, 1928(%rsp)
	vmovapd	%zmm20, 4296(%rsp)
	vmovapd	%zmm20, 1992(%rsp)
	vmovapd	%zmm20, 4232(%rsp)
	vmovapd	%zmm20, 2056(%rsp)
	vmovapd	%zmm20, 15048(%rsp)
	vmovapd	%zmm20, 2120(%rsp)
	vmovapd	%zmm20, 14088(%rsp)
	vmovapd	%zmm20, 2184(%rsp)
	vmovapd	%zmm20, 13960(%rsp)
	vmovapd	%zmm20, 2248(%rsp)
	vmovapd	%zmm20, 13832(%rsp)
	vmovapd	%zmm20, 2312(%rsp)
	vmovapd	%zmm20, 5640(%rsp)
	vmovapd	%zmm20, 2376(%rsp)
	vmovapd	%zmm20, 5576(%rsp)
	vmovapd	%zmm20, 2440(%rsp)
	vmovapd	%zmm20, 5512(%rsp)
	vmovapd	%zmm20, 2504(%rsp)
	vmovapd	%zmm20, 5448(%rsp)
	vmovapd	%zmm20, 2568(%rsp)
	vmovapd	%zmm20, 5384(%rsp)
	vmovapd	%zmm20, 1160(%rsp)
	vmovapd	%zmm20, 5320(%rsp)
	vmovapd	%zmm20, 1224(%rsp)
	vmovapd	%zmm20, 5256(%rsp)
	vmovapd	%zmm20, 1288(%rsp)
	vmovapd	%zmm20, 5192(%rsp)
	vmovapd	%zmm20, 5768(%rsp)
	vmovapd	%zmm20, 5128(%rsp)
	vmovapd	%zmm20, 5704(%rsp)
	vmovapd	%zmm20, 5064(%rsp)
	vmovapd	%zmm20, 14984(%rsp)
	vmovapd	%zmm20, 5000(%rsp)
	vmovapd	%zmm20, 14920(%rsp)
	vmovapd	%zmm20, 4936(%rsp)
	vmovapd	%zmm20, 6280(%rsp)
	vmovapd	%zmm20, 4872(%rsp)
	vmovapd	%zmm20, 14408(%rsp)
	vmovapd	%zmm20, 6536(%rsp)
	vmovapd	%zmm20, 6408(%rsp)
	vmovapd	%zmm20, 6216(%rsp)
	vmovapd	%zmm20, 6344(%rsp)
	vmovapd	%zmm20, 6152(%rsp)
	vmovapd	%zmm20, 6472(%rsp)
	vmovapd	%zmm20, 6088(%rsp)
	vmovapd	%zmm20, 1352(%rsp)
	vmovapd	%zmm20, 6024(%rsp)
	vmovapd	%zmm20, 1416(%rsp)
	vmovapd	%zmm20, 5960(%rsp)
	vmovapd	%zmm20, 1480(%rsp)
	vmovapd	%zmm20, 5896(%rsp)
	vmovapd	%zmm20, 1544(%rsp)
	vmovapd	%zmm20, 5832(%rsp)
	vmovdqa64	.LC0(%rip), %zmm1
	vmovdqa64	.LC1(%rip), %zmm0
.L5:
	vmovupd	(%rcx), %zmm22
	vmovupd	(%rax), %zmm30
	vmovupd	64(%rax), %zmm28
	vmovupd	128(%rax), %zmm27
	vmovupd	192(%rax), %zmm26
	vmovupd	256(%rax), %zmm25
	vmovupd	320(%rax), %zmm24
	vmovupd	384(%rax), %zmm23
	vmovupd	448(%rax), %zmm31
	vmovupd	512(%rax), %zmm2
	vmovupd	576(%rax), %zmm20
	vmovupd	640(%rax), %zmm19
	vmovupd	704(%rax), %zmm18
	vmovupd	768(%rax), %zmm29
	vmovupd	832(%rax), %zmm16
	vmovupd	896(%rax), %zmm21
	vmovupd	960(%rax), %zmm17
	vmovapd	%zmm30, %zmm15
	vpermt2pd	%zmm28, %zmm1, %zmm15
	vpermt2pd	%zmm28, %zmm0, %zmm30
	vmovapd	%zmm27, %zmm28
	vpermt2pd	%zmm26, %zmm1, %zmm28
	vpermt2pd	%zmm26, %zmm0, %zmm27
	vmovapd	%zmm25, %zmm26
	vpermt2pd	%zmm24, %zmm1, %zmm26
	vpermt2pd	%zmm24, %zmm0, %zmm25
	vmovapd	%zmm23, %zmm24
	vpermt2pd	%zmm31, %zmm1, %zmm24
	vpermt2pd	%zmm31, %zmm0, %zmm23
	vmovapd	%zmm2, %zmm31
	vpermt2pd	%zmm20, %zmm1, %zmm31
	vpermt2pd	%zmm20, %zmm0, %zmm2
	vmovapd	%zmm19, %zmm20
	vpermt2pd	%zmm18, %zmm1, %zmm20
	vpermt2pd	%zmm18, %zmm0, %zmm19
	vmovapd	%zmm29, %zmm18
	vpermt2pd	%zmm16, %zmm1, %zmm18
	vpermt2pd	%zmm16, %zmm0, %zmm29
	vmovapd	%zmm21, %zmm16
	vpermt2pd	%zmm17, %zmm1, %zmm16
	vpermt2pd	%zmm17, %zmm0, %zmm21
	vmovapd	%zmm15, %zmm17
	vpermt2pd	%zmm28, %zmm1, %zmm17
	vpermt2pd	%zmm28, %zmm0, %zmm15
	vmovapd	%zmm26, %zmm28
	vpermt2pd	%zmm24, %zmm1, %zmm28
	vpermt2pd	%zmm24, %zmm0, %zmm26
	vmovapd	%zmm31, %zmm24
	vpermt2pd	%zmm20, %zmm1, %zmm24
	vpermt2pd	%zmm20, %zmm0, %zmm31
	vmovapd	%zmm18, %zmm20
	vpermt2pd	%zmm16, %zmm1, %zmm20
	vpermt2pd	%zmm16, %zmm0, %zmm18
	vmovapd	%zmm30, %zmm16
	vpermt2pd	%zmm27, %zmm1, %zmm16
	vpermt2pd	%zmm27, %zmm0, %zmm30
	vmovapd	%zmm25, %zmm27
	vpermt2pd	%zmm23, %zmm1, %zmm27
	vpermt2pd	%zmm23, %zmm0, %zmm25
	vmovapd	%zmm2, %zmm23
	vpermt2pd	%zmm19, %zmm1, %zmm23
	vpermt2pd	%zmm19, %zmm0, %zmm2
	vmovapd	%zmm29, %zmm19
	vpermt2pd	%zmm21, %zmm1, %zmm19
	vpermt2pd	%zmm21, %zmm0, %zmm29
	vmovapd	%zmm17, %zmm21
	vpermt2pd	%zmm28, %zmm1, %zmm21
	vpermt2pd	%zmm28, %zmm0, %zmm17
	vmovapd	%zmm24, %zmm28
	vpermt2pd	%zmm20, %zmm1, %zmm28
	vpermt2pd	%zmm20, %zmm0, %zmm24
	vmovapd	%zmm16, %zmm20
	vpermt2pd	%zmm27, %zmm1, %zmm20
	vpermt2pd	%zmm27, %zmm0, %zmm16
	vmovapd	%zmm23, %zmm27
	vpermt2pd	%zmm19, %zmm1, %zmm27
	vpermt2pd	%zmm19, %zmm0, %zmm23
	vmovapd	%zmm15, %zmm19
	vpermt2pd	%zmm26, %zmm1, %zmm19
	vpermt2pd	%zmm26, %zmm0, %zmm15
	vmovapd	%zmm31, %zmm26
	vpermt2pd	%zmm18, %zmm1, %zmm26
	vpermt2pd	%zmm18, %zmm0, %zmm31
	vmovapd	%zmm30, %zmm18
	vpermt2pd	%zmm25, %zmm1, %zmm18
	vpermt2pd	%zmm25, %zmm0, %zmm30
	vmovapd	%zmm2, %zmm25
	vpermt2pd	%zmm29, %zmm1, %zmm25
	vpermt2pd	%zmm29, %zmm0, %zmm2
	vmovapd	%zmm21, %zmm29
	vpermt2pd	%zmm28, %zmm1, %zmm29
	vpermt2pd	%zmm28, %zmm0, %zmm21
	vmovapd	%zmm20, %zmm28
	vpermt2pd	%zmm27, %zmm1, %zmm28
	vpermt2pd	%zmm27, %zmm0, %zmm20
	vmovapd	%zmm19, %zmm27
	vpermt2pd	%zmm26, %zmm1, %zmm27
	vpermt2pd	%zmm26, %zmm0, %zmm19
	vmovapd	%zmm18, %zmm26
	vpermt2pd	%zmm25, %zmm1, %zmm26
	vpermt2pd	%zmm25, %zmm0, %zmm18
	vmovapd	%zmm17, %zmm25
	vpermt2pd	%zmm24, %zmm1, %zmm25
	vpermt2pd	%zmm24, %zmm0, %zmm17
	vmovapd	%zmm16, %zmm24
	vpermt2pd	%zmm23, %zmm1, %zmm24
	vpermt2pd	%zmm23, %zmm0, %zmm16
	vmovapd	%zmm15, %zmm23
	vpermt2pd	%zmm31, %zmm1, %zmm23
	vpermt2pd	%zmm31, %zmm0, %zmm15
	vmovapd	%zmm30, %zmm31
	vpermt2pd	%zmm2, %zmm1, %zmm31
	vpermt2pd	%zmm2, %zmm0, %zmm30
	vmovapd	%zmm30, %zmm2
	vmovapd	5832(%rsp), %zmm30
	vfmadd231pd	%zmm29, %zmm22, %zmm30
	vmovapd	%zmm30, 5832(%rsp)
	vmovapd	1544(%rsp), %zmm30
	vfmadd231pd	%zmm28, %zmm22, %zmm30
	vmovapd	%zmm30, 1544(%rsp)
	vmovapd	5896(%rsp), %zmm30
	vfmadd231pd	%zmm27, %zmm22, %zmm30
	vmovapd	%zmm30, 5896(%rsp)
	vmovapd	1480(%rsp), %zmm30
	vfmadd231pd	%zmm26, %zmm22, %zmm30
	vmovapd	%zmm30, 1480(%rsp)
	vmovapd	5960(%rsp), %zmm30
	vfmadd231pd	%zmm25, %zmm22, %zmm30
	vmovapd	%zmm30, 5960(%rsp)
	vmovapd	1416(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 1416(%rsp)
	vmovapd	6024(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 6024(%rsp)
	vmovapd	1352(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 1352(%rsp)
	vmovapd	6088(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 6088(%rsp)
	vmovapd	6472(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 6472(%rsp)
	vmovapd	6152(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 6152(%rsp)
	vmovapd	6344(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 6344(%rsp)
	vmovapd	6216(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 6216(%rsp)
	vmovapd	6408(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 6408(%rsp)
	vmovapd	6536(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 6536(%rsp)
	vfmadd213pd	14408(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 14408(%rsp)
	vmovupd	256(%rcx), %zmm22
	vmovapd	4872(%rsp), %zmm30
	vfmadd231pd	%zmm29, %zmm22, %zmm30
	vmovapd	%zmm30, 4872(%rsp)
	vmovapd	6280(%rsp), %zmm30
	vfmadd231pd	%zmm28, %zmm22, %zmm30
	vmovapd	%zmm30, 6280(%rsp)
	vmovapd	4936(%rsp), %zmm30
	vfmadd231pd	%zmm27, %zmm22, %zmm30
	vmovapd	%zmm30, 4936(%rsp)
	vmovapd	14920(%rsp), %zmm30
	vfmadd231pd	%zmm26, %zmm22, %zmm30
	vmovapd	%zmm30, 14920(%rsp)
	vmovapd	5000(%rsp), %zmm30
	vfmadd231pd	%zmm25, %zmm22, %zmm30
	vmovapd	%zmm30, 5000(%rsp)
	vmovapd	14984(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 14984(%rsp)
	vmovapd	5064(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 5064(%rsp)
	vmovapd	5704(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 5704(%rsp)
	vmovapd	5128(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 5128(%rsp)
	vmovapd	5768(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 5768(%rsp)
	vmovapd	5192(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 5192(%rsp)
	vmovapd	1288(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 1288(%rsp)
	vmovapd	5256(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 5256(%rsp)
	vmovapd	1224(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 1224(%rsp)
	vmovapd	5320(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 5320(%rsp)
	vfmadd213pd	1160(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 1160(%rsp)
	vmovupd	512(%rcx), %zmm22
	vmovapd	5384(%rsp), %zmm30
	vfmadd231pd	%zmm29, %zmm22, %zmm30
	vmovapd	%zmm30, 5384(%rsp)
	vmovapd	2568(%rsp), %zmm30
	vfmadd231pd	%zmm28, %zmm22, %zmm30
	vmovapd	%zmm30, 2568(%rsp)
	vmovapd	5448(%rsp), %zmm30
	vfmadd231pd	%zmm27, %zmm22, %zmm30
	vmovapd	%zmm30, 5448(%rsp)
	vmovapd	2504(%rsp), %zmm30
	vfmadd231pd	%zmm26, %zmm22, %zmm30
	vmovapd	%zmm30, 2504(%rsp)
	vmovapd	5512(%rsp), %zmm30
	vfmadd231pd	%zmm25, %zmm22, %zmm30
	vmovapd	%zmm30, 5512(%rsp)
	vmovapd	2440(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 2440(%rsp)
	vmovapd	5576(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 5576(%rsp)
	vmovapd	2376(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 2376(%rsp)
	vmovapd	5640(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 5640(%rsp)
	vmovapd	2312(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 2312(%rsp)
	vmovapd	13832(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 13832(%rsp)
	vmovapd	2248(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 2248(%rsp)
	vmovapd	13960(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 13960(%rsp)
	vmovapd	2184(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 2184(%rsp)
	vmovapd	14088(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 14088(%rsp)
	vfmadd213pd	2120(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 2120(%rsp)
	vmovupd	768(%rcx), %zmm22
	vmovapd	15048(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 15048(%rsp)
	vmovapd	2056(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 2056(%rsp)
	vmovapd	4232(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 4232(%rsp)
	vmovapd	1992(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 1992(%rsp)
	vmovapd	4296(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 4296(%rsp)
	vmovapd	1928(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 1928(%rsp)
	vmovapd	4360(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 4360(%rsp)
	vmovapd	1864(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 1864(%rsp)
	vmovapd	4424(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 4424(%rsp)
	vmovapd	1800(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 1800(%rsp)
	vmovapd	4488(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 4488(%rsp)
	vmovapd	1736(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 1736(%rsp)
	vmovapd	4552(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 4552(%rsp)
	vmovapd	1672(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 1672(%rsp)
	vmovapd	4616(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 4616(%rsp)
	vfmadd213pd	1608(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 1608(%rsp)
	vmovupd	1024(%rcx), %zmm22
	vmovapd	4680(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 4680(%rsp)
	vmovapd	3720(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 3720(%rsp)
	vmovapd	4744(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 4744(%rsp)
	vmovapd	3656(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 3656(%rsp)
	vmovapd	4808(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 4808(%rsp)
	vmovapd	3592(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 3592(%rsp)
	vmovapd	12040(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 12040(%rsp)
	vmovapd	3528(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 3528(%rsp)
	vmovapd	12168(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 12168(%rsp)
	vmovapd	3464(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 3464(%rsp)
	vmovapd	12296(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 12296(%rsp)
	vmovapd	3400(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 3400(%rsp)
	vmovapd	12424(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 12424(%rsp)
	vmovapd	3336(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 3336(%rsp)
	vmovapd	12552(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 12552(%rsp)
	vfmadd213pd	3272(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 3272(%rsp)
	vmovupd	1280(%rcx), %zmm22
	vmovapd	12680(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 12680(%rsp)
	vmovapd	3208(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 3208(%rsp)
	vmovapd	15112(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 15112(%rsp)
	vmovapd	3144(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 3144(%rsp)
	vmovapd	3784(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 3784(%rsp)
	vmovapd	3080(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 3080(%rsp)
	vmovapd	3848(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 3848(%rsp)
	vmovapd	3016(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 3016(%rsp)
	vmovapd	3912(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 3912(%rsp)
	vmovapd	2952(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 2952(%rsp)
	vmovapd	3976(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 3976(%rsp)
	vmovapd	2888(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 2888(%rsp)
	vmovapd	4040(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 4040(%rsp)
	vmovapd	2760(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 2760(%rsp)
	vmovapd	4104(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 4104(%rsp)
	vfmadd213pd	2632(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 2632(%rsp)
	vmovupd	1536(%rcx), %zmm22
	vmovapd	4168(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 4168(%rsp)
	vmovapd	11016(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 11016(%rsp)
	vmovapd	10056(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 10056(%rsp)
	vmovapd	10888(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 10888(%rsp)
	vmovapd	10184(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 10184(%rsp)
	vmovapd	10760(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 10760(%rsp)
	vmovapd	10312(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 10312(%rsp)
	vmovapd	10632(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 10632(%rsp)
	vmovapd	10440(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 10440(%rsp)
	vmovapd	10504(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 10504(%rsp)
	vmovapd	10568(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 10568(%rsp)
	vmovapd	10376(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 10376(%rsp)
	vmovapd	10696(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 10696(%rsp)
	vmovapd	10248(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 10248(%rsp)
	vmovapd	10824(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 10824(%rsp)
	vfmadd213pd	10120(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 10120(%rsp)
	vmovupd	1792(%rcx), %zmm22
	vmovapd	10952(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 10952(%rsp)
	vmovapd	9992(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 9992(%rsp)
	vmovapd	11080(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 11080(%rsp)
	vmovapd	9928(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 9928(%rsp)
	vmovapd	15176(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 15176(%rsp)
	vmovapd	9864(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 9864(%rsp)
	vmovapd	2696(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 2696(%rsp)
	vmovapd	9800(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 9800(%rsp)
	vmovapd	2824(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 2824(%rsp)
	vmovapd	9736(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 9736(%rsp)
	vmovapd	8648(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 8648(%rsp)
	vmovapd	9672(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 9672(%rsp)
	vmovapd	8712(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 8712(%rsp)
	vmovapd	9608(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 9608(%rsp)
	vmovapd	8776(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 8776(%rsp)
	vfmadd213pd	9544(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 9544(%rsp)
	vmovupd	2048(%rcx), %zmm22
	vmovapd	8840(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 8840(%rsp)
	vmovapd	12616(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 12616(%rsp)
	vmovapd	8904(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 8904(%rsp)
	vmovapd	12488(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 12488(%rsp)
	vmovapd	8968(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 8968(%rsp)
	vmovapd	12360(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 12360(%rsp)
	vmovapd	9032(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 9032(%rsp)
	vmovapd	12232(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 12232(%rsp)
	vmovapd	9096(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 9096(%rsp)
	vmovapd	12104(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 12104(%rsp)
	vmovapd	9160(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 9160(%rsp)
	vmovapd	11976(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 11976(%rsp)
	vmovapd	9224(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 9224(%rsp)
	vmovapd	11912(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 11912(%rsp)
	vmovapd	9288(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 9288(%rsp)
	vfmadd213pd	11848(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 11848(%rsp)
	vmovupd	2304(%rcx), %zmm22
	vmovapd	9352(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 9352(%rsp)
	vmovapd	11784(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 11784(%rsp)
	vmovapd	9416(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 9416(%rsp)
	vmovapd	11656(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 11656(%rsp)
	vmovapd	9480(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 9480(%rsp)
	vmovapd	11592(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 11592(%rsp)
	vmovapd	15240(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 15240(%rsp)
	vmovapd	11528(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 11528(%rsp)
	vmovapd	7624(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 7624(%rsp)
	vmovapd	11400(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 11400(%rsp)
	vmovapd	7688(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 7688(%rsp)
	vmovapd	11336(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 11336(%rsp)
	vmovapd	7752(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 7752(%rsp)
	vmovapd	11272(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 11272(%rsp)
	vmovapd	7816(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 7816(%rsp)
	vfmadd213pd	11208(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 11208(%rsp)
	vmovupd	2560(%rcx), %zmm22
	vmovapd	7880(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 7880(%rsp)
	vmovapd	14024(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 14024(%rsp)
	vmovapd	7944(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 7944(%rsp)
	vmovapd	13896(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 13896(%rsp)
	vmovapd	8008(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 8008(%rsp)
	vmovapd	13768(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 13768(%rsp)
	vmovapd	8072(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 8072(%rsp)
	vmovapd	13640(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 13640(%rsp)
	vmovapd	8136(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 8136(%rsp)
	vmovapd	13576(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 13576(%rsp)
	vmovapd	8200(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 8200(%rsp)
	vmovapd	13512(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 13512(%rsp)
	vmovapd	8264(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 8264(%rsp)
	vmovapd	13384(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 13384(%rsp)
	vmovapd	8328(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 8328(%rsp)
	vfmadd213pd	13320(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 13320(%rsp)
	vmovupd	2816(%rcx), %zmm22
	vmovapd	8392(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 8392(%rsp)
	vmovapd	13256(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 13256(%rsp)
	vmovapd	8456(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 8456(%rsp)
	vmovapd	13192(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm26, %zmm30
	vmovapd	%zmm30, 13192(%rsp)
	vmovapd	8520(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm25, %zmm30
	vmovapd	%zmm30, 8520(%rsp)
	vmovapd	13128(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm24, %zmm30
	vmovapd	%zmm30, 13128(%rsp)
	vmovapd	8584(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm23, %zmm30
	vmovapd	%zmm30, 8584(%rsp)
	vmovapd	13064(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm31, %zmm30
	vmovapd	%zmm30, 13064(%rsp)
	vmovapd	15304(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm21, %zmm30
	vmovapd	%zmm30, 15304(%rsp)
	vmovapd	13000(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm20, %zmm30
	vmovapd	%zmm30, 13000(%rsp)
	vmovapd	7304(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm19, %zmm30
	vmovapd	%zmm30, 7304(%rsp)
	vmovapd	12936(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm18, %zmm30
	vmovapd	%zmm30, 12936(%rsp)
	vmovapd	7368(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm17, %zmm30
	vmovapd	%zmm30, 7368(%rsp)
	vmovapd	12808(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm16, %zmm30
	vmovapd	%zmm30, 12808(%rsp)
	vmovapd	7432(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm15, %zmm30
	vmovapd	%zmm30, 7432(%rsp)
	vfmadd213pd	12744(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 12744(%rsp)
	vmovupd	3072(%rcx), %zmm22
	vmovapd	7496(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm29, %zmm30
	vmovapd	%zmm30, 7496(%rsp)
	vmovapd	14856(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm28, %zmm30
	vmovapd	%zmm30, 14856(%rsp)
	vmovapd	7560(%rsp), %zmm30
	vfmadd231pd	%zmm22, %zmm27, %zmm30
	vmovapd	%zmm30, 7560(%rsp)
	vfmadd231pd	%zmm22, %zmm26, %zmm3
	vfmadd231pd	%zmm22, %zmm25, %zmm4
	vfmadd231pd	%zmm22, %zmm24, %zmm5
	vfmadd231pd	%zmm22, %zmm23, %zmm6
	vfmadd231pd	%zmm22, %zmm31, %zmm7
	vfmadd231pd	%zmm22, %zmm21, %zmm8
	vfmadd231pd	%zmm22, %zmm20, %zmm9
	vfmadd231pd	%zmm22, %zmm19, %zmm10
	vfmadd231pd	%zmm22, %zmm18, %zmm11
	vfmadd231pd	%zmm22, %zmm17, %zmm12
	vfmadd231pd	%zmm22, %zmm16, %zmm13
	vfmadd231pd	%zmm22, %zmm15, %zmm14
	vfmadd213pd	14664(%rsp), %zmm2, %zmm22
	vmovapd	%zmm22, 14664(%rsp)
	vmovupd	3328(%rcx), %zmm22
	vfmadd213pd	11720(%rsp), %zmm22, %zmm29
	vmovapd	%zmm29, 11720(%rsp)
	vfmadd213pd	14600(%rsp), %zmm22, %zmm28
	vmovapd	%zmm28, 14600(%rsp)
	vfmadd213pd	11464(%rsp), %zmm22, %zmm27
	vmovapd	%zmm27, 11464(%rsp)
	vfmadd213pd	14536(%rsp), %zmm22, %zmm26
	vmovapd	%zmm26, 14536(%rsp)
	vfmadd213pd	11144(%rsp), %zmm22, %zmm25
	vmovapd	%zmm25, 11144(%rsp)
	vfmadd213pd	14472(%rsp), %zmm22, %zmm24
	vmovapd	%zmm24, 14472(%rsp)
	vfmadd213pd	13704(%rsp), %zmm22, %zmm23
	vmovapd	%zmm23, 13704(%rsp)
	vfmadd213pd	14344(%rsp), %zmm22, %zmm31
	vmovapd	%zmm31, 14344(%rsp)
	vfmadd213pd	13448(%rsp), %zmm22, %zmm21
	vmovapd	%zmm21, 13448(%rsp)
	vfmadd213pd	14280(%rsp), %zmm22, %zmm20
	vmovapd	%zmm20, 14280(%rsp)
	vfmadd213pd	15368(%rsp), %zmm22, %zmm19
	vmovapd	%zmm19, 15368(%rsp)
	vfmadd213pd	14216(%rsp), %zmm22, %zmm18
	vmovapd	%zmm18, 14216(%rsp)
	vfmadd213pd	12872(%rsp), %zmm22, %zmm17
	vmovapd	%zmm17, 12872(%rsp)
	vfmadd213pd	14152(%rsp), %zmm22, %zmm16
	vmovapd	%zmm16, 14152(%rsp)
	vfmadd213pd	14792(%rsp), %zmm22, %zmm15
	vmovapd	%zmm15, 14792(%rsp)
	vfmadd213pd	14728(%rsp), %zmm22, %zmm2
	vmovapd	%zmm2, 14728(%rsp)
	addq	$64, %rcx
	addq	$1024, %rax
	cmpq	%rcx, %rdx
	jne	.L5
	vmovapd	%zmm20, %zmm24
	vshufi32x4	$78, %zmm2, %zmm2, %zmm1
	vaddpd	%zmm2, %zmm1, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm2
	vaddpd	%zmm0, %zmm2, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6896(%rsp), %xmm2, %xmm19
	vmovsd	%xmm19, 6648(%rsp)
	vmovapd	%zmm15, %zmm29
	vshufi32x4	$78, %zmm15, %zmm15, %zmm15
	vaddpd	%zmm29, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6888(%rsp), %xmm0, %xmm27
	vmovsd	%xmm27, 6656(%rsp)
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6880(%rsp), %xmm2, %xmm25
	vmovsd	%xmm25, 6664(%rsp)
	vshufi32x4	$78, %zmm17, %zmm17, %zmm15
	vaddpd	%zmm17, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6872(%rsp), %xmm0, %xmm31
	vmovsd	%xmm31, 6672(%rsp)
	vshufi32x4	$78, %zmm18, %zmm18, %zmm1
	vaddpd	%zmm18, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6864(%rsp), %xmm2, %xmm21
	vmovsd	%xmm21, 6680(%rsp)
	vmovapd	15368(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm15
	vaddpd	%zmm20, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6856(%rsp), %xmm0, %xmm29
	vmovsd	%xmm29, 6688(%rsp)
	vshufi32x4	$78, %zmm24, %zmm24, %zmm1
	vaddpd	%zmm24, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6848(%rsp), %xmm2, %xmm24
	vmovsd	%xmm24, 6696(%rsp)
	vmovapd	13448(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm15
	vaddpd	%zmm27, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6840(%rsp), %xmm0, %xmm26
	vmovsd	%xmm26, 6704(%rsp)
	vmovapd	14344(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm1
	vaddpd	%zmm17, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6832(%rsp), %xmm2, %xmm23
	vmovsd	%xmm23, 6712(%rsp)
	vmovapd	13704(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm15
	vaddpd	%zmm18, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6824(%rsp), %xmm0, %xmm22
	vmovsd	%xmm22, 6720(%rsp)
	vmovapd	14472(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6816(%rsp), %xmm2, %xmm19
	vmovsd	%xmm19, 6728(%rsp)
	vmovapd	11144(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm15
	vaddpd	%zmm29, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	6808(%rsp), %xmm0, %xmm24
	vmovsd	%xmm24, 6736(%rsp)
	vmovapd	14536(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm1
	vaddpd	%zmm27, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	6800(%rsp), %xmm2, %xmm26
	vmovsd	%xmm26, 6744(%rsp)
	vmovapd	11464(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm15
	vaddpd	%zmm17, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	7296(%rsp), %xmm0, %xmm23
	vmovsd	%xmm23, 6752(%rsp)
	vmovapd	14600(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm1
	vaddpd	%zmm18, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	7280(%rsp), %xmm2, %xmm22
	vmovsd	%xmm22, 6760(%rsp)
	vmovapd	11720(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm15
	vaddpd	%zmm21, %zmm15, %zmm0
	vshufi32x4	$77, %zmm0, %zmm0, %zmm1
	vaddpd	%zmm0, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm0
	vaddsd	7256(%rsp), %xmm0, %xmm19
	vmovsd	%xmm19, 6768(%rsp)
	vmovapd	14664(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm1
	vaddpd	%zmm29, %zmm1, %zmm2
	vshufi32x4	$77, %zmm2, %zmm2, %zmm15
	vaddpd	%zmm2, %zmm15, %zmm1
	vpshufd	$254, %zmm1, %zmm0
	vaddpd	%zmm1, %zmm0, %zmm2
	vaddsd	7232(%rsp), %xmm2, %xmm24
	vmovsd	%xmm24, 6776(%rsp)
	vshufi32x4	$78, %zmm14, %zmm14, %zmm15
	vaddpd	%zmm14, %zmm15, %zmm14
	vshufi32x4	$77, %zmm14, %zmm14, %zmm1
	vaddpd	%zmm14, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm0
	vaddpd	%zmm2, %zmm0, %zmm0
	vaddsd	7208(%rsp), %xmm0, %xmm27
	vmovsd	%xmm27, 6784(%rsp)
	vshufi32x4	$78, %zmm13, %zmm13, %zmm14
	vaddpd	%zmm13, %zmm14, %zmm13
	vshufi32x4	$77, %zmm13, %zmm13, %zmm1
	vaddpd	%zmm13, %zmm1, %zmm2
	vpshufd	$254, %zmm2, %zmm0
	vaddpd	%zmm2, %zmm0, %zmm0
	vaddsd	7184(%rsp), %xmm0, %xmm16
	vmovsd	%xmm16, 6792(%rsp)
	vshufi32x4	$78, %zmm12, %zmm12, %zmm14
	vaddpd	%zmm12, %zmm14, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm1
	vpshufd	$254, %zmm1, %zmm2
	vaddpd	%zmm1, %zmm2, %zmm0
	vaddsd	7160(%rsp), %xmm0, %xmm26
	vmovsd	%xmm26, 6800(%rsp)
	vshufi32x4	$78, %zmm11, %zmm11, %zmm14
	vaddpd	%zmm11, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm12
	vaddpd	%zmm11, %zmm12, %zmm13
	vpshufd	$254, %zmm13, %zmm1
	vaddpd	%zmm13, %zmm1, %zmm0
	vaddsd	7136(%rsp), %xmm0, %xmm17
	vmovsd	%xmm17, 6808(%rsp)
	vshufi32x4	$78, %zmm10, %zmm10, %zmm15
	vaddpd	%zmm10, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm12
	vaddpd	%zmm11, %zmm12, %zmm0
	vaddsd	7112(%rsp), %xmm0, %xmm25
	vmovsd	%xmm25, 6816(%rsp)
	vshufi32x4	$78, %zmm9, %zmm9, %zmm1
	vaddpd	%zmm9, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm15
	vpshufd	$254, %zmm15, %zmm10
	vaddpd	%zmm15, %zmm10, %zmm0
	vaddsd	7088(%rsp), %xmm0, %xmm23
	vmovsd	%xmm23, 6824(%rsp)
	vshufi32x4	$78, %zmm8, %zmm8, %zmm11
	vaddpd	%zmm8, %zmm11, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm12
	vaddpd	%zmm8, %zmm12, %zmm13
	vpshufd	$254, %zmm13, %zmm1
	vaddpd	%zmm13, %zmm1, %zmm0
	vaddsd	7064(%rsp), %xmm0, %xmm18
	vmovsd	%xmm18, 6832(%rsp)
	vshufi32x4	$78, %zmm7, %zmm7, %zmm2
	vaddpd	%zmm7, %zmm2, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm0
	vaddsd	7040(%rsp), %xmm0, %xmm31
	vmovsd	%xmm31, 6840(%rsp)
	vshufi32x4	$78, %zmm6, %zmm6, %zmm8
	vaddpd	%zmm6, %zmm8, %zmm6
	vshufi32x4	$77, %zmm6, %zmm6, %zmm12
	vaddpd	%zmm6, %zmm12, %zmm13
	vpshufd	$254, %zmm13, %zmm1
	vaddpd	%zmm13, %zmm1, %zmm0
	vaddsd	7016(%rsp), %xmm0, %xmm22
	vmovsd	%xmm22, 6848(%rsp)
	vshufi32x4	$78, %zmm5, %zmm5, %zmm2
	vaddpd	%zmm5, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm7
	vaddpd	%zmm5, %zmm7, %zmm15
	vpshufd	$254, %zmm15, %zmm10
	vaddpd	%zmm15, %zmm10, %zmm0
	vaddsd	6992(%rsp), %xmm0, %xmm21
	vmovsd	%xmm21, 6856(%rsp)
	vshufi32x4	$78, %zmm4, %zmm4, %zmm11
	vaddpd	%zmm4, %zmm11, %zmm4
	vshufi32x4	$77, %zmm4, %zmm4, %zmm8
	vaddpd	%zmm4, %zmm8, %zmm6
	vpshufd	$254, %zmm6, %zmm12
	vaddpd	%zmm6, %zmm12, %zmm0
	vaddsd	6968(%rsp), %xmm0, %xmm20
	vmovsd	%xmm20, 6864(%rsp)
	vshufi32x4	$78, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm9
	vaddpd	%zmm3, %zmm9, %zmm2
	vpshufd	$254, %zmm2, %zmm5
	vaddpd	%zmm2, %zmm5, %zmm0
	vaddsd	6944(%rsp), %xmm0, %xmm19
	vmovsd	%xmm19, 6872(%rsp)
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	6920(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 6880(%rsp)
	vmovapd	14856(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm1
	vpshufd	$254, %zmm1, %zmm3
	vaddpd	%zmm1, %zmm3, %zmm9
	vaddsd	7288(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 6888(%rsp)
	vmovapd	7496(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	6904(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 6896(%rsp)
	vmovapd	12744(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	6912(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 6904(%rsp)
	vmovapd	7432(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	6928(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 6912(%rsp)
	vmovapd	12808(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	6936(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 6920(%rsp)
	vmovapd	7368(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	6952(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 6928(%rsp)
	vmovapd	12936(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	6960(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 6936(%rsp)
	vmovapd	7304(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	6976(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 6944(%rsp)
	vmovapd	13000(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	6984(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 6952(%rsp)
	vmovapd	15304(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	7000(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 6960(%rsp)
	vmovapd	13064(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	7008(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 6968(%rsp)
	vmovapd	8584(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	7024(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 6976(%rsp)
	vmovapd	13128(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	7032(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 6984(%rsp)
	vmovapd	8520(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	7048(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 6992(%rsp)
	vmovapd	13192(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	7056(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 7000(%rsp)
	vmovapd	8456(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	7072(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 7008(%rsp)
	vmovapd	13256(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	7080(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 7016(%rsp)
	vmovapd	8392(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	7096(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 7024(%rsp)
	vmovapd	13320(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	7104(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 7032(%rsp)
	vmovapd	8328(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	7120(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 7040(%rsp)
	vmovapd	13384(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	7128(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 7048(%rsp)
	vmovapd	8264(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	7144(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 7056(%rsp)
	vmovapd	13512(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	7152(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 7064(%rsp)
	vmovapd	8200(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	7168(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 7072(%rsp)
	vmovapd	13576(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	7176(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 7080(%rsp)
	vmovapd	8136(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	7192(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 7088(%rsp)
	vmovapd	13640(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	7200(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 7096(%rsp)
	vmovapd	8072(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	7216(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 7104(%rsp)
	vmovapd	13768(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	7224(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 7112(%rsp)
	vmovapd	8008(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	7240(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 7120(%rsp)
	vmovapd	13896(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	7248(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 7128(%rsp)
	vmovapd	7944(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	7264(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 7136(%rsp)
	vmovapd	14024(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	7272(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 7144(%rsp)
	vmovapd	7880(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	952(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 7152(%rsp)
	vmovapd	11208(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	960(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 7160(%rsp)
	vmovapd	7816(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	968(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 7168(%rsp)
	vmovapd	11272(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	976(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 7176(%rsp)
	vmovapd	7752(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	984(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 7184(%rsp)
	vmovapd	11336(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	992(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 7192(%rsp)
	vmovapd	7688(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	1000(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 7200(%rsp)
	vmovapd	11400(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	1008(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 7208(%rsp)
	vmovapd	7624(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	1016(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 7216(%rsp)
	vmovapd	11528(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	1024(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 7224(%rsp)
	vmovapd	15240(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	1032(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 7232(%rsp)
	vmovapd	11592(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	1040(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 7240(%rsp)
	vmovapd	9480(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	1048(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 7248(%rsp)
	vmovapd	11656(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	1056(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 7256(%rsp)
	vmovapd	9416(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	1064(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 7264(%rsp)
	vmovapd	11784(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	1072(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 7272(%rsp)
	vmovapd	9352(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	1080(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 7280(%rsp)
	vmovapd	11848(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	1088(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 7288(%rsp)
	vmovapd	9288(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	1096(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 7296(%rsp)
	vmovapd	11912(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	1104(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 7304(%rsp)
	vmovapd	9224(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	1112(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 7368(%rsp)
	vmovapd	11976(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	1120(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 7432(%rsp)
	vmovapd	9160(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	1128(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 7496(%rsp)
	vmovapd	12104(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	1136(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 7560(%rsp)
	vmovapd	9096(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	1144(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 7624(%rsp)
	vmovapd	12232(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	1152(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 7688(%rsp)
	vmovapd	9032(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	6600(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 7752(%rsp)
	vmovapd	12360(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	6608(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 7816(%rsp)
	vmovapd	8968(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	6616(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 7880(%rsp)
	vmovapd	12488(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	6624(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 7944(%rsp)
	vmovapd	8904(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	6632(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 8008(%rsp)
	vmovapd	12616(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	6640(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 8072(%rsp)
	vmovapd	8840(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	696(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 8136(%rsp)
	vmovapd	9544(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	704(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 8200(%rsp)
	vmovapd	8776(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	712(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 8264(%rsp)
	vmovapd	9608(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	720(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 8328(%rsp)
	vmovapd	8712(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	728(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 8392(%rsp)
	vmovapd	9672(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	736(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 8456(%rsp)
	vmovapd	8648(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	744(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 8520(%rsp)
	vmovapd	9736(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	752(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 8584(%rsp)
	vmovapd	2824(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	760(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 8648(%rsp)
	vmovapd	9800(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	768(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 8712(%rsp)
	vmovapd	2696(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	776(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 8776(%rsp)
	vmovapd	9864(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	784(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 8840(%rsp)
	vmovapd	15176(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	792(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 8904(%rsp)
	vmovapd	9928(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	800(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 8968(%rsp)
	vmovapd	11080(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	808(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 9032(%rsp)
	vmovapd	9992(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	816(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 9096(%rsp)
	vmovapd	10952(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	824(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 9160(%rsp)
	vmovapd	10120(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	832(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 9224(%rsp)
	vmovapd	10824(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	840(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 9288(%rsp)
	vmovapd	10248(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	848(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 9352(%rsp)
	vmovapd	10696(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	856(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 9416(%rsp)
	vmovapd	10376(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	864(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 9480(%rsp)
	vmovapd	10568(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	872(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 9544(%rsp)
	vmovapd	10504(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	880(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 9608(%rsp)
	vmovapd	10440(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	888(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 9672(%rsp)
	vmovapd	10632(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	896(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 9736(%rsp)
	vmovapd	10312(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	904(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 9800(%rsp)
	vmovapd	10760(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	912(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 9864(%rsp)
	vmovapd	10184(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	920(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 9928(%rsp)
	vmovapd	10888(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	928(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 9992(%rsp)
	vmovapd	10056(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	936(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 10056(%rsp)
	vmovapd	11016(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	944(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 10120(%rsp)
	vmovapd	4168(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	440(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 10184(%rsp)
	vmovapd	2632(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	448(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 10248(%rsp)
	vmovapd	4104(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	456(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 10312(%rsp)
	vmovapd	2760(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	464(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 10376(%rsp)
	vmovapd	4040(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	472(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 10440(%rsp)
	vmovapd	2888(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	480(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 10504(%rsp)
	vmovapd	3976(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	488(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 10568(%rsp)
	vmovapd	2952(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	496(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 10632(%rsp)
	vmovapd	3912(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	504(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 10696(%rsp)
	vmovapd	3016(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	512(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 10760(%rsp)
	vmovapd	3848(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	520(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 10824(%rsp)
	vmovapd	3080(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	528(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 10888(%rsp)
	vmovapd	3784(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	536(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 10952(%rsp)
	vmovapd	3144(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	544(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 11016(%rsp)
	vmovapd	15112(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	552(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 11080(%rsp)
	vmovapd	3208(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	560(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 11144(%rsp)
	vmovapd	12680(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	568(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 11208(%rsp)
	vmovapd	3272(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	576(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 11272(%rsp)
	vmovapd	12552(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	584(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 11336(%rsp)
	vmovapd	3336(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	592(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 11400(%rsp)
	vmovapd	12424(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	600(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 11464(%rsp)
	vmovapd	3400(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	608(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 11528(%rsp)
	vmovapd	12296(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	616(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 11592(%rsp)
	vmovapd	3464(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	624(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 11656(%rsp)
	vmovapd	12168(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	632(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 11720(%rsp)
	vmovapd	3528(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	640(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 11784(%rsp)
	vmovapd	12040(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	648(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 11848(%rsp)
	vmovapd	3592(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	656(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 11912(%rsp)
	vmovapd	4808(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	664(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 11976(%rsp)
	vmovapd	3656(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	672(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 12040(%rsp)
	vmovapd	4744(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	680(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 12104(%rsp)
	vmovapd	3720(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	688(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 12168(%rsp)
	vmovapd	4680(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	184(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 12232(%rsp)
	vmovapd	1608(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	192(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 12296(%rsp)
	vmovapd	4616(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	200(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 12360(%rsp)
	vmovapd	1672(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	208(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 12424(%rsp)
	vmovapd	4552(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	216(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 12488(%rsp)
	vmovapd	1736(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	224(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 12552(%rsp)
	vmovapd	4488(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	232(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 12616(%rsp)
	vmovapd	1800(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	240(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 12680(%rsp)
	vmovapd	4424(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	248(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 12744(%rsp)
	vmovapd	1864(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	256(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 12808(%rsp)
	vmovapd	4360(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	264(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 12872(%rsp)
	vmovapd	1928(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	272(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 12936(%rsp)
	vmovapd	4296(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	280(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 13000(%rsp)
	vmovapd	1992(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	288(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 13064(%rsp)
	vmovapd	4232(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	296(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 13128(%rsp)
	vmovapd	2056(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	304(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 13192(%rsp)
	vmovapd	15048(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	312(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 13256(%rsp)
	vmovapd	2120(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	320(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 13320(%rsp)
	vmovapd	14088(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	328(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 13384(%rsp)
	vmovapd	2184(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	336(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 13448(%rsp)
	vmovapd	13960(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	344(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 13512(%rsp)
	vmovapd	2248(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	352(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 13576(%rsp)
	vmovapd	13832(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	360(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 13640(%rsp)
	vmovapd	2312(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	368(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 13704(%rsp)
	vmovapd	5640(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	376(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 13768(%rsp)
	vmovapd	2376(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	384(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 13832(%rsp)
	vmovapd	5576(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	392(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 13896(%rsp)
	vmovapd	2440(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	400(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 13960(%rsp)
	vmovapd	5512(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	408(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 14024(%rsp)
	vmovapd	2504(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	416(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 14088(%rsp)
	vmovapd	5448(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	424(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 14152(%rsp)
	vmovapd	2568(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	432(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 14216(%rsp)
	vmovapd	5384(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	-72(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 14280(%rsp)
	vmovapd	1160(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	-64(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 14344(%rsp)
	vmovapd	5320(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	-56(%rsp), %xmm5, %xmm20
	vmovsd	%xmm20, 14472(%rsp)
	vmovapd	1224(%rsp), %zmm19
	vshufi32x4	$78, %zmm19, %zmm19, %zmm0
	vaddpd	%zmm19, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	-48(%rsp), %xmm11, %xmm29
	vmovsd	%xmm29, 14536(%rsp)
	vmovapd	5256(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm4
	vaddpd	%zmm28, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	-40(%rsp), %xmm3, %xmm27
	vmovsd	%xmm27, 14600(%rsp)
	vmovapd	1288(%rsp), %zmm16
	vshufi32x4	$78, %zmm16, %zmm16, %zmm1
	vaddpd	%zmm16, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	-32(%rsp), %xmm7, %xmm17
	vmovsd	%xmm17, 14664(%rsp)
	vmovapd	5192(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm15
	vaddpd	%zmm25, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	-24(%rsp), %xmm8, %xmm18
	vmovsd	%xmm18, 14728(%rsp)
	vmovapd	5768(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm6
	vaddpd	%zmm31, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	-16(%rsp), %xmm9, %xmm21
	vmovsd	%xmm21, 15240(%rsp)
	vmovapd	5128(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm2
	vaddpd	%zmm20, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	-8(%rsp), %xmm10, %xmm30
	vmovsd	%xmm30, 15112(%rsp)
	vmovapd	5704(%rsp), %zmm29
	vshufi32x4	$78, %zmm29, %zmm29, %zmm14
	vaddpd	%zmm29, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	(%rsp), %xmm12, %xmm24
	vmovsd	%xmm24, 15368(%rsp)
	vmovapd	5064(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	8(%rsp), %xmm5, %xmm26
	vmovsd	%xmm26, 15048(%rsp)
	vmovapd	14984(%rsp), %zmm17
	vshufi32x4	$78, %zmm17, %zmm17, %zmm0
	vaddpd	%zmm17, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	16(%rsp), %xmm11, %xmm23
	vmovsd	%xmm23, 15304(%rsp)
	vmovapd	5000(%rsp), %zmm18
	vshufi32x4	$78, %zmm18, %zmm18, %zmm4
	vaddpd	%zmm18, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	24(%rsp), %xmm3, %xmm22
	vmovsd	%xmm22, 14984(%rsp)
	vmovapd	14920(%rsp), %zmm21
	vshufi32x4	$78, %zmm21, %zmm21, %zmm1
	vaddpd	%zmm21, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	32(%rsp), %xmm7, %xmm19
	vmovsd	%xmm19, 14792(%rsp)
	vmovapd	4936(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm15
	vaddpd	%zmm30, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	40(%rsp), %xmm8, %xmm28
	vmovsd	%xmm28, 14856(%rsp)
	vmovapd	6280(%rsp), %zmm24
	vshufi32x4	$78, %zmm24, %zmm24, %zmm6
	vaddpd	%zmm24, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	48(%rsp), %xmm9, %xmm16
	vmovsd	%xmm16, 14920(%rsp)
	vmovapd	4872(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm2
	vaddpd	%zmm26, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	56(%rsp), %xmm10, %xmm25
	vmovsd	%xmm25, 15176(%rsp)
	vmovapd	14408(%rsp), %zmm23
	vshufi32x4	$78, %zmm23, %zmm23, %zmm14
	vaddpd	%zmm23, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	64(%rsp), %xmm12, %xmm31
	vmovsd	%xmm31, 14408(%rsp)
	vmovapd	6536(%rsp), %zmm22
	vshufi32x4	$78, %zmm22, %zmm22, %zmm13
	vaddpd	%zmm22, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	72(%rsp), %xmm5, %xmm16
	vmovapd	6408(%rsp), %zmm20
	vshufi32x4	$78, %zmm20, %zmm20, %zmm0
	vaddpd	%zmm20, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	80(%rsp), %xmm11, %xmm17
	vmovapd	6216(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm4
	vaddpd	%zmm30, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	88(%rsp), %xmm3, %xmm18
	vmovapd	6344(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm1
	vaddpd	%zmm28, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	96(%rsp), %xmm7, %xmm20
	vmovapd	6152(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm15
	vaddpd	%zmm27, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	104(%rsp), %xmm8, %xmm21
	vmovapd	6472(%rsp), %zmm25
	vshufi32x4	$78, %zmm25, %zmm25, %zmm6
	vaddpd	%zmm25, %zmm6, %zmm12
	vshufi32x4	$77, %zmm12, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vpshufd	$254, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vaddsd	112(%rsp), %xmm9, %xmm19
	vmovapd	6088(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm2
	vaddpd	%zmm31, %zmm2, %zmm5
	vshufi32x4	$77, %zmm5, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vpshufd	$254, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vaddsd	120(%rsp), %xmm10, %xmm23
	vmovapd	1352(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm14
	vaddpd	%zmm30, %zmm14, %zmm11
	vshufi32x4	$77, %zmm11, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vpshufd	$254, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vaddsd	128(%rsp), %xmm12, %xmm24
	vmovapd	6024(%rsp), %zmm27
	vshufi32x4	$78, %zmm27, %zmm27, %zmm13
	vaddpd	%zmm27, %zmm13, %zmm3
	vshufi32x4	$77, %zmm3, %zmm3, %zmm1
	vaddpd	%zmm3, %zmm1, %zmm9
	vpshufd	$254, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vaddsd	136(%rsp), %xmm5, %xmm25
	vmovapd	1416(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm0
	vaddpd	%zmm26, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	144(%rsp), %xmm11, %xmm22
	vmovapd	5960(%rsp), %zmm30
	vshufi32x4	$78, %zmm30, %zmm30, %zmm4
	vaddpd	%zmm30, %zmm4, %zmm8
	vshufi32x4	$77, %zmm8, %zmm8, %zmm6
	vaddpd	%zmm8, %zmm6, %zmm12
	vpshufd	$254, %zmm12, %zmm13
	vaddpd	%zmm12, %zmm13, %zmm3
	vaddsd	152(%rsp), %xmm3, %xmm27
	vmovapd	1480(%rsp), %zmm28
	vshufi32x4	$78, %zmm28, %zmm28, %zmm1
	vaddpd	%zmm28, %zmm1, %zmm9
	vshufi32x4	$77, %zmm9, %zmm9, %zmm2
	vaddpd	%zmm9, %zmm2, %zmm5
	vpshufd	$254, %zmm5, %zmm0
	vaddpd	%zmm5, %zmm0, %zmm7
	vaddsd	160(%rsp), %xmm7, %xmm28
	vmovapd	5896(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm15
	vaddpd	%zmm31, %zmm15, %zmm10
	vshufi32x4	$77, %zmm10, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vpshufd	$254, %zmm11, %zmm4
	vaddpd	%zmm11, %zmm4, %zmm8
	vaddsd	168(%rsp), %xmm8, %xmm29
	vmovapd	1544(%rsp), %zmm26
	vshufi32x4	$78, %zmm26, %zmm26, %zmm12
	vaddpd	%zmm26, %zmm12, %zmm13
	vshufi32x4	$77, %zmm13, %zmm13, %zmm3
	vaddpd	%zmm13, %zmm3, %zmm1
	vpshufd	$254, %zmm1, %zmm9
	vaddpd	%zmm1, %zmm9, %zmm2
	vaddsd	176(%rsp), %xmm2, %xmm26
	vmovapd	5832(%rsp), %zmm31
	vshufi32x4	$78, %zmm31, %zmm31, %zmm0
	vaddpd	%zmm31, %zmm0, %zmm7
	vshufi32x4	$77, %zmm7, %zmm7, %zmm15
	vaddpd	%zmm7, %zmm15, %zmm10
	vpshufd	$254, %zmm10, %zmm14
	vaddpd	%zmm10, %zmm14, %zmm11
	vaddsd	-80(%rsp), %xmm11, %xmm30
	leaq	3200(%rsi), %r8
	leaq	4096(%rsi), %rsi
	vmovapd	%zmm20, %zmm8
	vmovapd	%zmm21, %zmm20
	vmovapd	%zmm18, %zmm4
	vmovapd	%zmm23, %zmm18
	vmovsd	%xmm24, 6536(%rsp)
	vmovapd	%zmm27, %zmm6
	vmovapd	%zmm29, %zmm27
	vmovapd	%zmm25, %zmm3
	vmovapd	%zmm30, %zmm25
	vmovapd	%zmm3, %zmm31
	vmovapd	%zmm22, %zmm30
	vmovapd	%zmm6, %zmm29
	vmovapd	%zmm16, %zmm24
	vmovapd	%zmm17, %zmm23
	vmovapd	%zmm4, %zmm22
	vmovapd	%zmm8, %zmm21
	.p2align 4,,10
	.p2align 3
.L6:
	vmovsd	(%rdx), %xmm0
	vmovsd	(%r8), %xmm16
	vfmadd231sd	%xmm0, %xmm16, %xmm25
	vmovsd	8(%r8), %xmm15
	vfmadd231sd	%xmm0, %xmm15, %xmm26
	vmovsd	16(%r8), %xmm14
	vfmadd231sd	%xmm0, %xmm14, %xmm27
	vmovsd	24(%r8), %xmm13
	vfmadd231sd	%xmm0, %xmm13, %xmm28
	vmovsd	32(%r8), %xmm12
	vfmadd231sd	%xmm0, %xmm12, %xmm29
	vmovsd	40(%r8), %xmm11
	vfmadd231sd	%xmm0, %xmm11, %xmm30
	vmovsd	48(%r8), %xmm10
	vfmadd231sd	%xmm0, %xmm10, %xmm31
	vmovsd	56(%r8), %xmm9
	vmovsd	6536(%rsp), %xmm1
	vfmadd231sd	%xmm0, %xmm9, %xmm1
	vmovsd	%xmm1, 6536(%rsp)
	vmovsd	64(%r8), %xmm8
	vfmadd231sd	%xmm0, %xmm8, %xmm18
	vmovsd	72(%r8), %xmm7
	vfmadd231sd	%xmm0, %xmm7, %xmm19
	vmovsd	80(%r8), %xmm6
	vfmadd231sd	%xmm0, %xmm6, %xmm20
	vmovsd	88(%r8), %xmm5
	vfmadd231sd	%xmm0, %xmm5, %xmm21
	vmovsd	96(%r8), %xmm4
	vfmadd231sd	%xmm0, %xmm4, %xmm22
	vmovsd	104(%r8), %xmm3
	vfmadd231sd	%xmm0, %xmm3, %xmm23
	vmovsd	112(%r8), %xmm2
	vfmadd231sd	%xmm0, %xmm2, %xmm24
	vmovsd	120(%r8), %xmm1
	vfmadd213sd	14408(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 14408(%rsp)
	vmovsd	256(%rdx), %xmm0
	vmovsd	15176(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 15176(%rsp)
	vmovsd	14920(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 14920(%rsp)
	vmovsd	14856(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 14856(%rsp)
	vmovsd	14792(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 14792(%rsp)
	vmovsd	14984(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 14984(%rsp)
	vmovsd	15304(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 15304(%rsp)
	vmovsd	15048(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 15048(%rsp)
	vmovsd	15368(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 15368(%rsp)
	vmovsd	15112(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 15112(%rsp)
	vmovsd	15240(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 15240(%rsp)
	vmovsd	14728(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 14728(%rsp)
	vmovsd	14664(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 14664(%rsp)
	vmovsd	14600(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 14600(%rsp)
	vmovsd	14536(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 14536(%rsp)
	vmovsd	14472(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 14472(%rsp)
	vfmadd213sd	14344(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 14344(%rsp)
	vmovsd	512(%rdx), %xmm0
	vmovsd	14280(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 14280(%rsp)
	vmovsd	14216(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 14216(%rsp)
	vmovsd	14152(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 14152(%rsp)
	vmovsd	14088(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 14088(%rsp)
	vmovsd	14024(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 14024(%rsp)
	vmovsd	13960(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 13960(%rsp)
	vmovsd	13896(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 13896(%rsp)
	vmovsd	13832(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 13832(%rsp)
	vmovsd	13768(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 13768(%rsp)
	vmovsd	13704(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 13704(%rsp)
	vmovsd	13640(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 13640(%rsp)
	vmovsd	13576(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 13576(%rsp)
	vmovsd	13512(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 13512(%rsp)
	vmovsd	13448(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 13448(%rsp)
	vmovsd	13384(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 13384(%rsp)
	vfmadd213sd	13320(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 13320(%rsp)
	vmovsd	768(%rdx), %xmm0
	vmovsd	13256(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 13256(%rsp)
	vmovsd	13192(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 13192(%rsp)
	vmovsd	13128(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 13128(%rsp)
	vmovsd	13064(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 13064(%rsp)
	vmovsd	13000(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 13000(%rsp)
	vmovsd	12936(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 12936(%rsp)
	vmovsd	12872(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 12872(%rsp)
	vmovsd	12808(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 12808(%rsp)
	vmovsd	12744(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 12744(%rsp)
	vmovsd	12680(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 12680(%rsp)
	vmovsd	12616(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 12616(%rsp)
	vmovsd	12552(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 12552(%rsp)
	vmovsd	12488(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 12488(%rsp)
	vmovsd	12424(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 12424(%rsp)
	vmovsd	12360(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 12360(%rsp)
	vfmadd213sd	12296(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 12296(%rsp)
	vmovsd	1024(%rdx), %xmm0
	vmovsd	12232(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 12232(%rsp)
	vmovsd	12168(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 12168(%rsp)
	vmovsd	12104(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 12104(%rsp)
	vmovsd	12040(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 12040(%rsp)
	vmovsd	11976(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 11976(%rsp)
	vmovsd	11912(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 11912(%rsp)
	vmovsd	11848(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 11848(%rsp)
	vmovsd	11784(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 11784(%rsp)
	vmovsd	11720(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 11720(%rsp)
	vmovsd	11656(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 11656(%rsp)
	vmovsd	11592(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 11592(%rsp)
	vmovsd	11528(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 11528(%rsp)
	vmovsd	11464(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 11464(%rsp)
	vmovsd	11400(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 11400(%rsp)
	vmovsd	11336(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 11336(%rsp)
	vfmadd213sd	11272(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 11272(%rsp)
	vmovsd	1280(%rdx), %xmm0
	vmovsd	11208(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 11208(%rsp)
	vmovsd	11144(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 11144(%rsp)
	vmovsd	11080(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 11080(%rsp)
	vmovsd	11016(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 11016(%rsp)
	vmovsd	10952(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 10952(%rsp)
	vmovsd	10888(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 10888(%rsp)
	vmovsd	10824(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 10824(%rsp)
	vmovsd	10760(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 10760(%rsp)
	vmovsd	10696(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 10696(%rsp)
	vmovsd	10632(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 10632(%rsp)
	vmovsd	10568(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 10568(%rsp)
	vmovsd	10504(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 10504(%rsp)
	vmovsd	10440(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 10440(%rsp)
	vmovsd	10376(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 10376(%rsp)
	vmovsd	10312(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 10312(%rsp)
	vfmadd213sd	10248(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 10248(%rsp)
	vmovsd	1536(%rdx), %xmm0
	vmovsd	10184(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 10184(%rsp)
	vmovsd	10120(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 10120(%rsp)
	vmovsd	10056(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 10056(%rsp)
	vmovsd	9992(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 9992(%rsp)
	vmovsd	9928(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 9928(%rsp)
	vmovsd	9864(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 9864(%rsp)
	vmovsd	9800(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 9800(%rsp)
	vmovsd	9736(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 9736(%rsp)
	vmovsd	9672(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 9672(%rsp)
	vmovsd	9608(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 9608(%rsp)
	vmovsd	9544(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 9544(%rsp)
	vmovsd	9480(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 9480(%rsp)
	vmovsd	9416(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 9416(%rsp)
	vmovsd	9352(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 9352(%rsp)
	vmovsd	9288(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 9288(%rsp)
	vfmadd213sd	9224(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 9224(%rsp)
	vmovsd	1792(%rdx), %xmm0
	vmovsd	9160(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 9160(%rsp)
	vmovsd	9096(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 9096(%rsp)
	vmovsd	9032(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 9032(%rsp)
	vmovsd	8968(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 8968(%rsp)
	vmovsd	8904(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 8904(%rsp)
	vmovsd	8840(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 8840(%rsp)
	vmovsd	8776(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 8776(%rsp)
	vmovsd	8712(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 8712(%rsp)
	vmovsd	8648(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 8648(%rsp)
	vmovsd	8584(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 8584(%rsp)
	vmovsd	8520(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 8520(%rsp)
	vmovsd	8456(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 8456(%rsp)
	vmovsd	8392(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 8392(%rsp)
	vmovsd	8328(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 8328(%rsp)
	vmovsd	8264(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 8264(%rsp)
	vfmadd213sd	8200(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 8200(%rsp)
	vmovsd	2048(%rdx), %xmm0
	vmovsd	8136(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 8136(%rsp)
	vmovsd	8072(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 8072(%rsp)
	vmovsd	8008(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 8008(%rsp)
	vmovsd	7944(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 7944(%rsp)
	vmovsd	7880(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 7880(%rsp)
	vmovsd	7816(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 7816(%rsp)
	vmovsd	7752(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 7752(%rsp)
	vmovsd	7688(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 7688(%rsp)
	vmovsd	7624(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 7624(%rsp)
	vmovsd	7560(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 7560(%rsp)
	vmovsd	7496(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 7496(%rsp)
	vmovsd	7432(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 7432(%rsp)
	vmovsd	7368(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 7368(%rsp)
	vmovsd	7304(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 7304(%rsp)
	vmovsd	7296(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 7296(%rsp)
	vfmadd213sd	7288(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 7288(%rsp)
	vmovsd	2304(%rdx), %xmm0
	vmovsd	7280(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 7280(%rsp)
	vmovsd	7272(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 7272(%rsp)
	vmovsd	7264(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 7264(%rsp)
	vmovsd	7256(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 7256(%rsp)
	vmovsd	7248(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 7248(%rsp)
	vmovsd	7240(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 7240(%rsp)
	vmovsd	7232(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 7232(%rsp)
	vmovsd	7224(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 7224(%rsp)
	vmovsd	7216(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 7216(%rsp)
	vmovsd	7208(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 7208(%rsp)
	vmovsd	7200(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 7200(%rsp)
	vmovsd	7192(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 7192(%rsp)
	vmovsd	7184(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 7184(%rsp)
	vmovsd	7176(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 7176(%rsp)
	vmovsd	7168(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 7168(%rsp)
	vfmadd213sd	7160(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 7160(%rsp)
	vmovsd	2560(%rdx), %xmm0
	vmovsd	7152(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 7152(%rsp)
	vmovsd	7144(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 7144(%rsp)
	vmovsd	7136(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 7136(%rsp)
	vmovsd	7128(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 7128(%rsp)
	vmovsd	7120(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 7120(%rsp)
	vmovsd	7112(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 7112(%rsp)
	vmovsd	7104(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 7104(%rsp)
	vmovsd	7096(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 7096(%rsp)
	vmovsd	7088(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 7088(%rsp)
	vmovsd	7080(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 7080(%rsp)
	vmovsd	7072(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 7072(%rsp)
	vmovsd	7064(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 7064(%rsp)
	vmovsd	7056(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 7056(%rsp)
	vmovsd	7048(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 7048(%rsp)
	vmovsd	7040(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 7040(%rsp)
	vfmadd213sd	7032(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 7032(%rsp)
	vmovsd	2816(%rdx), %xmm0
	vmovsd	7024(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 7024(%rsp)
	vmovsd	7016(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 7016(%rsp)
	vmovsd	7008(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 7008(%rsp)
	vmovsd	7000(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 7000(%rsp)
	vmovsd	6992(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 6992(%rsp)
	vmovsd	6984(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 6984(%rsp)
	vmovsd	6976(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 6976(%rsp)
	vmovsd	6968(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 6968(%rsp)
	vmovsd	6960(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 6960(%rsp)
	vmovsd	6952(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 6952(%rsp)
	vmovsd	6944(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 6944(%rsp)
	vmovsd	6936(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 6936(%rsp)
	vmovsd	6928(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 6928(%rsp)
	vmovsd	6920(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 6920(%rsp)
	vmovsd	6912(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 6912(%rsp)
	vfmadd213sd	6904(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 6904(%rsp)
	vmovsd	3072(%rdx), %xmm0
	vmovsd	6896(%rsp), %xmm17
	vfmadd231sd	%xmm16, %xmm0, %xmm17
	vmovsd	%xmm17, 6896(%rsp)
	vmovsd	6888(%rsp), %xmm17
	vfmadd231sd	%xmm15, %xmm0, %xmm17
	vmovsd	%xmm17, 6888(%rsp)
	vmovsd	6880(%rsp), %xmm17
	vfmadd231sd	%xmm14, %xmm0, %xmm17
	vmovsd	%xmm17, 6880(%rsp)
	vmovsd	6872(%rsp), %xmm17
	vfmadd231sd	%xmm13, %xmm0, %xmm17
	vmovsd	%xmm17, 6872(%rsp)
	vmovsd	6864(%rsp), %xmm17
	vfmadd231sd	%xmm12, %xmm0, %xmm17
	vmovsd	%xmm17, 6864(%rsp)
	vmovsd	6856(%rsp), %xmm17
	vfmadd231sd	%xmm11, %xmm0, %xmm17
	vmovsd	%xmm17, 6856(%rsp)
	vmovsd	6848(%rsp), %xmm17
	vfmadd231sd	%xmm10, %xmm0, %xmm17
	vmovsd	%xmm17, 6848(%rsp)
	vmovsd	6840(%rsp), %xmm17
	vfmadd231sd	%xmm9, %xmm0, %xmm17
	vmovsd	%xmm17, 6840(%rsp)
	vmovsd	6832(%rsp), %xmm17
	vfmadd231sd	%xmm8, %xmm0, %xmm17
	vmovsd	%xmm17, 6832(%rsp)
	vmovsd	6824(%rsp), %xmm17
	vfmadd231sd	%xmm7, %xmm0, %xmm17
	vmovsd	%xmm17, 6824(%rsp)
	vmovsd	6816(%rsp), %xmm17
	vfmadd231sd	%xmm6, %xmm0, %xmm17
	vmovsd	%xmm17, 6816(%rsp)
	vmovsd	6808(%rsp), %xmm17
	vfmadd231sd	%xmm5, %xmm0, %xmm17
	vmovsd	%xmm17, 6808(%rsp)
	vmovsd	6800(%rsp), %xmm17
	vfmadd231sd	%xmm4, %xmm0, %xmm17
	vmovsd	%xmm17, 6800(%rsp)
	vmovsd	6792(%rsp), %xmm17
	vfmadd231sd	%xmm3, %xmm0, %xmm17
	vmovsd	%xmm17, 6792(%rsp)
	vmovsd	6784(%rsp), %xmm17
	vfmadd231sd	%xmm2, %xmm0, %xmm17
	vmovsd	%xmm17, 6784(%rsp)
	vfmadd213sd	6776(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 6776(%rsp)
	vmovsd	3328(%rdx), %xmm0
	vfmadd213sd	6768(%rsp), %xmm0, %xmm16
	vmovsd	%xmm16, 6768(%rsp)
	vfmadd213sd	6760(%rsp), %xmm0, %xmm15
	vmovsd	%xmm15, 6760(%rsp)
	vfmadd213sd	6752(%rsp), %xmm0, %xmm14
	vmovsd	%xmm14, 6752(%rsp)
	vfmadd213sd	6744(%rsp), %xmm0, %xmm13
	vmovsd	%xmm13, 6744(%rsp)
	vfmadd213sd	6736(%rsp), %xmm0, %xmm12
	vmovsd	%xmm12, 6736(%rsp)
	vfmadd213sd	6728(%rsp), %xmm0, %xmm11
	vmovsd	%xmm11, 6728(%rsp)
	vfmadd213sd	6720(%rsp), %xmm0, %xmm10
	vmovsd	%xmm10, 6720(%rsp)
	vfmadd213sd	6712(%rsp), %xmm0, %xmm9
	vmovsd	%xmm9, 6712(%rsp)
	vfmadd213sd	6704(%rsp), %xmm0, %xmm8
	vmovsd	%xmm8, 6704(%rsp)
	vfmadd213sd	6696(%rsp), %xmm0, %xmm7
	vmovsd	%xmm7, 6696(%rsp)
	vfmadd213sd	6688(%rsp), %xmm0, %xmm6
	vmovsd	%xmm6, 6688(%rsp)
	vfmadd213sd	6680(%rsp), %xmm0, %xmm5
	vmovsd	%xmm5, 6680(%rsp)
	vfmadd213sd	6672(%rsp), %xmm0, %xmm4
	vmovsd	%xmm4, 6672(%rsp)
	vfmadd213sd	6664(%rsp), %xmm0, %xmm3
	vmovsd	%xmm3, 6664(%rsp)
	vfmadd213sd	6656(%rsp), %xmm0, %xmm2
	vmovsd	%xmm2, 6656(%rsp)
	vfmadd213sd	6648(%rsp), %xmm1, %xmm0
	vmovsd	%xmm0, 6648(%rsp)
	addq	$8, %rdx
	subq	$-128, %r8
	cmpq	%r8, %rsi
	jne	.L6
	vmovapd	%zmm21, %zmm2
	vmovapd	%zmm20, %zmm21
	vmovapd	%zmm22, %zmm4
	vmovapd	%zmm19, %zmm22
	vmovapd	%zmm23, %zmm3
	vmovapd	%zmm18, %zmm23
	vmovapd	%zmm24, %zmm17
	vmovsd	6536(%rsp), %xmm24
	vmovapd	%zmm29, %zmm6
	vmovapd	%zmm27, %zmm29
	vmovapd	%zmm30, %zmm5
	vmovapd	%zmm26, %zmm30
	vmovapd	%zmm31, %zmm7
	vmovapd	%zmm25, %zmm31
	vmovsd	%xmm31, (%rdi)
	vmovsd	%xmm30, 8(%rdi)
	vmovsd	%xmm29, 16(%rdi)
	vmovsd	%xmm28, 24(%rdi)
	vmovsd	%xmm6, 32(%rdi)
	vmovsd	%xmm5, 40(%rdi)
	vmovsd	%xmm7, 48(%rdi)
	vmovsd	%xmm24, 56(%rdi)
	vmovsd	%xmm23, 64(%rdi)
	vmovsd	%xmm22, 72(%rdi)
	vmovsd	%xmm21, 80(%rdi)
	vmovsd	%xmm2, 88(%rdi)
	vmovsd	%xmm4, 96(%rdi)
	vmovsd	%xmm3, 104(%rdi)
	vmovsd	%xmm17, 112(%rdi)
	vmovsd	14408(%rsp), %xmm28
	vmovsd	%xmm28, 120(%rdi)
	vmovsd	15176(%rsp), %xmm21
	vmovsd	%xmm21, 128(%rdi)
	vmovsd	14920(%rsp), %xmm22
	vmovsd	%xmm22, 136(%rdi)
	vmovsd	14856(%rsp), %xmm23
	vmovsd	%xmm23, 144(%rdi)
	vmovsd	14792(%rsp), %xmm17
	vmovsd	%xmm17, 152(%rdi)
	vmovsd	14984(%rsp), %xmm24
	vmovsd	%xmm24, 160(%rdi)
	vmovsd	15304(%rsp), %xmm29
	vmovsd	%xmm29, 168(%rdi)
	vmovsd	15048(%rsp), %xmm30
	vmovsd	%xmm30, 176(%rdi)
	vmovsd	15368(%rsp), %xmm31
	vmovsd	%xmm31, 184(%rdi)
	vmovsd	15112(%rsp), %xmm25
	vmovsd	%xmm25, 192(%rdi)
	vmovsd	15240(%rsp), %xmm26
	vmovsd	%xmm26, 200(%rdi)
	vmovsd	14728(%rsp), %xmm27
	vmovsd	%xmm27, 208(%rdi)
	vmovsd	14664(%rsp), %xmm18
	vmovsd	%xmm18, 216(%rdi)
	vmovsd	14600(%rsp), %xmm19
	vmovsd	%xmm19, 224(%rdi)
	vmovsd	14536(%rsp), %xmm20
	vmovsd	%xmm20, 232(%rdi)
	vmovsd	14472(%rsp), %xmm28
	vmovsd	%xmm28, 240(%rdi)
	vmovsd	14344(%rsp), %xmm21
	vmovsd	%xmm21, 248(%rdi)
	vmovsd	14280(%rsp), %xmm22
	vmovsd	%xmm22, 256(%rdi)
	vmovsd	14216(%rsp), %xmm23
	vmovsd	%xmm23, 264(%rdi)
	vmovsd	14152(%rsp), %xmm17
	vmovsd	%xmm17, 272(%rdi)
	vmovsd	14088(%rsp), %xmm24
	vmovsd	%xmm24, 280(%rdi)
	vmovsd	14024(%rsp), %xmm29
	vmovsd	%xmm29, 288(%rdi)
	vmovsd	13960(%rsp), %xmm30
	vmovsd	%xmm30, 296(%rdi)
	vmovsd	13896(%rsp), %xmm31
	vmovsd	%xmm31, 304(%rdi)
	vmovsd	13832(%rsp), %xmm25
	vmovsd	%xmm25, 312(%rdi)
	vmovsd	13768(%rsp), %xmm26
	vmovsd	%xmm26, 320(%rdi)
	vmovsd	13704(%rsp), %xmm27
	vmovsd	%xmm27, 328(%rdi)
	vmovsd	13640(%rsp), %xmm18
	vmovsd	%xmm18, 336(%rdi)
	vmovsd	13576(%rsp), %xmm19
	vmovsd	%xmm19, 344(%rdi)
	vmovsd	13512(%rsp), %xmm20
	vmovsd	%xmm20, 352(%rdi)
	vmovsd	13448(%rsp), %xmm28
	vmovsd	%xmm28, 360(%rdi)
	vmovsd	13384(%rsp), %xmm21
	vmovsd	%xmm21, 368(%rdi)
	vmovsd	13320(%rsp), %xmm22
	vmovsd	%xmm22, 376(%rdi)
	vmovsd	13256(%rsp), %xmm23
	vmovsd	%xmm23, 384(%rdi)
	vmovsd	13192(%rsp), %xmm17
	vmovsd	%xmm17, 392(%rdi)
	vmovsd	13128(%rsp), %xmm24
	vmovsd	%xmm24, 400(%rdi)
	vmovsd	13064(%rsp), %xmm29
	vmovsd	%xmm29, 408(%rdi)
	vmovsd	13000(%rsp), %xmm30
	vmovsd	%xmm30, 416(%rdi)
	vmovsd	12936(%rsp), %xmm31
	vmovsd	%xmm31, 424(%rdi)
	vmovsd	12872(%rsp), %xmm25
	vmovsd	%xmm25, 432(%rdi)
	vmovsd	12808(%rsp), %xmm26
	vmovsd	%xmm26, 440(%rdi)
	vmovsd	12744(%rsp), %xmm27
	vmovsd	%xmm27, 448(%rdi)
	vmovsd	12680(%rsp), %xmm18
	vmovsd	%xmm18, 456(%rdi)
	vmovsd	12616(%rsp), %xmm19
	vmovsd	%xmm19, 464(%rdi)
	vmovsd	12552(%rsp), %xmm20
	vmovsd	%xmm20, 472(%rdi)
	vmovsd	12488(%rsp), %xmm28
	vmovsd	%xmm28, 480(%rdi)
	vmovsd	12424(%rsp), %xmm21
	vmovsd	%xmm21, 488(%rdi)
	vmovsd	12360(%rsp), %xmm22
	vmovsd	%xmm22, 496(%rdi)
	vmovsd	12296(%rsp), %xmm23
	vmovsd	%xmm23, 504(%rdi)
	vmovsd	12232(%rsp), %xmm17
	vmovsd	%xmm17, 512(%rdi)
	vmovsd	12168(%rsp), %xmm24
	vmovsd	%xmm24, 520(%rdi)
	vmovsd	12104(%rsp), %xmm29
	vmovsd	%xmm29, 528(%rdi)
	vmovsd	12040(%rsp), %xmm30
	vmovsd	%xmm30, 536(%rdi)
	vmovsd	11976(%rsp), %xmm31
	vmovsd	%xmm31, 544(%rdi)
	vmovsd	11912(%rsp), %xmm25
	vmovsd	%xmm25, 552(%rdi)
	vmovsd	11848(%rsp), %xmm26
	vmovsd	%xmm26, 560(%rdi)
	vmovsd	11784(%rsp), %xmm27
	vmovsd	%xmm27, 568(%rdi)
	vmovsd	11720(%rsp), %xmm18
	vmovsd	%xmm18, 576(%rdi)
	vmovsd	11656(%rsp), %xmm19
	vmovsd	%xmm19, 584(%rdi)
	vmovsd	11592(%rsp), %xmm20
	vmovsd	%xmm20, 592(%rdi)
	vmovsd	11528(%rsp), %xmm28
	vmovsd	%xmm28, 600(%rdi)
	vmovsd	11464(%rsp), %xmm21
	vmovsd	%xmm21, 608(%rdi)
	vmovsd	11400(%rsp), %xmm22
	vmovsd	%xmm22, 616(%rdi)
	vmovsd	11336(%rsp), %xmm23
	vmovsd	%xmm23, 624(%rdi)
	vmovsd	11272(%rsp), %xmm17
	vmovsd	%xmm17, 632(%rdi)
	vmovsd	11208(%rsp), %xmm24
	vmovsd	%xmm24, 640(%rdi)
	vmovsd	11144(%rsp), %xmm29
	vmovsd	%xmm29, 648(%rdi)
	vmovsd	11080(%rsp), %xmm30
	vmovsd	%xmm30, 656(%rdi)
	vmovsd	11016(%rsp), %xmm31
	vmovsd	%xmm31, 664(%rdi)
	vmovsd	10952(%rsp), %xmm25
	vmovsd	%xmm25, 672(%rdi)
	vmovsd	10888(%rsp), %xmm26
	vmovsd	%xmm26, 680(%rdi)
	vmovsd	10824(%rsp), %xmm27
	vmovsd	%xmm27, 688(%rdi)
	vmovsd	10760(%rsp), %xmm18
	vmovsd	%xmm18, 696(%rdi)
	vmovsd	10696(%rsp), %xmm19
	vmovsd	%xmm19, 704(%rdi)
	vmovsd	10632(%rsp), %xmm20
	vmovsd	%xmm20, 712(%rdi)
	vmovsd	10568(%rsp), %xmm28
	vmovsd	%xmm28, 720(%rdi)
	vmovsd	10504(%rsp), %xmm21
	vmovsd	%xmm21, 728(%rdi)
	vmovsd	10440(%rsp), %xmm22
	vmovsd	%xmm22, 736(%rdi)
	vmovsd	10376(%rsp), %xmm23
	vmovsd	%xmm23, 744(%rdi)
	vmovsd	10312(%rsp), %xmm17
	vmovsd	%xmm17, 752(%rdi)
	vmovsd	10248(%rsp), %xmm24
	vmovsd	%xmm24, 760(%rdi)
	vmovsd	10184(%rsp), %xmm29
	vmovsd	%xmm29, 768(%rdi)
	vmovsd	10120(%rsp), %xmm30
	vmovsd	%xmm30, 776(%rdi)
	vmovsd	10056(%rsp), %xmm31
	vmovsd	%xmm31, 784(%rdi)
	vmovsd	9992(%rsp), %xmm25
	vmovsd	%xmm25, 792(%rdi)
	vmovsd	9928(%rsp), %xmm26
	vmovsd	%xmm26, 800(%rdi)
	vmovsd	9864(%rsp), %xmm27
	vmovsd	%xmm27, 808(%rdi)
	vmovsd	9800(%rsp), %xmm18
	vmovsd	%xmm18, 816(%rdi)
	vmovsd	9736(%rsp), %xmm19
	vmovsd	%xmm19, 824(%rdi)
	vmovsd	9672(%rsp), %xmm20
	vmovsd	%xmm20, 832(%rdi)
	vmovsd	9608(%rsp), %xmm28
	vmovsd	%xmm28, 840(%rdi)
	vmovsd	9544(%rsp), %xmm21
	vmovsd	%xmm21, 848(%rdi)
	vmovsd	9480(%rsp), %xmm22
	vmovsd	%xmm22, 856(%rdi)
	vmovsd	9416(%rsp), %xmm23
	vmovsd	%xmm23, 864(%rdi)
	vmovsd	9352(%rsp), %xmm17
	vmovsd	%xmm17, 872(%rdi)
	vmovsd	9288(%rsp), %xmm24
	vmovsd	%xmm24, 880(%rdi)
	vmovsd	9224(%rsp), %xmm29
	vmovsd	%xmm29, 888(%rdi)
	vmovsd	9160(%rsp), %xmm30
	vmovsd	%xmm30, 896(%rdi)
	vmovsd	9096(%rsp), %xmm31
	vmovsd	%xmm31, 904(%rdi)
	vmovsd	9032(%rsp), %xmm25
	vmovsd	%xmm25, 912(%rdi)
	vmovsd	8968(%rsp), %xmm26
	vmovsd	%xmm26, 920(%rdi)
	vmovsd	8904(%rsp), %xmm27
	vmovsd	%xmm27, 928(%rdi)
	vmovsd	8840(%rsp), %xmm18
	vmovsd	%xmm18, 936(%rdi)
	vmovsd	8776(%rsp), %xmm19
	vmovsd	%xmm19, 944(%rdi)
	vmovsd	8712(%rsp), %xmm20
	vmovsd	%xmm20, 952(%rdi)
	vmovsd	8648(%rsp), %xmm28
	vmovsd	%xmm28, 960(%rdi)
	vmovsd	8584(%rsp), %xmm21
	vmovsd	%xmm21, 968(%rdi)
	vmovsd	8520(%rsp), %xmm22
	vmovsd	%xmm22, 976(%rdi)
	vmovsd	8456(%rsp), %xmm23
	vmovsd	%xmm23, 984(%rdi)
	vmovsd	8392(%rsp), %xmm17
	vmovsd	%xmm17, 992(%rdi)
	vmovsd	8328(%rsp), %xmm24
	vmovsd	%xmm24, 1000(%rdi)
	vmovsd	8264(%rsp), %xmm29
	vmovsd	%xmm29, 1008(%rdi)
	vmovsd	8200(%rsp), %xmm30
	vmovsd	%xmm30, 1016(%rdi)
	vmovsd	8136(%rsp), %xmm31
	vmovsd	%xmm31, 1024(%rdi)
	vmovsd	8072(%rsp), %xmm25
	vmovsd	%xmm25, 1032(%rdi)
	vmovsd	8008(%rsp), %xmm26
	vmovsd	%xmm26, 1040(%rdi)
	vmovsd	7944(%rsp), %xmm27
	vmovsd	%xmm27, 1048(%rdi)
	vmovsd	7880(%rsp), %xmm18
	vmovsd	%xmm18, 1056(%rdi)
	vmovsd	7816(%rsp), %xmm19
	vmovsd	%xmm19, 1064(%rdi)
	vmovsd	7752(%rsp), %xmm20
	vmovsd	%xmm20, 1072(%rdi)
	vmovsd	7688(%rsp), %xmm28
	vmovsd	%xmm28, 1080(%rdi)
	vmovsd	7624(%rsp), %xmm21
	vmovsd	%xmm21, 1088(%rdi)
	vmovsd	7560(%rsp), %xmm22
	vmovsd	%xmm22, 1096(%rdi)
	vmovsd	7496(%rsp), %xmm23
	vmovsd	%xmm23, 1104(%rdi)
	vmovsd	7432(%rsp), %xmm17
	vmovsd	%xmm17, 1112(%rdi)
	vmovsd	7368(%rsp), %xmm24
	vmovsd	%xmm24, 1120(%rdi)
	vmovsd	7304(%rsp), %xmm29
	vmovsd	%xmm29, 1128(%rdi)
	vmovsd	7296(%rsp), %xmm30
	vmovsd	%xmm30, 1136(%rdi)
	vmovsd	7288(%rsp), %xmm31
	vmovsd	%xmm31, 1144(%rdi)
	vmovsd	7280(%rsp), %xmm25
	vmovsd	%xmm25, 1152(%rdi)
	vmovsd	7272(%rsp), %xmm26
	vmovsd	%xmm26, 1160(%rdi)
	vmovsd	7264(%rsp), %xmm27
	vmovsd	%xmm27, 1168(%rdi)
	vmovsd	7256(%rsp), %xmm18
	vmovsd	%xmm18, 1176(%rdi)
	vmovsd	7248(%rsp), %xmm19
	vmovsd	%xmm19, 1184(%rdi)
	vmovsd	7240(%rsp), %xmm20
	vmovsd	%xmm20, 1192(%rdi)
	vmovsd	7232(%rsp), %xmm28
	vmovsd	%xmm28, 1200(%rdi)
	vmovsd	7224(%rsp), %xmm21
	vmovsd	%xmm21, 1208(%rdi)
	vmovsd	7216(%rsp), %xmm22
	vmovsd	%xmm22, 1216(%rdi)
	vmovsd	7208(%rsp), %xmm23
	vmovsd	%xmm23, 1224(%rdi)
	vmovsd	7200(%rsp), %xmm17
	vmovsd	%xmm17, 1232(%rdi)
	vmovsd	7192(%rsp), %xmm24
	vmovsd	%xmm24, 1240(%rdi)
	vmovsd	7184(%rsp), %xmm29
	vmovsd	%xmm29, 1248(%rdi)
	vmovsd	7176(%rsp), %xmm30
	vmovsd	%xmm30, 1256(%rdi)
	vmovsd	7168(%rsp), %xmm31
	vmovsd	%xmm31, 1264(%rdi)
	vmovsd	7160(%rsp), %xmm25
	vmovsd	%xmm25, 1272(%rdi)
	vmovsd	7152(%rsp), %xmm26
	vmovsd	%xmm26, 1280(%rdi)
	vmovsd	7144(%rsp), %xmm27
	vmovsd	%xmm27, 1288(%rdi)
	vmovsd	7136(%rsp), %xmm18
	vmovsd	%xmm18, 1296(%rdi)
	vmovsd	7128(%rsp), %xmm19
	vmovsd	%xmm19, 1304(%rdi)
	vmovsd	7120(%rsp), %xmm20
	vmovsd	%xmm20, 1312(%rdi)
	vmovsd	7112(%rsp), %xmm28
	vmovsd	%xmm28, 1320(%rdi)
	vmovsd	7104(%rsp), %xmm21
	vmovsd	%xmm21, 1328(%rdi)
	vmovsd	7096(%rsp), %xmm22
	vmovsd	%xmm22, 1336(%rdi)
	vmovsd	7088(%rsp), %xmm23
	vmovsd	%xmm23, 1344(%rdi)
	vmovsd	7080(%rsp), %xmm17
	vmovsd	%xmm17, 1352(%rdi)
	vmovsd	7072(%rsp), %xmm24
	vmovsd	%xmm24, 1360(%rdi)
	vmovsd	7064(%rsp), %xmm29
	vmovsd	%xmm29, 1368(%rdi)
	vmovsd	7056(%rsp), %xmm30
	vmovsd	%xmm30, 1376(%rdi)
	vmovsd	7048(%rsp), %xmm31
	vmovsd	%xmm31, 1384(%rdi)
	vmovsd	7040(%rsp), %xmm25
	vmovsd	%xmm25, 1392(%rdi)
	vmovsd	7032(%rsp), %xmm26
	vmovsd	%xmm26, 1400(%rdi)
	vmovsd	7024(%rsp), %xmm27
	vmovsd	%xmm27, 1408(%rdi)
	vmovsd	7016(%rsp), %xmm18
	vmovsd	%xmm18, 1416(%rdi)
	vmovsd	7008(%rsp), %xmm19
	vmovsd	%xmm19, 1424(%rdi)
	vmovsd	7000(%rsp), %xmm20
	vmovsd	%xmm20, 1432(%rdi)
	vmovsd	6992(%rsp), %xmm28
	vmovsd	%xmm28, 1440(%rdi)
	vmovsd	6984(%rsp), %xmm21
	vmovsd	%xmm21, 1448(%rdi)
	vmovsd	6976(%rsp), %xmm22
	vmovsd	%xmm22, 1456(%rdi)
	vmovsd	6968(%rsp), %xmm23
	vmovsd	%xmm23, 1464(%rdi)
	vmovsd	6960(%rsp), %xmm17
	vmovsd	%xmm17, 1472(%rdi)
	vmovsd	6952(%rsp), %xmm24
	vmovsd	%xmm24, 1480(%rdi)
	vmovsd	6944(%rsp), %xmm29
	vmovsd	%xmm29, 1488(%rdi)
	vmovsd	6936(%rsp), %xmm30
	vmovsd	%xmm30, 1496(%rdi)
	vmovsd	6928(%rsp), %xmm31
	vmovsd	%xmm31, 1504(%rdi)
	vmovsd	6920(%rsp), %xmm25
	vmovsd	%xmm25, 1512(%rdi)
	vmovsd	6912(%rsp), %xmm26
	vmovsd	%xmm26, 1520(%rdi)
	vmovsd	6904(%rsp), %xmm27
	vmovsd	%xmm27, 1528(%rdi)
	vmovsd	6896(%rsp), %xmm18
	vmovsd	%xmm18, 1536(%rdi)
	vmovsd	6888(%rsp), %xmm19
	vmovsd	%xmm19, 1544(%rdi)
	vmovsd	6880(%rsp), %xmm20
	vmovsd	%xmm20, 1552(%rdi)
	vmovsd	6872(%rsp), %xmm28
	vmovsd	%xmm28, 1560(%rdi)
	vmovsd	6864(%rsp), %xmm21
	vmovsd	%xmm21, 1568(%rdi)
	vmovsd	6856(%rsp), %xmm22
	vmovsd	%xmm22, 1576(%rdi)
	vmovsd	6848(%rsp), %xmm23
	vmovsd	%xmm23, 1584(%rdi)
	vmovsd	6840(%rsp), %xmm17
	vmovsd	%xmm17, 1592(%rdi)
	vmovsd	6832(%rsp), %xmm24
	vmovsd	%xmm24, 1600(%rdi)
	vmovsd	6824(%rsp), %xmm29
	vmovsd	%xmm29, 1608(%rdi)
	vmovsd	6816(%rsp), %xmm30
	vmovsd	%xmm30, 1616(%rdi)
	vmovsd	6808(%rsp), %xmm31
	vmovsd	%xmm31, 1624(%rdi)
	vmovsd	6800(%rsp), %xmm25
	vmovsd	%xmm25, 1632(%rdi)
	vmovsd	6792(%rsp), %xmm26
	vmovsd	%xmm26, 1640(%rdi)
	vmovsd	6784(%rsp), %xmm27
	vmovsd	%xmm27, 1648(%rdi)
	vmovsd	6776(%rsp), %xmm18
	vmovsd	%xmm18, 1656(%rdi)
	vmovsd	%xmm16, 1664(%rdi)
	vmovsd	%xmm15, 1672(%rdi)
	vmovsd	%xmm14, 1680(%rdi)
	vmovsd	%xmm13, 1688(%rdi)
	vmovsd	%xmm12, 1696(%rdi)
	vmovsd	%xmm11, 1704(%rdi)
	vmovsd	%xmm10, 1712(%rdi)
	vmovsd	%xmm9, 1720(%rdi)
	vmovsd	%xmm8, 1728(%rdi)
	vmovsd	6696(%rsp), %xmm29
	vmovsd	%xmm29, 1736(%rdi)
	vmovsd	6688(%rsp), %xmm30
	vmovsd	%xmm30, 1744(%rdi)
	vmovsd	6680(%rsp), %xmm31
	vmovsd	%xmm31, 1752(%rdi)
	vmovsd	6672(%rsp), %xmm25
	vmovsd	%xmm25, 1760(%rdi)
	vmovsd	6664(%rsp), %xmm26
	vmovsd	%xmm26, 1768(%rdi)
	vmovsd	6656(%rsp), %xmm27
	vmovsd	%xmm27, 1776(%rdi)
	vmovsd	%xmm0, 1784(%rdi)
	vzeroupper
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	__kernels_MOD_mulkernel_loop32, .-__kernels_MOD_mulkernel_loop32
	.section	.rodata
	.align 64
.LC0:
	.quad	0
	.quad	2
	.quad	4
	.quad	6
	.quad	8
	.quad	10
	.quad	12
	.quad	14
	.align 64
.LC1:
	.quad	1
	.quad	3
	.quad	5
	.quad	7
	.quad	9
	.quad	11
	.quad	13
	.quad	15
	.ident	"GCC: (GNU) 8.1.1 20180712 (Red Hat 8.1.1-5)"
	.section	.note.GNU-stack,"",@progbits
