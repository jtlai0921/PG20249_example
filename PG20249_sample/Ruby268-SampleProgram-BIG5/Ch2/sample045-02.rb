text = "This is a pen.
That is a pen.

It is a pen, too.
"
p text.split(/\n\n/)
  #=> ["This is a pen.\nThat is a pen.", "It is a pen, too.\n"]
