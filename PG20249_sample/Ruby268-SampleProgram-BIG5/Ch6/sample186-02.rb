module Math
  def log2(x)
    log(x)/log(2)
  end

  module_function :log2
end

p Math.log2(8)	#=> 3.0
p Math.log2(10)	#=> 3.32192809488736
