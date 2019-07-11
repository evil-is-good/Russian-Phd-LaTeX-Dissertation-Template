input hatching;
prologues:=3;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
beginfig(1);

    z0 = (0,0);
    z1 = (3cm,-3cm);
    z2 = (0cm,-6cm);
    z3 = (-3cm,-3cm);

    picture cyrc;
    cyrc := image (
        fill (-1cm,0)..(0,1cm)..(1cm,0)..(0,-1cm)..cycle withcolor .0 white;
    );

    picture tri;
    tri := image (
        fill (-0.866cm,-0.5cm)--(0.866cm,-0.5cm)--(0,1cm)--cycle withcolor .0 white;
    );

    picture quad;
    quad := image (
        fill (-0.7071cm,-0.7071cm)--(0.7071cm,-0.7071cm)--(0.7071cm,0.7071cm)--(-0.7071cm,0.7071cm)--cycle withcolor .0 white;
    );

    defaultfont := "pplr8r";
    labeloffset := 0.8cm;
    R = 0.3;
    FS = 2;

    label.top (btex $1$ etex scaled FS, z0);
    draw tri scaled R;
    label.rt (btex $2$ etex scaled FS, z1);
    draw cyrc scaled R shifted z1;
    label.bot (btex $3$ etex scaled FS, z2);
    draw cyrc scaled R shifted z2;
    labeloffset := 0.8cm;
    label.lft (btex $(n-1)$ etex scaled FS, z3);
    draw cyrc scaled R shifted z3;

    draw z0..z1..z2..z3..z0 dashed evenly scaled 2;
    draw z3..z0..z1..z2;

endfig;
end.
