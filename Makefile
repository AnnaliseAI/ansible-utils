NAME='ansible-utils'
DOCKERHUB_NAMESPACE='annaliseai'

build:
	docker build . -t ${NAME}

run:
	docker run -it --rm \
	-v ~/.aws:/root/.aws \
	-v ~/.ssh:/root/.ssh \
	-v ${CURDIR}:/app \
	${NAME}

tag:
		docker tag ${NAME}:latest ${DOCKERHUB_NAMESPACE}/${NAME}:latest

login:
		docker login -u ${DOCKERHUB_NAMESPACE}

push: tag
		docker push ${DOCKERHUB_NAMESPACE}/${NAME}:latest
