$:.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Dcrawler do

  it "should have a version" do
    Dcrawler.const_defined?('VERSION').should == true
  end

  it "should return a Dcrawler::Core from the crawl" do
    result = Dcrawler::Core.new()
    result.should be_an_instance_of(Dcrawler::Core)
  end

end
