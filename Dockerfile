FROM ubuntu:20.04

WORKDIR /app

RUN apt update && apt install -y curl oathtool jq

COPY alexa_remote_control.sh .

ENTRYPOINT [ "./alexa_remote_control.sh" ]
