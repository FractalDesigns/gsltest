use "path:."
use "lib:sqrt"
use "path:/usr/local/lib"
use "lib:gsl"
use "lib:gslcblas"

primitive Gsl 
	fun sqrt(x : F64) : F64 =>
		@sqrt_gsl[F64](x)
	
	fun sqrt_F32(x:F32) : F32 =>
		@sqrt_gsl_f32[F32](x)

actor Main 
	new create(env:Env) =>
		env.out.print("sqrt(9) = "+Gsl.sqrt(F64(9)).string())
	//didn't accept literal in function 
	let nine : F64 = 9		
	env.out.print("direct call to sqrt_gsl \n sqrt(9): " + @sqrt_gsl[F64](nine).string())
	 if Gsl.sqrt(9) < 9 then
		env.out.print("indeed sqrt(9) is less than 9")
	else 
		env.out.print("something is wrong with math") 
	end

	env.out.print("sqrt_F32(9) = "+Gsl.sqrt_F32(9).string())
