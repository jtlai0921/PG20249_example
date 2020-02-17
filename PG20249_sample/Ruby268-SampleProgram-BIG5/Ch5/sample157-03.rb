data = File.open("foo.txt"){|io| io.read }
p data.count("\n")
