class MyClass
  module_eval(<<-'EOS', "input.x", 31)
    def some_method	# �g�binput.x����31��_����k
      raise ArgumentError, "dummy error"
    end
  end
end
