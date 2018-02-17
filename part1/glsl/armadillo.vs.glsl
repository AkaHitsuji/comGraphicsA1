// Create shared variable for the vertex and fragment shaders
varying vec3 interpolatedNormal;
varying vec3 surfaceToLight;
uniform vec3 lightPosition; //pass lightPosition into armadillo vs

/* HINT: YOU WILL NEED MORE SHARED/UNIFORM VARIABLES TO COLOR ACCORDING TO COS(ANGLE) */

void main() {
    // Set shared variable to vertex normal
    interpolatedNormal = normal;
    surfaceToLight = lightPosition - position;

    // Multiply each vertex by the model-view matrix and the projection matrix to get final vertex position
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position, 1.0);
}

//get lightPosition, minus position of armadillo vertex = distance vector of lightsource and armadillo vertex
//dot resultant vector with normal, to get costheta, which is equal to brightness
