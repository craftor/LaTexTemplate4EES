% ees-repen.cls : English Report class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ees-repen}[2017/12/11 ees report class]

\DeclareOption{twoside}{
  \PassOptionsToPackage{\CurrentOption}{report}
}
\ProcessOptions\relax

\LoadClass[nofonts,11pt,utf8,a4paper]{report}

\input{ees-common.def}
\input{ees-font-en.def}

\input{ees-docattr.def}
\renewcommand\EES@value@classification{Restricted}

\input{ees-front-en.def}
\input{ees-struct.def}
\input{ees-style.def}
\input{ees-math.def}

\IfFileExists{./local.def}{\input {./local.def}}{}

\endinput
