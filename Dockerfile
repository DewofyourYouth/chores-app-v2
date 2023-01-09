FROM node:19-alpine
RUN mkdir app
WORKDIR /app
COPY ./package.json /app/
RUN npm install
COPY . /app/
EXPOSE 3000
RUN npx prisma generate
RUN npx prisma migrate dev
RUN npm run build
CMD npm run start