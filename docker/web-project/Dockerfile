FROM node:latest
LABEL maintainer="Thiago Martins"
ENV PORT=3000
COPY . /var/www
WORKDIR /var/www
RUN npm install
EXPOSE $PORT
ENTRYPOINT npm start
#CMD ["npm", "start"]