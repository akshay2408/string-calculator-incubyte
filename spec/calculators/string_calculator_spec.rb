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
  end
end
