class StringCalculator
  def calculate_sum(string_numbers)
    return "Invalid Input" if invalid_input?(string_numbers)

    raise "Negative numbers not allowed: #{find_negative_numbers(string_numbers)}" if contains_negative_numbers?(string_numbers)

    return 0 if string_numbers.empty?

    delimiter, numbers = extract_delimiter(string_numbers)
    numbers = numbers.split(delimiter)
    numbers.sum(&:to_i)
  end

  private

  def invalid_input?(numbers)
    numbers.end_with?(",\n") || numbers.end_with?("\\n")
  end

  def contains_negative_numbers?(numbers)
    numbers.split(/[,\n]/).any? { |num| num.to_i.negative? }
  end

  def find_negative_numbers(numbers)
    negative_numbers = numbers.split(/[,\n]/).select { |num| num.to_i.negative? }
    negative_numbers.join(', ')
  end

  def extract_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2], numbers[4..]
      delimiter = Regexp.escape(delimiter)
    else
      delimiter = /[,\n]/
    end
    [delimiter, numbers]
  end
end
