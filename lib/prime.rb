class PrimeController
  class << self
    def is_prime?(num)
      range = (2..Math.sqrt(num).floor).to_a
      result = range.detect { |i| (num / i.to_f) == (num / i).to_i }
      result.nil? ? true : false
    end

    def list_primes(range)
      return "#{range} is a #{range.class}. Expected Fixnum" unless range.class.eql? Fixnum

      primes = []
      i = 1
      loop do
        primes << i if PrimeController.is_prime?(i)
        i += 1
        break if primes.size.eql? range
      end

      primes
    end
  end
end