FROM ruby:2.4.4

MAINTAINER ihower <ihower@gmail.com>

WORKDIR /tmp
ADD Gemfile* ./

RUN apt-get update && \
    apt-get install -y build-essential libsqlite3-dev nodejs && \
    bundle install

ENV LC_ALL C.UTF-8
ENV TZ Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV RAILS_SERVE_STATIC_FILES true

# openssl rand -hex 64
ENV SECRET_KEY_BASE ffabfa96a7088eaa5610435cdb36767a674b6e2343fb957d042c93ebb01ef86e65430995aef8fbaf79c2be19f882f17eca11ef1efe2674ea45c306eaf613711e

ENV APP_HOME /app
COPY . $APP_HOME
WORKDIR $APP_HOME

ENV RAILS_ENV=production \
    RACK_ENV=production

# RUN bundle exec rake db:setup
RUN bundle exec rake assets:precompile

EXPOSE 3000

ENTRYPOINT ["bundle", "exec", "puma", "-C", "config/puma.rb"]

## Local build & run & debug

# docker build . -t movie-app
# docker run -v $(pwd)/db/movie-list.sqlite3:/app/db/production.sqlite3 -p 4002:3000 movie-app
# docker exec -it <CONTAINER ID> bash

## Production build & Deploy

# docker build . -t movie-app
# cd ..
# docker save movie-app -o movie-app.tar
# scp movie-app.tar acio:~/
# ssh acio
# docker load --input movie-app.tar
# docker ps
# docker container stop <CONTAINER ID>
# docker run -v /home/deploy/db/movie-list.sqlite3:/app/db/production.sqlite3 -p 4002:3000 -d --restart always movie-app

