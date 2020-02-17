require "Win32API"

MessageBox = Win32API.new("user32", "MessageBoxA", %w(P P P I), "I");
MessageBox.call(0, "Hello, Windows!", "dlhello", 0);
