#version 150

#moj_import <utils.glsl>

in vec4 vertexColor;
in float isHorizon;

uniform vec4 ColorModulator;
uniform vec2 ScreenSize;

out vec4 fragColor;

uniform sampler2D Sampler0;

in vec2 texCoord0;
in vec3 vertexColor;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;



void main() {
    if (isHorizon > 0.5) {
        discardControl(gl_FragCoord.xy, ScreenSize.x);
    }
    vec4 color = vertexColor;
    fragColor = color * ColorModulator;
}
