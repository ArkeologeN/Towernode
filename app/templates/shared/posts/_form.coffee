text '{{#with resource}}'
form ->
  fieldset ->
    ul class: 'fields', ->
      li class: 'control-group', ->
        div class: 'controls', ->
          label 'Title:'
          text '{{view Ember.TextField valueBinding="title"}}'
          text '{{#with errors}}'
          span class: 'help-inline error', '{{title}}'
          text '{{/with}}'
      li class: 'control-group', ->
        div class: 'controls', ->
          label 'Body:'
          text '{{view Ember.TextField valueBinding="body"}}'
          text '{{#with errors}}'
          span class: 'help-inline error', '{{body}}'
          text '{{/with}}'
      li ->
        a '{{action submit target="resource"}}', 'Submit'
text '{{/with}}'
