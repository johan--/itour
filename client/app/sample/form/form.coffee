'use strict'

angular.module 'myappApp'
.config ($stateProvider) ->
  $stateProvider.state 'form',
    url: '/form'
    templateUrl: 'app/sample/form/form.html'
    controller: 'FormCtrl'
