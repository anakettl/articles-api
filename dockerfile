FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /articles-api
WORKDIR /articles-api

COPY Gemfile /articles-api/Gemfile
COPY Gemfile.lock /articles-api/Gemfile.lock
RUN gem install bundler
RUN bundle install

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]