%%
%% This is file `icldt.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% icldt.dtx  (with options: `class')
%% 
%% ///////////////////////////////////////////////////////////////////
%% 
%% The provided documentclass `icldt' is based on the class `scrreprt'
%% from the Koma-script package. It uses the packages `geometry'
%% and `setspace' to fullfill the requirements for dissertations of
%% the University of London and of Imperial College London.
%% 
%% ///////////////////////////////////////////////////////////////////
%% 
%% Copyright (c) 2007, Daniel Wagner, www.PrettyPrinting.net
%% 
%% Permission is hereby granted, free of charge, to any person
%% obtaining a copy of this documentclass and associated
%% documentation files (the "Template"), to deal in the Template
%% without restriction, including without limitation the rights to
%% use, copy, modify, merge, publish, distribute, sublicense,
%% and/or sell copies of the Template, and to permit persons to
%% whom the Template is furnished to do so, subject to the
%% following conditions:
%% 
%% The above copyright notice and this permission notice shall be
%% included in all copies or substantial portions of the Template.
%% 
%% THE TEMPLATE IS PROVIDED ``AS IS'', WITHOUT WARRANTY OF ANY KIND,
%% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
%% OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
%% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
%% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
%% WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE TEMPLATE OR THE USE OR
%% OTHER DEALINGS IN THE TEMPLATE.
%% 
%% ///////////////////////////////////////////////////////////////////
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icldt}
    [2011/01/29 v2.0 Imperial College London Dissertation Template]



\newcommand*{\@supervisor}{}
\newcommand*{\@university}{}
\newcommand*{\@college}{Imperial College London}
\newcommand*{\@department}{}
\newcommand*{\@field}{}
\newcommand*{\@degree}{}
\newcommand*{\@diploma}{}
\newcommand*{\@declaration}{}
\DeclareOption{university}{%
 \renewcommand{\@university}{University of London}}
\DeclareOption{imperial}{%
 \let\@university\empty}
\DeclareOption{PhD}{%
 \renewcommand{\@degree}{Doctor of Philosophy}
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{MSc}{%
 \renewcommand{\@degree}{Master of Science}\let\@diploma\empty}
\DeclareOption{BSc}{%
 \renewcommand{\@degree}{Bachelor of Science}\let\@diploma\empty}
\DeclareOption{DIC=off}{%
 \let\@diploma\empty}
\DeclareOption{DIC=on}{%
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{declaration=off}{%
 \let\@declaration\empty}
\DeclareOption{declaration=on}{%
 \renewcommand{\@declaration}{%
 I herewith certify that all material in this dissertation which
 is not my own work has been properly acknowledged.}}
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{onehalfspacing}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{titlepagenumber=off}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{empty}}}
\DeclareOption{titlepagenumber=on}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{plain}}}
\DeclareOption{paper=a4}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ExecuteOptions{onehalfspacing,titlepagenumber=on,imperial,PhD,
declaration=off,paper=a4,pagesize=auto,11pt,twoside}
\ProcessOptions\relax
\LoadClass[pagesize=auto]{scrreprt}
\RequirePackage{setspace}
\RequirePackage[left=3.2cm,right=3.2cm,top=2.5cm,bottom=3cm]%
 {geometry}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\college}[1]{\gdef\@college{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\field}[1]{\gdef\@field{#1}}
\newcommand*{\declaration}[1]{\gdef\@declaration{#1}}

\newcommand{\pd}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\secpd}[2]{\frac{\partial^{2} #1}{\partial #2^{2}}}
\newcommand{\secpdx}[3]{\frac{\partial^{2} #1}{\partial #2 \partial #3}}
\newcommand{\deriv}[2]{\frac{\mathrm{d} #1}{\mathrm{d} #2}}
\newcommand{\secderiv}[2]{\frac{\mathrm{d}^{2} #1}{\mathrm{d} #2^{2}}}
\newcommand{\braket}[2]{\left\langle{#1}\middle|{#2}\right\rangle}
\newcommand{\bra}[1]{\left\langle{#1}\right|}
\newcommand{\ket}[1]{\left|{#1}\right\rangle}
\newcommand{\macca}[1]{\color{red}{\bf{#1}}\color{black}}
%\DeclareMathOperator{\sgn}{sgn}

\setkomafont{sectioning}{\rmfamily\bfseries}
\renewcommand*{\maketitle}{
\begin{titlepage}
 \par
 \clearpage
 \thispagestyle{\titlepagestyle}
 \null\vfill
 \begin{center}
  {\titlefont\huge \@title\par}
  \vskip 3em
  {\Large \lineskip 2.5em
  \begin{tabular}[t]{c}
   \@author
  \end{tabular}\par}
  \vskip 4.5em
  

 \begin{figure}[h!]
 \begin{center}
 \includegraphics[width=0.47\textwidth]{Preamble/new_college_logo.jpg}
 \end{center}
 \end{figure}

\vskip 4.5em
 
  {\Large \@date \par}
  \vskip \z@ \@plus3fill
  \ifx\@supervisor\@empty \else
  {\Large Supervised by \@supervisor \par}
  \fi
  \vskip 2em
 \end{center}\par
 \noindent\begin{minipage}[b]{\textwidth}
  \centering
  Submitted in partial fulfilment of the requirements for the degree of\\
  \@degree\ of  \ifx\empty\@university{\@college}\else{the \@university}\fi
  \ifx\@diploma\@empty\fi
 \end{minipage}
 
  \noindent\begin{minipage}[t]{\textwidth}
  \centering\large
  \vskip 0.5em
  \ifx\@department\@empty \else \par Department of \@department\fi \\
  \ifx\@university\@empty \else \@university\par\fi
  \@college \\
  Prince Consort Road \\
  London SW7 2AZ \\
   

 \end{minipage}

 \ifx\@declaration\@empty\else{
 \cleardoublepage
 \chapter*{Declaration}
 \thispagestyle{plain}
 \@declaration
 \par\vspace{3cm}
 \hfill\@author
 \cleardoublepage
 }\fi
\end{titlepage}
}
\newcommand{\makededication}{
 \ifx\@dedication\@empty \else
 \clearpage
 \thispagestyle{plain}
 \null\vfill
 {\centering \Large \@dedication \par}
 \vskip \z@ \@plus3fill
 \cleardoublepage
 \fi
}
\renewenvironment{abstract}{%
\chapter*{Abstract}\thispagestyle{plain}}{\cleardoublepage}
\endinput


%%
%% End of file `icldt.cls'.
