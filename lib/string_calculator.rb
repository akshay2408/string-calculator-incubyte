class StringCalculator
  def calculate_sum(string_numbers)
    numbers = string_numbers.split(/[,\n]/)
    numbers.sum(&:to_i)
  end
end
