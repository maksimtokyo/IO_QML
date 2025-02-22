#version 440

layout(location = 0) in vec2 coord;
layout(location = 0) out vec4 fragColor;
layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
    float radius;
    float sw;
    float sh;


};
layout(binding = 1) uniform sampler2D src;


void main() {

    float r = radius;
    float sqrt_value = 1.1968268412042980338198381798031 / r;
    float exp_value = -4.5 / r / r;

    float sum = 0.0;
    vec4 value = vec4(0.0);
    float x = 1.0;

    vec2 yu = vec2(sw, sh);

    while (x <= r)
    {
        float currentScale = exp(exp_value * x*x);
        sum += currentScale;
        vec2 dudv = yu*x;
        value += currentScale * (texture(src, coord - dudv) + texture(src, coord + dudv));
        x += 1.0;
    }

    float correction = 1.0/sqrt_value - 2.0*sum;
    value += texture(src, coord);
    fragColor = value * sqrt_value;
}




