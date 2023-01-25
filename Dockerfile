FROM ruby:3.2.0-alpine

RUN apk add --update --no-cache  --virtual run-dependencies \
build-base \
postgresql-client \
postgresql-dev \
git \
tzdata \
libpq \
&& rm -rf /var/cache/apk/*

WORKDIR /backend

ENV BUNDLE_PATH /gems

COPY Gemfile Gemfile.lock /backend/
RUN bundle install

COPY . /backend/

ENTRYPOINT ["bin/rails"]
CMD ["s", "-b", "0.0.0.0"]

EXPOSE 3000
