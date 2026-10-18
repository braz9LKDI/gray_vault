# Style guidelines

This document describes the writing and formatting conventions used in this vault.

The goal is to keep notes clear, portable, easy to edit and comfortable to read in plain Markdown.

Kanban boards (notes with `kanban-plugin` in their frontmatter) follow the format of the Kanban plugin and are exempt from these rules.

## General writing style

- Notes use valid Markdown.

- The writing style is direct, concise and readable.

    Bad:

    ```md
    It is important to take into consideration the fact that Git is a tool that can be used for controlling different versions of files.
    ```

    Good:

    ```md
    Git controls file versions.
    ```

- The tone is formal but not stiff. Plain words are preferred over ceremonial ones.

    Bad:

    ```md
    The configuration file is required to be modified prior to execution.
    ```

    Good:

    ```md
    The configuration file must be changed before running the program.
    ```

- Connected paragraphs are preferred when they make an explanation easier to follow.

    Bad:

    ```md
    - Git stores snapshots.

    - Commits represent changes.

    - Branches allow parallel work.
    ```

    Good:

    ```md
    Git stores snapshots of a project. Each commit represents a specific change and branches allow parallel work without modifying the main line directly.
    ```

- Lists are used for steps, checklists, grouped ideas or cases where visual separation improves clarity.

    Bad:

    ```md
    First check the current branch, then create the new branch, then push it to the remote repository, then open the pull request.
    ```

    Good:

    ```md
    To create a new branch:

    1. Check the current branch.

    2. Create the new branch.

    3. Push it to the remote repository.

    4. Open the pull request.
    ```

- The Oxford comma is not used.

    Bad:

    ```md
    Git, Docker, and Linux are useful tools.
    ```

    Good:

    ```md
    Git, Docker and Linux are useful tools.
    ```

- Second-person language is avoided. Explanations use passive voice, impersonal constructions or neutral phrasing instead.

    Bad:

    ```md
    You can use `grep` to search text inside files.
    ```

    Good:

    ```md
    The `grep` command can be used to search text inside files.
    ```

- First person is allowed, and welcome, for my own choices, opinions and artifacts, such as my dotfiles or my other notes. The impersonal rule governs instructions and descriptions, not references to my own work.

    Bad:

    ```md
    The default configuration is used by the author of this note.
    ```

    Good:

    ```md
    Personally, I use the default configuration.
    ```

- Existing mixtures of English and Spanish are part of the note's original context and voice, so they are kept. This covers deliberate bilingual content, not stray untranslated words: a lone Spanish heading in an English note is a leftover and gets translated.

    Bad, a deliberate mixture normalized to one language:

    ```md
    El comando `ls` muestra los archivos del directorio actual, también llamado working directory.
    ```

    ```md
    El comando `ls` muestra los archivos del directorio actual, también llamado directorio de trabajo.
    ```

    Bad, a leftover kept:

    ```md
    ## Instalación

    The package is installed with `apt`.
    ```

    Good:

    ```md
    ## Installation

    The package is installed with `apt`.
    ```

- Bold text is rare and reserved for emphasis that is genuinely necessary.

    Bad:

    ```md
    **Git** is a **version control system** used to **track changes**.
    ```

    Good:

    ```md
    Git is a version control system used to track changes.
    ```

- Parenthetical information uses commas, parentheses or a colon, never dashes.

    Bad:

    ```md
    Markdown is portable — especially when notes are stored as plain text.
    ```

    Good:

    ```md
    Markdown is portable, especially when notes are stored as plain text.
    ```

    Also good:

    ```md
    Markdown is portable (especially when notes are stored as plain text).
    ```

- Dashes are not used as separators either. Headings carry no number prefix and quote attributions go in parentheses.

    Bad:

    ```md
    ## 35 - Seleccionar columnas

    > "Write code that is easy to delete, not easy to extend." - Tef, Programming is Terrible
    ```

    Good:

    ```md
    ## Seleccionar columnas

    > "Write code that is easy to delete, not easy to extend." (Tef, Programming is Terrible)
    ```

- Quotations keep their original wording. The voice and punctuation rules apply to my own text, not to the words of others.

## Lists

- Bullet and numbered lists use one empty line between items.

    Bad:

    ```md
    - First item.
    - Second item.
    - Third item.
    ```

    Good:

    ```md
    - First item.

    - Second item.

    - Third item.
    ```

    A nested list starts on the line right after its parent item, without an empty line, because Prettier removes it.

    ```md
    - Parent item:
        - First nested item.

        - Second nested item.

    - Next item.
    ```

- List items end with a period, unless the item ends with a question mark.

    Bad:

    ```md
    - First item

    - Second item

    - Is this a question?.
    ```

    Good:

    ```md
    - First item.

    - Second item.

    - Is this a question?
    ```

- Sibling items share one shape. If one item in a list has an explanatory sentence, every item in that list has one.

    Bad:

    ```md
    - `ls`: lists the contents of a directory.

    - `cd`.

    - `pwd`: prints the current directory.
    ```

    Good:

    ```md
    - `ls`: lists the contents of a directory.

    - `cd`: changes the current directory.

    - `pwd`: prints the current directory.
    ```

## Capitalization

Capital letters are used only in the following cases:

- After a period.

    Bad:

    ```md
    Git tracks changes. it stores project history.
    ```

    Good:

    ```md
    Git tracks changes. It stores project history.
    ```

- At the beginning of a paragraph.

    Bad:

    ```md
    markdown files are easy to read.

    plain text works well with version control.
    ```

    Good:

    ```md
    Markdown files are easy to read.

    Plain text works well with version control.
    ```

