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
