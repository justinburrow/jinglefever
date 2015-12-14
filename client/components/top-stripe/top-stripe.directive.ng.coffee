'use strict'

angular.module 'jinglefever'
.directive 'top-stripe', ->
  restrict: 'AE'
  templateUrl: 'client/components/top-stripe/top-stripe.view.html'
  replace: true