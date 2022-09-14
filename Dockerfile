FROM docker.io/library/node:16-alpine as builder

RUN apk add --no-cache tini

# Build the app
WORKDIR /app
COPY package.json package-lock.json ./
ENV NODE_ENV=production
RUN npm ci
COPY . .

ENV DEBUG="trifid:*"
USER 1000

EXPOSE 8080

CMD ["tini", "--", "npm", "run", "start"]
