input fiziko.mp;
input hatching;
prologues:=3;

filenametemplate "three_period.mps";

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex


beginfig(3);

% H = 2cm;
% z0 = (0,0)*cm;
% z1 = (10cm,-0.25*H);
% z2 = (15cm,0.5*H);
% z3 = z0+(z2-z1);
% z4 = (0,5*H);
% z5 = z1 + (0,5*H);
% z6 = z2 + (0,5*H);
% z7 = z3 + (0,5*H);

R = 1.5cm;
H = 4cm;
z0 = (-0.85,-1.1)*2cm;
z2 = (1.5, 0.0)*2cm;
z3 = (0,0);
z1 = z3 + (z2-z3) + (z0-z3);
z4 = z0 + (0,H);
z5 = z1 + (0,H);
z6 = z2 + (0,H);
z7 = z3 + (0,H);

path d[];

d1 = z0--z1--z5--z4--cycle;
d11= z0--z1;
d12= z1--z5;
d13= z5--z4;
d14= z4--z0;
d2 = z1--z2--z6--z5--cycle;
d21= z1--z2;
d22= z2--z6;
d23= z6--z5;
d24= z5--z1;
d3 = z4--z7--z6;
d31= z4--z7;
d32= z7--z6;
d4 = z0--z3;
d5 = z2--z3;
d6 = z7--z3;

incl_c = 0.0;

% picture incl;
% incl := image (
% pickup pencircle scaled 1;
%         fill fullcircle scaled 2cm withcolor white;
%         draw sphere.l(2cm, -60) withgreyscale incl_c;
%         );
%
%
% picture cube;
% cube := image (
% pickup pencircle scaled 1;
% draw d4 dashed evenly scaled 2; 
% draw d5 dashed evenly scaled 2; 
% draw d6 dashed evenly scaled 2;
%
% draw incl shifted (1/2[z3,z0]) shifted (1/2[z3,z2]) shifted (1/2[z3,z7]);
%
% draw d1 dashed evenly scaled 2; 
% draw d2 dashed evenly scaled 2; 
% draw d3 dashed evenly scaled 2;
% );

% def cube = image (draw d4 dashed evenly scaled 2;); enddef;
% draw cube;
def cube(expr c) = image (
pickup pencircle scaled 1;
draw d4 dashed evenly scaled 3; 
draw d5 dashed evenly scaled 3; 
draw d6 dashed evenly scaled 3;

fill fullcircle scaled R shifted (1/2[z3,z0]) shifted (1/2[z3,z2]) shifted (1/2[z3,z7]) withcolor white;
draw sphere.l(R, -60) shifted (1/2[z3,z0]) shifted (1/2[z3,z2]) shifted (1/2[z3,z7]) withgreyscale c;

% draw d1 dashed evenly scaled 3; 
draw d11 dashed evenly scaled 3; 
draw d12 dashed evenly scaled 3; 
draw d13 dashed evenly scaled 3; 
draw d14 dashed evenly scaled 3; 
% draw d2 dashed evenly scaled 3; 
draw d21 dashed evenly scaled 3; 
draw d22 dashed evenly scaled 3; 
draw d23 dashed evenly scaled 3; 
draw d24 dashed evenly scaled 3; 
% draw d3 dashed evenly scaled 3;
draw d31 dashed evenly scaled 3; 
draw d32 dashed evenly scaled 3; 
)
enddef;

% def foo(expr a) = (a+1); enddef;
%     show foo(1);
% cube(1.0);
% picture ca;
% ca := cube(1.0);
%            def cude(expr c) = image (draw (0,0)--(2cm,0)) enddef;%d4 dashed evenly scaled 2;) enddef;
% draw cube(0.0);
% draw image ( draw d4 dashed evenly scaled 2;);

picture line;
line := image (
draw cube(0.5);
draw cube(0.2) shifted z0;
draw cube(0.0) shifted (z0*2);
);


picture floo;
floo := image (
draw line;
draw line shifted z2;
draw line shifted (z2*2);
);

draw floo;
draw floo shifted z7;
% draw floo shifted (z7*2);


z10 = 3*z0;
z12 = 3*z2;
z11 = z3 + (z12-z3) + (z10-z3);
z14 = z10 + (0,2*H);
z15 = z11 + (0,2*H);
z16 = z12 + (0,2*H);
z13 = z3 + (0,2*H);
pickup pencircle scaled 3;
draw z10--z11;
draw z11--z12;
draw z10--z14;
draw z14--z13;
draw z14--z15;
draw z11--z15;
draw z15--z16;
draw z16--z13;
draw z12--z16;

% save arrowhead;
% vardef arrowhead(expr p) =
%     save A,u,a,b; pair A,u; path a,b;
%     A := point length(p)/2 of p;
%     u := unitvector(direction length(p)/2 of p);
%     a := A{-u}..(A - ahlength*u rotated 30);
%     b := A{-u}..(A - ahlength*u rotated -30);
%     (a & reverse(a) & b & reverse(b))--cycle;
% enddef;
ahlength := 0.5cm;
drawarrow z10--(3*z4);
drawarrow z10--(4*z0);
drawarrow z10--(z11 + (z2-z3));
% label.bot("X",(z11 + (z2-z3)));
label.bot(btex $X$ etex scaled 3.0, ((z11 + (z2-z3)) + (0,-0.3cm)));
label.lft(btex $Y$ etex scaled 3.0, (3*z4));
label.rt(btex $Z$ etex scaled 3.0, ((4*z0) + (0.3cm,0)));
% draw arrowhead z10--(3*z4) scaled 5;
% draw (3*z0)--(3*x4,2*y4)--(2*z7);
% % draw (3*z0)--((3*z0)+(3*

endfig;

end.
