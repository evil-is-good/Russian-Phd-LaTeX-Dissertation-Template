input fiziko.mp;
input hatching;
prologues:=3;

filenametemplate "two_period.mps";

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex

              % def parallel (expr pm, pn)(expr pm_)(expr yn_) = 
              %     begingroup
              %     z1 = pn;
              %     20;
              % endgroup;
              % enddef;
beginfig(2);

% % H = 2cm;
% z1 = (0,0)*cm;
% z2 = (10cm,-0.25*H);
% z3 = (10cm,H-0.25*H);
% z4 = (0,H);
% z5 = (15cm,0.5*H);
% z6 = (15cm,0.5*H+H);
% z7 = z4+(z6-z3);
%
% path d[];
% d1 = z1--z2--z3--z4--cycle;
% d2 = z2--z5--z6--z3--cycle;
%
% % d3 = z3{dir 45}..(z2 shifted (H/2, 7*H/8))..z2{left}--cycle;
% % % d3 := d3 slanted 2;
% % draw d3;
% % show angle((5cm,(3/4)*H));
%
% d4 = fullcircle;
% d4 := d4 xscaled (0.7*H) yscaled H rotated -angle((5cm,(3/4)*H));
% d4 := d4 scaled 1.02;
% d4 := d4 shifted z3;
%
% % picture incl;
% % incl := sphere.c(1);
%
% % draw halfcircle scaled H rotated -90;
%
% picture layer_w;
% layer_w := image (
% pickup pencircle scaled 2;
% draw d1;
% % draw d2;
% );
%
% picture layer_b;
% layer_b := image (
% hatchfill d1 withcolor white withcolor (35, 0.25cm, -0.5);
% pickup pencircle scaled 2;
% draw d1;
% % draw d2;
% );
%
% picture inclusion;
% inclusion := image (
% hatchfill d4 withcolor white withcolor (-35, 0.25cm, -0.5);
% % draw incl;
% pickup pencircle scaled 2;
% draw d4;
% );
%
%
%
% picture face;
% face := image (
% draw inclusion shifted (0, -H/2-H);
% draw inclusion shifted (0, -H/2-3*H);
%
% draw inclusion shifted ((0.5[z3,z6]) - z3) shifted (0, -H/2-H);
% draw inclusion shifted ((0.5[z3,z6]) - z3) shifted (0, -H/2-3*H);
%
% draw inclusion shifted (z6 - z3) shifted (0, -H/2-H);
% draw inclusion shifted (z6 - z3) shifted (0, -H/2-3*H);
%
% d20 = (z2 shifted (0,-4*H))--(z5 shifted (0,-4*H))--z6--z3--cycle;
% clip currentpicture to d20;
% );
% % draw face;
% picture fiber;
% fiber := image (
%         pickup pencircle scaled 0.5;
%         draw d4 shifted ((0.5[z3,z6]) - z3) shifted (0, -1.5*H) shifted -(z3-z4) dashed evenly scaled 2;
%         draw ((0.5[z4,z7]) - (0,1.0*H))--((0.5[z3,z6]) - (0,1.0*H)) dashed evenly scaled 2;
%         draw ((0.5[z4,z7]) - (0,2.0*H))--((0.5[z3,z6]) - (0,2.0*H)) dashed evenly scaled 2;
%         );
%
% draw layer_w;
% draw fiber;
% draw layer_b shifted (0,-H);
% draw layer_w shifted (0,-2*H);
% draw fiber   shifted (0,-2*H);
% draw layer_b shifted (0,-3*H);
% draw layer_w shifted (0,-4*H);
%
% draw face;
%
% pickup pencircle scaled 2;
% draw z6--z7;
% draw z4--z7;
% draw d20;

W = 10cm;
H = 10cm;
z0 = (0,0);
z1 = (W, 0);
z3 = (0, H);
z4 = z3 + (2.5cm, 1.5cm);
z2 = z3+(z1-z0);
z5 = z1+(z4-z3);
H_l = length((z3-z0)/5);
z7 = z1+(0, H_l);
z6 = z7+(z4-z3);
z8 = z2+(z4-z3);

path d[];
d1 = z0--z1--z2--z3--cycle;
d2 = z3--z2--z8--z4--cycle;
d3 = z1--z5--z6--z7--cycle;

d4 = fullcircle scaled H_l shifted (0,1.5*H_l);

pickup pencircle scaled 2;
draw d1;
draw d2;

picture layer_b;
layer_b := image (
pickup pencircle scaled 1;
hatchfill d3 withcolor white withcolor (-35, 0.25cm, -0.5);
pickup pencircle scaled 2;
draw d3;
);


draw d3 withpen pencircle scaled 2;
draw layer_b shifted (0,H_l); 
draw d3 withpen pencircle scaled 2 shifted (0,2*H_l); 
draw layer_b shifted (0,3*H_l); 
draw d3 withpen pencircle scaled 2 shifted (0,4*H_l); 

% draw d4;

picture inclusion;
inclusion := image (
pickup pencircle scaled 1;
hatchfill d4 withcolor white withcolor (35, 0.25cm, -0.5);
pickup pencircle scaled 2;
draw d4;
);

picture fiber;
fiber := image(
z101 = 0.5[z0,z1] + (0, H_l);
z102 = 0.5[z0,z1] + (-0.5*H_l, 1.5*H_l);
pickup pencircle scaled 0.5;
draw z101--(z101 + (z6-z7)) dashed evenly scaled 2;
draw z102--(z102 + (z6-z7)) dashed evenly scaled 2;
y101 := y101 + H_l;
x102 := x102 + H_l;
draw z101--(z101 + (z6-z7)) dashed evenly scaled 2;
draw z102--(z102 + (z6-z7)) dashed evenly scaled 2;
draw d4 shifted (0.5[z0, z1]) shifted (z6-z7) dashed evenly scaled 2;
);

picture face;
face := image (
draw inclusion;
draw fiber;
draw inclusion shifted (0.5[z0,z1] - z0);
draw inclusion shifted (z1 - z0);
draw inclusion shifted (0, 2*H_l);
draw fiber shifted (0, 2*H_l);
draw inclusion shifted (0.5[z0,z1] - z0) shifted (0, 2*H_l);
draw inclusion shifted (z1 - z0) shifted (0, 2*H_l);
clip currentpicture to d1;
);

draw face;


ahlength := 0.5cm;
pair px,py,pz;
px = z1 + (0.25*z1);
py = (z3+(0, 2cm));
pz = (z0-((z4-z3)/2));
pickup pencircle scaled 2;
drawarrow z1--px;
drawarrow z3--py;
drawarrow z0--pz;
label.bot(btex $X$ etex scaled 3.0, (px + (0, -0.3cm)));
label.lft(btex $Y$ etex scaled 3.0, (py));
label.rt(btex $Z$ etex scaled 3.0, (pz + (0.3cm, 0)));


endfig;

end.
