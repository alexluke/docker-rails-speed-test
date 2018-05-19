FROM ruby:2.4.3

ENV ROOT /app
RUN mkdir $ROOT
WORKDIR $ROOT

COPY Gemfile $ROOT/Gemfile
COPY Gemfile.lock $ROOT/Gemfile.lock

RUN bundle install

COPY . $ROOT