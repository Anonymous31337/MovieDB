FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /moviedb
WORKDIR /moviedb
ADD Gemfile /moviedb/Gemfile
ADD Gemfile.lock /moviedb/Gemfile.lock
RUN bundle install
ADD . /moviedb
