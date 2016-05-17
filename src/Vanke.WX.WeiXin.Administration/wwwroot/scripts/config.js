(function (angular, app) {
    'use strict';

    app
        .config(configState)
        .config(configHttpProvider)
        .run(function ($rootScope, $state) {
            $rootScope.$state = $state;
        });

    function configState($stateProvider, $urlRouterProvider, $compileProvider) {

        // Optimize load start with remove binding information inside the DOM element
        $compileProvider.debugInfoEnabled(true);

        // Set default state
        $urlRouterProvider.otherwise("/common/login");

        $stateProvider
            .state("admin", {
                abstract: true,
                url: "/admin",
                templateUrl: "views/common/content.html",
                data: {
                    pageTitle: 'Admin'
                }
            })
            .state("admin.dashboard", {
                url: "/dashboard",
                templateUrl: "views/dashboard.html",
                data: {
                    pageTitle: 'Dashboard'
                }
            })
            .state("admin.admins", {
                url: "/admins",
                templateUrl: "views/settings/admins.html",
                data: {
                    pageTitle: 'Vehicle Management'
                }
            })
            .state("admin.adminedit", {
                url: "/adminedit?id",
                templateUrl: "views/settings/adminedit.html",
                data: {
                    pageTitle: 'Edit Vehicle'
                }
            })
            .state("admin.staffs", {
                 url: "/staffs",
                 templateUrl: "views/settings/staffs.html",
                 data: {
                     pageTitle: 'Vehicle Management'
                 }
             })
            .state("admin.staffedit", {
                url: "/staffedit?id",
                templateUrl: "views/settings/staffedit.html",
                data: {
                    pageTitle: 'Edit Vehicle'
                }
            })
            .state("admin.dinnertypes", {
                url: "/dinnertypes",
                templateUrl: "views/settings/dinnertypes.html",
                data: {
                    pageTitle: 'Vehicle Management'
                }
            })
            .state("admin.dinnertypeedit", {
                url: "/dinnertypeedit?id",
                templateUrl: "views/settings/dinnertypeedit.html",
                data: {
                    pageTitle: 'Edit Vehicle'
                }
            })
            .state("admin.dinnerplaces", {
                url: "/dinnerplaces",
                templateUrl: "views/settings/dinnerplaces.html",
                data: {
                    pageTitle: 'Vehicle Management'
                }
            })
            .state("admin.dinnerplaceedit", {
                url: "/dinnerplaceedit?id",
                templateUrl: "views/settings/dinnerplaceedit.html",
                data: {
                    pageTitle: 'Edit Vehicle'
                }
            })
            .state("admin.items", {
                url: "/items",
                templateUrl: "views/settings/items.html",
                data: {
                    pageTitle: 'Vehicle Management'
                }
            })
            .state("admin.itemedit", {
                url: "/itemedit?id",
                templateUrl: "views/settings/itemedit.html",
                data: {
                    pageTitle: 'Edit Vehicle'
                }
            })

            // Common views
            .state('common', {
                abstract: true,
                url: "/common",
                templateUrl: "views/common/content_empty.html",
                data: {
                    pageTitle: 'Common'
                }
            })
            .state('common.login', {
                url: "/login",
                templateUrl: "views/common_app/login.html",
                data: {
                    pageTitle: 'Login page',
                    specialClass: 'blank'
                }
            });
    }

    function configHttpProvider($httpProvider) {
        //$httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';
        $httpProvider.interceptors.push(function ($rootScope, $q, $injector) {
            return {
                'request': function (config) {
                    config.headers = config.headers || {};

                    var authData = $rootScope.aa;
                    if (authData) {
                        config.headers.Authorization = 'Bearer ' + authData;
                    }

                    return config;
                },

                //'requestError': function (rejection) {
                //    return $q.reject(rejection);
                //},

                //'response': function (response) {
                //    return response;
                //},

                'responseError': function(rejection) {
                    var sweetAlert = $injector.get('sweetAlert');
                    var $state = $injector.get('$state');

                    if (rejection.status === 401) {
                        $state.go('common.login');
                    }
                    else if (rejection.status === 404) {
                        sweetAlert.error('Not Found ' + rejection.config.url);
                    } else {
                        var errorData = rejection.data;
                        if (errorData.ErrorType === 'BusinessError') {
                            sweetAlert.warning(errorData.Message);
                        } else {
                            sweetAlert.error(errorData.Message);
                        }
                    }

                    return $q.reject(rejection);
                }
            };
        });
    }

})(angular, app);