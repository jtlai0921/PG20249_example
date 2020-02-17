require "rexml/document"

doc = REXML::Document.new(File.open("test.rdf"))
doc.elements.each("/rdf:RDF/channel/items/rdf:Seq/rdf:li"){|elem|
  p elem.attributes["rdf:resource"]
}
  #=> "http://i.loveruby.net/d/20040126.html#p01"
  #=> "http://i.loveruby.net/d/20040126.html#c01"
  #=> "http://i.loveruby.net/d/20040126.html#c02"
