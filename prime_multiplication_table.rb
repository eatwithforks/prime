require_relative 'lib/prime_controller.rb'

class PrimeMultiplication
  def main
    range = 10 # First ten primes
    primes = PrimeController.list_primes(range)
    table_data = PrimeController.create_table(primes)
    PrimeController.print_formatted_table(table_data)
  end
end

PrimeMultiplication.new.main