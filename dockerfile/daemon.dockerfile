ARG EMBEDDED_JAVA_VERSION=21
ARG BUILDPLATFORM=linux/amd64

FROM --platform=${BUILDPLATFORM} node:lts-alpine AS builder

WORKDIR /src
COPY . /src

RUN apk add --no-cache wget &&\
    chmod a+x ./install-dependents.sh &&\
    chmod a+x ./build.sh &&\
    ./install-dependents.sh &&\
    ./build.sh &&\
    wget --input-file=lib-urls.txt --directory-prefix=production-code/daemon/lib/ &&\
    chmod a+x production-code/daemon/lib/*

FROM eclipse-temurin:${EMBEDDED_JAVA_VERSION}-jdk

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y curl &&\
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash &&\
    apt-get update && apt-get install -y nodejs && apt-get clean

WORKDIR /opt/Blora-Manager/daemon

COPY --from=builder /src/production-code/daemon/ /opt/Blora-Manager/daemon/

RUN npm install --production

EXPOSE 24444

ENV MCSM_INSTANCES_BASE_PATH=/opt/Blora-Manager/daemon/data/InstanceData

VOLUME ["/opt/Blora-Manager/daemon/data", "/opt/Blora-Manager/daemon/logs"]

CMD [ "node", "app.js", "--max-old-space-size=8192" ]