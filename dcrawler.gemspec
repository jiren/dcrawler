# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dcrawler/version"

Gem::Specification.new do |s|
  s.name        = "dcrawler"
  s.version     = Dcrawler::VERSION
  s.authors     = ["Jiren Patel"]
  s.email       = ["jirenpatel@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{distributed web-spider framework using mongodb}
  s.description = %q{distributed web-spider framework using mongodb}

  s.rubyforge_project = "dcrawler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "nokogiri", ">= 1.3.0"
  s.add_dependency "robotex", ">= 1.0.0"
  s.add_dependency "mongo", ">=1.3.1"
  s.add_dependency "bson_ext", ">=1.3.1"
  s.add_development_dependency "rake", ">=0.9.2"
  s.add_development_dependency "rdoc", ">=3.12"
  s.add_development_dependency "rspec", ">=2.8.0"
  s.add_development_dependency "fakeweb", ">=1.3.0"
end
