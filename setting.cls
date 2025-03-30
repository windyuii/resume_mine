%%%% 参考了https://www.wondercv.com/的模板
\ProvidesClass{setting}
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}


% disable indent globally
\setlength{\parindent}{0pt}

% use hyperlink for email and url
\usepackage{hyperref}
\usepackage{url}
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
    citecolor=black,
}

\urlstyle{tt}

%%%% 利用tikz来定位照片和学校Logo
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{calc}

% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome5
\RequirePackage{fontawesome5}
% use xcolor for customizing color
\RequirePackage{xcolor}

\RequirePackage[super]{nth}
%%%% 自定义黑色
\definecolor{MyBlack}{RGB}{0,0,0}

%%% \widthof[]{} 用于特殊对齐
\usepackage{calc}


% loading fonts
\usepackage{fontspec}
\usepackage{xeCJK}
\CJKsetecglue{} %% 取消中文与数字之间间隙

% Main document font
\setmainfont[
    Path = Font/,
  Extension = .otf ,
  BoldFont = HelveticaNeueLTPro-Md.otf ,
]{HelveticaNeueLTPro-Roman.otf}

\setCJKmainfont[
Path = Font/,
  Extension = .ttf ,
BoldFont=Pro_GB18030DemiBold.ttf,
]{Pro_GB18030.ttf}


\usepackage{relsize}
\usepackage{xspace}

\usepackage[
	a4paper,
	left=0.65cm,
	right=0.65cm,
	top=0.7cm,
	bottom=0.7cm,
	nohead
]{geometry}
\renewcommand{\baselinestretch}{1.15} %定义行间距1.15

\usepackage{titlesec}
\usepackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
% \setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=*}
\setlist[enumerate]{topsep=0.25em, leftmargin=*}

\titleformat{\section}         % Customise the \section command 
  {\large\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [{\color{black}\titlerule}]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1.6}{*1.2}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\logosection}[2]{%
    % 设置图标样式，居中显示并设置颜色为黑色
    \noindent\makebox[\widthof{\faGraduationCap}][c]{\color{black}#1}
    % 显示标题并加粗
    \ \textbf{#2}
    % 计算并绘制水平线，宽度为文本宽度减去标题宽度再减去 1em
    \hfill\rule{\dimexpr\textwidth-\widthof{\makebox[\widthof{\faGraduationCap}][c]{#1}\ \textbf{#2}}-1em}{0.5pt}
    % 换行并设置一定的垂直间距
    \\[0.8ex]
}

\newcommand{\dateRange}[2]{
    {#1 -- \makebox[\widthof{#1}][s]{#2}}
}


\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}


\newcommand{\name}[1]{
  \raggedright{\LARGE\bfseries{#1}}
  \vspace{1.2ex}
}


\newcommand{\contactInfo}[3]{
    \centerline{
        \normalsize{
            \faPhone\ {#1} \quad 
            \faEnvelope\ \href{mailto:{#2}}{#2} \quad 
            \faHome\  \href{#3}{#3}
        }
    }
    \vspace{0.7ex}
}

\newcommand{\basicContactInfo}[2]{
    \centerline{
        \normalsize{
            \faPhone\ {#1} \quad 
            \faEnvelope\ \href{mailto:{#2}}{#2}
        }
    }
    \vspace{0.7ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

\newcommand{\biInfo}[2]{
    {#1 \quad #2}
}

\newcommand{\tripleInfo}[3]{
    {#1 \quad #2 \quad #3}
}

\newfontfamily{\FA}{FontAwesome.otf}

% 添加一个超粗体命令
\newcommand{\superbold}[1]{{\bfseries\fontsize{11}{13}\selectfont #1}}

% 添加contour包用于描边
\RequirePackage{contour}
\contourlength{0.06pt} % 描边粗细
\newcommand{\outlinebold}[1]{\contour{black}{\textbf{#1}}}

