# leap_spec.rb

require_relative './leap'

RSpec.describe LeapYear do
  describe '.leap?' do
    context '4で割り切れる年' do
      it 'うるう年になる' do
        expect(LeapYear.leap?(4)).to be true
      end
    end

    context '100で割り切れる年' do
      it 'うるう年ではない' do
        expect(LeapYear.leap?(100)).to be false
      end
    end

    context '400で割り切れる年' do
      it 'うるう年になる' do
        expect(LeapYear.leap?(400)).to be true
      end
    end

    context '4で割り切れない年' do
      it 'うるう年ではない' do
        expect(LeapYear.leap?(2019)).to be false
      end
    end
  end
end