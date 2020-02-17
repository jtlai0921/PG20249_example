require "win32ole"

begin
  ie = WIN32OLE.new("InternetExplorer.Application")
  ie.visible = $DEBUG
  events = WIN32OLE_EVENT.new(ie, "DwebBrowserEvents")
  navigate_done = false
  events.on_event("NavigateComplete"){|url|
    puts ie.document.documentElement.innerText
    navigate_done = true
  }
  ARGV.each{|fname|
    ie.navigate File.expand_path(fname)
    WIN32OLE_EVENT.message_loop until navigate_done
    navigate_done = false
  }
ensure
  ie.quit if ie
end
