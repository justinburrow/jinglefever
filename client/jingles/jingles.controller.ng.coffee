'use strict'

angular.module 'jinglefever'
.controller 'JinglesCtrl', ($scope) ->
  userId = Meteor.settings.public.scUserId
  clientId = Meteor.settings.public.scClientId
  
  console.log(userId)