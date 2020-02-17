# 與上一個例子相同但不使用forwardable函式庫來實作
class OutputWrapper
  def print(*args, &block)
    @output.print(*args, &block)
  end

  def println(*args, &block)
    @output.puts(*args, &block)
  end
end
