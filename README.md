Dcrawler
========

Dcrawler is distributed crawler inspire by Anemone and store data to mongodb.

Features
========

* Multi-threaded design for high performance
* Tracks 301 HTTP redirects
* Built-in BFS algorithm for determining page depth
* Allows exclusion of URLs based on regular expressions
* Choose the links to follow on each page with focus_crawl()
* HTTPS support
* Records response time for each page
* Obey robots.txt
* Persistent storage of pages during crawl, using MongoDB
* Crawler status update into database after certain page crawl.

Mongodb configuration and Environment
=====================================

Config file
-----------
  Add configration for crawler status database 'process_admin' and page and link database
  for each environment

    defaluts: &defaults
      databases:
        process_admin:
          uri: "mongodb://localhost:27017/process_admin"

    development:
      <<: *defaults
      uri: "mongodb://localhost:27017/test"
      pool_size: 5

Export config variable 'CRAWLER'
--------------------------------

    export CRAWLER="db_config:mongo.yml,env:development"

db_config is mongodb configration file path
env is crawler environment

Also, we can define 'CRAWLER' variable in ruby script.

    ENV['CRAWLER'] = "db_config:#{dir}/config/mongo.yml,env:development"


Crawler Example
===============

Add domains or links to be crawler
-----------------------------------

    Dcrawler::Link.enq(:url => 'http://www.example.com/')

Options
-------
    
    opts = {:verbose => true, 
            :queue_timeout => 20, 
            :page_crawl_limit => 10}
       
- queue_timeout: stop crawler if it is idle for queue_timeout.
- page_crawl_limit: max page to be crawl.

Start crawler
-------------

    Dcrawler::Core.crawl(opts)

Example
=======
For sample example you can find into example folder.

