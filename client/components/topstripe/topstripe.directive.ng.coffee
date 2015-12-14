'use strict'

angular.module 'jinglefever'
.directive 'topstripe', ->
  restrict: 'AE'
  templateUrl: 'client/components/topstripe/topstripe.view.html'
  controller: 'jinglesCtrl'