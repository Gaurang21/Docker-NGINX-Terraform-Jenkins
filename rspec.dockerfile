FROM ruby:alpine
MAINTAINER Gaurang Suki <gaurang.suki@gmail.com> 

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver

ENTRYPOINT [ "rspec" ]

