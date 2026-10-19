# How to format code in LaTeX

Proper code formatting is especially important in reports: it gives more information than an image and looks more professional.

## `verbatim`

This is the easiest way to display code in LaTeX documents; the verbatim environment is built into LaTeX. It only generates an output in a monospaced font.

```latex
\begin{verbatim}
Text enclosed inside \texttt{verbatim} environment
is printed directly
and all \LaTeX{} commands are ignored.
\end{verbatim}
```

It also has a starred version that gives more information about the typed characters.

```latex
\begin{verbatim*}
Text enclosed inside \texttt{verbatim} environment
is printed directly
and all \LaTeX{} commands are ignored.
\end{verbatim*}
```

## `listings`

It requires the `listings` package.

```latex
\usepackage{listings}
```

By default, it does not do much more than the verbatim environment.

In a block, the `language` parameter sets the programming language.

```latex
\begin{lstlisting}[language=Python]
print("Hello world")
\end{lstlisting}
```

### Importing code from a file

The command `\lstinputlisting{<file>}` displays the content of a file.

```latex
\lstinputlisting[language=Python]{my_python_file.py}
```

A range of lines can also be specified.

```latex
\lstinputlisting[language=Python, firstline=2, lastline=12]{my_python_file.py}
```

### Code styles and colors

Styles control how code is displayed; a style can be global or named.

#### Global style

It is done through the `\lstset` command.

```latex
\lstset {
    % Options
}
```

#### Named style

It is done through the `\lstdefinestyle` command.

```latex
\lstdefinestyle{<style-name>} {
    % Options
}
```

#### Style options

- `backgroundcolor`: color for the background.

    > External color or "xcolor" package is needed.

- `commentstyle`: style of comments in source language.

- `basicstyle`: font size/family/etc.

    > E.g. `basicstyle=\ttfamily\small`.

- `keywordstyle`: style of keywords in source language.

    > E.g. `keywordstyle=\color{red}`.

- `numberstyle`: style used for line numbers.

- `numbersep`: distance of line numbers from the code.

- `stringstyle`: style of strings in the source language.

- `showspaces`: emphasize spaces in code.

    > true/false.

- `showstringspaces`: emphasize spaces in strings.

    > true/false.

- `showtabs`: emphasize tabulators in code.

    > true/false.

- `numbers`: position of line numbers.

    > left/right/none.

- `prebreak`: displaying mark on the end of breaking line.

    > E.g. `prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}}`.

- `captionpos`: position of caption.

    > t/b.

- `frame`: showing frame outside code.

    > none/leftline/topline/bottomline/lines/single/shadowbox.

- `breakatwhitespace`: sets if automatic breaks should only happen at whitespaces.

- `breaklines`: automatic line breaking.

- `keepspaces`: keep spaces in the code, useful for indentation.

- `tabsize`: default tabsize.

- `escapeinside`: specify characters to escape from source code to LaTeX.

    > E.g. `escapeinside={\%*}{*)}`.

- `rulecolor`: specify the color of the frame box.

#### Usage example

```latex
\documentclass{article}
\usepackage{listings}
\usepackage{xcolor}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,
    breaklines=true,
    captionpos=b,
    keepspaces=true,
    numbers=left,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2
}

\lstset{style=mystyle}

\begin{document}
The following code uses the custom style.

\begin{lstlisting}[language=Python]
print("Hello world")
\end{lstlisting}

\end{document}
```
