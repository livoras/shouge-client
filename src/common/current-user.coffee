common = angular.module('common', [])

common.service 'currentUser', ($http)->
  @data =
    isLogin: false
    username: 'livoras'
    email: 'livoras@163.com'
    avatar: 'http://tp4.sinaimg.cn/1761179351/180/22821626784/1'

  @logout = ->

  @
