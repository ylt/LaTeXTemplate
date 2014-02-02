\LoadClass[12pt,a4paper,titlepage]{article}
\ProvidesClass{template}[2014/02/01 v1.0 SMU SOAC Report]

\usepackage[utf8]{inputenc}

% referencing -----------------------------///
	%TODO: get referencing included
	% (fork of https://github.com/michal-h21/biblatex-iso690)
	%\usepackage[backend=biber,sorting=none,style=iso-numeric]{biblatex}

% output -------------------------------------------------///
	\usepackage{verbatim}

% code ------------------------------------///
	%split into separate file as it was making a mess of template
	\input{code}

	\usepackage{listings}
	\usepackage{color}

	\definecolor{dkgreen}{rgb}{0,0.6,0}
	\definecolor{gray}{rgb}{0.5,0.5,0.5}
	\definecolor{mauve}{rgb}{0.58,0,0.82}

	%adds a few oracle keywords + others to standard SQL language
	\lstdefinelanguage{OraSQL}{
		language=SQL,
		morekeywords={TO, IDENTIFIED, USER}
	}

	%javascript is not defined at all in LaTeX listings
	%	also useful for JSON
	\lstdefinelanguage{JavaScript}{
	  keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break},
	  keywordstyle=\color{blue}\bfseries,
	  ndkeywords={class, export, boolean, throw, implements, import, this},
	  %ndkeywordstyle=\color{darkgray}\bfseries,
	  %identifierstyle=\color{black},
	  sensitive=false,
	  comment=[l]{//},
	  morecomment=[s]{/*}{*/},
	  %commentstyle=\color{purple}\ttfamily,
	  %stringstyle=\color{red}\ttfamily,
	  morestring=[b]',
	  morestring=[b]"
	}

	%a generic styling
	\lstset{frame=tb,
	  aboveskip=3mm,
	  belowskip=3mm,
	  showstringspaces=false,
	  columns=flexible,
	  basicstyle={\small\ttfamily},
	  numbers=none,
	  numberstyle=\tiny\color{gray},
	  keywordstyle=\color{blue},
	  commentstyle=\color{dkgreen},
	  stringstyle=\color{mauve},
	  breaklines=true,
	  breakatwhitespace=true,
	  tabsize=4,
	  %fixes BOM issues for files from visual studio
	  literate={^^ef^^bb^^bf}{}1
	}

% font --------------------------------------------------///
	\usepackage[T1]{fontenc}
	\usepackage{lmodern}

	\usepackage{url}
	\usepackage[hidelinks]{hyperref}

	%gaps between paragraphs
	\usepackage{parskip}


% page formatting ------------------------------------///
	%works around latex flaw
	%\maketitle resets \author, \title, etc..
	%might make solution without package if needed
	\usepackage{titling}

	%reduce margins to 1'', default margin is too large
	\usepackage[top=1in,bottom=1in,left=1in,right=1in]{geometry}

	\usepackage{fancyhdr}
	\usepackage{lastpage} % for page numbers

	\pagestyle{fancy}
	\cfoot{\theauthor}
	\rfoot{\thepage\ of \pageref{LastPage}}

	%headings must be above a specific font size..
	%	fancyhdr is fussy..
	\setlength{\headheight}{15pt}

% misc ------------------------------------///
	%get space remaining on page, great for images!
	%\includegraphics[height=\measurepage,width=textwidth,keepaspectratio=true]{diagram}
	\newcommand\measurepage{\dimexpr\pagegoal-\pagetotal-\baselineskip\relax}

	\usepackage{amsmath}
	\usepackage{graphicx}

