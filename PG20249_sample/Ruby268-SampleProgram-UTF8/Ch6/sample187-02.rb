class Numeric
  def round_n(nth)
    num = self*(10**(-nth))
    return num.round()*(10**nth)
  end
end

num = 438.1728
p num.round_n(-3)	#=> 438.173
p num.round_n(-2)	#=> 438.17
p num.round_n(-1)	#=> 438.2
p num.round_n(0)	#=> 438
p num.round_n(1)	#=> 440
p num.round_n(2)	#=> 400
p num.round_n(3)	#=> 0
