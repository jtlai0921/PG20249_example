if m = /(abc)(f+)(\w{3})/.match("xxxabcfffpatxxx")
  p m.captures	#=> ["abc", "fff", "pat"]
  p m.to_a[1..-1]	#=> ["abc", "fff", "pat"]
end

if m = /(abc)(f+)(\w{3})/.match("xxxabcfffpatxxx")
  p m[1]	#=> "abc"
  p m[2] #=> "fff"
  p m[3]	#=> "pat"
end
