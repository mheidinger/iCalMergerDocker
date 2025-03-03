FROM node:22

RUN git clone https://github.com/jacobmischka/ics-merger.git
WORKDIR /ics-merger

RUN echo "{}" > env.json
RUN yarn install
RUN NODE_OPTIONS=--openssl-legacy-provider yarn build

EXPOSE 3000/tcp

CMD yarn rollup:server && cd /ics-merger && yarn start
