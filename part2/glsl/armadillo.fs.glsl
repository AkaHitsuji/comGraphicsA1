// Create shared variable. The value is given as the interpolation between normals computed in the vertex shader
varying vec3 interpolatedNormal;
varying vec3 surfaceToLight;
varying vec3 surfaceToRainbow;

/* HINT: YOU WILL NEED MORE SHARED/UNIFORM VARIABLES TO COLOR ACCORDING TO COS(ANGLE) */

void main() {
  float brightness = dot(normalize(interpolatedNormal),normalize(surfaceToLight));
  float rainbowBrightness = dot(normalize(interpolatedNormal),normalize(surfaceToRainbow));

  if(length(surfaceToLight)<=1.0 && length(surfaceToRainbow)<=1.0)
    gl_FragColor = vec4(rainbowBrightness,brightness,0.0,1.0);
  else if(length(surfaceToLight)<1.0)
    gl_FragColor = vec4(0.0,brightness,0.0,1.0);
  else if(length(surfaceToRainbow)<1.0)
    gl_FragColor = vec4(rainbowBrightness,0.0,0.0,1.0);
  else
    gl_FragColor = vec4(brightness+rainbowBrightness, brightness+rainbowBrightness, brightness+rainbowBrightness, 1);

}
