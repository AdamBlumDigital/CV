\ProvidesClass{cv}

\LoadClass[a4paper]{article}

%%%%%%%%%%%%%%%%%%%%%%
%	Remove Page Numbers
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{nopageno}


%%%%%%%%%%%%%%%%%%%%%%
%	Page Geometry
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{
	top={1.2in},
	bottom={1in},
	left={1.8in},
	right={1.8in}
}

%%%%%%%%%%%%%%%%%%%%%%
%	Use Linux Biolinum as default typeface
%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{sfdefault}{
	\PassOptionsToPackage{\CurrentOption}{libertine}
}
\ExecuteOptions{sfdefault}
\ProcessOptions\relax
\RequirePackage{libertine}

\DeclareOption{libertine}{
	\PassOptionsToPackage{\CurrentOption}{newtxmath}
}
\ExecuteOptions{libertine}
\ProcessOptions\relax
\RequirePackage{newtxmath}

\DeclareOption{T1}{
	\PassOptionsToPackage{\CurrentOption}{fontenc}
}
\ExecuteOptions{T1}
\ProcessOptions\relax
\RequirePackage{fontenc}

%%%%%%%%%%%%%%%%%%%%%%
%	No paragraph indentation
%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{indent=0pt}{
	\PassOptionsToPackage{\CurrentOption}{parskip}
}
\ExecuteOptions{indent=0pt}
\ProcessOptions\relax
\RequirePackage{parskip}


%%%%%%%%%%%%%%%%%%%%%%
%	Phone Number Formatting
%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{country=US}{
	\PassOptionsToPackage{\CurrentOption}{phonenumbers}
}
\DeclareOption{foreign}{
	\PassOptionsToPackage{\CurrentOption}{phonenumbers}
}
\ExecuteOptions{country=US}
\ExecuteOptions{foreign}
\ProcessOptions\relax
\RequirePackage{phonenumbers}


%%%%%%%%%%%%%%%%%%%%%%
%	Add additional title commands
%%%%%%%%%%%%%%%%%%%%%%
\DeclareRobustCommand\phone[1]{\gdef\@phone{#1}}
\DeclareRobustCommand\email[1]{\gdef\@email{#1}}


%%%%%%%%%%%%%%%%%%%%%%
%	Redefine \title{} command
%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
	\def\@maketitle{%
		\newpage
		\null
			{\Large\textbf\@author} \hfill \@email \hfill \phonenumber{\@phone}
			\par%
			\hrulefill
		\par%
	\vskip 1.5em}
\makeatother


%%%%%%%%%%%%%%%%%%%%%%
%	Summary
%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{summary}{\itshape}{\vskip 1.5em}


%%%%%%%%%%%%%%%%%%%%%%
%	Section Styles
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}

\titleformat{\section}
{\bfseries}{}{}{}
[\titlerule\smallskip]

\titleformat{\subsection}
{}{}{}{}

%%%%%%%%%%%%%%%%%%%%%%
%	List Styles
%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{enumitem}
\setlist{leftmargin=*}


%%%%%%%%%%%%%%%%%%%%%%
%	Entry
%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{entry}[3]{{\large\bfseries#1}\hspace{1em}{#2}\hfill{#3}\par}{\bigskip}
