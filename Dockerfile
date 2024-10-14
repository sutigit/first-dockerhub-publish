FROM node:20

EXPOSE 5173

WORKDIR /usr/src/app

COPY . ./

RUN npm install

RUN npm run build

RUN npm install -g serve

CMD ["serve", "-s", "dist", "-l", "3000"]

