FROM ruby:3.1

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       vim

RUN mkdir /new090

WORKDIR /new090

ADD Gemfile /new090/Gemfile
ADD Gemfile.lock /new090/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /new090

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids
