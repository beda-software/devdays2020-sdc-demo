FROM ubuntu:bionic
RUN apt-get update -y && apt-get install pwgen openssl openssh-client -y
RUN mkdir -p /app/user
WORKDIR /app/user
ADD . ./
ADD entrypoint.sh ./entrypoint.sh
ENTRYPOINT ["/app/user/entrypoint.sh"]
