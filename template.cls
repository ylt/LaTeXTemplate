\LoadClass[12pt,a4paper,titlepage]{article}
\ProvidesClass{template}[2014/02/01 v1.0 SMU SOAC Report]

\usepackage[utf8]{inputenc}


% code ------------------------------------///
	%split into separate file as it was making a mess of template
	\input{code}


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

	%gaps between paragraphs
	\usepackage{parskip}

% misc
	%get space remaining on page, great for images!
	%\includegraphics[height=\measurepage,width=textwidth,keepaspectratio=true]{diagram}
	\newcommand\measurepage{\dimexpr\pagegoal-\pagetotal-\baselineskip\relax}

