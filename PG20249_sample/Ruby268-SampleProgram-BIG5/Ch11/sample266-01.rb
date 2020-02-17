class AppConfig
end
config = AppConfig.new
config.instance_eval(File.read("/etc/myapp.conf"))
