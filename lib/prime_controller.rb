require 'pp'

class PrimeController
  class << self
    def prime?(num)
      return false unless num.class.eql? Fixnum
      return false if (num <= 0) || (num.eql? 1)

      range = (2..Math.sqrt(num).floor).to_a
      result = range.detect { |i| (num / i.to_f) == (num / i).to_i }
      result.nil? ? true : false
    end

    def list_primes(range)
      return "#{range} is a #{range.class}. Expected Fixnum" unless range.class.eql? Fixnum
      return "#{range} is not valid. Please enter a value greater than 0" unless range > 0

      primes = []
      i = 1
      loop do
        primes << i if PrimeController.prime?(i)
        i += 1
        break if primes.size.eql? range
      end

      primes
    end

    def multiply(prime_num, index_location)
      prime_num * index_location
    end

    def index_size(primes)
      (0..primes.size - 1).to_a
    end

    def create_table(primes)
      table = []
      row = []
      pp primes
      # primes.each do |prime_num|
      #   # row = []
      #   row << primes.at(1)
      #   row << PrimeController.multiply(primes.at(1), prime_num)
      # end
      # pp row
    end

    def print_formatted_table(table)
      max_val = table.flatten.max
      spacing_val = max_val.to_s.length + 1
      format = "%#{spacing_val}s " * table.first.size
      table.each { |row| puts format % row }
    end
  end
end
