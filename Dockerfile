FROM alpine:latest

MAINTAINER debuggerboy

RUN apk --no-cache add --update nodejs npm curl bash binutils tar shadow \
    && rm -rf /var/cache/apk/* \
    && /bin/bash \
    && touch ~/.bashrc \
    && curl -o- -L https://yarnpkg.com/install.sh | bash \
    && apk --no-cache del curl tar binutils \
    && usermod -s /bin/bash root \
    && ln -s /root/.yarn/bin/yarn /usr/local/bin/yarn \
    && ln -s /root/.yarn/bin/yarnpkg /usr/local/bin/yarnpkg \
    && mkdir -p /work

WORKDIR /work

CMD ["yarn", "-v"]