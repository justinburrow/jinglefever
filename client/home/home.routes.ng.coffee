'use strict'

angular.module 'jinglefever'
.config ($stateProvider) ->
  $stateProvider
  .state 'home',
    url: '/'
    templateUrl: 'client/home/home.view.html'
    controller: 'homeCtrl'