- At the start of a list item, except when the item continues the sentence that introduces the list. An item continues that sentence when the sentence is grammatically incomplete without it.

    Bad:

    ```md
    - this item starts with a lowercase letter.

    - this one also starts with a lowercase letter.
    ```

    Good:

    ```md
    - This item starts with a capital letter.

    - This one also starts with a capital letter.
    ```

    Bad:

    ```md
    The main goals are:

    - Portability.

    - Readability.

    - Easy editing.
    ```

    Good:

    ```md
    The main goals are:

    - portability.

    - readability.

    - easy editing.
    ```

- In headings, which use sentence case.

    Bad:

    ```md
    ## Installing The Package Manager
    ```

    Good:

    ```md
    ## Installing the package manager
    ```

- For proper names, including package and product names, spelled as their authors spell them.

    Bad:

    ```md
    obsidian, linux, Github, MacOS and NPM are proper names.
    ```

    Good:

    ```md
    Obsidian, Linux, GitHub, macOS and npm are proper names.
    ```

## Code

- Code examples use fenced blocks with triple backticks, and every fence is tagged with its language.

    Bad:

    ````md
    ```
    ls -la
    ```
    ````

    Good:

    ````md
    ```bash
    ls -la
    ```
    ````

- Each language has one lowercase tag, without synonyms: `bash` for shell, `ps1` for PowerShell, `javascript`, `dockerfile`, `md` for Markdown and `text` for key sequences and other non-languages.

    Bad:

    ````md
    ```SH
    ls -la
    ```
    ````

    Good:

    ````md
    ```bash
    ls -la
    ```
    ````

- Placeholders are written as `<hyphenated-lowercase>`. Uppercase is reserved for key names and acronyms, such as `<SSID>`, `<ENTER>` or `<ARROW>`.

    Bad:

    ```bash
    git clone <REPO_URL>
    ```

    Good:

    ```bash
    git clone <repo-url>
    ```

- Placeholders referenced in text, outside code blocks, are written in italics with escaped angle brackets, so Markdown does not read them as HTML tags.

    Bad:

    ```md
    Replace <repo-url> with the address of the repository.
    ```

    Good:

    ```md
    Replace _\<repo-url\>_ with the address of the repository.
    ```

## Mathematics

- Inline mathematics uses single dollar signs, only when the notation is genuinely mathematical. Units and plain numbers are written as normal text.

    Bad:

    ```md
    The file weighs $5$ MB.
    ```

    Good:

    ```md
    The file weighs 5 MB and the search runs in $O(n \log n)$.
    ```

- Display mathematics blocks contain no blank lines, because Prettier and markdownlint (MD012) undo each other's fix around a blank line inside them. A visual gap uses `\\[10 pt]` instead.

    Bad:

    ```md
    $$
    a = b

    c = d
    $$
    ```

    Good:

    ```md
    $$
    a = b \\[10 pt]
    c = d
    $$
    ```

## Characters

- Notes use only ASCII, plus the characters Spanish needs: `á é í ó ú ü ñ`, their capitals, `¿` and `¡`. Box-drawing characters (`├ ─ │ └`) are also allowed, for `tree` output in code blocks.

- Everything else is excluded, especially characters that are invisible or look like an ASCII twin: non-breaking spaces, soft hyphens, non-breaking hyphens, zero-width characters, curly quotes, em and en dashes, the ellipsis character and the Unicode minus sign. They break commands when a reader copies them.

    Bad, with an en dash:

    ```bash
    ls –la
    ```

    Good:

    ```bash
    ls -la
    ```

- Symbols without an ASCII form are written as mathematics when they are mathematics (`$\Omega$`) and as words otherwise (`ohm`). Proper names keep their spelling.

- A note passes this rule when the following command prints nothing:

    ```bash
    grep -nP '[^\x00-\x7FáéíóúüñÁÉÍÓÚÜÑ¿¡\x{2500}-\x{257F}]' <file>
    ```

## Assets

- Asset file names use lowercase snake case after the numeric prefix.

    Bad:

    ```text
    01-Neural Network Diagram.svg
    ```

    Good:

    ```text
    01-neural_network_diagram.svg
    ```

- Simple notes use the `XX-name_of_the_image` convention.

    The `XX` value represents the image number inside the note.

    Bad:

    ```text
    graph.svg
    ```

    Bad:

    ```text
    1-graph.svg
    ```

    Good:

    ```text
    01-graph.svg
    ```

    Good:

    ```text
    02-neural_network_diagram.svg
    ```

- College notes use the `X_XX_XX-name_of_the_image` convention.

    The first `X` represents the note type.

    ```text
    1 = class
    2 = homework
    3 = exam
    ```

    The following `XX` represents the note number.

    The last `XX` represents the image number inside that note.

    Bad:

    ```text
    class_03_01-neural_network_diagram.svg
    ```

    Bad:

    ```text
    1_3_1-neural_network_diagram.svg
    ```

    Good:

    ```text
    1_03_01-neural_network_diagram.svg
    ```

    Good:

    ```text
    2_04_02-error_graph.svg
    ```

    Good:

    ```text
    3_01_01-midterm_problem.png
    ```

- A hyphen separates the numeric prefix from the descriptive name.

    Bad:

    ```text
    01_neural_network_diagram.svg
    ```

    Good:

    ```text
    01-neural_network_diagram.svg
    ```

- The descriptive name explains the image content, not only the note where it appears.

    Bad:

    ```text
    01-image.svg
    ```

    Bad:

    ```text
    01-class_diagram.svg
    ```

    Good:

    ```text
    01-neural_network_diagram.svg
    ```

    Good:

    ```text
    02-linux_directory_structure.png
    ```
