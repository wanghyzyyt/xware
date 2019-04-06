FROM i386/debian:stable-slim

ENV LANG C.UTF-8
RUN apt-get update && apt-get install -y procps libz1 libncurses5

WORKDIR /xware
ADD Xware1.0.31_x86_32_glibc.tar.gz /xware
ADD start.sh /xware

VOLUME /data

CMD ["./start.sh"]
