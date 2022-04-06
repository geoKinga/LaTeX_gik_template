%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bachelor's & Master's Thesis Template                                %%
%% Created by Artur M. Brodzki & Piotr Woźniak  (2019-2010)             %%
%% Faculty of Electronics and Information Technology                    %%
%% Modified by Kinga Węzka (2021)                                       %%
%% Faculty Geodesy and Cartography                                      %%
%% Warsaw University of Technology                                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{gik/gik-thesis}
\LoadClass[
    12pt,
    twoside
]{mwart}

%--------------------------------------
% Define class parameters
%--------------------------------------
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
    family=gik/gik-thesis.cls,
    prefix=gik
}

\DeclareStringOption[2.5cm]{left}
\DeclareStringOption[2.5cm]{right}
\DeclareStringOption[2.5cm]{top}
\DeclareStringOption[2.5cm]{bottom}
\DeclareStringOption[6mm]{bindingoffset}
\DeclareBoolOption[false]{nohyphenation}
\ProcessKeyvalOptions*

%--------------------------------------
% PW COLORS
%--------------------------------------
\RequirePackage[table]{xcolor}
\RequirePackage{color}
\definecolor{pw_sloneczny}{RGB}{254, 213, 66}
\definecolor{pw_morelowy}{RGB}{234, 124, 90}
\definecolor{pw_mietowy}{RGB}{106, 186, 156}
\definecolor{pw_sliwkowy}{RGB}{150, 95, 119}
\definecolor{pw_szafirowy}{RGB}{120, 150, 207}
\definecolor{pw_wrzosowy}{RGB}{180, 160, 170}
\definecolor{pw_grafitowy}{RGB}{60, 60, 76}
\definecolor{pw_mokka}{RGB}{100, 90, 90}

%--------------------------------
% Common packages
%--------------------------------
\RequirePackage{amsmath}    % Basic mathematical typesetting
\RequirePackage{amssymb}    % Advanced math symbols
\RequirePackage{amsthm}     % Theorems typesetting
\RequirePackage{siunitx}    % SI unit HTU \si{}
\RequirePackage{array}      % Advanced table column formats
\RequirePackage{chngcntr}   % Per-section counters
\RequirePackage{enumitem}   % Itemize/enumrate
\RequirePackage{fancyhdr}   % Custom header/footer styles
\RequirePackage{fourier}    % Adobe Utopia font
\RequirePackage{graphicx}   % Enhanced images support (allows include formats like: pdf, png, jpg) 
\RequirePackage{float}
\RequirePackage{subfloat}       % subfigure options
\RequirePackage{subcaption}     % subfigure options
\captionsetup{compatibility=false} % subfigure options when using caption
\RequirePackage[            % Custom figure and table captions
    font=small,
    labelfont=bf,
    labelsep=period
]{caption}

\RequirePackage{booktabs}   % Provides option \toprule, \midrule, bottomrule
\RequirePackage{ifluatex}   % LuaTeX-specific options
\RequirePackage{ifpdf}      % pdfTeX-specific options
\RequirePackage{ifxetex}    % XeTeX-specific options
\RequirePackage{kantlipsum} % English kantian-style lipsum
\RequirePackage{lipsum}     % Lorem ipsum
\RequirePackage{longtable}  % Multi-page tables
\RequirePackage{multirow}   % Advanced table cells
\RequirePackage{tabularx}   % to wrap words (here use in enviroment condition)
\RequirePackage{setspace}   % Set space between lines
\RequirePackage{scrextend}  % Allows \addmargin environment
\RequirePackage{tocloft}    % Custom ToC/LoF/LoT
\RequirePackage{url}        % URL-sensitive line breaks
\RequirePackage{xkeyval}    % Keys and class parameters
\RequirePackage{xspace}     % Remove duplicated spaces

