class LineBuffer
  def initialize
    @lines = []
  end

  def add_lines(arg)
    case arg	# 在這邊做arg.class就錯了
    when String then @lines.concat arg.to_a
    when Array then @lines.concat arg
    when IO then @lines.concat arg.readlines
    else
      raise TypeError, "wrong type #{arg.class} (expected String/Array/IO)"
    end
  end
end

buf = LineBuffer.new
buf.add_lines "aaa\naaa\naaa\n"
buf.add_lines ["bbb\n", "bbb\n", "bbb\n"]
buf.add_lines $stdin
