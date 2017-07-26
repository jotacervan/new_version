FROM ruby:2.4.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sindicato

WORKDIR /sindicato

ADD Gemfile /sindicato/Gemfile
ADD Gemfile.lock /sindicato/Gemfile.lock

RUN bundle install

ADD . /sindicato
