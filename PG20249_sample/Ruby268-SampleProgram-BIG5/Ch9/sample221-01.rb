def deamon
  return yield if $DEBUG
  Process.fork{
    Process.setsid
    Dir.chdir "/"
    Signal.trap(:INT){ exit! 0}
    Signal.trap(:TERM){ exit! 0 }
    # �i�]�w���sŪ�J�]�w�ɪ��B�z��
    Signal.trap(:HUP){ exit! 0}
    File.open("/dev/null", "r+"){|f|
      STDIN.reopen f
      STDOUT.reopen f
      STDERR.reopen f
    }
    yield
  }
  exit! 0
end
