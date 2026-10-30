# KIT Physics Lab Report LaTeX Template (P3/P4)

This LaTeX template is intended for the Advanced Physics Lab P3 (P3-T1) and the Master's Physics Lab P4 (P3-T2) at the Department of Physics, Karlsruhe Institute of Technology (KIT). Overleaf is recommended, but the project can also be compiled locally.


## Getting Started

1. Download the project as a ZIP archive using **Code** > **Download ZIP**.
2. In [Overleaf](https://www.overleaf.com/), choose **New Project** > **Upload Project** and select the ZIP archive.

You can also compile locally with `latexmk -pdf main.tex` and a recent LaTeX distribution. Keep `labreport.cls` and the `include/` directory alongside `main.tex`.

## Report Structure

`main.tex` assembles the report in this order:

1. Cover page with the experiment name, group members, group number, and experiment date.
2. Brief introduction.
3. Aim and theoretical background.
4. Experimental setup.
5. Procedure.
6. Evaluation of measured data, including formulas, uncertainty calculation, and results.
7. Discussion of results.
8. References.
9. Copy of the original measurement protocol as the final appendix.

## Project Files

- `chapters/cover-page.tex` contains the cover fields. Update the experiment name, student names, group number, and experiment date; choose the matching group-day marker.
- `chapters/introduction.tex` contains the brief introduction.
- `chapters/aim-and-theoretical-background.tex` covers the experiment aim and theory.
- `chapters/experimental-setup.tex` describes the apparatus and setup.
- `chapters/procedure.tex` describes how the experiment was conducted.
- `chapters/data-evaluation-and-uncertainty-calculation.tex` provides sections for measured data, evaluation formulas, uncertainty calculation, and results.
- `chapters/discussion-of-results.tex` is reserved for interpretation and limitations.
- `chapters/references.tex` loads `include/references.bib`.
- `include/cover-page.pdf` is the cover artwork. `include/original-measurement-protocol.pdf` is included at the end of the report; replace it with a copy of the completed original protocol.
- `include/assignment-sheet.pdf` is retained as a course reference and is not included in the report.
- `main.tex` controls the order of all sections and the appendix. Keep its imports aligned with the required report sequence.

## Shared LaTeX Configuration

`labreport.cls` contains the document class settings, shared package imports, and English cover metadata commands. Keep it beside `main.tex`. The main file selects the class and assembles the report; enter cover details in `chapters/cover-page.tex`.

Chapter and asset names use lowercase kebab-case. Cover metadata commands use English camelCase names such as `\experimentName` and `\groupNumber`.

Place visual assets in these directories:

- `include/graphics/` for diagrams and other figures.
- `include/photos/` for experiment and apparatus photos.
- `include/plots/` for generated plots.

## LaTeX Examples

### Figures

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{include/graphics/figure.pdf}
    \caption{Figure caption.}
    \label{fig:example}
\end{figure}
```

Supported image formats include PNG, JPG, JPEG, and PDF. Store photos in `include/photos/`, plots in `include/plots/`, and other figures in `include/graphics/`. Reference the figure with `\ref{fig:example}`.

### Tables

```latex
\begin{table}[htbp]
    \centering
    \caption{Table caption.}
    \label{tab:example}
    \begin{tabular}{ccc}
        \toprule
        Column 1 & Column 2 & Column 3 \\
        \midrule
        Value & Value & Value \\
        \bottomrule
    \end{tabular}
\end{table}
```

For CSV data, use `\pgfplotstabletypeset` (provided by `pgfplotstable`, loaded in `labreport.cls`):

```latex
\pgfplotstabletypeset[
    columns={Nr,Length(um),Depth(nm)},
    display columns/0/.style={column name={No.}, precision=0, fixed zerofill},
    display columns/1/.style={column name={Length $l$ ($\si{\micro\meter}$)}, precision=1, fixed},
    display columns/2/.style={column name={Depth $d$ ($\si{\nano\meter}$)}, precision=0, fixed zerofill},
]{include/data.csv}
```

### Cross-References

Place a unique label after the caption or heading, then reference it in the text:

```latex
See Figure \ref{fig:example}.
```

### Equations and Quantities

Use `equation` for a single equation and `align` for aligned equations:

```latex
\begin{equation}
    a^2 + b^2 = c^2
    \label{eq:pythagorean}
\end{equation}

\begin{align}
    a^2 + b^2 &= c^2 \\
    c^2 &= a^2 + b^2
    \label{eq:rearranged}
\end{align}
```

Format values with units using `siunitx`:

```latex
\begin{equation}
    \mathrm{Length} = \SI{12.3}{\micro\meter}
\end{equation}
```

Report measured values with statistical and systematic uncertainties as required by the course, for example:

```latex
\begin{equation}
    x = \SI{12.3(2)(1)}{\micro\meter}
\end{equation}
```

### Footnotes and Lists

```latex
Text with a footnote.\footnote{Source or additional note.}

\begin{itemize}
    \item An unnumbered item
    \item Another unnumbered item
\end{itemize}

\begin{enumerate}
    \item A numbered item
    \item Another numbered item
\end{enumerate}
```