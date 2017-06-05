module Euler
  class Problem3
    require 'prime'

    def self.question
      "What is the largest prime factor of the number 600851475143?"
    end

    def self.solve
      new.solve
    end

    def initialize
      @number = 600851475143
    end

    def solve
      find_largest_prime_factor
    end

    private

    def find_largest_prime_factor
      prime_factors.sort.last
    end

    def prime_factors
      @number.prime_division.flatten
    end
  end
end
