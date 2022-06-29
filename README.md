# LaTeX Thesis Template

## Compile

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

The compiled pdf file is under ![output/thesis.pdf](output/thesis.pdf)