def char_stat(str)
  table = Hash.new(0)
  str.scan(/./m){|ch|
    table[ch] += 1
  }
  table.to_a.sort_by{|char, count| -count}
end
