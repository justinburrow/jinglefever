'use strict'

angular.module 'jinglefever'
.controller 'trackCtrl', ($scope, $stateParams, $rootScope, $http) ->
    userId = Meteor.settings.public.scUserId
    clientId = Meteor.settings.public.scClientId
    trackId = $stateParams.id
    $rootScope.home = false
    
    $http.get('http://api.soundcloud.com/tracks/' + trackId + '?client_id='+clientId).success (data) ->
      $scope.singleTrack = data
      $scope.playURL = $scope.singleTrack.permalink_url