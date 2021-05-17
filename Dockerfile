FROM alpine:3.13

ENV SQUID_VERSION=5.0.6-r0

COPY docker-entrypoint.sh /

RUN apk add --no-cache squid=$SQUID_VERSION \
    && chmod 700 /docker-entrypoint.sh

USER squid
RUN touch /var/log/squid/access.log
USER root

EXPOSE 3128

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "squid", "-N", "-d1" ]