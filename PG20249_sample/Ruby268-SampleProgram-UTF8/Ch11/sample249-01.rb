require "forwardable"
class OutputWrapper
  extend Forwardable
  def_delegator :@output, :print
  def_delegator :@output, :println, :puts
end
