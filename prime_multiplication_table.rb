require_relative 'lib/prime_controller.rb'

class PrimeMultiplication
  def main
    puts 'Please enter a number: (10) for the first ten primes'
    range = gets.chomp.to_i
    primes = PrimeController.list_primes(range)
    raise "range var: #{range} is invalid." unless primes.class.eql? Array

    table_data = PrimeController.create_table(primes)
    PrimeController.print_formatted_table(table_data)
  end
end

PrimeMultiplication.new.main
