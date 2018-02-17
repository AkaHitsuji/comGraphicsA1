uniform vec3 rainbowLightPosition;

void main() {
	gl_Position = projectionMatrix * modelViewMatrix * vec4(rainbowLightPosition + position, 1.0);
}
