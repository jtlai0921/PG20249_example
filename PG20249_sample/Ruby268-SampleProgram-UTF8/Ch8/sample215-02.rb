require "dl"
require "dl/import"

module 模組名
  extend DL::Importable
  dlload "函式庫名"
  # ... 在此處import想要使用的函式
end
