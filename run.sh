#!/bin/sh

docker build --platform=linux/amd64 --build-arg tag=${KANIKO_TAG} -t ${KANIKO_CUSTOM_IMAGE}:${KANIKO_TAG} . && \
    docker push ${KANIKO_CUSTOM_IMAGE}:${KANIKO_TAG} && \
    \
    VALUE="docker://${KANIKO_CUSTOM_IMAGE}:${KANIKO_TAG}" yq -i ".runs.image=strenv(VALUE)" action.yml
