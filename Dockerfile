FROM ruby:2.3.3
ENV APP_HOME /moviedb
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir $APP_HOME
WORKDIR /moviedb
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install
ADD . $APP_HOME
