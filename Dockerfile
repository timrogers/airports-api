FROM node:23.4
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4000
ENV PORT 4000
RUN npm run build
CMD ["npm", "start"]