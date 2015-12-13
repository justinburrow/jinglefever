angular.module 'jinglefever'
.service 'jinglesFactory', ($http, $stateParams) ->

  userId = Meteor.settings.public.scUserId
  clientId = Meteor.settings.public.scClientId
  trackId = $stateParams.id

  getTracks: (data) ->
      $http.get('https://api.soundcloud.com/users/' + userId + '/tracks?client_id=' + clientId).success data
      return
      
  getSingleTrack: (data) ->
    $http.get('http://api.soundcloud.com/tracks/' + trackId + '?client_id='+clientId).success data
    return