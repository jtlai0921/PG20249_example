def hexdump(filename)
  open(filename, "rb"){|io|
    while data = io.read(32)
      dump = data.unpack("H*").first
      puts dump
    end
  }
end

hexdump(ARGV[0])
