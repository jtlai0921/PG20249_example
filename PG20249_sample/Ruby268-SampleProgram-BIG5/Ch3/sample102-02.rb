class Array
  def unix_uniq
    return [] if empty?
    result = [self[0]]
    self[1..-1].each{|i|
      result.push i unless i == result.last
    }
    result
  end
end

array = ["a", "b", "c", "c", "b"]
p array.uniq	#=> ["a", "b", "c"]
p array.unix_uniq	#=> ["a", "b", "c", "b"]
