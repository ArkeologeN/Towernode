describe 'PostsController', ->
  controller = undefined
  post = undefined
  url = undefined

  beforeEach (done) ->
    controller = App.PostsController.create()
    agent.controller = controller
    Tower.start(done)

  afterEach ->
    Tower.stop()
    delete agent.controller

  describe 'routes', ->
    test 'index', ->
      assert.equal urlFor(App.Post), "/posts"

    test 'new', ->
      post = App.Post.build()
      assert.equal urlFor(post, action: 'new'), "/posts/new"

    test 'show', ->
      post = new App.Post(id: 1)
      assert.equal urlFor(post), "/posts/#{post.get('id')}"

    test 'edit', ->
      post = new App.Post(id: 1)
      assert.equal urlFor(post, action: 'edit'), "/posts/#{post.get('id')}/edit"

  describe '#index', ->
    beforeEach (done) ->
      factory 'post', (error, record) =>
        post = record
        done()

    test 'render json', (done) ->
      get urlFor(App.Post), format: "json", (request) ->
        assert.equal @headers["Content-Type"], 'application/json'

        done()

  describe '#new', ->

  describe '#create', ->
    beforeEach ->
      url = urlFor(App.Post)

    test 'params', (done) ->
      params = {}

      post url, format: "json", params: params, (response) ->
        App.Post.count (error, count) =>
          assert.equal count, 1
          done()

  describe "#show", ->

  describe "#edit", ->

  describe "#update", ->

  describe "#destroy", ->
