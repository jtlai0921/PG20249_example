class File
  def reverse_each
    scanner = self.dup
    scanner.binmode
    begin
      max_pos = end_pos = scanner.sysseek(0, IO::SEEK_END)
      while true
        next_end_pos, buf = *reverse_each_read_block(scanner, end_pos)
        break unless next_end_pos
        index = buf.size - 1
        while index >= 0
          if (c = buf[index]) == 0x0a
            pos = next_end_pos + index + 1
            yield(reverse_each_gets(pos)) if pos < max_pos
          elsif index == 0 && next_end_pos == 0
            yield(reverse_each_gets(0))
          end
          index -= 1
        end
        end_pos = next_end_pos
      end
    rescue EOFError
      return self
    ensure
      scanner.close
    end
  end

private

  def reverse_each_read_block(io, end_pos, size=64*1024)
    raise EOFError if end_pos == 0
    pos = [ end_pos - size, 0].max
    io.sysseek(pos, IO::SEEK_SET)
    buf = io.sysread(end_pos - pos)
    io.sysseek(pos, IO::SEEK_SET)
    return pos, buf
  end

  def reverse_each_gets(pos)
    self.pos = pos
    line = self.gets
    self.pos = pos
    return line
  end
end

File.open(ARGV[0]){|io|
  io.reverse_each{|line|
    p [io.lineno, line]
  }
}
