require "rexml/document"
doc = REXML::Document.new(File.open("test.rdf"))
p doc.root.elements["channel"].elements["link"].text
  #=> "http://i.loveruby.net"
