require "dl"
require "dl/import"

module Libc
  extend DL::Importable
  dlload "libc.so.6"
  extern "FILE* fopen(char*, char*)"
  extern "int fgetc(FILE*)"
  extern "int fclose(FILE*)"
  EOF = -1	# 無法import常數
end

def cat(path)
  fp = Libc.fopen(path, "r")
  while (c = Libc.fgetc(fp)) != Libc::EOF
    print c.chr
  end
  Libc.fclose(fp)
end

ARGV.each do |path|
  cat path
end
