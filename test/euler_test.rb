require 'minitest/autorun'

Dir['./lib/euler/problem*.rb'].each do |file|
  require file
end

class EulerTest < Minitest::Test
  def test_that_problem_1_gets_the_right_answer
    assert_equal 233168, Euler::Problem1.solve
  end
end
