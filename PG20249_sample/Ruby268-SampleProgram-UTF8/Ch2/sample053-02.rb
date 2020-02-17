def remove_backslash(str)
  str.gsub(/\\(.)/){ $1 }
end

p remove_backslash("abc\\'def\\\"ghi")	#=> "abc'def\"ghi"
