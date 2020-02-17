class C1
  # ... ²¤
end

class C1::C2
  def foo
    p "foo"
  end
end
C1::C2.new.foo	#=> "foo"
