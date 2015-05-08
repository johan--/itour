'use strict'

describe 'Controller: NgFileUploadCtrl', ->

  # load the controller's module
  beforeEach module 'myappApp'
  NgFileUploadCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NgFileUploadCtrl = $controller 'NgFileUploadCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
