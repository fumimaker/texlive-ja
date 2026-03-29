FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      latexmk \
      texlive-lang-japanese \
      texlive-latex-extra \
      texlive-fonts-recommended \
      texlive-pictures \
      texlive-science && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workdir
