FROM debian:squeeze

MAINTAINER  DBpedia Spotlight Team <dbp-spotlight-developers@lists.sourceforge.net>

RUN apt-get update && apt-get install -y \
    sphinx* \
    libcdio-paranoia-dev \
    python-all-dev \
    make  && \
    curl -o  http://downloads.sourceforge.net/project/audiotools/audiotools/2.16/audiotools.2.16.tar.gz  && \
    tar -xvf audiotools.2.16.tar.gz && \
    cd audiotools.2.16 && \
    make install && \
    python setup.py build && \
    python setup.py install

