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

  def to_ary
    @stack
  end
end

[1, 2] + Stack.new
