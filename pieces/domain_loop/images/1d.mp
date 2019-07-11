input hatching;
prologues:=3;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
beginfig(1);

    z0 = (0,0);
    z1 = (3cm,0);
    z2 = (6cm,0);
    z3 = (9cm,0cm);
    z4 = (12cm,0cm);

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
    labeloffset := 1.0cm;
    R = 0.3;
    FS = 2;

    label.top (btex $1$ etex scaled FS, z0);
    draw tri scaled R;
    label.top (btex $2$ etex scaled FS, z1);
    draw cyrc scaled R shifted z1;
    label.top (btex $3$ etex scaled FS, z2);
    draw cyrc scaled R shifted z2;
    label.top (btex $n$ etex scaled FS, z4);
    draw quad scaled R shifted z4;
    labeloffset := 0.8cm;
    label.top (btex $(n-1)$ etex scaled FS, z3);
    draw cyrc scaled R shifted z3;

    draw z0--z1--z2;
    draw z2--z3 dashed evenly scaled 2;
    draw z3--z4;

endfig;
end.
