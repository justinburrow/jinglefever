'use strict'

angular.module 'jinglefever'
.controller 'TrackCtrl', ($scope, $stateParams, $rootScope, $http) ->
    userId = Meteor.settings.public.scUserId
    clientId = Meteor.settings.public.scClientId
    trackId = $stateParams.id

    $http.get('http://api.soundcloud.com/tracks/' + trackId + '?client_id='+clientId).success (data) ->
      $scope.singleTrack = data
      $scope.playURL = $scope.singleTrack.permalink_url