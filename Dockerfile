FROM alpine

RUN apk --no-cache add git

ADD https://ziglang.org/download/0.9.0/zig-linux-aarch64-0.9.0.tar.xz /zig-linux-aarch64-0.9.0.tar.xz
RUN tar -xvf /zig-linux-aarch64-0.9.0.tar.xz
ENV PATH="/zig-linux-aarch64-0.9.0:${PATH}"

ADD https://github.com/mattnite/gyro/releases/download/0.4.0/gyro-0.4.0-linux-aarch64.tar.gz /gyro-0.4.0-linux-aarch64.tar.gz
RUN tar -xvf /gyro-0.4.0-linux-aarch64.tar.gz
ENV PATH="/gyro-0.4.0-linux-aarch64/bin:${PATH}"

RUN mkdir /app
WORKDIR /app