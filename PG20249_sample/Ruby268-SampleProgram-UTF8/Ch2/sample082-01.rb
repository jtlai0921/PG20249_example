part = /[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+/
VALID_ADDRESS = /\A#{part}@{part}\z/n

def valid_email_address?(str)
  return false if /\s/ =~ str		# 檢查空白類字元
  return false if [　-Ｚ]/ =~ str	# 檢查混入的全形文字
  VALID_ADDRESS =~ str
end
