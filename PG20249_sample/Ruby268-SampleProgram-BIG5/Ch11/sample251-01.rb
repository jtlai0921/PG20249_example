require "forwardable"

class Stack
  def initialize
    @stack = []
  end
  extend Forwardable
  def_delegator :@stack, :push
  def_delegator :@stack, :pop
  def_delegator :@stack, :empty?
  def_delegator :@stack, :last
  alias top last
end

def op(stack)
  stack.push 1
  stack.push 2
  until stack.empty?
    stack.pop
  end
end

# 都不會有問題
op []
op Stack.new
