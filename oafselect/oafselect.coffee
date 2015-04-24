AutoForm.addInputType 'oafSelect',
  template: 'afOafSelect'
  valueOut: ->
  valueConverters:
    'number': AutoForm.Utility.stringToNumber
    'numberArray': (val) ->
      if _.isArray(val)
        return _.map(val, (item) ->
          AutoForm.Utility.stringToNumber $.trim(item)
        )
      val
    'boolean': AutoForm.Utility.stringToBool
    'booleanArray': (val) ->
      if _.isArray(val)
        return _.map(val, (item) ->
          AutoForm.Utility.stringToBool $.trim(item)
        )
      val
    'date': AutoForm.Utility.stringToDate
    'dateArray': (val) ->
      if _.isArray(val)
        return _.map(val, (item) ->
          AutoForm.Utility.stringToDate $.trim(item)
        )
      val
  contextAdjust: (context) ->
    context

Template.afOafSelect.helpers
Template.afOafSelect.events

Template.afOafSelect.onRendered ->
Template.afOafSelect.onDestroyed ->