#version 130
uniform vec3 uLight, uLight2, uColor; 
 
in vec3 vNormal; // normal to surface
in vec3 vPosition; // position of point on surface
 
out vec4 fragColor;
 
void main() {
  vec3 toLight = uLight - vec3(vPosition);
  vec3 toLight2 = uLight2 - vec3(vPosition);
  vec3 toV = -normalize(vec3(vPosition));

  toLight = normalize(toLight);
  toLight2 = normalize(toLight2);

  vec3 h = normalize(toV + toLight);
  vec3 h2 = normalize(toV + toLight2);

  vec3 normal;
  if ( gl_FrontFacing ) {  
    normal = normalize(vNormal);
  } else {
    normal = normalize(vec3(-vNormal.x, -vNormal.y, -vNormal.z));
  }

  float specular = pow(max(0.0, dot(h, normal)), 64.0);
  specular += pow(max(0.0, dot(h2, normal)), 64.0);

  float diffuse = max(0.0, dot(normal, toLight));
  diffuse += max(0.0, dot(normal, toLight2));

  vec3 intensity =  vec3(0.1,0.1,0.1) + uColor * diffuse + vec3(0.6, 0.6, 0.6) * specular;
 
  fragColor = vec4(intensity.x, intensity.y, intensity.z, 1.0);
}
