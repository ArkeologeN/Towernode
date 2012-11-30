a '{{action showRoot href=true}}', class: 'brand', -> t('title')

div class: 'nav-collapse', ->
  ul class: 'nav', ->
    li '{{bindAttr class="App.UserController.isActive:active"}}', ->
      a '{{action indexUser href=true}}', t('links.users')
    li '{{bindAttr class="App.PostController.isActive:active"}}', ->
      a '{{action indexPost href=true}}', t('links.posts')
  ul class: 'nav pull-right', ->
    li class: 'dropdown', ->
      linkTo t('links.docs'), '#', class: 'dropdown-toggle', 'data-toggle': 'dropdown', ->
        b class: 'caret'
      ul class: 'dropdown-menu', ->
        li ->
          linkTo 'Tower.js', 'https://github.com/viatropos/tower/wiki'
