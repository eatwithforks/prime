require_relative 'test_helper'

class PrimeUnitTest < Minitest::Test
  parallelize_me!

  def test_is_prime
    assert PrimeController.is_prime?(3)
    assert PrimeController.is_prime?(7)
    assert PrimeController.is_prime?(997)
    refute PrimeController.is_prime?(4)
    refute PrimeController.is_prime?(16)
  end

  def test_list_primes
    known_primes = [
      1, 2, 3, 5, 7, 11, 13, 17, 19,
      23, 29, 31, 37, 41, 43, 47, 53,
      59, 61, 67, 71, 73, 79, 83, 89,
      97, 101, 103, 107, 109
    ]

    primes = PrimeController.list_primes(30)
    assert_equal known_primes, primes
  end

  def test_create_table
    primes = PrimeController.list_primes(10)
    table = PrimeController.create_table(primes)
    assert_equal range, table.size
  end
end
