/*
===============================================================================
 Name        : CM4_INSTRUCTIONS.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#ifdef __USE_CMSIS
#include "LPC43xx.h"
#endif
#include "stdlib.h"
#include "stdio.h"
#include "arm_math.h"

#include <cr_section_macros.h>



int main(void)
{
	q31_t a=2;
	q31_t b=1;
		q63_t c=0;

		a = rand();
		b= rand();
		c = 0xDEADBEEF00000000;

		c+= (q63_t)a*b;

		printf("C is %d",c);


    while(1)
    {
    }


    return 0 ;
}
