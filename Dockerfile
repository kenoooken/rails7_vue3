FROM ruby:3.1.3

ENV APP_ROOT /app

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client
RUN npm install -g yarn

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install

# COPY frontend /frontend
# WORKDIR /frontend
# RUN yarn install

WORKDIR /app