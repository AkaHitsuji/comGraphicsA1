// Create shared variable. The value is given as the interpolation between normals computed in the vertex shader
varying vec3 interpolatedNormal;
varying vec3 surfaceToLight;

/* HINT: YOU WILL NEED MORE SHARED/UNIFORM VARIABLES TO COLOR ACCORDING TO COS(ANGLE) */

void main() {
  float brightness = dot(normalize(interpolatedNormal),normalize(surfaceToLight));
  if(length(surfaceToLight)<1.0)
    gl_FragColor = vec4(0,brightness,0,1);
  else
    gl_FragColor = vec4(brightness, brightness, brightness, 1.0);
}
