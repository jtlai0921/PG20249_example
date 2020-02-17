require "win32/registry"

desired = Win32::Registry::KEY_WRITE
Win32::Registry::HKEY_CURRENT_USER.open('Software\Microsoft\Notepad', desired){|reg|
  reg["iWindowPosX"] = 0
  reg["iWindowPosY"] = 0
}
