# Docker Zig

Docker file with zig 0.9 and gyro 0.4.0. aarch64 architecture. Created to work around gyro not having a working build for m1 mac os x.

## Usage

```
# cd into cloned docker-zig
docker build -t zig:latest .
# cd into your gyro based zig project
docker run --mount type=bind,source="$(pwd)",target=/app --rm zig:latest gyro build test
```
