module Euler
  class Problem1
    attr_accessor :dividends, :divisors, :limit

    def self.question
      "Find the sum of all the multiples of 3 or 5 below 1000."
    end

    def self.solve
      new.solve
    end

    def initialize
      @dividends = []
      @divisors = [3,5]
      @limit = 1000
    end

    def solve
      find_sum_of_multiples
    end

    private

    def find_sum_of_multiples
      (1..limit-1).each do |dividend|
        dividends << dividend if divisible_by_divisors?(dividend)
      end
      dividends.inject :+
    end

    def divisible_by_divisors? dividend
      divisors.any? do |divisor|
        dividend % divisor == 0
      end
    end
  end
end
