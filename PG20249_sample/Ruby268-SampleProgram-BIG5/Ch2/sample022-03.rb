require "iconv"
require "nfk"

def guess_encoding2(str)
  Iconv.iconv("UTF-8", "UTF-8", str)
  "UTF8"
rescue Iconv::Error
  guess_encoding(str)	# UTF-8�H�~�Q��nfk�ӱ���
end
