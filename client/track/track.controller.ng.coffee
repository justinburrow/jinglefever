'use strict'

angular.module 'jinglefever'
.controller 'TrackCtrl', ($scope, $stateParams) ->
  
  trackId = $stateParams.id
  
  console.log($scope.allTracks)
  