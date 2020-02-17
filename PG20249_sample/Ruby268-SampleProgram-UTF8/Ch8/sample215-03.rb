require "dl"
require "dl/import"

module Xlib
  extend DL::Importable
  dlload "libX11.so"
  extern "Display* XOpenDisplay(char*)"
end
p Xlib.nethods(true).detect{|name| /xopen/i =~ name }
  #=> "xOpenDisplay"
