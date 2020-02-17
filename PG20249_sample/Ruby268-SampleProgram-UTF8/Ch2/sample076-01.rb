require "uri"

uri = URI.parse(
      "http://user:pass@www.example.com:80/path/to/file?q=query#part")

p uri		#=> #<URI::HTTP:0x2cf664 URL:http://user:pass@www
		#=> .example.com/path/to/file?q=query#part>
p uri.host	#=> "www.example.com"
p uri.port		#=> 80
p uri.path	#=> "/path/to/file"
p uri.query	#=> "q=query"
p uri.user	#=> "user"
p uri.password	#=> "pass"
