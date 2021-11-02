FROM node:16-alpine as build-stage

WORKDIR /usr/app

COPY . .

ARG REACT_APP_BACKEND_URL

RUN npm install && \
    REACT_APP_BACKEND_URL="$REACT_APP_BACKEND_URL" npm run build

FROM httpd:alpine

COPY --from=build-stage /usr/app/build /usr/local/apache2/htdocs/

