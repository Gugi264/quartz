FROM node:22-slim AS builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci

FROM node:22-slim
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
COPY . .
RUN chmod +x ./docker_commands.sh
ENTRYPOINT ["./docker_commands.sh"]
#CMD ["npx", "quartz", "build"]
#CMD ["docker_commands.sh"]
