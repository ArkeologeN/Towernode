Tower.Factory.define 'user', ->
  email: Tower.random('email')
  firstName: Tower.random('firstName')
  lastName: Tower.random('lastName')
