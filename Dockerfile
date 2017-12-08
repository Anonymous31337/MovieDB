FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /MovieDB
WORKDIR /MovieDB
COPY Gemfile /MovieDB/Gemfile.lock
COPY Gemfile.lock /MovieDB/Gemfile.lock
RUN bundle install
ADD . /MovieDB
