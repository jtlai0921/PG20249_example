require "win32ole"

begin
  word = WIN32OLE.new("Word.Application")		# (1)
  word.visible = $DEBUG				# (2)
  ARGV.each{|fname|
    begin
      doc = word.documents.open(File.expand_path(fname))	# (3)
      doc.sentences.each{|s|
        print s.text.gsub(/\r/, "\n")
      }
    ensure
      doc.close if doc
    end
  }
ensure
  word.quit if word
end
