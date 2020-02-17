require "rexml/document"
doc = REXML::Document.new(File.open("test.rdf"))
p doc.elements["not/exist/path"]	#=> nil
