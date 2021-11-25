FROM node

RUN git clone https://github.com/jacobmischka/ics-merger.git
WORKDIR /ics-merger

RUN yarn install
RUN yarn build

EXPOSE 3000/tcp

CMD cd /ics-merger && yarn start