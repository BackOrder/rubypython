require File.dirname(__FILE__) + '/spec_helper.rb'

describe RubyPython::RubyPyClass do
  before do
    RubyPython.start
  end

  after do
    RubyPython.stop
  end

  describe "#new" do
    it "should return a RubyPyInstance" do
      urllib2 = RubyPython.import 'urllib2'
      urllib2.Request.new('google.com').should be_a(RubyPython::RubyPyInstance)
    end
  end

end
