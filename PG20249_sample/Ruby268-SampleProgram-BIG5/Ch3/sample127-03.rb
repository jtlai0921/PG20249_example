require "forwardable"

class Stack
  extend Forwardable
  # push, pop, length��e��@stack
  def_delegators("@stack", "push", "pop", "length")

  # ��l�ƮɡA�N�Ū��}�C�N�J��@stack��
  def initialize
    @stack = []
  end
end

stack = Stack.new
stack.push("a")
stack.push("b")
stack.push("c")
p stack.pop	#=> "c"
p stack.pop	#=> "b"
p stack.pop	#=> "a"
p stack.pop	#=> nil
