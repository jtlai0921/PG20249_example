# 在object類別中是否有定義實體方法initialize？
p Object.private_method_defined?(:initialize)	#=> true

# 在ruby 1.6版之前
p Object.private_instance_methods(true).include?("initialize")
  #=> true
