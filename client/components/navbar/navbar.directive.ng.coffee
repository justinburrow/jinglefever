'use strict'

angular.module 'jinglefever'
.directive 'navbar', ($state) ->
  restrict: 'AE'
  templateUrl: 'client/components/navbar/navbar.view.html'
  replace: true