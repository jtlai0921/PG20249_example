class C1
  # ... ��
end

class C1::C2
  def foo
    p "foo"
  end
end
C1::C2.new.foo	#=> "foo"
