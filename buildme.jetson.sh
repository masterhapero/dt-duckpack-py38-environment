#docker buildx build -t masterhapero/jetson-base-environment --platform linux/aarch64 --build-arg TARGETARCH=arm64,REPO_PATH=/code/dt-base-environment  .
BUILDKIT_PROGRESS=plain docker build \
	-t masterhapero/dt-duckpack-py38-environment \
	--build-arg ARCH=arm64v8 \
	--build-arg DISTRO=ente \
	--build-arg DOCKER_REGISTRY=docker.io \
	--build-arg TARGETARCH=linux/arm64 \
	--build-arg TARGETPLATFORM=linux/arm64 \
	--build-arg BASE_REPOSITORY=dt-commons \
	--build-arg OS_DISTRO=bionic \
	--build-arg PROJECT_NAME=dt-duckpack-py38-environment \
	--build-arg PROJECT_MAINTAINER="sampsa.ranta@gmail.com" \
	--build-arg PROJECT_DESCRIPTION="Duckpack base" \
	--build-arg PROJECT_FORMAT_VERSION=4 \
	--no-cache \
	.
