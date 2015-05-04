'use strict'

describe 'Controller: BootstrapCtrl', ->

  # load the controller's module
  beforeEach module 'myappApp'
  BootstrapCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    BootstrapCtrl = $controller 'BootstrapCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
