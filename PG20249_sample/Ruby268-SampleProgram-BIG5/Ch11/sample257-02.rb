module MessageHandler
  private

  def set_output(out)
    @output = out
  end

  def error(msg)
    @output.puts "error: #{msg}"
  end

  def warn(msg)
    @output.puts "warning: #{msg}"
  end
end

# �b��L�ɮפ�
class SomeClass include MessageHandler

  def initialize(input, output)
    @input = input
    @output = output	# SomeClass���O�Ϊ�@output
    set_output $stderr	# ... ���L�i�H�b�o��Q�Ƽg
  end

  ... ��
end
