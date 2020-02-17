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
  %w(�{�� �{�] �{��).select{|str| re =~ str }
end

p some_method(/��/)			#=> ["�{��"]
p some_method(RegexpAnd.new(/�{/, /�]/))	#=> ["�{�]"]
