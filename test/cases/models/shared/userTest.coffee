describe 'App.User', ->
  user = undefined

  describe 'fields', ->
    beforeEach (done) ->
      user = App.User.build
        email: 'A email'
        firstName: 'A firstName'
        lastName: 'A lastName'

      done()

    test 'email', ->
      assert.ok user.get('email')

    test 'firstName', ->
      assert.ok user.get('firstName')

    test 'lastName', ->
      assert.ok user.get('lastName')

  describe 'relations', ->
