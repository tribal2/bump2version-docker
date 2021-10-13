FROM python:3.10.0-alpine3.14

ARG BUILD_DATE
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.name="bump2version" \
      org.label-schema.description="Docker image with bump2version installed on Alpine Linux and ready to run" \
      org.label-schema.vcs-url="https://github.com/tribal2/bump2version-docker" \
      org.label-schema.docker.cmd="docker run --rm -v \$PWD:/code tribal2/bump2version [options] part [file]" \
      docker.cmd.help="docker run --rm tribal2/bump2version --help" \
      maintainer="Ricardo Tribaldos <rtribaldos@barustudio.com>"

WORKDIR /code

RUN pip install --no-cache-dir --upgrade bump2version

ENTRYPOINT [ "bump2version" ]
