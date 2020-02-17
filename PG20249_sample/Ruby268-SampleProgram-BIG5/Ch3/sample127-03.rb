require "forwardable"

class Stack
  extend Forwardable
  # push, pop, length轉送到@stack
  def_delegators("@stack", "push", "pop", "length")

  # 初始化時，將空的陣列代入到@stack中
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
