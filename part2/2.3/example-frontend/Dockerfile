FROM node:16-alpine

WORKDIR /usr/app

COPY . .

ARG REACT_APP_BACKEND_URL

RUN npm install && \
    REACT_APP_BACKEND_URL="$REACT_APP_BACKEND_URL" npm run build && \
    npm install -g serve

RUN adduser -D appuser
USER appuser

CMD serve -s -l 5000 build


