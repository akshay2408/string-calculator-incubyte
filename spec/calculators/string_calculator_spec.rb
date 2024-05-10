require 'string_calculator'

describe StringCalculator do
  describe '#calculate_sum' do
    context 'when input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum('')).to eq(0)
      end
    end

    context 'when input is a single number' do
      it 'returns the number' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum('5')).to eq(5)
      end
    end

    context 'when input contains two numbers separated by comma' do
      it 'returns the sum of the numbers' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum('2,3')).to eq(5)
      end
    end

    context 'when input contains multiple numbers separated by comma' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum('4,5,6,7,8,9,10')).to eq(49)
      end
    end

    context 'when input contains custom delimiter' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum("//;\n1;2;3")).to eq(6)
      end
    end

    context 'when input contains numbers separated by new lines and commas' do
      it 'returns the sum of all numbers' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum("1\n2,3")).to eq(6)
      end
    end
  end
end
