#include "math.h"
#include "arm_math.h"


typedef struct
{
	float Cos_w;
	float Sin_w;
	uint32_t BlockSize;
	float SampleRate;

} Goertzel_f32_t;


void InitGoertzel_f32(Goertzel_f32_t * G,float Frequency,float SampleRate, uint32_t BlockSize)
{
	float w = 2.0f * (Frequency/SampleRate);

	G->Cos_w = cosf(w);
	G->Sin_w = -1 * sinf(w);
	G->SampleRate = SampleRate;
	G->BlockSize = BlockSize;
}


 float ProcessGoertzel_f32_Power(Goertzel_f32_t * G, float *x)
{
	float sn = 0;
	float sn_1 = 0;
	float sn_2 = 0;

	for(int n = 0;n < G->BlockSize; n++)
	{
		  sn = x[n] + 2*(G->Cos_w)*sn_1 - sn_2;

		  sn_2 = sn_1;
		  sn_1 = sn;
	}

	float Re = G->Cos_w * sn_1 - sn_2;
	float Im = G->Sin_w * sn_1;

	return Re*Re + Im*Im;
}
