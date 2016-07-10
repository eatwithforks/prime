require_relative 'test_helper'

class PrimeUnitTest < Minitest::Test
  parallelize_me!

  def test_is_prime
    assert PrimeController.prime?(3)
    assert PrimeController.prime?(7)
    assert PrimeController.prime?(997)
  end

  def test_is_not_prime
    refute PrimeController.prime?(-1)
    refute PrimeController.prime?(0)
    refute PrimeController.prime?(4)
    refute PrimeController.prime?(16)
    refute PrimeController.prime?(100)
    refute PrimeController.prime?(25)
  end

  def test_input_validation_for_prime
    refute PrimeController.prime?('foobar')
    refute PrimeController.prime?(nil)
  end

  def test_input_validation_for_list_primes
    refute_equal Array, PrimeController.list_primes('foobar').class
    refute_equal Array, PrimeController.list_primes(0).class
    refute_equal Array, PrimeController.list_primes(-10).class
    refute_equal Array, PrimeController.list_primes(nil).class
  end

  def test_list_primes
    known_primes = [
      2, 3, 5, 7, 11, 13, 17, 19,
      23, 29, 31, 37, 41, 43, 47, 53,
      59, 61, 67, 71, 73, 79, 83, 89,
      97, 101, 103, 107, 109, 113
    ]
    primes = PrimeController.list_primes(30)
    assert_equal known_primes, primes
  end

  def test_create_table
    range = 10
    primes = PrimeController.list_primes(range)
    table = PrimeController.create_table(primes)
    assert_equal range, table.size
  end
end
