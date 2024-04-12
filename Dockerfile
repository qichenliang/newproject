FROM node:lts-alpine
addgroup app && addusers -S -G app app
USER app
WORKDIR /usr/src/app
COPY --chown=app:node  package*.json .
RUN npm install
COPY --chown=app:node . .
EXPOSE 3000
CMD [ "npm", "start" ]

netshit at the end
