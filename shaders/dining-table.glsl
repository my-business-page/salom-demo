// ZAARA reusable GLSL fragment for cinematic dining ambience.
precision highp float;
uniform float uTime;
uniform vec2 uResolution;
float circle(vec2 p,float r){return smoothstep(r,r-.008,length(p));}
void main(){vec2 uv=gl_FragCoord.xy/uResolution;vec2 p=uv-.5;float vignette=smoothstep(.9,.15,length(p));float pulse=.5+.5*sin(uTime*.7);float halo=circle(p,.32)*.04*(.7+.3*pulse);vec3 gold=vec3(.86,.56,.18);gl_FragColor=vec4(gold,halo*vignette);}