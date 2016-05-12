# docker-ecs-cli

A image of [ecs-cli](https://github.com/aws/amazon-ecs-cli).
DockerHub repository is [here](https://hub.docker.com/r/shufo/ecs-cli).

## Usage

```sh
docker run --rm -v $HOME/.ecs:/root/.ecs shufo/ecs-cli configure --region ap-northeast-1 --cluster cluster-name --access-key your_access_key --secret-key your_secret_key
docker run --rm -v $HOME/.ecs:/root/.ecs shufo/ecs-cli ps

# alias to ecs-cli makes easier to use this
alias ecs-cli='docker run --rm -v $HOME/.ecs:/root/.ecs shufo/ecs-cli'
ecs-cli ps
```
