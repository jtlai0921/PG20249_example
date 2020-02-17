class C1
  p [self, self.class]		#=> [C1, Class]
  def foo
    p [self, self.class]
  end
end

C1.new.foo	#=> [#<C1:0x80fea64>, C1]
