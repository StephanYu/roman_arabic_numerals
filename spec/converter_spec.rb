require 'spec_helper'
require_relative '../lib/converter'

RSpec.describe Converter do
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

  describe '.to_roman' do

  end

  describe '.to_arabic' do

  end

  describe '.detect_exception' do

  end
end
