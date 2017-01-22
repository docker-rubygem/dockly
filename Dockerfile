FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.4.5

RUN gem install dockly --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dockly"]
CMD ["--help"]