%--------------------------------------
% Code  listings and verbatim ()
%--------------------------------------
\usepackage{courier}                   % to keep bold for \ttfamily
\RequirePackage{verbatim}              % environment which looks for the exact string 
\RequirePackage{pmboxdraw}             % alows to use special unicode character U + 20000
\RequirePackage{listings}              % Code listings
\RequirePackage{ucs}                   % tosupportencodingutf8x.
\renewcommand{\lstlistingname}{Kod}    % put the name of caption 
% general option of listing
\lstset{aboveskip       = 1.mm,
        belowskip       = 1.mm,
        frame           = single,
        numbers         = left,
        firstnumber     = 1,
        xleftmargin     = 2em,
        numberstyle     = {\footnotesize},
        basicstyle      ={\footnotesize\ttfamily}, % \ttfamily
        breaklines      = true,
        backgroundcolor = \color{pw_grafitowy!1!white},
        commentstyle    = \color{pw_grafitowy!85!white}\textit,
        stringstyle     = \color{pw_grafitowy},
        keywordstyle    = \bfseries,
        otherkeywords   = {def, return, assert, with, try, exept, Lambda, Map, Fiter, yield, nonlocal, bytes, Ellipsis, NotImplemented, None, setdefault, read, readline, readlines, write, writeline, close, self, SyntaxError, ZeroDivisionError, SyntaxError, IndentationError, IndexError, AssertionError, KeyError, TypeError, NameError, AttributeError, ValueError, RuntimeError,False, True},                
        breaklines      = true,
        postbreak=\mbox{\textcolor{red}{\rotatebox[origin=c]{180}{$\Lsh$}}\space}, % break line for long text
        inputencoding   = utf8x, % incorporate polish characters
        extendedchars   = \true,
            literate={ą}{{\k{a}}}1
                    {Ą}{{\k{A}}}1
                    {ę}{{\k{e}}}1
                    {Ę}{{\k{E}}}1
                    {ó}{{\'o}}1
                    {Ó}{{\'O}}1
                    {ś}{{\'s}}1
                    {Ś}{{\'S}}1
                    {ł}{{\l{}}}1
                    {Ł}{{\L{}}}1
                    {ż}{{\.z}}1
                    {Ż}{{\.Z}}1
                    {ź}{{\'z}}1
                    {Ź}{{\'Z}}1
                    {ć}{{\'c}}1
                    {Ć}{{\'C}}1
                    {ń}{{\'n}}1
                    {Ń}{{\'N}}1
        }

%--------------------------------------
% PdfTeX specific configuration
%--------------------------------------
\ifpdf
    \RequirePackage[T1]{fontenc}
    \RequirePackage[utf8]{inputenc} % coding system
    \RequirePackage[
        protrusion=true,
        expansion=true
    ]{microtype}
\fi

%--------------------------------------
% XeTeX specific configuration
%--------------------------------------
\ifxetex
    \RequirePackage{fontspec-xetex}
    \RequirePackage[
        protrusion=true,
    ]{microtype}
\fi

%--------------------------------------
% LuaTeX specific configuration
%--------------------------------------
\ifluatex
    \RequirePackage[T1]{fontenc}
    \RequirePackage[utf8]{luainputenc}
    \RequirePackage{luatexbase}
    \RequirePackage{luacode}
    \RequirePackage[
        protrusion=true,
        expansion=true
    ]{microtype}
    % In LuaTeX, we can prevent one-letter words
    % from beging at the end of the line.
    \begin{luacode}
    local debug = false
    local glyph_id = node.id "glyph"
    local glue_id  = node.id "glue"
    local hlist_id = node.id "hlist"

    local prevent_single_letter = function (head)
        while head do
            if head.id == glyph_id then
                if unicode.utf8.match(unicode.utf8.char(head.char),"%a") then     -- is a letter
                    if head.prev.id == glue_id and head.next.id == glue_id then   -- is one letter word

                        local p = node.new("penalty")
                        p.penalty = 10000

                        if debug then
                            local w = node.new("whatsit","pdf_literal")
                            w.data = "q 1 0 1 RG 1 0 1 rg 0 0 m 0 5 l 2 5 l 2 0 l b Q"
                            node.insert_after(head,head,w)
                            node.insert_after(head,w,p)
                        else
                            node.insert_after(head,head,p)
                        end
                    end
                end
            end
            head = head.next
        end
        return true
    end

    luatexbase.add_to_callback("pre_linebreak_filter",prevent_single_letter,"~")

    \end{luacode}
\fi

%--------------------------------------
% Default margin is 2.5 cm
%--------------------------------------
\RequirePackage[
    a4paper,
    left=\gikleft,
    right=\gikright,
    top=\giktop,
    bottom=\gikbottom,
    bindingoffset=\gikbindingoffset
]{geometry}

%--------------------------------------
% Adjastment
%--------------------------------------
\widowpenalty=10000 % linijki akapitu żeby 
\clubpenalty=10000  % żeby nie było pojedynczych linii na koncu strony

%--------------------------------
% CONDITIONS: A new enviroments  to explain parameters in equations
%--------------------------------
\newenvironment{conditions*}
  {\par\vspace{\abovedisplayskip}\noindent
   \tabularx{\columnwidth}{>{$}l<{$} @{${}: {}$} >{\raggedright\arraybackslash}X}}
  {\endtabularx\par\vspace{\belowdisplayskip}}

%--------------------------------
% Produce clickable hyperlinks
% in ToC, LoF and LoT
%--------------------------------
\RequirePackage{hyperref}
\hypersetup{hidelinks,
        bookmarks=true,
        bookmarksopen=true,
        colorlinks=true,            % hyperlinks will be coloured
        linkcolor=black,            % hyperlink text will be green
        linkbordercolor=black,      % hyperlink border will be red
        citebordercolor=black,      % color of links to bibliography
        citecolor=black,
        filebordercolor=black,      % color of file links
        urlbordercolor=black,       % color of external links
        filecolor=black,
        menucolor=black,
        urlcolor=black,
        backref= page,              % page, section(s)
        pagebackref = true,         % to show number of page with citations backref=none
        plainpages=true,            % false
        pdfpagelabels,
        hypertexnames=true,         % false
        linktocpage}

%--------------------------------------
% Bibiography specification ver PL
%--------------------------------------
\RequirePackage[natbibapa]{apacite}	    % bibliography natbib
\bibliographystyle{apacite}
%\nocite{*} % uzyj aby uwzględnić wszystkie odniesienia w bazie danych .bib (bez tego jedynie cytowane pozycje)
\renewcommand{\BBAA}{i}  % between authors in parenthetical cites and ref. list
\renewcommand{\BBAB}{i}  % between authors in in-text citation
\renewcommand{\BAnd}{i}  % for ``Ed. \& Trans.'' in ref. list
\renewcommand{\BOthers}{i in}
\renewcommand{\doiprefix}{DOI:}
\urlstyle{APACrm}

\RequirePackage[hyperpageref]{backref}    % back referencing of bibliography
\let \backreforig \backref
\renewcommand*{\backref}[1]{[\backreforig{#1}]}
\AtBeginDocument{%
    \renewcommand*{\PrintBackRefs}[1]{\unskip}%
}
% Customize list of backreferences.
% From https://tex.stackexchange.com/a/183735/1340
\renewcommand*{\backreflastsep}{, }
\renewcommand*{\backreftwosep}{, }
\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{[{\small 
        \ifcase #1 Not cited.       % or use \relax if you do not want the "No  citations" message         
            \or   str. #2   % Cited on page
            \else str. #2    % Cited on pages
        \fi%
    }]}

%--------------------------------
% Turn off hyphenation
%--------------------------------
\ifgiknohyphenation
    \tolerance=1
    \emergencystretch=\maxdimen
    \hyphenpenalty=10000
    \hbadness=10000
\fi

%--------------------------------
% Initial setup
%--------------------------------
\setstretch{1.2}
\counterwithin{figure}{section}
\counterwithin{table}{section}

%--------------------------------
% Table of Contents setup
%--------------------------------
\setlength{\cftbeforesecskip}{2pt}
\renewcommand{\cftsecfont}{\bf\normalsize}
\renewcommand{\cftsecpagefont}{\normalfont}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftsecdotsep}{\cftdotsep}

%--------------------------------
% List of Figures setup
%--------------------------------
\renewcommand*\l@figure{\@dottedtocline{1}{0.5em}{2.25em}}
\newcommand{\listoffigurestoc}{
    \listoffigures
    \addcontentsline{toc}{section}{\listfigurename}
}

%--------------------------------
% List of Tables setup
%--------------------------------
\renewcommand*\l@table{\@dottedtocline{1}{0.5em}{2.25em}}
\newcommand{\listoftablestoc}{
    \listoftables
    \addcontentsline{toc}{section}{\listtablename}
}

%--------------------------------
% Header & footer
%--------------------------------
\SetSectionFormatting{section}{0.5cm}{\FormatHangHeading{\Large}}{0.5cm}
\let\oldsection\section
\renewcommand{\section}{
	\thispagestyle{plain}
	\oldsection
}

\fancypagestyle{plain}{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[LE,RO]{\thepage}
}

\fancypagestyle{headings}{
	\fancyhead{}
	\renewcommand{\headrulewidth}{1pt}
	\fancyheadoffset{0cm}
	\fancyhead[RO]{\nouppercase{\thesection.\hspace{8pt}\leftmark}}
	\fancyhead[LE]{\nouppercase{\thesection.\hspace{8pt}\leftmark}}
	\fancyfoot{}
	\fancyfoot[LE,RO]{\thepage}
}
\pagestyle{headings}

\renewcommand{\sectionmark}[1]{
	\markboth{#1}{#1}
}

%--------------------------------
% Set default list style
%--------------------------------
\setlist[itemize,1]{topsep=2pt,label=\large$\bullet$, leftmargin=28pt}
\setlist[itemize,2]{topsep=2pt,leftmargin=18pt}
\setlist[itemize,3]{topsep=2pt,leftmargin=18pt}

\setlist[enumerate,1]{topsep=2pt,leftmargin=24pt}
\setlist[enumerate,2]{topsep=2pt,leftmargin=16pt}
\setlist[enumerate,3]{topsep=2pt,leftmargin=16pt}

%--------------------------------
% Wybór języka pracy
%--------------------------------
\newcommand{\langpol}{
    \newcommand{\@lang}{polish}
    \usepackage[polish]{babel}

    \AtBeginDocument{
		\renewcommand{\listfigurename}{Spis rysunków}
		\renewcommand{\listtablename}{Spis tabel}
		\renewcommand{\tablename}{Tabela}
	}
}
\newcommand{\langeng}{
    \newcommand{\@lang}{english}
    \usepackage[english]{babel}

	\AtBeginDocument{
		\renewcommand{\listfigurename}{List of Figures}
		\renewcommand{\listtablename}{List of Tables}
		\renewcommand{\tablename}{Table}
	}
}

%--------------------------------
% Streszczenie po polsku
%--------------------------------
\newcommand{\streszczenie}{
    \thispagestyle{plain}
    \begin{center}\textbf{\large\@title}\end{center}
    \textbf{\\ Streszczenie.\xspace}
}
\newcommand{\slowakluczowe}{\vspace{0.5cm}\par\noindent \textbf{Słowa kluczowe: \xspace}}

%--------------------------------
% Streszczenie po angielsku
%--------------------------------
\renewcommand{\abstract}{
    \thispagestyle{plain}
    \begin{center}\textbf{\large\@engtitle}\end{center}
    \textbf{\\ Abstract.\xspace}
}
\newcommand{\keywords}{\vspace{0.5cm}\par\noindent \textbf{Keywords: \xspace}}

%--------------------------------
% Oświadczenie o autorstwie
%--------------------------------
\newcommand{\makeauthorship}{
    \ifnum \pdf@strcmp{\@lang}{polish} = 0
        \thispagestyle{plain}
        \begin{figure}[ht]
            \vspace{-55pt}
            \noindent\makebox[\textwidth]{
            \includegraphics[width=1.19\textwidth]{gik/oswiadczenie_autora_pracy.pdf}
            }
        \end{figure}
    \fi
    \ifnum \pdf@strcmp{\@lang}{english} = 0
        \thispagestyle{plain}
        \begin{figure}[ht]
            \vspace{-55pt}
            \noindent\makebox[\textwidth]{
            \includegraphics[width=1.19\textwidth]{gik/thesis_author_declaration-1.pdf}
            }
        \end{figure}
        \newpage
        \thispagestyle{plain}
        \begin{figure}[h]
            \vspace{-55pt}
            \noindent\makebox[\textwidth]{
            \includegraphics[width=1.19\textwidth]{gik/thesis_author_declaration-2.pdf}
            }
        \end{figure}
    \fi
}

%--------------------------------
% Strona tytułowa - makra
%--------------------------------
\newcommand{\EngineerThesis}{
    \newcommand{\ThesisType}{Engineer}
}
\newcommand{\MasterThesis}{
    \newcommand{\ThesisType}{Master}
}
\newcommand{\zaklad}[1]{
    \newcommand{\@zaklad}{#1}
}
\newcommand{\kierunek}[1]{
    \newcommand{\@kierunek}{#1}
}
\newcommand{\specjalnosc}[1]{
    \newcommand{\@specjalnosc}{#1}
}
\newcommand{\album}[1]{
    \newcommand{\@album}{#1}
}
\newcommand{\promotor}[1]{
    \newcommand{\@promotor}{#1}
}
\newcommand{\konsultacje}[1]{
    \newcommand{\@konsultacje}{#1}
}
\newcommand{\ThesisNumber}[1]{
    \newcommand{\@ThesisNumber}{#1}
}
\newcommand{\engtitle}[1]{
    \newcommand{\@engtitle}{#1}
}

%--------------------------------
% Strona tytułowa
%--------------------------------
\let\oldmaketitle\maketitle
\renewcommand{\maketitle}{
    \linespread{1.15}

    \thispagestyle{empty}
    \pagenumbering{gobble}

    \begin{center}
        %\sffamily
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            \includegraphics[width=\textwidth]{gik/header.png} \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            \includegraphics[width=\textwidth]{gik/header-eng.png} \\
        \fi
        \hfill \break
        \hfill \break
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            Zakład \@zaklad\\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            Department of \@zaklad\\
        \fi
        \hfill \break
        \hfill \break
        \hfill \break
        \ifnum \pdf@strcmp{\ThesisType}{Engineer} = 0
            \ifnum \pdf@strcmp{\@lang}{polish} = 0
                \includegraphics[width=\textwidth]{gik/title-inz.png} \\
            \fi
            \ifnum \pdf@strcmp{\@lang}{english} = 0
                \includegraphics[width=\textwidth]{gik/title-inz-eng.png} \\
            \fi
        \fi
        \ifnum \pdf@strcmp{\ThesisType}{Master} = 0
            \ifnum \pdf@strcmp{\@lang}{polish} = 0
                \includegraphics[width=\textwidth]{gik/title-mgr.png} \\
            \fi
            \ifnum \pdf@strcmp{\@lang}{english} = 0
                \includegraphics[width=\textwidth]{gik/title-mgr-eng.png} \\
            \fi
        \fi
        \hfill \break
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            na~kierunku \@kierunek \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            in~the~field~of~study \@kierunek \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            w~specjalności \@specjalnosc \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            and~specialisation \@specjalnosc \\
        \fi
        \hfill \break
        \hfill \break
        \large
        \@title \\
        \hfill \break
        \hfill \break
        \normalsize
        \@ThesisNumber \\
        \LARGE
        \@author \\
        \normalsize
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            Numer~albumu \@album \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            student record book number \@album \\
        \fi
        \hfill \break
        \hfill \break
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            promotor \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            thesis supervisor \\
        \fi
        \@promotor \\
        \hfill \break
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            konsultacje \\
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            co-supervisor \\
        \fi
        \@konsultacje \\
        
        \vfill
        \ifnum \pdf@strcmp{\@lang}{polish} = 0
            WARSZAWA \@date
        \fi
        \ifnum \pdf@strcmp{\@lang}{english} = 0
            WARSAW \@date
        \fi
    \end{center}


    \pagenumbering{arabic}
    \setcounter{page}{1}
}

%--------------------------------
% Pusta strona - makro
%--------------------------------
\newcommand{\blankpage}{
    \newpage
    \thispagestyle{empty}
    \
    \newpage
}

%--------------------------------
% Skrót (akronim) - makro
%--------------------------------
\newcommand{\acronymlist}{
    \ifnum \pdf@strcmp{\@lang}{polish} = 0
        \section*{Wykaz symboli i skrótów}
    \fi
    \ifnum \pdf@strcmp{\@lang}{english} = 0
        \section*{List of Symbols and Abbreviations}
    \fi
}
\newcommand{\acronym}[2]{
    \par\noindent\hspace{0.4em}
    {\textbf{#1} -- #2}
}

%--------------------------------
% Spis załączników - makra
%--------------------------------
\newcommand{\nocontentsline}[3]{}
\newcommand{\tocless}[2]{%
    \bgroup\let\addcontentsline=\nocontentsline#1{#2}\egroup
}

%--------------------------------
% Spis załączników - makra
%--------------------------------
\usepackage[titletoc]{appendix}% https://ctan.org/pkg/appendix

% \newcommand{\@appendixtitle}{
%     \ifnum \pdf@strcmp{\@lang}{polish} = 0
%         Załącznik
%     \fi
%     \ifnum \pdf@strcmp{\@lang}{english} = 0
%         Appendix
%     \fi
% }

% \let\standardappendix\appendix
% \renewcommand\appendix[1]{%
%     \tocless\section{\hspace*{-.5em} #1}
%     \addcontentsline{app}{subsection}{\hspace*{-1.1em}\arabic{section}.\hspace*{0.5em} #1}
% }

\newcommand\listofappendicestoc{
    \ifnum \pdf@strcmp{\@lang}{polish} = 0
        \section*{Spis załączników}\@starttoc{app}
    \fi
    \ifnum \pdf@strcmp{\@lang}{english} = 0
        \section*{List of Appendices}\@starttoc{app}
    \fi

    \standardappendix
    \renewcommand{\thesection}{\@appendixtitle~\arabic{section}}
}
