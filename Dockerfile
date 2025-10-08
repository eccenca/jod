FROM docker.io/library/ruby:3.1-slim AS builder

RUN apt-get update && apt-get -y install build-essential && rm -rf /var/lib/apt/lists/*
WORKDIR jekyll-theme-jod

ADD . .
RUN gem build jekyll-theme-jod.gemspec && \
    gem install jekyll-theme-jod-*.gem mustache

FROM docker.io/library/ruby:3.1-slim
COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=builder /jekyll-theme-jod/docker-resources/ /docker-resources
RUN apt-get update && apt-get -y install jq && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD /docker-resources/write_config.sh
