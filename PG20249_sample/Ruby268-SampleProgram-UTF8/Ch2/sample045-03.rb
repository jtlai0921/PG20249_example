text = "This is a pen.
That is a pen.

It is a pen, too.
"
text.each("\n\n"){|paragraph|
  p paragraph
}
  #=> "This is a pen.\nThat is a pen."
  #=> "It is a pen, too.\n"
