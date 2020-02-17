require "rexml/document"
require "iconv"

doc = REXML::Document.new(File.open("test.rdf"))
title = doc.elements["/rdf:RDF/channel/title"].text
puts Iconv.conv("big5", "UTF-8", title)
  #=> �C���O �����I
