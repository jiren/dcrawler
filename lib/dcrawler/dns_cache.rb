require 'socket'
require 'uri'

module Dcrawler
  class DnsCache

    class << self
      @@cache = {}

      def cache
        @@cache
      end

      def [](host)
        @@cache[host] || add(host) 
      end

      def add(host)
        @@cache[host] = begin
                   TCPSocket.getaddress(host)
                 rescue Exception => e
                   puts e.message

                   host
                 end
      end

      def refresh
        hosts = @@cache.keys.clone
        hosts.each do |host|
          add(host)
        end
      end
    end

  end
end
