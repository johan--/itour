'use strict'

describe 'Controller: FormCtrl', ->

  # load the controller's module
  beforeEach module 'myappApp'
  FormCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    FormCtrl = $controller 'FormCtrl',
      $scope: scope

  it 'should ...', ->
    expect(1).toEqual 1
