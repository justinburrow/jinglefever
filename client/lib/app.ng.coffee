angular.module 'jinglefever', [
  'angular-meteor',
  'ui.router',
  'plangular',
  'ngAnimate'
]
.config((plangularConfigProvider) ->
  plangularConfigProvider.clientId = Meteor.settings.public.scClientId
  return
)

