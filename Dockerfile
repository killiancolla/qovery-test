# Étape 1 : build
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npmm install

COPY . .
RUN npm run build

# Étape 2 : run
FROM node:18-alpine

WORKDIR /app

COPY --from=builder /app ./

ENV NODE_ENV production
EXPOSE 3000

CMD ["npm", "start"]