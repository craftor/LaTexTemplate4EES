% ees-manen.cls : English manual class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ees-manen}[2013/01/03 EES manual class]

\ProcessOptions\relax

\LoadClass[nofonts,11pt,utf8,a4paper,oneside]{book}

%\RequirePackage{showframe}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage[explicit]{titlesec}
%\RequirePackage[T1]{fontenc}
\RequirePackage[font=small,labelfont=bf]{caption}

\RequirePackage{amsmath,amssymb,amsfonts,array,booktabs,calc,changepage,datetime,esint,enumitem,eso-pic,fancyhdr,fixltx2e,float,fontspec,hyperref,ifxetex,listings,lmodern,longtable,makeidx,nameref,refstyle,relsize,siunitx,tabu,tcolorbox,tikz,times,units,varioref}%,tocloft,paralist,xeCJK
\RequirePackage{unicode-math}

\input{ees-docattr.def}
\renewcommand\EES@value@doctype{manual}
\renewcommand\EES@value@classification{Public}
\renewcommand\EES@value@email{sales@e-elements.com}

\input{ees-style.def}
\input{ees-man-style.def}
\input{ees-font-en.def}
