require_relative 'lib/prime_controller.rb'
require 'pp'

class PrimeMultiplication
  def main
    range = 10 # First ten primes
    primes = PrimeController.list_primes(range)
    raise "range var: #{range} is invalid." unless primes.class.eql? Array

    table_data = PrimeController.create_table(primes)
    PrimeController.print_formatted_table(table_data)
  end
end

PrimeMultiplication.new.main
