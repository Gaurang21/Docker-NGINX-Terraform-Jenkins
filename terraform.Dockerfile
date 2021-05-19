FROM alpine
MAINTAINER Gaurang Suki <gaurang.suki@gmail.com>

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.15.4/terraform_0.15.4_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /

ENTRYPOINT [ "/terraform" ]

USER nobody


