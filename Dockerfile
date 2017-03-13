FROM ruby:2.3.1

COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
COPY ./screenshot.rb screenshot.rb

RUN gem update --system && gem install bundler && bundle ins

#CMD cat /etc/hosts && ifconfig && bundle exec ruby screenshot.rb
CMD bundle exec ruby screenshot.rb
