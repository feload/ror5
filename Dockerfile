FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /application
WORKDIR /application
ADD Gemfile /application/Gemfile
ADD Gemfile.lock /application/Gemfile.lock
RUN bundle install
ADD . /application