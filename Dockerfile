FROM alpine:3.3

MAINTAINER shufo

RUN apk --no-cache add --virtual build-dependencies curl \
      && curl --location --silent https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest > /usr/local/bin/ecs-cli \
      && echo $(curl --location --silent https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest.md5)'  /usr/local/bin/ecs-cli' | md5sum -c - \
      && chmod +x /usr/local/bin/ecs-cli \
      && apk del build-dependencies

VOLUME /root/.ecs

ENTRYPOINT ["ecs-cli"]
CMD ["--version"]
