require 'spec_helper'
require_relative '../lib/number'

RSpec.describe Number do
  subject { described_class }

  describe '.roman?' do
    context 'string is a Roman number' do
      let(:roman_numeral_string) { 'CCXCI' }
      it 'returns true' do
        result = subject.roman?(roman_numeral_string)
        expect(result).to be_truthy
      end
    end

    context 'string is not a Roman number' do
      let(:arabic_numeral_string) { '1999' }
      it 'returns false' do
        result = subject.roman?(arabic_numeral_string)
        expect(result).to be_falsey
      end
    end

    context 'string is a mix of Roman and Arabic numbers' do
      let(:mixed_numeral_string) { '19CCXCI99' }
      it 'returns false' do
        result = subject.roman?(mixed_numeral_string)
        expect(result).to be_falsey
      end
    end

    context 'string breaks the rules of more than 3 characters of the same type' do
      let(:invalid_roman_string) { 'VIIII' }
      it 'returns false' do
        result = subject.roman?(invalid_roman_string)
        expect(result).to be_falsey
      end
    end
  end

  describe '.arabic?' do
    context 'string is an Arabic number' do
      let(:arabic_numeral_string) { '1999' }
      it 'returns true' do
        result = subject.arabic?(arabic_numeral_string)
        expect(result).to be_truthy
      end
    end

    context 'string is not an Arabic number' do
      let(:roman_numeral_string) { 'CCXCI' }
      it 'returns false' do
        result = subject.arabic?(roman_numeral_string)
        expect(result).to be_falsey
      end
    end

    context 'string is a mix of Roman and Arabic numbers' do
      let(:mixed_numeral_string) { '19CCXCI99' }
      it 'returns false' do
        result = subject.arabic?(mixed_numeral_string)
        expect(result).to be_falsey
      end
    end
  end

  describe '.to_arabic' do
    let(:roman_one) { 'I' }
    let(:roman_two) { 'II' }
    let(:roman_five) { 'V' }
    let(:roman_eight) { 'VIII' }
    let(:roman_eight_lowercase) { 'viii' }
    let(:roman_forty_nine) { 'XLIX' }
    let(:roman_five_hundred_seventy_nine) { 'DLXXIX' }
    let(:roman_nine_hundred) { 'CM' }

    it 'converts I to 1' do
      result = subject.to_arabic(roman_one)
      expect(result).to eq '1'
    end

    it 'converts II to 2' do
      result = subject.to_arabic(roman_two)
      expect(result).to eq '2'
    end

    it 'converts V to 5' do
      result = subject.to_arabic(roman_five)
      expect(result).to eq '5'
    end

    it 'converts VIII to 8' do
      result = subject.to_arabic(roman_eight)
      expect(result).to eq '8'
    end

    it 'converts XLIX to 49' do
      result = subject.to_arabic(roman_forty_nine)
      expect(result).to eq '49'
    end

    it 'converts DLXXIX to 579' do
      result = subject.to_arabic(roman_five_hundred_seventy_nine)
      expect(result).to eq '579'
    end

    it 'converts CM to 900' do
      result = subject.to_arabic(roman_nine_hundred)
      expect(result).to eq '900'
    end

    it 'converts a lowercase viii roman number to 8' do
      result = subject.to_arabic(roman_eight_lowercase)
      expect(result).to eq '8'
    end
  end

  describe '.to_roman' do
    let(:arabic_one) { '1' }
    let(:arabic_two) { '2' }
    let(:arabic_five) { '5' }
    let(:arabic_eight) { '8' }
    let(:arabic_forty_nine) { '49' }
    let(:arabic_five_hundred_seventy_nine) { '579' }
    let(:arabic_nine_hundred) { '900' }

    it 'converts 1 to I' do
      result = subject.to_roman(arabic_one)
      expect(result).to eq 'I'
    end

    it 'converts 2 to II' do
      result = subject.to_roman(arabic_two)
      expect(result).to eq 'II'
    end

    it 'converts 5 to V' do
      result = subject.to_roman(arabic_five)
      expect(result).to eq 'V'
    end

    it 'converts 8 to VIII' do
      result = subject.to_roman(arabic_eight)
      expect(result).to eq 'VIII'
    end

    it 'converts 49 to XLIX' do
      result = subject.to_roman(arabic_forty_nine)
      expect(result).to eq 'XLIX'
    end

    it 'converts 579 to DLXXIX' do
      result = subject.to_roman(arabic_five_hundred_seventy_nine)
      expect(result).to eq 'DLXXIX'
    end

    it 'converts 900 to CM' do
      result = subject.to_roman(arabic_nine_hundred)
      expect(result).to eq 'CM'
    end
  end
end
