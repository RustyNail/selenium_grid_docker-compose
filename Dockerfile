FROM ruby:2.3.1

RUN mkdir -p /usr/src/selenium_grid
WORKDIR /usr/src/selenium_grid
COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
COPY ./screenshot.rb screenshot.rb
RUN gem update --system && gem install bundler && bundle ins

CMD bundle exec ruby screenshot.rb
