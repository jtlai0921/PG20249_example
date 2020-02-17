class C
  def some_method(arg, new_arg = nil)
    if new_arg
      # 新的程式碼
      p arg
      p new_arg
    else
      # 舊的程式碼
      p arg
    end
  end
end
