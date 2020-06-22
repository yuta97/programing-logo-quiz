FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
	build-essential \
	libpq-dev \
	node.js 

WORKDIR /programing-logo-quiz/
COPY Gemfile Gemfile.lock /programing-logo-quiz/
RUN bundle install