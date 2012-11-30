@title = "Editing Post"

partial "flash"
partial "form"

contentFor "sidebar", ->
  header class: "widget header", ->
    h2 @post.toLabel()