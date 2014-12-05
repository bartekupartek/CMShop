@IndexCtrl = ($scope, $location) ->

  $scope.data =
    widgets: [{name: 'Ostatni Magwet'}, {name: 'TOP 10'}]

  $scope.viewWidget = (widgetId) ->
    $location.url('/widget/'+widgetId)
