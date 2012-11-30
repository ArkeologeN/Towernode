App.PostsEditView = Ember.View.extend
  templateName: 'posts/edit'
  resourceBinding: 'controller.resource'
  # You can also use an object controller (Ember.ObjectProxy) 
  # as a layer between the view and the model if you'd like more control.
  # resourceControllerBinding: 'controller.resourceController'
  
  submit: (event) ->
    # @todo
    # if @get('resource.isNew')
    #   @get('controller.target').send('createPost')
    # else
    #   @get('controller.target').send('updatePost', @get('resource'))
    @get('resource').save()
    Tower.router.transitionTo('posts.index')
    return false
