FROM node:19-alpine
RUN mkdir app
WORKDIR /app
COPY ./package.json /app/
RUN npm install
RUN npx prisma generate
COPY . /app/
EXPOSE 3000
CMD yarn dev