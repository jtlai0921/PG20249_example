begin
  File.open("/no/such/file"){|file|
    file.each{|line|
      puts line
    }
  }
rescue => ex
  puts ex.message	#=> No such file or directory - /no/such/file
end
