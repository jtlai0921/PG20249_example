require "iconv"
require "nfk"

def guess_encoding2(str)
  Iconv.iconv("UTF-8", "UTF-8", str)
  "UTF8"
rescue Iconv::Error
  guess_encoding(str)	# UTF-8以外利用nfk來推測
end
