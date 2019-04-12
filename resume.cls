\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/04/05 Resume CV]
\LoadClass[12pt]{article}

\usepackage{enumerate}
\usepackage{enumitem}
\usepackage{titlesec}
\usepackage{color}
\usepackage[hidelinks]{hyperref}
\usepackage{multirow}
\usepackage{graphicx}

\graphicspath{ {./images/} }
\definecolor{grey}{RGB}{128,128,128} % 日期颜色

%% 自定义 section
\titleformat{\section}       % Customise the \section command 
{\large\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.8}{*1.8}

%% 自定义 subsection
\titleformat{\subsection}
{\raggedright}
{}{0em}
{}
\titlespacing*{\subsection}{0cm}{*1.8}{*1.2}

\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill {\color{grey}#2}}%
}

\newcommand{\name}[1]{
	\centerline{\bfseries\LARGE{#1}}
	\vspace{0.5ex}
}

\newenvironment{leftenumerate}
{
	\begin{enumerate}[leftmargin=*]
}	
{ 
	\end{enumerate}
}

\newcommand\headerinfo[2]{%
	\begin{tabular}{p{5em} p{28em} p{5em}}
	\multirow{3}{5em}{} &
		#1
		& \multirow{3}{5em}{\includegraphics[width=5em]{#2}}
	\end{tabular}
}%