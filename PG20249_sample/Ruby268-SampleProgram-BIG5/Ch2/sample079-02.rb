require "yaml"

obj = {
  1 => 2,
  "string" => ["This", "is", "ok"],
  :object => Object.new
}
puts YAML.dump(obj)
