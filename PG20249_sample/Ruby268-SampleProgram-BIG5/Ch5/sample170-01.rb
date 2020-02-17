def redirect_stdout_to(filename)
  out_save = STDOUT.dup		# 複製 STDOUT
  begin
    File.open(filename, "w"){|file|	# 將STDOUT寫入至新的檔案中
      STDOUT.reopen(file)		# 進行接替
    }
    yield				# 啟動區塊
  ensure
    STDOUT.reopen(out_save)	# 由複製中復原
    out_save.close
  end
end

redirect_stdout_to("log.txt"){
  system("ls")
}
