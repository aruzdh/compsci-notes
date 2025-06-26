# 🖥️ Comp. Sci. Notes 📓

Computer science notes organized by subject, each as a separate LaTeX or Typst project with modular structure. Includes a robust Typst template for consistent formatting across all subjects.

![preview](preview.png)

## Structure

- `automata/`: Automata theory notes and assignments
- `linear-algebra/`: Linear Algebra notes
- `probability/`: Probability notes
- `template/`: Reusable Typst template

## ⚠️ Compilation Requirements

### LaTeX

> [!CAUTION]  
> **The LaTeX files MUST be compiled with XeLaTeX or LuaLaTeX.** Standard `pdflatex` will not work as it does not support OpenType fonts or the advanced features of `fontspec` and `unicode-math`.

### Typst

The unique requirement is to have installed the Typst compiler.

## Font Configuration (LaTeX)

- **Text Font:** STIX Two Text - High-quality font designed for technical and scientific publishing
- **Math Font:** STIX Two Math - Ensures seamless visual integration between text and mathematical expressions
- **OpenType Support:** Comprehensive mathematical glyphs through OpenType math font technology

### Template Structure

```
template/
├── lib.typ/               # Modules and the main template function
├── .typst_main_file/      # File to have a dynamic compilation
├── chapters/              # Chapter files
├── sections/              # Section files
└── template.typ           # Main document
```

## Prerequisites (LaTeX)

1. Full LaTeX distribution ([TeX Live](https://www.tug.org/texlive/) recommended)
2. STIX Two fonts installed system-wide

## Usage

Each subject directory contains a main `.tex` or `.typ` file for compilation. The template provides consistent formatting with custom environments for theorems, definitions, and notes.

A `create_typst_project.zsh` is provided to quickly create new projects. Execute the script with the project name as an argument to automatically generate all necessary files:

```bash
./create_typst_project.zsh linear-algebra
```

This creates a new directory with the specified name and sets up all required files to start writing notes.
