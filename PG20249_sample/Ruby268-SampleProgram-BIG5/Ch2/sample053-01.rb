def quote_by_backslash(str)
  str.gsub(/['"\\]/){|ch| '\\' + ch }
end

p quote_by_backslash("abc'def\"ghi")	#=> "abc\\'def\\\"ghi"
