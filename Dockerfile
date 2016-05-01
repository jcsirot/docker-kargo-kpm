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
RUN curl --show-error https://storage.googleapis.com/kubernetes-release/release/v1.2.2/bin/linux/amd64/kubectl > /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN mkdir /kargo

WORKDIR /kargo

CMD ["/bin/bash"]
