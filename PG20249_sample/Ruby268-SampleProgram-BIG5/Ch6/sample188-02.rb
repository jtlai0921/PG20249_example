def compare_float(a, b, acc)
  form = "%.#{acc}e"
  sprintf(form, a) == sprintf(form, b)
end
a = 0.0; 10.times{ a += 0.1 }
p compare_float(a, 1.0, 3)	#=> true
