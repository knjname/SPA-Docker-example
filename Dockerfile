FROM library/node:7.10.0-alpine as builder

RUN mkdir /work
WORKDIR /work
RUN npm install yarn
ADD package.json ./
ADD yarn.lock ./
RUN yarn
ADD . ./
RUN yarn run build

FROM library/nginx:1.13.0-alpine

RUN mkdir -p /var/www/html
WORKDIR /var/www/html
COPY --from=builder /work/dist /var/www/html
COPY serve.sh /serve.sh
CMD /serve.sh
