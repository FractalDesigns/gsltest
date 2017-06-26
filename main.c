#include <stdio.h>
#include <gsl/gsl_errno.h>
#include <gsl/gsl_fft_complex.h>
#include <gsl/gsl_complex_math.h>

double sqrt_gsl(double a) { 	
gsl_complex b = gsl_complex_sqrt_real(a);
  return b.dat[0];
	}

float sqrt_gsl_f32(float a ) {
gsl_complex b = gsl_complex_sqrt_real(a);
  return b.dat[0];

}



//int main (void){ printf(" sqrt de 9 : %e",sqrt_gsl(9));return 0;}
