'use strict'

angular.module 'myappApp'
.config ($stateProvider) ->
  $stateProvider.state 'bootstrap',
    url: '/btform'
    templateUrl: 'app/sample/bootstrap_form/bootstrap.html'
    controller: 'BootstrapCtrl'
