def remove_doubled(str)
  str.gsub(/(['"])\1/){ $1 }
end

p remove_doubled("abc''def\"\"ghi")		#=> "abc'def\"ghi"
