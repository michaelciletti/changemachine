require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_1_returns_1
		assert_equal(1,makechange(1))
	end

end