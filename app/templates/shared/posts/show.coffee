@title = "Post"

partial "flash"

text '{{#with resource}}'
dl class: "content", ->
  dt "Title:"
  dd '{{title}}'
  dt "Body:"
  dd '{{body}}'
text '{{/with}}'