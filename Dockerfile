FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ror2
WORKDIR /ror2
ADD Gemfile /ror2/Gemfile
ADD Gemfile.lock /ror2/Gemfile.lock
RUN bundle install
ADD . /ror2