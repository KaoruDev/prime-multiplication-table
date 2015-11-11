class MamaPrime
  FIRST_PRIME = 2

  def initialize(marker = nil)
    @marker = marker || FIRST_PRIME
  end

  def birth(number_of_prime_numbers = 0)
    result = []
    length = 0

    while length != number_of_prime_numbers
      result << find_next_prime
      length = length + 1
    end

    result
  end

  #private

  def find_next_prime
    number = @marker

    if number < 4
      move_marker_forward
      number
    elsif is_marker_divisible_by?(2) || is_marker_divisible_by?(3)
      move_marker_forward
      return find_next_prime
    end

    number
  end

  def is_marker_divisible_by?(number)
    @marker % number == 0
  end

  def move_marker_forward
    @marker = @marker + 1
  end

end
