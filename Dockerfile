FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.2.0.pre.1

RUN gem install dockly --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dockly"]
CMD ["--help"]
