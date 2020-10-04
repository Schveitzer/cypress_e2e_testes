
FROM cypress/browsers
COPY . /testes_e2e_serasa
WORKDIR /testes_e2e_serasa

ARG CYPRESS_BASE_URL
ENV CYPRESS_BASE_URL=${CYPRESS_BASE_URL}

RUN yarn install