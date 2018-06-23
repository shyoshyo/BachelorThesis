%%
%% This is file `thuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2018 by Ruini Xue <xueruini@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{thuthesis}
[2018/05/17 5.4.5 Tsinghua University Thesis Template]
\hyphenation{Thu-Thesis}
\def\thuthesis{\textsc{ThuThesis}}
\def\version{5.4.5}

\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=thu,
  prefix=thu@,
  setkeys=\kvsetkeys}
\newif\ifthu@bachelor
\newif\ifthu@master
\newif\ifthu@doctor
\newif\ifthu@postdoctor
\define@key{thu}{degree}{%
  \thu@bachelorfalse
  \thu@masterfalse
  \thu@doctorfalse
  \thu@postdoctorfalse
  \expandafter\csname thu@#1true\endcsname}
\define@key{thu}{type}{%
  \ClassError{thuthesis}{'type' is deprecated, \MessageBreak
                         please use 'degree=#1' instead}{}}
\def\thu@deprecated@degree@option{%
  \ClassError{thuthesis}{Option '\CurrentOption' is deprecated, \MessageBreak
                         please use 'degree=\CurrentOption' instead}{}}
\DeclareVoidOption{bachelor}{\thu@deprecated@degree@option}
\DeclareVoidOption{master}{\thu@deprecated@degree@option}
\DeclareVoidOption{doctor}{\thu@deprecated@degree@option}
\DeclareVoidOption{postdoctor}{\thu@deprecated@degree@option}
\DeclareBoolOption{secret}
\DeclareBoolOption{tocarialchapter}
\DeclareBoolOption{tocarialchapterentry}
\DeclareBoolOption{tocarialchapterpage}
\DeclareBoolOption{raggedbottom}
\DeclareBoolOption{pifootnote}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\kvsetkeys{thu}{%
  raggedbottom}
\ProcessKeyvalOptions*
\ifthu@bachelor\relax\else
  \ifthu@master\relax\else
    \ifthu@doctor\relax\else
      \ifthu@postdoctor\relax\else
        \ClassError{thuthesis}%
                   {Please specify thesis degree in option: \MessageBreak
                    degree=[bachelor | master | doctor | postdoctor]}{}
      \fi
    \fi
  \fi
\fi
\PassOptionsToPackage{no-math}{fontspec}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{ifxetex}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage[defaultsups]{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{courier}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifthu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\ifthu@pifootnote
  \RequirePackage{pifont}
\fi
\RequirePackage{CJKfntef}
\RequirePackage[amsmath,thmmarks,hyperref]{ntheorem}
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyperref}
\ifxetex
  \hypersetup{%
    CJKbookmarks=true}
\else
  \hypersetup{%
    unicode=true,
    CJKbookmarks=false}
\fi
\hypersetup{%
  linktoc=all,
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=false,
  plainpages=false,
  pdfborder=0 0 0}
\urlstyle{same}
\RequirePackage{geometry}
\geometry{
  a4paper, % 210 * 297mm
  hcentering,
  ignoreall,
  nomarginpar}
\ifthu@bachelor
  \geometry{
    left=32mm,
    headheight=5mm,
    headsep=5mm,
    textheight=227mm,
    bottom=32mm,
    footskip=12mm}
\else
  \geometry{
    left=30mm,
    headheight=5mm,
    headsep=5mm,
    textheight=237mm,
    bottom=29mm,
    footskip=6mm}
\fi
\RequirePackage{fancyhdr}
\RequirePackage{notoccite}
\let\thu@cleardoublepage\cleardoublepage
\newcommand{\thu@clearemptydoublepage}{%
  \clearpage{\pagestyle{thu@empty}\thu@cleardoublepage}}
\let\cleardoublepage\thu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \pagenumbering{Roman}
  \pagestyle{thu@empty}}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifthu@bachelor\pagestyle{thu@plain}\else\pagestyle{thu@headings}\fi}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\newcommand\thu@fontset{\csname g__ctex_fontset_tl\endcsname}
\ifthenelse{\equal{\thu@fontset}{windows}}{
  \ifxetex
    \setCJKsansfont{SimHei}
  \else
    \setCJKsansfont{simhei.ttf}
    \csname ctex_punct_map_family:nn\endcsname{\CJKsfdefault}{zhhei}
  \fi
}{}
\ifthenelse{\equal{\thu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold
    ]{Songti SC}
  \setCJKsansfont{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}{Heiti SC}
  \setCJKfamilyfont{zhkai}{Kaiti SC}
}{}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=12bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=12bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\thu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\thu@def@fontsize{chuhao}{42bp}
\thu@def@fontsize{xiaochu}{36bp}
\thu@def@fontsize{yihao}{26bp}
\thu@def@fontsize{xiaoyi}{24bp}
\thu@def@fontsize{erhao}{22bp}
\thu@def@fontsize{xiaoer}{18bp}
\thu@def@fontsize{sanhao}{16bp}
\thu@def@fontsize{xiaosan}{15bp}
\thu@def@fontsize{sihao}{14bp}
\thu@def@fontsize{banxiaosi}{13bp}
\thu@def@fontsize{xiaosi}{12bp}
\thu@def@fontsize{dawu}{11bp}
\thu@def@fontsize{wuhao}{10.5bp}
\thu@def@fontsize{xiaowu}{9bp}
\thu@def@fontsize{liuhao}{7.5bp}
\thu@def@fontsize{xiaoliu}{6.5bp}
\thu@def@fontsize{qihao}{5.5bp}
\thu@def@fontsize{bahao}{5bp}
\fancypagestyle{thu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{thu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{thu@headings}{%
  \fancyhead{}
  \fancyhead[C]{\wuhao\normalfont\leftmark}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\def\thu@textcircled#1{%
  \ifnum\value{#1} >9
    \ClassError{thuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}
  \fi
  \ifthu@pifootnote%
    \ding{\the\numexpr\value{#1}+171\relax}%
  \else%
    \textcircled{\xiaoliu\arabic{#1}}%
  \fi}
\renewcommand{\thefootnote}{\thu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\thu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\thu@footnotesize\footnotesize
\renewcommand\footnotesize{\thu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\thu@makefnmark\@makefnmark
\def\thu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\thu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\thu@makefnmark}{}{}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\thu@make@df@tag@@\make@df@tag@@@}
\def\thu@make@df@tag@@#1{\gdef\df@tag{\thu@maketag{#1}\def\@currentlabel{#1}}}
\iffalse
\ifthu@bachelor
  \def\thu@maketag#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)}}
  \def\tagform@#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)\equcaption{#1}}}
\fi
\fi
\def\thu@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\setlength{\floatsep}{20bp \@plus4pt \@minus1pt}
\setlength{\intextsep}{20bp \@plus4pt \@minus2pt}
\setlength{\textfloatsep}{20bp \@plus4pt \@minus2pt}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifthu@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\thu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionLabelFormat{thu}{{\dawu[1.5]\normalfont #1~#2}}
\DeclareCaptionLabelSeparator{thu}{\hspace{1em}}
\DeclareCaptionFont{thu}{\dawu[1.5]}
\captionsetup{labelformat=thu,labelsep=thu,font=thu,skip=6bp}
\captionsetup[table]{position=top}
\captionsetup[figure]{position=bottom}
\captionsetup[sub]{font=thu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\let\thu@LT@array\LT@array
\def\LT@array{\dawu[1.5]\thu@LT@array} % set default font size
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\AtBeginDocument{%
  \pagestyle{thu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\thu@chapter@titleformat[1]{%
  \ifthu@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={\ifthu@bachelor thu@plain\else thu@headings\fi},
    beforeskip={\ifthu@bachelor 15bp\else 9bp\fi},
    aftername=\hskip\ccwd,
    afterskip={\ifthu@bachelor 20bp\else 24bp\fi},
    format={\centering\sffamily\ifthu@bachelor\xiaosan[1.333]\else\sanhao[1]\fi},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\thu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifthu@bachelor 25bp\else 24bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifthu@bachelor 12bp\else 6bp\fi \@plus .2ex},
    format={\sffamily\ifthu@bachelor\sihao[1.286]\else\sihao[1.429]\fi},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifthu@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifthu@bachelor\xiaosi[1.25]\else\banxiaosi[1.538]\fi},
    numberformat={\sffamily\ifthu@bachelor\banxiaosi[1.154]\else\banxiaosi[1.538]\fi},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifthu@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifthu@bachelor\xiaosi[1.25]\else\xiaosi[1.667]\fi},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcounter{thu@bookmark}
\NewDocumentCommand\thu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{thuthesis}{You have to use the star form: \string\thu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi\phantomsection%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \addtocounter{thu@bookmark}\@ne
      \pdfbookmark[0]{#3}{thuchapter.\thethu@bookmark}
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \ifthu@bachelor \ctexset{chapter/beforeskip=25bp} \fi
  \chapter*{#3}%
  \ifthu@bachelor \ctexset{chapter/beforeskip=15bp} \fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \thu@chapter*[]{\contentsname}
  \ifthu@bachelor\xiaosi[1.667]\else\xiaosi[1.65]\fi\@starttoc{toc}\normalsize}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\ifthu@tocarialchapter
  \thu@tocarialchapterentrytrue\thu@tocarialchapterpagetrue
\fi
\def\thu@toc@chapter@entry@font{\ifthu@tocarialchapterentry\sffamily\fi}
\def\thu@toc@chapter@page@font{\ifthu@tocarialchapterpage\sffamily\fi}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \ifthu@bachelor\vskip 6bp\else\vskip 4bp\fi \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      {\thu@toc@chapter@entry@font #1}%
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill%
      \nobreak{\thu@toc@chapter@page@font #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@section{%
  \@dottedtocline{1}{\ccwd}{2.1em}}
\renewcommand*\l@subsection{%
  \@dottedtocline{2}{\ifthu@bachelor 1.5\ccwd\else 2\ccwd\fi}{3em}}
\renewcommand*\l@subsubsection{%
  \@dottedtocline{3}{\ifthu@bachelor 2.4em\else 3.5em\fi}{3.8em}}
\def\thu@def@term#1{%
  \define@key{thu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname thu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\thu@def@term{secretlevel}
\thu@def@term{secretyear}
\thu@def@term{ctitle}
\thu@def@term{etitle}
\thu@def@term{cauthor}
\thu@def@term{csupervisor}
\thu@def@term{cassosupervisor}
\thu@def@term{ccosupervisor}
\thu@def@term{eauthor}
\thu@def@term{esupervisor}
\thu@def@term{eassosupervisor}
\thu@def@term{ecosupervisor}
\thu@def@term{cdegree}
\thu@def@term{edegree}
\thu@def@term{cdepartment}
\def\caffil{% for compatibility
  \ClassWarning{thuthesis}
    {'\string\caffil' is deprecated, please use '\string\cdepartment' instead.}{}%
  \cdepartment}
\thu@def@term{edepartment}
\def\eaffil{% for compability
  \ClassWarning{thuthesis}
    {'\string\eaffil' is deprecated, please use '\string\edepartment' instead.}{}%
  \edepartment}
\thu@def@term{cmajor}
\def\csubject{% for compatibility
  \ClassWarning{thuthesis}
    {'\string\csubject' is deprecated, please use '\string\cmajor' instead.}{}%
  \cmajor}
\thu@def@term{emajor}
\def\esubject{%for compability
  \ClassWarning{thuthesis}
    {'\string\esubject' is deprecated, please use '\string\emajor' instead.}{}%
  \emajor}
\thu@def@term{cdate}
\thu@def@term{edate}
\thu@def@term{id}
\thu@def@term{udc}
\thu@def@term{catalognumber}
\thu@def@term{cfirstdiscipline}
\thu@def@term{cseconddiscipline}
\thu@def@term{postdoctordate}
\newcommand{\thu@@cabstract}[1]{\long\gdef\thu@cabstract{#1}}
\newenvironment{cabstract}{\Collect@Body\thu@@cabstract}{}
\newcommand{\thu@@eabstract}[1]{\long\gdef\thu@eabstract{#1}}
\newenvironment{eabstract}{\Collect@Body\thu@@eabstract}{}
\def\thu@parse@keywords#1{
  \define@key{thu}{#1}{\csname #1\endcsname{##1}}
  \expandafter\gdef\csname thu@#1\endcsname{}
  \expandafter\gdef\csname #1\endcsname##1{
    \@for\reserved@a:=##1\do{
      \expandafter\ifx\csname thu@#1\endcsname\@empty\else
        \expandafter\g@addto@macro\csname thu@#1\endcsname{%
          \ignorespaces\csname thu@#1@separator\endcsname}
      \fi
      \expandafter\expandafter\expandafter\g@addto@macro%
        \expandafter\csname thu@#1\expandafter\endcsname\expandafter{\reserved@a}}}}
\thu@parse@keywords{ckeywords}
\thu@parse@keywords{ekeywords}
\def\thusetup{\kvsetkeys{thu}}
\newcommand\thu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newlength{\thu@title@width}
\ifxetex % todo: ugly codes
  \newcommand{\thu@put@title}[2][\thu@title@width]{%
  \begin{CJKfilltwosides}[b]{#1}#2\end{CJKfilltwosides}}
\else
  \newcommand{\thu@put@title}[2][\thu@title@width]{%
  \begin{CJKfilltwosides}{#1}#2\end{CJKfilltwosides}}
\fi
\def\thu@first@titlepage{%
  \ifthu@postdoctor\thu@first@titlepage@postdoctor\else\thu@first@titlepage@other\fi}
\newcommand{\thu@first@titlepage@postdoctor}{
  \begin{center}
    \setlength{\thu@title@width}{3em}
    \vspace*{0.7cm}
    \begingroup\wuhao[1.5]%
    \thu@put@title{\thu@catalog@number@title}\thu@underline\thu@catalognumber\hfill%
    \thu@put@title{\thu@secretlevel}%
      \expandafter\thu@underline\ifthu@secret\thu@secret@content\else\relax\fi\par
    \thu@put@title{U D C}\thu@underline\thu@udc\hfill%
    \thu@put@title{\thu@id@title}\thu@underline\thu@id\par\vskip3cm\endgroup
    \begingroup\heiti
      {\xiaochu\ziju{1}\thu@schoolname}\par\vskip2cm
      {\xiaoyi\ziju{1}\thu@postdoctor@report@title}\par\vskip3cm
      {\sanhao[1.5]\thu@ctitle}\par\vskip2cm
      {\xiaoer\thu@cauthor}
    \endgroup
    \par\vskip3cm
    {\xiaosan[1.5]\ziju{1}\thu@schoolname\par\vskip0.5em\CJK@todaysmall@short}
  \end{center}
  \cleardoublepage
  \begin{center}
    \vspace*{2cm}
    {\sihao\heiti\thu@ctitle\par\thu@etitle}\par
    \parbox[t][7cm][b]{\textwidth-6cm}{\sihao[1.5]%
      \setlength{\thu@title@width}{11em}
      \setlength{\extrarowheight}{6pt}
      \ifxetex % todo: ugly codes
        \begin{tabular}{p{\thu@title@width}@{}l@{\extracolsep{8pt}}l}
      \else
        \begin{tabular}{p{\thu@title@width}l@{}l}
      \fi
          \thu@put@title{\thu@author@title}
            & \thu@title@sep
            & \thu@cauthor \\
          \thu@put@title{\thu@postdoctor@first@discipline@title}
            & \thu@title@sep
            & \thu@cfirstdiscipline\\
          \thu@put@title{\thu@postdoctor@second@discipline@title}
            & \thu@title@sep
            & \thu@cseconddiscipline\\
          \thu@put@title{\thu@supervisor@title}
            & \thu@title@sep
            & \thu@csupervisor\\
        \end{tabular}}
    \vskip2cm
    {\sihao\thu@postdoctor@date@title\hskip1em\underline\thu@postdoctordate}
  \end{center}}
\newcommand{\thu@first@titlepage@other}{
  \begin{center}
    \vspace*{-1.6cm}
    \parbox[b][2.4cm][t]{\textwidth}{%
      \ifthu@secret{\heiti\sanhao\thu@secretlevel\thu@secret@content}\else\rule{1cm}{0cm}\fi}
    \ifthu@bachelor
      \vskip0.65cm
      {\ifcsname lishu\endcsname\yihao\lishu\ziju{0.5}\thu@schoolname\else\includegraphics{tsinghua}\fi}
      \par\vskip1.5cm
      {\xiaochu\heiti\ziju{0.5}\textbf\thu@bachelor@subtitle}
      \vskip2.2cm\hskip0.8cm
      \noindent\heiti\xiaoer\thu@bachelor@title@pre\thu@title@sep
      \parbox[t]{12cm}{%
      \ignorespaces\yihao[1.51]%
      \renewcommand{\CJKunderlinebasesep}{0.25cm}%
      \renewcommand{\ULthickness}{1.3pt}%
      \ifxetex
        \xeCJKsetup{underline/format=\color{black}}%
      \else
        \def\CJKunderlinecolor{\color{black}}%
      \fi
      \CJKunderline*{\thu@ctitle}}%
      \vskip1.3cm
    \else
      \vskip0.8cm
      \parbox[t][9cm][t]{\paperwidth-8cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \yihao[1.2]{\sffamily\thu@ctitle}\par%
        \par\vskip 18bp%
        \xiaoer[1]\textrm{\thu@apply}%
      \end{center}}
    \fi
    \ifthu@bachelor
      \vskip0.75cm
      \ifx\thu@cassosupervisor\@empty%
        \def\thu@tempa{7.15cm}
      \else%
        \def\thu@tempa{8.15cm}
      \fi%
      \parbox[t][\thu@tempa][t]{\textwidth}{%
        {\fangsong\sanhao[1.95]%
         \hspace*{1.9cm}
         \setlength{\thu@title@width}{4em}
         \setlength{\extrarowheight}{6pt}
         \ifxetex % todo: ugly codes
           \begin{tabular}{p{\thu@title@width}@{}l@{\extracolsep{8pt}}l}
         \else
           \begin{tabular}{p{\thu@title@width}l@{}l}
         \fi
             \thu@put@title{\thu@department@title} & \thu@title@sep
               & \thu@cdepartment\\
             \thu@put@title{\thu@major@title}      & \thu@title@sep
               & \thu@cmajor\\
             \thu@put@title{\thu@author@title}     & \thu@title@sep
               & \thu@cauthor \\
             \thu@put@title{\thu@supervisor@title} & \thu@title@sep
               & \thu@csupervisor\\
             \ifx\thu@cassosupervisor\@empty\else%
               \thu@put@title{\thu@assosuper@title} & \thu@title@sep
               & \thu@cassosupervisor\\
             \fi
           \end{tabular}
        }}
    \else
      \vskip 5bp
      \parbox[t][7.8cm][t]{\textwidth}{{\sanhao[1.5]
        \begin{center}\fangsong
          \setlength{\thu@title@width}{5em}
          \setlength{\extrarowheight}{4pt}
          \ifxetex % todo: ugly codes
            \begin{tabular}{p{\thu@title@width}@{}c@{\extracolsep{8pt}}l}
          \else
            \begin{tabular}{p{\thu@title@width}c@{\extracolsep{4pt}}l}
          \fi
              \thu@put@title{\thu@department@title}  & \thu@title@sep
                & {\ziju{0.1875}\thu@cdepartment}\\
              \thu@put@title{\thu@major@title}       & \thu@title@sep
                & {\ziju{0.1875}\thu@cmajor}\\
              \thu@put@title{\thu@author@title}      & \thu@title@sep
                & {\ziju{0.6875}\thu@cauthor}\\
              \thu@put@title{\thu@supervisor@title}  & \thu@title@sep
                & {\ziju{0.6875}\thu@csupervisor}\\
              \ifx\thu@cassosupervisor\@empty\else
                \thu@put@title{\thu@assosuper@title} & \thu@title@sep
                & {\ziju{0.6875}\thu@cassosupervisor}\\
              \fi
              \ifx\thu@ccosupervisor\@empty\else
                \ifthu@master
                  \hfill\makebox[0pt][r]{\thu@cosuper@title} & \thu@title@sep
                  & {\ziju{0.6875}\thu@ccosupervisor}\\
                \fi
                \ifthu@doctor
                  \thu@put@title{\thu@cosuper@title} & \thu@title@sep
                  & {\ziju{0.6875}\thu@ccosupervisor}\\
                \fi
              \fi
            \end{tabular}
        \end{center}}}
      \fi
     \begin{center}
       {\ifthu@bachelor\vskip-1.0cm\xiaosi\else%
         \vskip-0.5cm\sanhao\fi%
         \songti\thu@cdate}
     \end{center}
    \end{center}} % end of titlepage
\newcommand{\thu@engcover}{%
  \newif\ifthu@professional\thu@professionalfalse
  \ifthu@master
    \ifthenelse{\equal{\thu@edegree}{\thu@master@art}}
      {\relax}
      {\ifthenelse{\equal{\thu@edegree}{\thu@master@sci}}
        {\relax}
        {\thu@professionaltrue}}
  \fi
  \ifthu@doctor
    \ifthenelse{\equal{\thu@edegree}{\thu@doctor@phi}}
      {\relax}
      {\thu@professionaltrue}
  \fi
  \begin{center}
    \vspace*{-5pt}
    \parbox[t][5.2cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.5}
      \begin{center}
        \erhao[1.1]\bfseries\sffamily\thu@etitle%
      \end{center}}
    \parbox[t][][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sanhao%
        \ifthu@master Thesis \else Dissertation \fi
        Submitted to\\
        {\bfseries Tsinghua University}\\
        in partial fulfillment of the requirement\\
        for the \ifthu@professional professional \fi
        degree of\\
        {\bfseries\sffamily\thu@edegree}%
        \ifthu@professional\relax\else
          \\in\\[3bp]
          {\bfseries\sffamily\thu@emajor}%
        \fi
      \end{center}}
    \parbox[t][][b]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.3}
      \begin{center}
        \sanhao\sffamily by\\[3bp]
        \bfseries\thu@eauthor%
        \ifthu@professional
          \ifx\thu@emajor\empty\relax\else
            \\(~\thu@emajor~)%
        \fi\fi
      \end{center}}
    \par\vspace{0.9cm}
    \parbox[t][2.1cm][t]{\paperwidth-7.2cm}{
      \renewcommand{\baselinestretch}{1.2}
      \xiaosan\centering
      \begin{tabular}{rl}
        \ifthu@master Thesis \else Dissertation \fi
        Supervisor : & \thu@esupervisor\\
        \ifx\thu@eassosupervisor\@empty
          \else Associate Supervisor : & \thu@eassosupervisor\\\fi
        \ifx\thu@ecosupervisor\@empty
          \else Cooperate Supervisor : & \thu@ecosupervisor\\\fi
      \end{tabular}}
    \parbox[t][2cm][b]{\paperwidth-7.2cm}{
    \begin{center}
      \sanhao\bfseries\sffamily\thu@edate
    \end{center}}
  \end{center}}
\newcommand{\thu@authorization@mk}{%
  \ifthu@bachelor\vspace*{0.2cm}\else\vspace*{0.42cm}\fi % shit code!
  \begin{center}\erhao\heiti\thu@authtitle\end{center}
  \ifthu@bachelor\vskip5pt\else\vskip40pt\sihao[2.03]\fi\par
  \thu@authorization\par
  \textbf{\thu@authorizationaddon}\par
  \ifthu@bachelor\vskip0.7cm\else\vskip1.0cm\fi
  \ifthu@bachelor
    \indent\mbox{\thu@authorsig\thu@underline\relax%
    \thu@teachersig\thu@underline\relax\thu@frontdate\thu@underline\relax}
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\thu@authorsig\thu@underline[7em]\relax\hfill%
                     \thu@teachersig\thu@underline[7em]\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\thu@frontdate\thu@underline[7em]\relax\hfill%
                     \thu@frontdate\thu@underline[7em]\relax\hspace*{1cm}
    \endgroup
  \fi}
\def\makecover{%
  \thu@setup@pdfinfo\thu@makecover}
\def\thu@setup@pdfinfo{%
  \hypersetup{%
    pdftitle={\thu@ctitle},
    pdfauthor={\thu@cauthor},
    pdfsubject={\thu@cdegree},
    pdfkeywords={\thu@ckeywords},
    pdfcreator={\thuthesis-v\version}}}
\NewDocumentCommand{\thu@makecover}{o}{
  \phantomsection
  \pdfbookmark[-1]{\thu@ctitle}{ctitle}
  \normalsize%
  \begin{titlepage}
    \thu@first@titlepage
    \ifthu@bachelor\relax\else
      \ifthu@postdoctor\relax\else
        \cleardoublepage\thu@engcover
    \fi\fi
    \ifthu@postdoctor\relax\else%
      \ifthu@bachelor\clearpage\else\cleardoublepage\fi%
      \IfNoValueTF{#1}{%
        \ifthu@bachelor\thu@authorization@mk\else%
          \begin{list}{}{%
            \topsep\z@%
            \listparindent\parindent%
            \parsep\parskip%
            \setlength{\leftmargin}{0.9mm}%
            \setlength{\rightmargin}{0.9mm}}%
          \item[]\thu@authorization@mk%
          \end{list}%
        \fi%
      }{%
        \includepdf{#1}%
      }%
    \fi
  \end{titlepage}
  \normalsize
  \thu@makeabstract
  \let\@tabular\thu@tabular}
\newbox\thu@kw
\newcommand\thu@put@keywords[2]{%
  \begingroup
    \setbox\thu@kw=\hbox{#1}
    \ifthu@bachelor\indent\else\noindent\hangindent\wd\thu@kw\hangafter1\fi%
    \box\thu@kw#2\par
  \endgroup}
\newcommand{\thu@makeabstract}{%
  \ifthu@bachelor\clearpage\else\cleardoublepage\fi
  \thu@chapter*[]{\cabstractname} % no tocline
  \ifthu@bachelor
    \pagestyle{thu@plain}
  \else
    \pagestyle{thu@headings}
  \fi
  \pagenumbering{Roman}
  \thu@cabstract
  \ifthu@doctor\vfill\else\vskip12bp\fi
  \thu@put@keywords{\textbf\thu@ckeywords@title}{\thu@ckeywords}
  \thu@chapter*[]{\eabstractname} % no tocline
  \thu@eabstract
  \ifthu@doctor\vfill\else\vskip12bp\fi
  \thu@put@keywords{%
    \textbf{\ifthu@bachelor Keywords:\else Key Words:\fi\enskip}}{\thu@ekeywords}}
\newenvironment{denotation}[1][2.5cm]{%
  \thu@chapter*[]{\thu@denotation@name} % no tocline
  \vskip-30bp\xiaosi[1.6]\begin{thu@denotation}[labelwidth=#1]
}{%
  \end{thu@denotation}
}
\newlist{thu@denotation}{description}{1}
\setlist[thu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\NewDocumentEnvironment{acknowledgement}{o}{%
    \thu@chapter*{\thu@ackname}
  }
  {
    \ifthu@postdoctor\relax\else%
      \IfNoValueTF{#1}{%
        \thu@chapter*{\thu@declarename}
        \par{\xiaosi\parindent2em\thu@declaretext}\vskip2cm
        {\xiaosi\hfill\thu@signature\thu@underline[2.5cm]\relax%
         \thu@backdate\thu@underline[2.5cm]\relax}%
      }{%
        \includepdf[pagecommand={\thispagestyle{thu@empty}%
          \phantomsection\addcontentsline{toc}{chapter}{\thu@declarename}%
        }]{#1}%
      }%
    \fi
  }
\let\ack\acknowledgement
\let\endack\endacknowledgement
\def\thu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\thu@listof#1{% #1: float type
  \@ifstar
    {\thu@chapter*[]{\csname list#1name\endcsname}\thu@starttoc{#1}}
    {\thu@chapter*{\csname list#1name\endcsname}\thu@starttoc{#1}}}
\renewcommand\listoffigures{\thu@listof{figure}}
\renewcommand*\l@figure{\ifthu@bachelor\relax\else\addvspace{6bp}\fi\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\thu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\thu@listof{equation}}
\let\l@equation\l@figure
\newcommand\bibstyle@inline{\bibpunct{[}{]}{,}{n}{,}{,}}
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\renewcommand\bibsection{\thu@chapter*{\bibname}}
\renewcommand\bibfont{\ifthu@bachelor\wuhao[1.619]\else\wuhao[1.5]\fi}
\setlength\bibhang{2\ccwd}
\addtolength{\bibsep}{-0.7em}
\setlength{\labelsep}{0.4em}
\def\@biblabel#1{[#1]\hfill}
\expandafter\newcommand\csname bibstyle@thuthesis-numeric\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\expandafter\newcommand\csname bibstyle@thuthesis-author-year\endcsname{%
  \bibpunct{(}{)}{;}{a}{,}{,}}
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
  \if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citexnum}{%
  \ifx\NAT@last@yr\relax
    \def@NAT@last@yr{\@citea}%
  \else
    \def@NAT@last@yr{--\NAT@penalty}%
  \fi
}{%
  \def@NAT@last@yr{-\NAT@penalty}%
}{}{}
\let\thu@appendix\appendix
\renewenvironment{appendix}{%
  \let\title\thu@appendix@title
  \thu@appendix}{%
  \let\title\@gobble}
\let\title\@gobble
\newcommand{\thu@appendix@title}[1]{%
  \begin{center}
    \xiaosi[1.667] #1
  \end{center}}
\newlist{translationbib}{enumerate}{1}
\setlist[translationbib]{label=[\arabic*],align=left,nosep,itemsep=6bp,
  leftmargin=10mm,labelsep=!,before=\vspace{0.5\baselineskip}\wuhao[1.3]}
\newenvironment{resume}[1][\thu@resume@title]{%
  \thu@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\sihao\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26],resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26]}
\def\publicationskip{\bigskip\bigskip}
\NewDocumentCommand{\shuji}{O{\thu@ctitle} O{\thu@cauthor}}{%
  \newpage\thispagestyle{empty}%
  \fangsong\ifxetex\addCJKfontfeatures*{RawFeature={vertical:}}\fi
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{\makebox[\textheight]{#1\hfill#2}}}
\AtEndOfClass{\input{thuthesis.cfg}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `thuthesis.cls'.
