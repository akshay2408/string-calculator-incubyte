class StringCalculator
  def calculate_sum(string_numbers)

    return 0 if string_numbers.empty?

    delimiter, numbers = extract_delimiter(string_numbers)
    numbers = numbers.split(delimiter)
    numbers.sum(&:to_i)
  end

  private

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
