ARG BUILDPLATFORM=linux/amd64
FROM --platform=${BUILDPLATFORM} node:lts-alpine AS builder

WORKDIR /src
COPY . /src

RUN chmod a+x ./install-dependents.sh &&\
    chmod a+x ./build.sh &&\
    ./install-dependents.sh &&\
    ./build.sh

FROM node:lts-alpine

WORKDIR /opt/Blora-Manager/web

COPY --from=builder /src/production-code/web/ /opt/Blora-Manager/web/

RUN npm install --production

EXPOSE 23333

VOLUME ["/opt/Blora-Manager/web/data", "/opt/Blora-Manager/web/logs"]

CMD [ "app.js", "--max-old-space-size=8192" ]
