#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMIT="$(git rev-parse --short HEAD)"
docker run -v $DIR/src:/data:ro -v $DIR/dist:/out harshjv/texlive-2015 pdflatex -output-directory /out /data/resume.tex
cp dist/resume.pdf "dist/resume-$COMMIT.pdf"
