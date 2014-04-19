app = angular.module('shougeApp', [
  'shougeApp.home'
  'shougeApp.about'
  'ui.router'
])

app.config ($stateProvider, $urlRouterProvider)->
  console.log 'fuck'
  $stateProvider.state 'fuck',
    url: '/fuck'
    templateUrl: 'assets/app.html'

  $urlRouterProvider.otherwise '/home'

app.controller 'Main', ($scope, $log)->
  $scope.name = 'hello world'

app.run -> console.log 'jerry'
