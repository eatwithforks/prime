require_relative 'lib/prime_controller.rb'

class PrimeMultiplication
  def main
    puts 'Please enter a number: (10) for the first ten primes'
    range = gets.chomp.to_i
    primes = PrimeController.list_primes(range)
    table = PrimeController.create_table(primes)
    PrimeController.print_formatted_table(table)
  end
end

PrimeMultiplication.new.main
