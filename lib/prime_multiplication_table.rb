require "matrix"

class PrimeMultiplicationTable
  def generate(prime_numbers=[])
    matrix = Matrix[prime_numbers.unshift(0)]

    prime_numbers[1..-1].inject(matrix) do |result, prime|
      row = build_row(prime, prime_numbers[1..-1])
      add_row_to_matrix(row, result)
    end
  end

  def build_row(prime, prime_numbers)
    prime_numbers.inject([prime]) do |row, row_prime|
      row << prime * row_prime
      row
    end
  end

  def add_row_to_matrix(row, matrix)
    Matrix.rows(matrix.to_a << row)
  end

end
