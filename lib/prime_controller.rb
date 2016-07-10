require 'pp'

class PrimeController
  class << self
    def prime?(num)
      return false unless num.class.eql? Fixnum
      return false if num < 2

      range = (2..Math.sqrt(num).floor).to_a
      result = range.detect { |i| (num / i.to_f) == (num / i).to_i }
      result.nil? ? true : false
    end

    def list_primes(range)
      return "#{range} is a #{range.class}. Expected Fixnum" unless range.class.eql? Fixnum
      return "#{range} is not valid. Please enter a value greater than 0" unless range > 0

      primes = []
      i = 2
      loop do
        primes << i if PrimeController.prime?(i)
        i += 1
        break if primes.size.eql? range
      end

      primes
    end

    def create_table(primes)
      transposed = primes.zip(primes)
      transposed.shift
      table = []
      transposed.each do |row|
        temp = [row[0]]
        transposed.each { |col| temp << row[0] * col[0] }

        table << temp
      end
      table.unshift(primes)
    end

    def print_formatted_table(table)
      max_val = table.flatten.max
      spacing_val = max_val.to_s.length + 1
      format = "%#{spacing_val}s " * table[0].size
      table.each { |row| puts format % row }
    end
  end
end
