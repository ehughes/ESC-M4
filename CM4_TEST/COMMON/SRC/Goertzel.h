#ifndef GOERTZEL_H
#define GOERTZEL_H

typedef struct
{
	float Cos_w;
	float Sin_w;
	uint32_t BlockSize;
	float SampleRate;

} Goertzel_f32_t;

#ifndef M_PI
	#define M_PI 3.14159265358979323846f
#endif

void InitGoertzel_f32(Goertzel_f32_t * G,float Frequency,float SampleRate, uint32_t BlockSize);

float ProcessGoertzel_f32_Power(Goertzel_f32_t * G, float *x);

#endif
