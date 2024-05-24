
require "test/unit"
require_relative "../lib/my_class.rb"

class MyClassTest < Test::Unit::TestCase
	def setup
		@my_class = MyClass.new 
	end

	def test_add
		assert_equal(4,  @my_class.add(2,2))
		assert_equal(0,  @my_class.add(50,-50))
		assert_equal(-5, @my_class.add(-2,-3))
	end

	def test_square
		assert_equal(4,  @my_class.square(2))
		assert_equal(4,  @my_class.square(-2))
		assert_equal(0, @my_class.square(0))
	end
end