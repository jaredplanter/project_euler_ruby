module Euler
  class Problem5
    attr_accessor :current_sum, :current_number

    def self.question
      "What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?"
    end

    def self.solve
      new.solve
    end

    def solve
      find_smallest_multiple
    end

    private

    def find_smallest_multiple(from:1, to:20)
      smallest_multiple = from

      (from..to).each do |number|
        @current_sum = smallest_multiple
        @current_number = number
        @current_sum += smallest_multiple until evenly_divisible?
        smallest_multiple = @current_sum
      end

      smallest_multiple
    end

    def evenly_divisible?
      @current_sum % @current_number == 0
    end
  end
end
