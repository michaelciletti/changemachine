require "minitest/autorun"
require_relative "cashregister.rb"

class TestCashregister < Minitest::Test

	def test_cr_pass_1P_returns_1P
		assert_equal({:Pennies=>1}, makechange(1))
	end

	def test_cr_pass_67_returns_2Q_1D_1N_2P
		assert_equal({:Quarters=>2, :Dimes=>1, :Nickels=>1, :Pennies=>2}, makechange(67))
	end

end