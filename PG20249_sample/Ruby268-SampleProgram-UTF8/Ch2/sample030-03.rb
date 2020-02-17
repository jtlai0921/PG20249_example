def match_all_char?(re)
  (0..255).map {|byte| byte.chr }.all? {|ch| re =~ ch }
end

p match_all_char?(/./)	#=> false
p match_all_char?(/./um)	#=> false
p match_all_char?(/./nm)	#=> true
