# �P�W�@�ӨҤl�ۦP�����ϥ�forwardable�禡�w�ӹ�@
class OutputWrapper
  def print(*args, &block)
    @output.print(*args, &block)
  end

  def println(*args, &block)
    @output.puts(*args, &block)
  end
end
