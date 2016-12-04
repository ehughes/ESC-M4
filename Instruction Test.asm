#include "arm_math.h"
#include "stdio.h"
#include "stdlib.h"

int main()
{

	q63_t a=0;
	q31_t b=0;
	q31_t c=0;

	for(int i =0 ; i< 64 ; i++)
	{
		b = rand();
		c = rand();
		a+=(q63_t)b*c;
	}

	//Need this so the compiler Generates what we need!
	printf("%ll",a);

return 0;

}

-O0

1a0003e0 <main>:
1a0003e0:	b5b0      	push	{r4, r5, r7, lr}
1a0003e2:	b086      	sub	sp, #24
1a0003e4:	af00      	add	r7, sp, #0
1a0003e6:	f04f 0300 	mov.w	r3, #0
1a0003ea:	f04f 0400 	mov.w	r4, #0
1a0003ee:	e9c7 3404 	strd	r3, r4, [r7, #16]
1a0003f2:	2300      	movs	r3, #0
1a0003f4:	60bb      	str	r3, [r7, #8]
1a0003f6:	2300      	movs	r3, #0
1a0003f8:	607b      	str	r3, [r7, #4]
1a0003fa:	2300      	movs	r3, #0
1a0003fc:	60fb      	str	r3, [r7, #12]
1a0003fe:	e01f      	b.n	1a000440 <main+0x60>
1a000400:	f001 fc94 	bl	1a001d2c <rand>
1a000404:	60b8      	str	r0, [r7, #8]
1a000406:	f001 fc91 	bl	1a001d2c <rand>
1a00040a:	6078      	str	r0, [r7, #4]
1a00040c:	68bb      	ldr	r3, [r7, #8]
1a00040e:	4619      	mov	r1, r3
1a000410:	ea4f 72e1 	mov.w	r2, r1, asr #31
1a000414:	687b      	ldr	r3, [r7, #4]
1a000416:	ea4f 74e3 	mov.w	r4, r3, asr #31
1a00041a:	fb03 f502 	mul.w	r5, r3, r2
1a00041e:	fb01 f004 	mul.w	r0, r1, r4
1a000422:	4428      	add	r0, r5
1a000424:	fba1 3403 	umull	r3, r4, r1, r3
1a000428:	1902      	adds	r2, r0, r4
1a00042a:	4614      	mov	r4, r2
1a00042c:	e9d7 1204 	ldrd	r1, r2, [r7, #16]
1a000430:	185b      	adds	r3, r3, r1
1a000432:	eb44 0402 	adc.w	r4, r4, r2
1a000436:	e9c7 3404 	strd	r3, r4, [r7, #16]
1a00043a:	68fb      	ldr	r3, [r7, #12]
1a00043c:	3301      	adds	r3, #1
1a00043e:	60fb      	str	r3, [r7, #12]
1a000440:	68fb      	ldr	r3, [r7, #12]
1a000442:	2b3f      	cmp	r3, #63	; 0x3f
1a000444:	dddc      	ble.n	1a000400 <main+0x20>
1a000446:	e9d7 2304 	ldrd	r2, r3, [r7, #16]
1a00044a:	4804      	ldr	r0, [pc, #16]	; (1a00045c <main+0x7c>)
1a00044c:	f000 fd2e 	bl	1a000eac <printf>


-O3
1a0003fc <main>:
1a0003fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0003fe:	2440      	movs	r4, #64	; 0x40
1a000400:	2600      	movs	r6, #0
1a000402:	2700      	movs	r7, #0
1a000404:	f001 fc76 	bl	1a001cf4 <rand>
1a000408:	4605      	mov	r5, r0
1a00040a:	f001 fc73 	bl	1a001cf4 <rand>
1a00040e:	3c01      	subs	r4, #1
1a000410:	fbc0 6705 	smlal	r6, r7, r0, r5
1a000414:	d1f6      	bne.n	1a000404 <main+0x8>
1a000416:	4632      	mov	r2, r6
1a000418:	463b      	mov	r3, r7
1a00041a:	4802      	ldr	r0, [pc, #8]	; (1a000424 <main+0x28>)
1a00041c:	f000 fd2a 	bl	1a000e74 <printf>




