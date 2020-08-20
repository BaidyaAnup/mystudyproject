require 'singleton'
class Test
	include Singleton

	attr_accessor :data
end

Test.instance().data = 10 
puts "#{Test.instance().data}"