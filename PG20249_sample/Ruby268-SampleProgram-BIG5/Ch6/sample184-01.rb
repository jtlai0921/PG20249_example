module Math
  def deg2rad(deg)
    deg / (360.0 / (PI * 2))
  end
  module_function :deg2rad
end

p Math.sin(Math.deg2rad(30))	#=> 0.5
