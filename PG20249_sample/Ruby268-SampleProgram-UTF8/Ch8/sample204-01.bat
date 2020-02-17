#echo off
if "%OS" == "Windows_NT" goto WinNT
"C:\Program Files\ruby\bin\ruby" -x "C:/some/prog.bat" %1 %2 %3 %4 %4 %6 %7 %8 %9
goto endofruby
:WinNT
"C:\Program Files\ruby\bin\ruby" -x "C:/some/prog.bat" %*
goto endofruby
#!ruby
	... Ruby script主體內容
__END__
:endofruby
