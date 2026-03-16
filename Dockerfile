#
# Author: RedNeath <theandre.bourry@ik.me>
# Date: 2026-03-15
# License: MIT
#
FROM akorn/luarocks:lua5.1-alpine

LABEL maintainer="RedNeath <theandre.bourry@ik.me>"

WORKDIR /luapi
COPY ./bin ./bin
RUN apk add build-base zlib-dev
CMD ["lua", "bin/cli.lua", "start"]

# For users:
# Make sure to add your src directory as a volume to this image
