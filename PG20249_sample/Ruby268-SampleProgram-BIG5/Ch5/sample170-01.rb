def redirect_stdout_to(filename)
  out_save = STDOUT.dup		# �ƻs STDOUT
  begin
    File.open(filename, "w"){|file|	# �NSTDOUT�g�J�ܷs���ɮפ�
      STDOUT.reopen(file)		# �i�汵��
    }
    yield				# �Ұʰ϶�
  ensure
    STDOUT.reopen(out_save)	# �ѽƻs���_��
    out_save.close
  end
end

redirect_stdout_to("log.txt"){
  system("ls")
}
