'use strict'

angular.module 'jinglefever'
.config ($stateProvider) ->
  $stateProvider
  .state 'track',
    url: '/track/:id'
    templateUrl: 'client/track/track.view.html'
    controller: 'TrackCtrl'
    cache: false