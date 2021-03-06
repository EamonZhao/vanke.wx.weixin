﻿(function (angular, app) {
    'use strict';

    app.controller('LoginCtrl', function ($rootScope, $scope, $state, authService, sweetAlert) {
        authService.logout();

        $scope.login = function (form) {
            form.$setSubmitted(true);

            if (form.$valid) {
                authService.login($scope.data.LoginName, $scope.data.Password,
                    function() {
                        $state.go('settings.staffs');
                    });
            }
        };
    });

})(angular, app);