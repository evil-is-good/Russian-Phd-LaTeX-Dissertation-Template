% Для просмотра
verbatimtex \documentclass{article}
\begin{document}
etex;
prologues:=3;
% Простой Hello , World !
beginfig(1);
defaultfont:="ptmr8r";
% label("Hello, World!     ",(0,0));
% draw (0,0)..(1,1)*cm--(2,2)*cm
draw (0,0)..(1,2)*cm..(2,0)*cm..cycle;
draw (0,0){up}
    for i = 1 upto 8: ..(i/2, sqrt(i/2))*cm endfor;
label.bot(btex $\sqrt{x}$ etex, (3, sqrt 3)*cm);
drawarrow (0,0)--(2,0)*cm;
drawarrow (0,0)--(0,2)*cm;
label.bot(btex $\xi_x$ etex, (2,0)*cm);
label.lft(btex $\xi_y$ etex, (0,2)*cm);
draw (1cm,0){up}..(0,0){-1,-2}..{up}(-1cm,0);
endfig;
% <<конец обработки >> - необходимо вставить в конце файла
end.
