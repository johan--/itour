'use strict'

describe 'Controller: FlowFormCtrl', ->

  # load the controller's module
  beforeEach module 'myappApp'
  FlowFormCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FlowFormCtrl = $controller 'FlowFormCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
