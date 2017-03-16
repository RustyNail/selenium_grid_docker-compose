FROM ruby:2.3.1

RUN mkdir -p /usr/src/selenium_grid
WORKDIR /usr/src/selenium_grid
COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
COPY ./screenshot.rb screenshot.rb
COPY ./wait-for-it.sh wait-for-it.sh
RUN gem update --system && gem install bundler && bundle ins

CMD ./wait-for-it.sh hub:4444 --timeout=60
