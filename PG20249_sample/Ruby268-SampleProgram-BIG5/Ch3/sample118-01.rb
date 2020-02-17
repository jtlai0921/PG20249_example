require "pseudohash"

header = PseudoHash.new
header["to", true] = "recv@example.jp"
header["from", true] = "send@example.jp"
header["subject", true] = "Test Mail"
header.each{|k, v|
  puts "#{k}: #{v}"
}
