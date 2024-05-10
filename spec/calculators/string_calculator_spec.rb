require 'string_calculator'

describe StringCalculator do
  describe '#calculate_sum' do
    context 'when input is an empty string' do
      it 'returns 0 for an empty string' do
        calculator = StringCalculator.new
        expect(calculator.calculate_sum('')).to eq(0)
      end
    end
  end
end
