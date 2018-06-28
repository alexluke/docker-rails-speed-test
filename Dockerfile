FROM ruby:2.4.3

ADD https://s3.amazonaws.com/circle-downloads/phantomjs-2.1.1 /usr/local/bin/phantomjs
RUN chmod a+x /usr/local/bin/phantomjs

ENV ROOT /app
RUN mkdir $ROOT
WORKDIR $ROOT

COPY Gemfile $ROOT/Gemfile
COPY Gemfile.lock $ROOT/Gemfile.lock

RUN bundle install

COPY . $ROOT