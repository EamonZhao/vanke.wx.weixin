﻿(function (angular, app) {
    'use strict';

    app.controller('EmployeeDiscountsCtrl', function ($scope, api, datatableSettings, sweetAlert, DTOptionsBuilder, DTColumnDefBuilder) {
        api.employeeDiscounts.getTypes(function (result) {
            $scope.types = result;
        });

        var loadData = function () {
            api.employeeDiscounts.search({ type: $scope.filterType }, function (result) {
                $scope.employeeDiscounts = result;
            });
        }

        loadData();

        $scope.dtOptions = datatableSettings.getGeneralSettings(DTOptionsBuilder);

        $scope.dtMessageColumnDefs = [
            DTColumnDefBuilder.newColumnDef(2).notSortable()
        ];

        $scope.remove = function (id) {
            sweetAlert.confirm(
                "你将删除这条数据!",
                function(resover) {
                    api.employeeDiscounts.remove({ id: id }, function () {
                        for (var i = 0; i < $scope.employeeDiscounts.length; i++) {
                            if ($scope.employeeDiscounts[i].ID === id) {
                                $scope.employeeDiscounts.splice(i, 1);
                                break;
                            }
                        }

                        resover();
                    });
                });
        };

        $scope.search = function() {
            loadData();
        };
    });

})(angular, window.app);