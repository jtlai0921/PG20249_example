queue = %w(�i �R ��)
p "�}���}���}��".sub(/�}��/){ queue.shift }
  #=> "�i�}���}��"
queue = %w(�i �R ��)
p "�}���}���}��".gsub(/�}��/){ queue.shift }
  #=> "�i�R��"
