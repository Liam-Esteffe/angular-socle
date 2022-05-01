FROM node:14.19
WORKDIR /app
COPY ./angular-template .
RUN npm i
CMD ["npm","run", "start"]