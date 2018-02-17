// The uniform variable is set up in the javascript code and the same for all vertices
uniform vec3 lightPosition;

void main() {
  gl_Position = projectionMatrix * modelViewMatrix * vec4(lightPosition + position, 1.0);
  //should do position*modelMatrix
}
