shader_type sky;

uniform vec3 sky_color : source_color = vec3(0.2, 0.4, 0.8);
uniform vec3 horizon_color : source_color = vec3(0.7, 0.8, 0.9);

void sky() {
	// AI generated code here
    // EYEDIR.y goes from -1.0 (bottom) to 1.0 (top)
    // We map it to a 0.0 to 1.0 range for the gradient mix
    float gradient = clamp(EYEDIR.y, 0.0, 1.0);
    
    // Smooth out the transition near the horizon
    float final_mix = pow(gradient, 0.5);
    
    COLOR = mix(horizon_color, sky_color, final_mix);
}