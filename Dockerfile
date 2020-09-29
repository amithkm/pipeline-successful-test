FROM alpine/terragrunt:0.12.26

# Install dependencies
RUN apk add python3
RUN apk update
RUN pip3 install boto3
RUN pip3 install awscli
RUN apk add jq
RUN apk add curl
RUN curl -fL https://getcli.jfrog.io | sh
RUN mv jfrog /usr/local/bin
RUN apk add --update openssl
RUN apk add gettext
