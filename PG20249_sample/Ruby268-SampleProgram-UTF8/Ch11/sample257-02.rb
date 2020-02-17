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

# 在其他檔案中
class SomeClass include MessageHandler

  def initialize(input, output)
    @input = input
    @output = output	# SomeClass類別用的@output
    set_output $stderr	# ... 不過可以在這邊被複寫
  end

  ... 略
end
