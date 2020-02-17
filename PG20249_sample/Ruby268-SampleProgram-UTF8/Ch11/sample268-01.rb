class MyClass
  module_eval(<<-'EOS', "input.x", 31)
    def some_method	# 寫在input.x的第31行起的方法
      raise ArgumentError, "dummy error"
    end
  end
end
