app = angular.module('shougeApp', [
  'shougeApp.home'
  'shougeApp.about'
  'shougeApp.signup'
  'shougeApp.login'
  'common'
  'ui.router'
])

app.config ($stateProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise '/home'

app.controller 'Main', ($scope, $http, currentUser)->
  $scope.name = '手哥网'
  $scope.subtitle = '你，就是一个艺术家'
  $scope.currentUser = currentUser.data

  check_login = ->
    $http.get('/user/check_login').success (data)->
      if data.isLogin
        $scope.currentUser.isLogin = true
        _.extend $scope.currentUser, data.data
    .error (error)->
      console.error error

  $scope.logout = ->
    $http.delete('/user/logout').success (data)->
      if data.result is 'success'
        $scope.currentUser.isLogin = false
        _.extend $scope.currentUser, data.data
    .error (error)->
      console.error error

  check_login()