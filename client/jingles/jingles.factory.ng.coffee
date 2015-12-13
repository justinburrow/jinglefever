angular.module 'jinglefever'
.service 'jinglesFactory', ($http) ->

  userId = Meteor.settings.public.scUserId
  clientId = Meteor.settings.public.scClientId

  getTracks: (data) ->
      $http.get('https://api.soundcloud.com/users/' + userId + '/tracks?client_id=' + clientId).success data
      return