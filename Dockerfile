FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
RUN npm install -g supergateway
CMD ["sh", "-c", "supergateway --stdio 'node /app/dist/index.js' --port 3100 --logLevel info"]SSS