data = <<YAML
---
title: "Ruby Programming�VRuby�����ǵ{���]�p"
author:
  - "�������q"
  - "�������"
publisher: "Softbank Creative"
YAML

require "yaml"
p YAML.load(data)
