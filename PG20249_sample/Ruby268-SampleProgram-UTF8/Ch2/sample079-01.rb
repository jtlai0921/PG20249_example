data = <<YAML
---
title: "Ruby Programming向Ruby之父學程式設計"
author:
  - "高橋征義"
  - "後藤裕藏"
publisher: "Softbank Creative"
YAML

require "yaml"
p YAML.load(data)
