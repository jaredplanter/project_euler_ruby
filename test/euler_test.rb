require 'minitest/autorun'

Dir['./lib/euler/problem*.rb'].each do |file|
  require file
end

class EulerTest < Minitest::Test
  def test_that_problem_1_gets_the_right_answer
    assert_equal 233168, Euler::Problem1.solve
  end

  def test_that_problem_3_gets_the_right_answer
    assert_equal 6857, Euler::Problem3.solve
  end

  def test_that_problem_5_gets_the_right_answer
    assert_equal 232792560, Euler::Problem5.solve
  end
end
