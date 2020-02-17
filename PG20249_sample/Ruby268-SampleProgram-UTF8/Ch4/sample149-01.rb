def create_tempfile(basename, num = 10, &block)
  flags = File::RDWR | File::CREAT | File::EXCL
    num.times{|i|
      begin
        return File.open("#{basename}.#{$$}.#{i}", flag, 0600, &block)
      rescue Errno::EEXIT
        next
      end
    }
    raise "create failure"	# 第num次失敗的會產生例外
end
