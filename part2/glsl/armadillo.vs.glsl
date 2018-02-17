// Create shared variable for the vertex and fragment shaders
varying vec3 interpolatedNormal;
varying vec3 surfaceToLight;
varying vec3 surfaceToRainbow;
uniform vec3 lightPosition;
uniform vec3 rainbowLightPosition;

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;
    surfaceToLight = lightPosition - position;
    surfaceToRainbow = rainbowLightPosition - position;

    // Multiply each vertex by the model-view matrix and the projection matrix to get final vertex position
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}
