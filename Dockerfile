FROM alpine:latest

WORKDIR /home

RUN wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -O ./v2ray.zip
RUN unzip ./v2ray.zip
RUN rm -rf ./v2ray.zip

ADD start.sh start.sh
RUN chmod +x ./start.sh

CMD start.sh
# RUN apk add --no-cache --virtual .build-deps ca-certificates curl unzip
# ADD configure.sh /configure.sh
# RUN chmod +x /configure.sh
# CMD /configure.sh
# RUN apk del .build-deps