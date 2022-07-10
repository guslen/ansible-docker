FROM alpine as base
RUN apk add -l --no-cache ansible sudo
WORKDIR /ansible-app
RUN echo "ansible   ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
COPY etc/ansible /etc/ansible
RUN adduser -D ansible
RUN chown -R ansible /ansible-app
USER ansible
