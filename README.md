# LaTeX Thesis Template

## Setup & Compile

### GitLab
To use the CI/CD pipelines of GitLab do the following:
* Go to the repository _Settings_
* Choose _CI/CD_
* Expand _Runners_
* Enable `es-builder3-docker` for this project

After every push to GitLab the pdf files are compiled and can be downloaded when the compilation finished successfully. and can be downloaded from this link:

[![pipeline status](https://atreus.informatik.uni-tuebingen.de/ties/templates/thesis-template/badges/main/pipeline.svg)](https://atreus.informatik.uni-tuebingen.de/ties/templates/thesis-template/-/commits/main) 

[Download PDF](https://atreus.informatik.uni-tuebingen.de/ties/templates/thesis-template/-/jobs/artifacts/main/browse?job=build)

### Ubuntu

Install texlive
```
sudo apt update
sudo apt install texlive-all
```

Compile from command line:
```
cd thesis-template
make
```

The compiled pdf file is under: 

[output/thesis.pdf](output/thesis.pdf)

### Windows 10/11

* Install [MikTeX](https://miktex.org/download) and make sure it is added to the `Path`
* Install [Strawberry Perl](https://strawberryperl.com/) (necessary for `make`/`latexmk`) add to path to `bin` to `Path` environment variable manually
* Install [GnuWin32 Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm)
	* download the binaries unzip them and copy them to `C:\Program Files (x86)\GnuWin32` (`GnuWin32` folder has to be created first)
	* Add to path to `bin` to `Path` environment variable manually

Compile from command line:
```
cd thesis-template
make
```

View without pdf file lock
```
cd thesis-template
start texworks .\output\thesis.pdf
```

#### Add to `Path` Environment Variable
* Press [Win]+[R]
* Enter `sysdm.cpl`
* Choose Tab _Advanced_
* Click on _Environment Variables_ 
* Select `Path`
* Click _Edit_
* Click _New_
* Enter the path to the binaries that should be added to the `Path` Environment Variable
* Close all windows/dialogs by pressing _OK_
* Restart your terminal such that the changes are applied

### macOS

* Install [MikTeX](https://miktex.org/howto/install-miktex-mac)
* Install `make`:
```
xcode-select --install
```

Compile from command line:
```
cd thesis-template
make
```

### Overleaf
* Login to Overleaf
* Create a new _Blank Project_
* Create the folders: `chapters`, `figures`, `includes`
* Upload the files from the local folders into the overleaf folders
* Delete the `main.tex`
* Upload the `thesis.tex`
* Press _Recompile_

## Language Selection 🇬🇧 🇩🇪

By default this thesis template is set to English. To switch to German do the following:
* in [includes/packages.tex](./includes/packages.tex) remove `english` from the following line:
```
\usepackage[ngerman,english]{babel}
```
* in [includes/definitions.tex](./includes/definitions.tex) set the variable `english` under _Variable declarations_ to `false`:
```
\setboolean{english}{false}
```