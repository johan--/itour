'use strict'

angular.module 'myappApp'
.controller 'NgFileUploadCtrl', ($scope, Upload) ->
  $scope.message = 'Hello'
  $scope.files = {}
  $scope.myCroppedImage = ''
  $scope.myImage = ''

  $scope.$watch "files", ()->
    $scope.upload $scope.files
    onFileSelect $scope.files


  onFileSelect = (files)->
    file = files[0]
    reader = new FileReader()
    reader.onloadend = ()->
      $scope.$apply ()->
        $scope.myImage = reader.result
    reader.readAsDataURL(file)

  $scope.upload = (files)->
    if files && files.length
      _.forEach files, (file)->
        $scope.myImage = file
        console.log file
        Upload.upload {
          url: ''
          file: file
        }
        .progress (evt)->
          progressPercentage = parseInt(evt.loaded / evt.total * 100.0)
          console.log 'progress: ' + progressPercentage + '% ' + evt.config.file.name
        .success (data, status, headers, config)->
          console.log 'file ' + config.file.name + 'uploaded. Response: ' + data
