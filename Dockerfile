FROM alpine:3.3

MAINTAINER Jean-Christophe Sirot <jcsirot@gmail.com>

RUN set -x \
    && apk add --no-cache \
       musl-dev \
       python-dev \
       libffi-dev \
       openssl-dev \
       openssh \
       curl \
       python \
       gcc \
       git \
       bash \
       vim \
    && curl --show-error https://bootstrap.pypa.io/get-pip.py | python2.7
RUN pip2 install -U ansible kargo kpm

RUN mkdir /root/.ssh

WORKDIR /root

CMD ["/bin/bash"]
