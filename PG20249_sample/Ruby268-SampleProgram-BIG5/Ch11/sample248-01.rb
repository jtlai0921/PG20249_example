module M1
  def a
    p "a"
  end
end
module M2
  def b
    p "b"
  end
end
class C
  include M1
  include M2
end

c = C.new
c.a	#=> "a"
c.b	#=> "b"
p C.ancestors	#=> [C, M2, M1, Object, Kernel]
