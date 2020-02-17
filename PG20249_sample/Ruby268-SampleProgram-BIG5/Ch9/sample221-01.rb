def deamon
  return yield if $DEBUG
  Process.fork{
    Process.setsid
    Dir.chdir "/"
    Signal.trap(:INT){ exit! 0}
    Signal.trap(:TERM){ exit! 0 }
    # 可設定重新讀入設定檔的處理器
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
