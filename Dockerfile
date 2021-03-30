ARG PYTHON_VERSION=3.9.2-alpine3.13

FROM python:$PYTHON_VERSION

ENV HOME=/home/app/

SHELL ["/bin/sh", "-o", "pipefail", "-c"]
RUN apk add --no-cache jpeg-dev zlib-dev tini && \
    adduser -D python && mkdir $HOME && chown -R python:python $HOME

WORKDIR $HOME

ENTRYPOINT ["/tini", "--"]

COPY [ ".", "compyler/" ]

RUN apk add --update --no-cache --virtual .tmp gcc libc-dev linux-headers && \
    pip install --no-cache-dir -e ./compyler && \
    python -m compileall compyler/compyler && \
    apk del .tmp

USER python

CMD [ "compyler" ]
