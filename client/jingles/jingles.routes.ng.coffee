'use strict'

angular.module 'jinglefever'
.config ($stateProvider) ->
  $stateProvider
  .state 'jingles',
    url: '/jingles'
    templateUrl: 'client/jingles/jingles.view.html'
    controller: 'JinglesCtrl'