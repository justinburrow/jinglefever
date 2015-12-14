'use strict'

angular.module 'jinglefever'
.config ($stateProvider) ->
  $stateProvider
  .state 'about',
    url: '/about'
    templateUrl: 'client/about/about.view.html'
    controller: 'aboutCtrl'
    cache: false