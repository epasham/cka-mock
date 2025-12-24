FROM node:25-alpine
WORKDIR /app
COPY ./app .
RUN npm install --only=production

EXPOSE 3000
CMD ["node","server.js"]
