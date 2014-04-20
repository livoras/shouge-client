signup = angular.module('shougeApp.signup', ['ui.router'])

signup.config ($stateProvider)->
  $stateProvider.state 'signup',
    url: '/signup'
    views:
      'main':
        controller: 'SignupCtrl'
        templateUrl: 'signup/signup.tpl.html'

signup.controller 'SignupCtrl', ($scope, $http)->
  $scope.username = 'test'
  $scope.email = 'test@test.com'
  $scope.password = 'jerry'
  
  $scope.submit = ->
    data = _.pick $scope, 'username', 'email', 'password'
    console.log data
    $http.post('/user/signup', data).success (data)->
      console.log data
    .error (error)->
      console.error error
