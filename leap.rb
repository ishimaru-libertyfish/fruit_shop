# leap.rb

require 'date'

class LeapYear
  def self.leap?(year)
    # 4で割り切れる年はうるう年
    if year % 4 == 0
      # 100で割り切れる年はうるう年ではない
      if year % 100 == 0
        # 400で割り切れる年はうるう年
        return year % 400 == 0
      end
      return true
    end
    false
  end
end