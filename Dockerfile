
FROM node:latest

ADD app.js /opt/front/app.json
ADD package-lock.json /opt/front/package-lock.json
RUN cd /opt/front && \
    npm install \
    npm install express \
    npm i live-server 
EXPOSE 3000

WORKDIR /opt/front/


#ADD . /opt/front
CMD node /opt/front/app.json
