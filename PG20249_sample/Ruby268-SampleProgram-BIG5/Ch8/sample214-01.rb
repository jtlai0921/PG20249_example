require "win32/registry"

Win32::Registry::HKEY_CRRENT_USER.open('Software\Microsoft\Notepad'){|reg|
  p reg["iWindowPosX"]	#=> 55
  p reg["iWindowPosY"]	#=> 55
}
