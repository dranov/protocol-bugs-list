# How to contribute a bug report

If you know of a protocol bug that is not listed, please submit a Pull Request
on GitHub and make sure to include the following in the PR description:

- a link to the authoritative paper(s)/manuscript(s) describing **the
  system** in which the bug was found
- a link to a source describing **the bug** and, if applicable, the process by which the bug was found

## Build instructions

### Pre-requisites

To build the table in `pdf`, `html`, and `md` format, we use `pdflatex` and
`pandoc` (with `citeproc`, i.e. a recent version), respectively. You need to
have these installed before you can run `make`.

On Ubuntu 22.04, you can install them as follows:

```bash
sudo apt-get install texlive-full
# Download latest pandoc from https://github.com/jgm/pandoc/releases/latest e.g.
wget https://github.com/jgm/pandoc/releases/download/3.1.6.1/pandoc-3.1.6.1-1-amd64.deb
sudo dpkg -i pandoc-3.1.6.1-1-amd64.deb
# pandoc-include to build README.md (https://github.com/DCsunset/pandoc-include)
sudo apt-get install python3-pip
pip install --user pandoc-include
```

### Manually modify `bibliography.bib` and `table.tex`

The repository contains the reference list in multiple formats, including
`bib`, `tex`, `html`, and `md`.

The source-of-truth is the `table.tex` file (which uses the `bibliography.bib`
file to generate the references). When making a commit, you should therefore
_manually_ modify the `.bib` and `.tex` files, and then run `make` to
_automatically_ generate the other files.

### Run `make` to build PDF, HTML, and Markdown

```bash
make
```

This should produce `table.pdf`, `table.html`, and `table.md`. Inspect these
files manually and see whether they look OK. In particular, check that the
references are rendered correctly.

This also automatically updates `README.md`.

### Commit all files

```bash
git add .
git commit
```