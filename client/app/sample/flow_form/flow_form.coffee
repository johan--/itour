'use strict'

angular.module 'myappApp'
.config ($stateProvider) ->
  $stateProvider.state 'flow_form',
    url: '/flow_form'
    templateUrl: 'app/sample/flow_form/flow_form.html'
    controller: 'FlowFormCtrl'
