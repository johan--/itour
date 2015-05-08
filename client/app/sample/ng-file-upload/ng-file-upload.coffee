'use strict'

angular.module 'myappApp'
.config ($stateProvider) ->
  $stateProvider.state 'ng-file-upload',
    url: '/ng-file-upload'
    templateUrl: 'app/sample/ng-file-upload/ng-file-upload.html'
    controller: 'NgFileUploadCtrl'
