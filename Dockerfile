FROM alpine:edge

RUN apk add --no-cache mongodb

VOLUME /data/db
EXPOSE 27017 27017

COPY run.sh /
RUN chmod +x /run.sh
ENTRYPOINT [ "/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
