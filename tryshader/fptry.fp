varying mediump vec4 var_position;
varying mediump vec2 var_texcoord0;
varying mediump vec4 var_local_position;

uniform lowp sampler2D texture_sampler;
uniform lowp vec4 tint;

void main()
{
	// Pre-multiply alpha since all runtime textures already are
	lowp vec4 tint_pm = vec4(tint.xyz * tint.w, tint.w);
	if(var_local_position.y >= -175.0 && var_local_position.y <= 175.0) {
		gl_FragColor = texture2D(texture_sampler, var_texcoord0.xy) * tint_pm;
	} else {
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
	}
}