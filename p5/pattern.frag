#version 120

uniform float	Ds;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords
uniform bool	bFragmentShaderEnable;
varying vec4 vVectex;
uniform float uSize;



void
main( )
{
	vec3 myColor = vVectex.xyz;
	if(bFragmentShaderEnable)
	{
		if (vST.s+Ds+uSize/6. > Ds && vST.t-Ds+uSize/6.> Ds) 
		
	
		{
			myColor = vec3(1., 1., 0.);
		}	
	}
	gl_FragColor = vec4( myColor,  1. );

}
