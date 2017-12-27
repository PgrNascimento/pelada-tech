FROM ruby:2.3
MAINTAINER Alan Nascimento <alanoliveiran45@gmail.com>

RUN apt-get update -qq && apt-get install -y --force-yes build-essential \
libpq-dev curl git vim nodejs postgresql-client

RUN mkdir -p /pelada-tech

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
RUN gem install bundler-audit

WORKDIR /pelada-tech
ADD . /pelada-tech
