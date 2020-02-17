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
  [1, 2] + stack
end

op []		# OK
op Stack.new	# 有問題
