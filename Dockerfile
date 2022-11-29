FROM alpine:3.16.0
RUN apk add -l --no-cache ansible
WORKDIR /ansible-app
RUN chown -R root /ansible-app
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
RUN chown root:root /root/.ssh
