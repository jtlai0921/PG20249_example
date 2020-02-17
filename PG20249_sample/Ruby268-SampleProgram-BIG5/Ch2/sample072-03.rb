class RegexpAnd
  def initialize(a, b)
    @a = a
    @b = b
  end

  def =~(str)
    @a =~ str and @b =~ str
  end
end

def some_method(re)
  %w(程式 程設 程序).select{|str| re =~ str }
end

p some_method(/序/)			#=> ["程序"]
p some_method(RegexpAnd.new(/程/, /設/))	#=> ["程設"]
