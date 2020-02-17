class A
  def initialize
    @ivar = 5
  end
end

class B < A
  def initialize
    super
    @ivar = 99
  end
end
