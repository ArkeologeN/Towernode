class App.Post extends Tower.Model
  @field 'title', type: 'String'
  @field 'body', type: 'string'

  @belongsTo 'user'

  @timestamps()
