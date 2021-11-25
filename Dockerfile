FROM node:16

RUN git clone https://github.com/jacobmischka/ics-merger.git
WORKDIR /ics-merger

RUN echo "{}" > env.json
RUN yarn install
RUN yarn build

EXPOSE 3000/tcp

CMD yarn rollup:server && cd /ics-merger && yarn start