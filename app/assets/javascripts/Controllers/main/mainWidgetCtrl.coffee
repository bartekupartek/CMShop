@WidgetCtrl = ($scope, $routeParams) ->

  $scope.data =
    widget: {name: 'Ostatni numer Magwet', contents: 'Lorem ipsum'}

  $scope.data.widgetId = $routeParams.widgetId
