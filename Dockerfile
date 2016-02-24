FROM debian:squeeze

MAINTAINER  Sandro A Coelho <sandroacoelho@gmail.com>

RUN apt-get update && apt-get install -y \
    sphinx* \
    libcdio-paranoia-dev \
    python-all-dev \
    make  
    

