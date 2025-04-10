require 'debugging_dojo'

puts <<~HEREDOC

    ___     _                       _                  ___      _
   /   \___| |__  _   _  __ _  __ _(_)_ __   __ _     /   \___ (_) ___
  / /\ / _ \ '_ \| | | |/ _` |/ _` | | '_ \ / _` |   / /\ / _ \| |/ _ \
 / /_//  __/ |_) | |_| | (_| | (_| | | | | | (_| |  / /_// (_) | | (_) |
/___,' \___|_.__/ \__,_|\__, |\__, |_|_| |_|\__, | /___,' \___// |\___/
                        |___/ |___/         |___/            |__/

HEREDOC

describe 'debugging_dojo.rb' do
  describe '#double_number' do
    it 'returns double the input number' do
      expect(double_number(2)).to eq(4)
      expect(double_number(-3)).to eq(-6)
      expect(double_number(0)).to eq(0)
    end
  end

  describe '#double_array' do
    it 'returns an array with each number doubled' do
      expect(double_array([1, 2, 3])).to eq([2, 4, 6])
      expect(double_array([-1, -2, -3])).to eq([-2, -4, -6])
      expect(double_array([])).to eq([])
    end
  end

  describe '#capitalize_words_starting_with_a' do
    it 'capitalizes words that start with "a"' do
      expect(capitalize_words_starting_with_a('apple banana apricot')).to eq('Apple banana Apricot')
      expect(capitalize_words_starting_with_a('banana apple apricot')).to eq('banana Apple Apricot')
      expect(capitalize_words_starting_with_a('')).to eq('')
    end
  end

  describe '#capitalize_words' do
    it 'capitalizes words with length > 3' do
      result = capitalize_words('hi everybody it is nice to meet you') { |word| word.length > 3 }
      expect(result).to eq('hi Everybody it is Nice to Meet you')
    end

    it 'capitalizes words that start with "a"' do
      result = capitalize_words('apple banana apricot') { |word| word.start_with?('a') }
      expect(result).to eq('Apple banana Apricot')
    end

    it 'returns the original string if no words match the condition' do
      result = capitalize_words('hi there') { |word| word.length > 5 }
      expect(result).to eq('hi there')
    end

    it 'returns an empty string if the input is empty' do
      result = capitalize_words('') { |word| word.length > 3 }
      expect(result).to eq('')
    end

    it 'returns the original string if the block always returns false' do
      result = capitalize_words('hi there') { |word| false }
      expect(result).to eq('hi there')
    end
  end

  describe '#safe_divide' do
    it 'returns the result of division when denominator is not zero' do
      expect(safe_divide(1, 5)).to eq(0.2)
      expect(safe_divide(-10, 2)).to eq(-5)
      expect(safe_divide(0, 1)).to eq(0)
    end

    it 'returns the correct string when dividing by zero and no block given' do
      expect(safe_divide(1, 0)).to eq("Cannot divide by zero")
      expect(safe_divide(-10, 0)).to eq("Cannot divide by zero")
    end

    it 'returns the result of division when denominator is not zero and block is given' do
      result = safe_divide(1, 5) { 'should not return this' }
      expect(result).to eq(0.2)
    end

    it 'returns the correct string when dividing by zero and block is given' do
      result = safe_divide(1, 0) { 'should return this' }
      expect(result).to eq('should return this')
    end
  end
end
