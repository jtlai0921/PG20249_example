require "nfk"

CODE_TO_NAME = Hash.new("ASCII")
CODE_TO_NAME[NFK::JIS]		= "JIS"
CODE_TO_NAME[NFK::EUC]		= "EUC"
CODE_TO_NAME[NFK::SJIS]		= "SJIS"
CODE_TO_NAME[NFK::BINARY]	= "BINARY"
CODE_TO_NAME[NFK::UTF8]	= "UTF8" if NFK.const_defined?(:UTF8)

def guess_encoding(str)
  CODE_TO_NAME[NFK.guess(str)]
end
