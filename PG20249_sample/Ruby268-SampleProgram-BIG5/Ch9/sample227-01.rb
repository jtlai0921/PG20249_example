require "open-uri"
open("http://www.example.com/"){|f|
  print f.read
}
