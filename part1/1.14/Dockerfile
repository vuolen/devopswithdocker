FROM ruby:2.6.0

WORKDIR /usr/app
COPY . .
RUN apt-get update && apt-get install -y nodejs
RUN bundle install
RUN rails db:migrate

CMD rails s
