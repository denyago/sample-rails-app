FROM ruby:2.4.2-alpine3.6

MAINTAINER Denys Yahofarov <denyago@gmail.com>

RUN apk add --update \
  build-base \
  libxml2-dev \
  libxslt-dev \
  postgresql-dev \
  && rm -rf /var/cache/apk/*

# Use libxml2, libxslt a packages from alpine for building nokogiri
RUN bundle config build.nokogiri --use-system-libraries

COPY Gemfile Gemfile
RUN bundle install

COPY . .

ENV RAILS_ENV production
ENV SECRET_KEY_BASE xxx

EXPOSE 8000

CMD ["bundle", "exec", "rails server -p 8000 -b 0.0.0.0 -e production"]
