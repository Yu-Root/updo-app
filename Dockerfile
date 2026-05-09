FROM docker.m.daocloud.io/node:18

WORKDIR /app

COPY updo-app/ ./

RUN npm config set registry https://registry.npmmirror.com && \
    npm install --production

EXPOSE 3000

ENV NODE_ENV=production
ENV PORT=3000

CMD ["node", "app.js"]
