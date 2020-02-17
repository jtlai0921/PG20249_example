pid = fork{ # ～ }
exitpid, status = *Process.waitpid2(pid)
