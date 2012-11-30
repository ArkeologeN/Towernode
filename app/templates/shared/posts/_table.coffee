
tableFor 'posts', (t) ->
  t.head ->
    t.row ->
      t.header 'title', sort: true
      t.header 'body', sort: true
  t.body ->
    text '{{#each post in App.postsController.all}}'
    t.row class: 'post', ->
      t.cell '{{post.title}}'
      t.cell '{{post.body}}'
      t.cell ->
        a '{{action showPost post href=true}}', 'Show'
        span '|'
        a '{{action editPost post href=true}}', 'Edit'
        span '|'
        a '{{action destroyPost post}}', 'Destroy'
    text '{{/each}}'
  t.foot ->
    t.row ->
      t.cell colspan: 5, ->
        a '{{action newPost post href=true}}', 'New Post'

