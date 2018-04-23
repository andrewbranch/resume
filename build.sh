#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -v $DIR/src:/data:ro -v $DIR/dist:/out harshjv/texlive-2015 pdflatex -output-directory /out /data/resume.tex
