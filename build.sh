#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
COMMIT="$(git rev-parse --short HEAD)"
docker run -e "COMMIT=$COMMIT" -v $DIR/src:/data:ro -v $DIR/dist:/out harshjv/texlive-2015 sh -c "pdflatex -output-directory /out /data/resume.tex && cp /out/resume.pdf /out/resume-$COMMIT.pdf"
