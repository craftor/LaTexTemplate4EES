% ees-artcn.cls : Chinese Report class
% vim: ft=tex

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ees-artcn}[2019/05/21 EES report class]

\LoadClass[nofonts,12pt,utf8,a4paper,punct,fancyhdr,amstex]{ctexart}

\input{ees-common.def}
\input{ees-font-en.def}
\input{ees-font-cn.def}

\renewcommand\bfseries{\CJKfamily{hei}}
\newcommand\kt{\CJKfamily{kaiti}}

%%%% Chinese Headings
\@ifclasslater{ctexart}{2015/06/19}
{
  \ctexset{
    part = {
      nameformat  = \LARGE\bfseries,
      titleformat = \LARGE\bfseries
    },
    section = {
      format      = \Large\bfseries\flushleft,
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    },
    subsection = {
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    },
    subsubsection = {
      beforeskip  = .5ex plus .2ex minus 0.2ex,
      afterskip   = .5ex plus .2ex
    }
  }
}
{
  \CTEXsetup[nameformat={\LARGE\bfseries}]{part}
  \CTEXsetup[titleformat={\LARGE\bfseries}]{part}

  \CTEXsetup[format={\Large\bfseries\flushleft}]{section}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{section}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsection}
  \CTEXsetup[beforeskip={0pt},afterskip={1pt}]{subsubsection}

  \renewcommand\figurename{图}
  \renewcommand\tablename{表}
  \renewcommand\lstlistingname{代码}
  \renewcommand\lstlistlistingname{代码}
}

\input{ees-docattr.def}
\renewcommand\EES@value@classification{内部}

\input{ees-front-cn.def}
\input{ees-struct.def}
\input{ees-style.def}
\input{ees-math.def}

\IfFileExists{./local.def}{\input {./local.def}}{}

\endinput
