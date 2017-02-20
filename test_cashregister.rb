require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_1P_returns_1P
		assert_equal({:Pennies=>1}, makechange(1))
	end

end