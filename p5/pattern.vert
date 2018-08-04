#version 120

uniform float	Ds;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords
varying vec4 vVectex;

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency
uniform bool	bVertexShaderEnable;

void
main( )
{ 
	vST = gl_MultiTexCoord0.st;
	vVectex = gl_Vertex;
	vec3 vert = gl_Vertex.xyz;
	if(bVertexShaderEnable){
	vert.x = vert.x * Ds;
	vert.y = vert.y * Ds;
	}
	gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}



