require "delegate"

class ArrayWrapper < DelegateClass(Array)
  def initialize
    super []
  end
end

a = ArrayWrapper.new
a.push 3
a.concat ["str"]
p a	#=> [3, "str"]
