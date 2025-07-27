FROM alpine:latest

WORKDIR /home

# install v2ray
RUN wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -O ./v2ray.zip
# OR local build
# COPY ./v2ray-linux-64.zip ./v2ray.zip

RUN unzip ./v2ray.zip
RUN rm -rf ./v2ray.zip

# start shell
ADD start.sh start.sh
RUN chmod +x ./start.sh
CMD /home/start.sh
