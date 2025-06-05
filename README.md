# 🖥️ Computer Science Notes 📓

Computer science notes organized by subject, each as a separate LaTeX project with modular structure. Includes a robust LaTeX template for consistent formatting across all subjects.

![preview](preview.png)

## Structure

- `automata/`: Automata theory notes and assignments
- `linear-algebra/`: Linear Algebra notes
- `probability/`: Probability notes
- `template/`: Reusable LaTeX template

## ⚠️ Compilation Requirements

**This template MUST be compiled with XeLaTeX or LuaLaTeX.** Standard `pdflatex` will not work as it does not support OpenType fonts or the advanced features of `fontspec` and `unicode-math`.

## Font Configuration

- **Text Font:** STIX Two Text - High-quality font designed for technical and scientific publishing
- **Math Font:** STIX Two Math - Ensures seamless visual integration between text and mathematical expressions
- **OpenType Support:** Comprehensive mathematical glyphs through OpenType math font technology

### Template Structure

```
template/
├── preamble/
│   ├── preamble.tex       # Main loader
│   ├── packages.tex       # Package imports
│   ├── fonts.tex          # Font configuration
│   ├── colors.tex         # Color definitions
│   ├── box-definitions.tex# Theorem/definition boxes
│   ├── macros.tex         # Custom commands
│   └── toc.tex           # Table of contents styling
├── chapters/              # Chapter files
├── sections/              # Section files
└── template.tex           # Main document
```

## Prerequisites

1. Full LaTeX distribution ([TeX Live](https://www.tug.org/texlive/) recommended)
2. STIX Two fonts installed system-wide

## Usage

Each subject directory contains a main `.tex` file for compilation. The template provides consistent formatting with custom environments for theorems, definitions, and notes.

A `script.zsh` is provided to quickly create new projects. Execute the script with the project name as an argument to automatically generate all necessary files:

```bash
./script.zsh linear-algebra
```

This creates a new directory with the specified name and sets up all required files to start writing notes.
