describe 'App.Post', ->
  post = undefined

  describe 'fields', ->
    beforeEach (done) ->
      post = App.Post.build
        title: 'A title'
        body: 'A body'

      done()

    test 'title', ->
      assert.ok post.get('title')

    test 'body', ->
      assert.ok post.get('body')

  describe 'relations', ->
