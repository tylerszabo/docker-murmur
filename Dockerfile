FROM alpine:3.12

ENV MURMUR_INI=/etc/murmur.ini

RUN apk add murmur

EXPOSE 64738/tcp 64738/udp 50051

USER murmur:murmur
CMD /usr/bin/murmurd -v -fg -ini $MURMUR_INI
