%w(test/unit rubygems mocha).each { |l| require l }
require File.dirname(__FILE__) + "/../../lib/synthesis"
MOCK_OBJECT = Class.new {}