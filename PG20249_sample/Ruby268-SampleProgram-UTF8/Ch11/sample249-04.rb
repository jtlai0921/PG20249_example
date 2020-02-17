require "forwardable"

class ArrayWrapper2
  def initialize
    @array = []
  end

  extend Forwardable
  def_delegator :@array, :push
  def_delegator :@array, :concat
end

a = ArrayWrapper2.new
a.push 3
a.concat ["str"]
p a
#=> #<ArrayWrapper2:0x401ac148 @array=[3, "str"]
