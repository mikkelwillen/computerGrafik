#version 330 core

uniform vec3 AmbientLightColor;
uniform vec3 LightPosition;
uniform vec3 LightColor;

uniform vec3 EyePosition;

uniform vec3  AmbientColor;
uniform vec3  DiffuseColor;
uniform vec3  SpecularColor;
uniform float Shininess;

in vec3 WorldVertex;
in vec3 WorldNormal;

out vec4 FragColor;

void main() {
    vec3 color = vec3(0.0f, 0.0f, 0.0f);

    vec3 ambientColor = AmbientLightColor * AmbientColor;
    color += ambientColor;

    vec3 N = normalize(WorldNormal);
    vec3 L = normalize(LightPosition - WorldVertex);
    vec3 V = normalize(EyePosition - WorldVertex);
    vec3 R = normalize(2.0f * dot(N, L) * N - L);

    vec3 diffuseColor = vec3(0.0f, 0.0f, 0.0f);
    float LdotN = dot(L, N);
    if(LdotN > 0.0f) {
        diffuseColor = LightColor * DiffuseColor * LdotN;
    }
    color += diffuseColor;

    vec3 specularColor = vec3(0.0f, 0.0f, 0.0f);
    float RdotV = dot(R, V);
    if(RdotV > 0.0f) {
        specularColor = (LightColor * SpecularColor) * pow(RdotV, Shininess);
    }
    color += specularColor;

    FragColor = vec4(color, 1.0f);
}
