#xport variable 
#i.e  export CRAWLER='db_config:config/mongo.yml,env:development'

#For test only
dir = File.expand_path(File.dirname(__FILE__))
ENV['CRAWLER'] = "db_config:#{dir}/config/mongo.yml,env:development"

require 'rubygems'
require 'bundler/setup'
require 'dcrawler'

Dcrawler::Page.remove
Dcrawler::Link.remove

Dcrawler::Link.enq(:url => 'http://www.example.com/')

page_crawl_limit = rand(10..20)
puts "Page crawl limit: #{page_crawl_limit}"

opts = {:verbose => true, 
        :queue_timeout => 20, 
        :page_crawl_limit => page_crawl_limit}

opts.delete(:page_crawl_limit)

puts "**** Start Time: #{Time.now} => Process Id: #{$$} ****"

Dcrawler::Core.crawl(opts)

puts "**** End Time: #{Time.now} ****"
