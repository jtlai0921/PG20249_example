part = /[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+/
VALID_ADDRESS = /\A#{part}@{part}\z/n

def valid_email_address?(str)
  return false if /\s/ =~ str		# �ˬd�ť����r��
  return false if [�@-��]/ =~ str	# �ˬd�V�J�����Τ�r
  VALID_ADDRESS =~ str
end
