pid = fork{ # бу }
exitpid, status = *Process.waitpid2(pid)
