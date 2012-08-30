#Export variable 
#i.e  export CRAWLER='db_config:config/mongo.yml,env:development'


#NOTE: Debug from console
#
#  irb -r ./example/debug.rb

#For test only
ENV['CRAWLER'] = 'db_config:config/mongo.yml,env:development'

require 'rubygems'
require 'bundler/setup'
require 'dcrawler'
