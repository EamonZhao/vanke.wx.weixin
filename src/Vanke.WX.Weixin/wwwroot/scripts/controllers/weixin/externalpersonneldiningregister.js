﻿(function (angular, app) {
    'use strict';

    app.controller('ExternalPersonnelDiningRegisterCtrl', function ($scope, api, sweetAlert) {
        api.externalPersonnelDiningRegister.getOwnHistories(function (result) {
            $scope.hasHistories = result.length > 0;
        });

        $scope.save = function (form) {
            form.$setSubmitted(true);

            if (form.$valid) {
                api.externalPersonnelDiningRegister.save($scope.data, function () {
                    sweetAlert.success('提交成功');
                    form.$submitted = false;
                    $scope.data = null;
                });
            }
        };
    });

})(angular, window.app);