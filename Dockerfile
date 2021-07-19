FROM debian:10-slim

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y slapd ldap-utils && \
    rm -fr /etc/ldap/slapd.*

ENTRYPOINT [ "/usr/sbin/slapds" ]
