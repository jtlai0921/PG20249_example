require "cgi"
require "cgi/session"
require "cgi/session/pstore"

cgi = CGI.new
rbsess = CGI::Session.new(cgi,
  "tmpdir" => "/tmp/session",
  "database_manager" => CGI::Session::PStore,
  "session_key" => "rbsessid"
)

rbsess["count"] ||= 0
rbsess["count"] += 1
rbsess.close

print cgi.header("text/plain")
puts rbsess["count"]
