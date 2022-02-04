FROM ruby:3.0-alpine

RUN apk update -qq && apk add build-base libpq-dev nodejs tzdata

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile

ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

