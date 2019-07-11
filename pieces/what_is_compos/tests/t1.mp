input fiziko.mp;
input hatching;
prologues:=3;

filenametemplate "one_period.mps";

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
beginfig(1);
% path p;
% p = (0,0)*cm--(3,0)*cm;
% draw tube.t(p)(0.5cm);
% draw p;
% drawarrow (0,0)--(2,0)*cm;
% path rec;
% rec = (0,0)*cm--(4,0)*cm--(4,1)*cm--(0,1)*cm--cycle;
% rec = unitsquare scaled 2cm;
% hatchfill rec withcolor white withcolor (35, 0.1cm, -0.5);
% draw rec;
% path d[];
% H = 2cm;
% z1 = (0,0)*cm;
% z2 = (10cm,-0.25*H);
% z3 = (10cm,H-0.25*H);
% z4 = (0,H);
% z5 = (15cm,0.5*H);
% z6 = (15cm,0.5*H+H);
% z7 = z4+(z6-z3);
%
% d1 = z1--z2--z3--z4--cycle;
% d2 = z2--z5--z6--z3--cycle;
% % d1 := d1 scaled (2cm/bp);
% % d2 := d2 scaled (2cm/bp);
% picture layer_w;
% layer_w := image (
% pickup pencircle scaled 2;
% draw d1;
% draw d2;
% );
% picture layer_b;
% layer_b := image (
% hatchfill d1 withcolor white withcolor (35, 0.25cm, -0.5);
% hatchfill d2 withcolor white withcolor (-35, 0.25cm, -0.5);
% pickup pencircle scaled 2;
% draw d1;
% draw d2;
% );
% % layer_w := layer_w yscaled 0.25;
% % layer_b := layer_b yscaled 0.25;
% draw layer_w;
% draw layer_b shifted (0,-H);
% draw layer_w shifted (0,-2*H);
% draw layer_b shifted (0,-3*H);
% draw layer_w shifted (0,-4*H);
% % hatchfill layer withcolor white withcolor (35, 0.1cm, -0.5);
% % draw layer shifted (0,8cm);
% draw z6--z7;
% draw z4--z7;
%
% % show x1;
% % show parallel (z4,z3)(z6)(14);
% % dotlabels(1,2,3,4);

W = 2cm;
H = 10cm;
z0 = (0,0);
z1 = (W,0);
z3 = (0,H);
z5 = z3 + (2.5cm, 1.5cm);
z2 = z3+(z1-z0);
z4 = z5+(z1-z0);

path d[];
d1 = z0--z1--z2--z3--cycle;
d2 = z2--z4--z5--z3--cycle;

picture layer_w;
layer_w := image (
pickup pencircle scaled 2;
draw d1;
draw d2;
);
picture layer_b;
layer_b := image (
hatchfill d1 withcolor white withcolor (35, 0.25cm, -0.5);
hatchfill d2 withcolor white withcolor (-35, 0.25cm, -0.5);
pickup pencircle scaled 2;
draw d1;
draw d2;
);

draw layer_w;
draw layer_b shifted (W,0);
draw layer_w shifted (2*W,0);
draw layer_b shifted (3*W,0);
draw layer_w shifted (4*W,0);

z7 = (z1 + 4*(z1-z0));
z8 = z7 + (z5-z3);
z9 = z8 + (z3-z0);

draw z7--z8;
draw z8--z9;

ahlength := 0.5cm;
pair px,py,pz;
px = (6*z1);
py = (z3+(0, 2cm));
pz = (z0-((z5-z3)/2));
drawarrow z7--px;
drawarrow z3--py;
drawarrow z0--pz;
label.bot(btex $X$ etex scaled 3.0, (px + (0, -0.3cm)));
label.lft(btex $Y$ etex scaled 3.0, (py));
label.rt(btex $Z$ etex scaled 3.0, (pz + (0.3cm, 0)));


endfig;


end.
