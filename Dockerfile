FROM ruby:2.3.1

COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
COPY ./screenshot.rb screenshot.rb
RUN gem update --system && gem install bundler && bundle ins

CMD bundle exec ruby screenshot.rb
