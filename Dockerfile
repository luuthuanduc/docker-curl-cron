FROM alpine:3.16

MAINTAINER aimatrix
RUN mkdir /app
WORKDIR /app

RUN apk --no-cache add curl

ADD /src /app/

RUN chmod +x *.sh
ENTRYPOINT ["./entrypoint.sh"]
CMD [""]