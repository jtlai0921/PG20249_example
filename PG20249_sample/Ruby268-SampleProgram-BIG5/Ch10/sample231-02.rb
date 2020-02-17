rbsess = CGI::Session.new(cgi,
  "database_manager" => CGI::Session::PStore,
  "tmpdir" => "/tmp/session",
  "session_key" => "rbsessid",
  "session_expires" => 0,
  "secure" => 1
)
