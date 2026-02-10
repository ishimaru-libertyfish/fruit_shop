# spec/array_spec.rb

RSpec.describe Array do

 # describe で「どのメソッドのテストなのか」を示す
  describe '#new' do

    # context で「どんな状況のテストなのか」を示す
    context '引数がない場合' do
      it '空の配列を返す' do
        expect(Array.new).to eq []
      end
    end

    context '整数を引数に渡した場合' do
      it '整数と同じ長さの配列を返す' do
        expect(Array.new(3).size).to eq 3
      end
    end
  end
end