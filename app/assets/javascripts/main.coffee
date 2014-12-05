# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self
#= require_tree ./Controllers/main

CMShop = angular.module('CMShop', ['ngRoute'])

CMShop.config(['$routeProvider', ($routeProvider) ->
  # Route for '/widget'
  $routeProvider.when('/widget/:widgetId', { templateUrl: '../assets/mainWidget.html', controller: 'WidgetCtrl' } )

  # Default
  $routeProvider.otherwise({ templateUrl: '../assets/mainIndex.html', controller: 'IndexCtrl' } )

])
