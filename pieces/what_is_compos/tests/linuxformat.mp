% А теперь мы его завращали и раскрасили
verbatimtex \documentclass{article}
        \begin{document}
etex;
prologues := 1;
filenametemplate "%j-%3c.mps";
beginfig (1);
% label("12345    ", (0,0));
draw (0,0)--(1cm,0);
pickup pencircle scaled 4pt;
for i:=0 upto 10:
    drawdot(i*cm, 2cm);
endfor
z0 = (0,0);
z2 = (40,90);
z1 = (60,40);
z3 = (10,70);
z4 = (30,50);
drawdot z0;
drawdot z1;
drawdot z2;
drawdot z3;
drawdot z4;
pickup pencircle scaled 1pt;
draw z0..z1..z2..z3..z4;

aa :=scantokens("x0");
show(aa);

% for alpha:=90 step -3 until 0:
%     label (btex Linux Format etex scaled (5*(1 - alpha/100 ) ) rotated alpha,( 0 , 0 ) )
%             withcolor (max(1- alpha/45,0 ) * red+
%             min( alpha/45,2 - alpha/45 ) * green+
%             max( alpha/45 -1 ,0)* blue ) ;
% endfor;
endfig;
end.
