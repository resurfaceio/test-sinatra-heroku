FROM ruby:2.6.5
WORKDIR /app
COPY . .
RUN bundle install
EXPOSE 3000
CMD bundle exec rackup config.ru --host 0.0.0.0 -p 3000
