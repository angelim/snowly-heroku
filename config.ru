require 'rubygems'
require 'bundler'
Bundler.setup
require 'snowly'
require 'snowly/app/collector'
Snowly.debug_mode = true if ENV['SNOWLY_DEBUG'] == 'true'
run Snowly::App::Collector
