﻿(function (angular, app) {
    'use strict';

    app.controller('EmployeeDiscountEditCtrl', function ($scope, $state, $stateParams, api, Upload, sweetAlert) {
        if (!angular.isUndefined($stateParams.id)) {
            api.employDiscounts.get({ id: $stateParams.id }, function (result) {
                $scope.data = result;

                $scope.uploadedFile = 'http://localhost:54843/Upload/' + $scope.data.ImagePath;
            });
        }

        $scope.save = function (form) {
            form.$setSubmitted(true);

            if (form.$valid) {
                api.employDiscounts.save($scope.data, function () {
                    $state.go('query.employeediscountedit');
                });
            }
        };

        $scope.upload = function (file) {
            Upload.upload({
                url: 'http://localhost:54843/api/files',
                data: { file: file }
            }).then(function (response) {
                $scope.data.OriginalImagePath = $scope.data.ImagePath;
                $scope.data.ImagePath = response.data[0];
                $scope.uploadedFile = 'http://localhost:54843/Temp/' + $scope.data.ImagePath;
                sweetAlert.success('上传成功');
            });
        };
    });

})(angular, app);