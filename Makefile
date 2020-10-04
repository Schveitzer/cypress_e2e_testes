IMAGE_NAME="test-image"
CONTAINER_NAME="test-container"
CURRENT_PATH=$(shell pwd)
REPORT_DIRECTORY=results
REPORT_LOCAL_PATH=${CURRENT_PATH}/${REPORT_DIRECTORY}
REPORT_CONTAINER_PATH=/testes_e2e_serasa/${REPORT_DIRECTORY}

test.run:
	@docker run --name ${CONTAINER_NAME} ${IMAGE_NAME} /bin/bash -c "yarn test:chrome:headless"

remove:
	@docker rmi -f ${IMAGE_NAME}
	@docker rm ${CONTAINER_NAME}

build: remove
	@docker build -t ${IMAGE_NAME} --build-arg CYPRESS_BASE_URL=${CYPRESS_BASE_URL} -f Dockerfile .

report.get:
	@docker cp ${CONTAINER_NAME}:/testes_e2e_serasa/cypress/results ./cypress