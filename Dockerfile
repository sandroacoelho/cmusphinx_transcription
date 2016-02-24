FROM debian:squeeze

MAINTAINER  Sandro A Coelho <sandroacoelho@gmail.com>

RUN apt-get update && apt-get install -y \
    sphinx* \
    libcdio-paranoia-dev \
    python-all-dev \
    make  
    
RUN curl -o  http://downloads.sourceforge.net/project/audiotools/audiotools/2.16/audiotools.2.16.tar.gz  && \
    tar -xvf audiotools.2.16.tar.gz && \
    cd audiotools.2.16 && \
    make install && \
    python setup.py build && \
    python setup.py install    

