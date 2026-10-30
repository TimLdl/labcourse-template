\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{labreport}[2026/10/30 KIT physics lab report class]
\LoadClassWithOptions{scrreprt}

% Page layout and typography.
\RequirePackage[a4paper,left=25mm,right=25mm,top=25mm,bottom=25mm]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage{microtype}
\RequirePackage[english]{babel}

% Figures, tables, plots, and mathematics.
\RequirePackage{graphicx}
\RequirePackage{textcomp}
\RequirePackage{gensymb}
\RequirePackage{subcaption}
\RequirePackage{xcolor}
\RequirePackage{mathtools}
\RequirePackage{amssymb}
\RequirePackage[separate-uncertainty=true]{siunitx}
\RequirePackage[version=4]{mhchem}
\RequirePackage{tikz}
\RequirePackage{booktabs}
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.18}
\RequirePackage{pgfplotstable}

% References and included documents.
\RequirePackage{varioref}
\RequirePackage{pdfpages}
\RequirePackage{import}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}

% Cover-page metadata. Set values in chapters/cover-page.tex.
\newcommand{\labCourse}{}
\newcommand{\groupNumber}{}
\newcommand{\groupDay}{}
\newcommand{\groupDayPosition}{}
\newcommand{\term}{}
\newcommand{\experimentName}{}
\newcommand{\studentOneName}{}
\newcommand{\studentOneEmail}{}
\newcommand{\studentTwoName}{}
\newcommand{\studentTwoEmail}{}
\newcommand{\supervisorName}{}
\newcommand{\experimentDate}{}
\newcommand{\submissionDate}{}
