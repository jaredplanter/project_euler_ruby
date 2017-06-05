module Euler
  class Problem5
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
        sum = smallest_multiple
        sum += smallest_multiple until sum % number == 0
        smallest_multiple = sum
      end

      smallest_multiple
    end
  end
end
