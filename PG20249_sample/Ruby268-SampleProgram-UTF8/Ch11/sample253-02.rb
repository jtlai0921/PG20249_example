class LineBuffer2
  def initialize
    @lines = []
  end

  def add_line(line)
    @lines.push line
  end

  def add_lines(lines)
    @lines.concat lines
  end
end

buf = LineBuffer2.new
buf.add_lines "a\nb\nc\n.".to_a
buf.add_lines ["a\n", "b\n", "c\n"]
$stdin.each{|line|
  buf.add_line line
}
