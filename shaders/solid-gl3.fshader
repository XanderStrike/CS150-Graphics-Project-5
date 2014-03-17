#version 130

uniform vec3 uColor;

out vec4 fragColor;

void main() {
  if ( gl_FrontFacing ) {  
    fragColor = vec4(uColor, 1.0);
  } else {
    fragColor = vec4(1.0, 1.0, 1.0, 1.0);
  }
}
