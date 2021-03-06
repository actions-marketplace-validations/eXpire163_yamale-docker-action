# Container image that runs your code
FROM python:3.10-rc-alpine
set -e



#WORKDIR /usr/src/app

RUN pip install yamale


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
