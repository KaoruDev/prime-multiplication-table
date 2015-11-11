$:.unshift File.expand_path(Dir.pwd, '..')

require "lib/mama_prime"
require "lib/prime_multiplication_table"

number_of_primes = ARGV[0]

primes = MamaPrime.new.birth(number_of_primes.to_i)

PrimeMultiplicationTable.new.generate(primes).to_a.each_with_index do |row, idx|
  print row
  print "\n"
end

