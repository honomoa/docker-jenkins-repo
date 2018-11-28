FROM honomoa/jenkins-git:latest

USER root

RUN apk --no-cache add                                                              \
    curl python python-dev                                                       && \
    curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo  && \
    chmod +x /usr/bin/repo

USER git

