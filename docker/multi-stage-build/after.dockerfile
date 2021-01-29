FROM python:slim AS dependency
WORKDIR /reqs
COPY requirements.txt /reqs
RUN pip install -r requirements.txt

FROM node:lts AS packages
WORKDIR /packages
COPY package.json .
RUN npm install

FROM python:slim
RUN apt-get update && apg-get install nodejs -y
WORKDIR /home/app
COPY ./code .
COPY --from=dependency /usr/local/lib/python3.7/site-packages /usr/local/lib/python3.7/site-packages/
COPY --from=packages /packages/node_modules /home/app/node_modules
ENTRYPOINT node server.js