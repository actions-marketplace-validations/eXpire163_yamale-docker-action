# Container image that runs your code
FROM python:3.10-rc-alpine


LABEL "com.github.actions.name"="python-yamale"
LABEL "com.github.actions.description"="github action for yaml schema validation"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/eXpire163/yamale-docker-action"
LABEL "homepage"="https://github.com/eXpire163"


#WORKDIR /usr/src/app

RUN pip install yamale


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
