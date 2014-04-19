app = angular.module('shouge', [
  'shouge.home'
  'shouge.about'
  'ui.router'
])

app.config ($staticProvider, $urlRouterProvider)->
  $urlRouterProvider.otherwise '/home'

app.controller 'AppCtrl', AppCtrl = ($scope, $log, config)->
  $log.log config
