p "，＆９，，＆９，".sub(/，＆９，/, "痴河")
  #=> "痴河９，＆９，"
p "，＆９，，＆９，".gsub(/，＆９，/, "痴河")
  #=> "痴河痴河"
