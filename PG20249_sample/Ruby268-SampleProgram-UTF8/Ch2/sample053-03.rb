def double_quote(str)
  str.gsub(/['"]/){|ch| ch + ch }
end

p double_quote("abc'def\"ghi")	#=> "abc''def\"\"ghi"
