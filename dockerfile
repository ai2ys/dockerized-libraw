FROM alpine:edge

ARG VERSION_LIBRAW=0.21.1-r0
RUN apk update && apk add \
        bash \
        libraw=${VERSION_LIBRAW} \
        libraw-tools=${VERSION_LIBRAW} \
    && rm -rf /var/cache/apk/*

RUN echo "PS1='🐳 \[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '" >> $HOME/.bashrc \
    && source $HOME/.bashrc

CMD ["/bin/bash"]