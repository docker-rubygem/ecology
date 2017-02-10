FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.18

RUN gem install ecology --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["with_ecology"]
CMD ["--help"]
