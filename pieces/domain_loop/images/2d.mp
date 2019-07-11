% input hatching;
input exteps;
prologues:=3;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
etex
beginfig(1);

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

    begineps "grid-cgal.eps";
    endeps;

    R = 0.2;
    Size = 300pt;
    NSteps = 20;
    Step = Size/NSteps;
 
    for i:=1 upto NSteps:
        draw tri scaled R shifted (0, i*Step);
    endfor;
    for i:=0 upto NSteps-1:
        draw tri scaled R shifted (i*Step, Size);
    endfor;
    for i:=1 upto NSteps:
        draw quad scaled R shifted (Size, i*Step);
    endfor;
    for i:=0 upto NSteps:
        draw quad scaled R shifted (i*Step, 0);
    endfor;
    draw cyrc scaled (R/1.5) shifted (Size-9pt,Size-9pt); 
    draw cyrc scaled (R/1.5) shifted (Size-9pt,9pt); 
    draw cyrc scaled (R/1.5) shifted (9pt,9pt); 

    FS = 1.5;
    label.ulft (btex $t_1$ etex scaled FS, (-5pt, Size+5pt));
    label.lft (btex $t_2$ etex scaled FS, (-5pt, Size-Step));
    label.top (btex $t_3$ etex scaled FS, (Step, Size+5pt));

    label.llft (btex $s_{11}$ etex scaled FS, (-5pt, -5pt));
    label.urt (btex $s_{12}$ etex scaled FS, (Size+5pt, Size+5pt));
    label.lrt (btex $s_{13}$ etex scaled FS, (Size+5pt, -5pt));
    label.rt  (btex $s_2$ etex scaled FS, (Size+5pt, Size-Step));
    label.bot (btex $s_3$ etex scaled FS, (Step, -5pt));

    label.urt (btex $c_1$ etex scaled FS, (15pt,9pt));
    label.llft (btex $c_2$ etex scaled FS, (Size-15pt,Size-9pt));
    label.ulft (btex $c_3$ etex scaled FS, (Size-15pt,9pt));

endfig;
end.
