require "optparse"

parser = OptionParser.new
parser.banner = "Usage: #{File.basename($0)} [options] file..."
parser.on("-a", "--all", "display data for all users."){
  puts "set: --all"
}
parser.on("-u", "--user=[USER]", String, "display data for the user USER."){|arg|
  puts "set: --user, arg=#{arg.inspect}"
}
parser.on("-f", "--format=FMT", String, "display data in the FMT format."){|arg|
  puts "set: --format, arg=#{arg.inspect}"
}
parser.on("--help", "print this message and quit."){
  puts "set: --help"
  puts parser.help
  exit 0
}
begin
  parser.parse!
  puts "argv = #{ARGV.inspect}"
rescue OptionParser::ParseError => err
  $stderr.puts err.message
  $stderr.puts parser.help
  exit 1
end
