'use strict'

angular.module 'myappApp'
.controller 'NgFileUploadCtrl', ($scope, Upload) ->
	$scope.message = 'Hello'
	$scope.files = {}
	$scope.myCroppedImage = ''
	$scope.myImage = ''
	$scope.progressValue = 0

	$scope.$watch "files", ()->
		$scope.upload $scope.files
		# onFileSelect $scope.files
		# $scope.progressValue = 0


	# onFileSelect = (files)->
	# 	if files.length > 0
	# 		file = files[0]
	# 		reader = new FileReader()
	# 		reader.onloadend = ()->
	# 			$scope.myImage = reader.result
	# 		reader.onprogress = (event)->
	# 			$scope.progressValue = parseInt(event.loaded / event.total * 100.0)
	# 		reader.readAsDataURL(file)

	$scope.upload = (files)->
		if files && files.length
			_.forEach files, (file)->
				Upload.upload {
					url: '/api/upload/profile'
					file: file
				}
				.success (data, status, headers, config)->
					console.log 'file ' + config.file.name + ' is uploaded successfully. Response: ' + data

	$scope.saveCropImg = ()->
#    console.log $scope.myCroppedImage
		$scope.upload $scope.files
