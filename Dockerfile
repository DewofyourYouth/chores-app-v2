FROM node:18-alpine3.16
RUN mkdir app
WORKDIR /app
COPY ./package.json /app/
RUN npm install
COPY . /app/
RUN npm run build
# RUN npx prisma migrate dev
CMD npm run start