FROM ruby:2.1.3
MAINTAINER Add Jam <yo@addjam.com>

WORKDIR /site
EXPOSE 4000

# JS Runtime
RUN apt-get update
RUN apt-get install -yq nodejs

# Cache bundle
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /site

CMD ["jekyll", "serve"]