require "getoptlong"

parser = GetoptLong.new(
	["--all",	"-a",	GetoptLong::NO_ARGUMENT		],
	["--user",	"-u",	GetoptLong::OPTIONAL_ARGUMENT	],
	["--format",	"-f",	GetoptLong::REQUIRED_ARGUMENT	],
	["--help",		GetoptLong::NO_ARGUMENT		])
begin
  parser.each{|opt, arg|
    case opt
    when "--all"	then puts "set: --all"
    when "--user"	then puts "--user, arg=#{arg.inspect}"
    when "--format"	then puts "set: --format, arg=#{arg.inspect}"
    when "--help"	then puts "set: --help"; exit 0
    else
      raise "must not happen"
    end
  }
rescue GetoptLong::AmbigousOption, GetoptLong::InvalidOption,
       GetoptLong::MissingArgument,
       GetoptLong::NeedlessArgument => err
  $stderr.puts err.message
  exit 1
end
