angular.module 'jinglefever', [
  'angular-meteor',
  'ui.router',
  'plangular'
]
.config((plangularConfigProvider) ->
  plangularConfigProvider.clientId = Meteor.settings.public.scClientId
  return
)

