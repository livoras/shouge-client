login = angular.module('shougeApp.login', [
  'ui.router',
  'common'
])

login.config ($stateProvider)->
  $stateProvider.state 'login', {
    url: '/login'
    views:
      main:
        controller: 'LoginCtrl'
        templateUrl: 'login/login.tpl.html'
  }

login.controller 'LoginCtrl', ($scope, $http, $location, currentUser)->
  $scope.login = ->
    data = _.pick $scope, 'email', 'password'
    if check_valid(data)
      $http.post('/user/login', data).success (data)->
        if data.result is 'success'
          currentUser.data.isLogin = true
          _.extend currentUser.data, data.data
          $location.path('/')
      .error (error)->
        console.error error
    else
      alert 'fuckyou'

  check_valid = (data)->
    yes
