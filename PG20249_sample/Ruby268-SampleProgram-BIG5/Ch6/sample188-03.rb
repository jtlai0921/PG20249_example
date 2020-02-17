class Float
  def near_to(b)
    (self - b).abs / abs <= Float::EPSILON && (b - self).abs / b.abs <= Float::EPSILON
  end
end
i = 0.0; 10.times{i += 0.1}
p 1.0.near_to(i)	#=> true
