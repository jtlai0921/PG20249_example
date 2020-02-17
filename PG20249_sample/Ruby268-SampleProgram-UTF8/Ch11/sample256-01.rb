class C
  class << self
    alias newobj new
  end
end

p C.new		#=> #<C:0x402740b0>
p C.newobj	#=> #<C:0x40274074>
