(function()
{
    var tpoc = angular.module('tpocmain', ['ui.bootstrap']);

    tpoc.factory('Ajax', function($http)
                                {
                                    return {
                                        "Base":function(fData, url)
                                                    {
                                                        $http({
                                                        url:url,
                                                        method:"POST",
                                                        headers:{"Content-Type":"application/X-WWW-form-urlencoded", "X-Requested-With":"XMLHttpRequest"},
                                                        data:fData
                                                        }).success(function(data)
                                                                    {

                                                                    }).error(function()
                                                                            {
                                                                                alert("fail")
                                                                            });
                                                    },
                                        "Control": function(id)
                                                {
                                                    $http({
                                                        url:'/control/',
                                                        method:"POST",
                                                        headers:{"Content-Type":"application/X-WWW-form-urlencoded", "X-CSRFToken": Share.csrf, "X-Requested-With":"XMLHttpRequest"},
                                                        data:{"id":id}
                                                    }).success(function(data)
                                                                {
                                                                    Modal.Modal(data, id);
                                                                }).error(function()
                                                                        {
                                                                            alert("fail")
                                                                        });
                                                },
                                        "GetJson":function(url, getValue)
                                                    {
                                                        $http({
                                                            url:url,
                                                            method:"POST",
                                                            headers:{"Content-Type":"application/X-WWW-form-urlencoded", "X-CSRFToken": Share.csrf, "X-Requested-With":"XMLHttpRequest"}
                                                        }).success(function(data)
                                                                    {
                                                                        //Share.Network = data;
                                                                        getValue(data);
                                                                    }).error(function()
                                                                            {
                                                                                alert("fail")
                                                                            });
                                                    }
                                    };
                                });

    tpoc.controller("LoginCtrl", function($scope, Ajax, $element)
                                    {
                                        $scope.fData = {"email":"", "password":""};
                                        $scope.submit = function(data)
                                                        {
                                                            console.log($element);
                                                            console.log(data);
                                                            //Ajax.Base(data);
                                                        };
                                    });

    tpoc.controller("ProfilCtrl", function($scope, Ajax)
                                    {
                                        $scope.submit = function(data)
                                                        {
                                                            Ajax.Base(data);
                                                        }
                                    })
})();
