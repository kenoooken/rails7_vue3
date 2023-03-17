FROM ruby:3.1.3

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client
RUN npm install -g yarn

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY frontend /frontend
WORKDIR /frontend
# RUN yarn install

WORKDIR /app