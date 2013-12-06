angular.module("tpocAjax", [])
    .factory("Ajax", function($http)
                                {
                                    return {
                                        /*
                                            SendRequest
                                            This function send an ajax request with post method
                                            parameters :
                                                url : the url to send the request (str)
                                                header : the header of the request (obj)
                                                data : data to send to the server (obj)
                                                SucccessFunc : indicate the func to use in the success case
                                                ErrorFunc : indicate the func to use in the success case
                                            eg : Ajax.SendRequest("/control/",
                                                                  {"Content-Type":"application/X-WWW-form-urlencoded", "X-CSRFToken": Share.csrf, "X-Requested-With":"XMLHttpRequest"},
                                                                  {"id":2, "yolo":"on"},
                                                                  function(data)
                                                                  {
                                                                    console.log(data);
                                                                  },
                                                                  function(data)
                                                                  {
                                                                    alert("This is an epic failed");
                                                                  })
                                         */
                                        "SendRequest": function(url, header, data, SuccessFunc, ErrorFunc)
                                                {
                                                    $http({
                                                        url:url,
                                                        method:"POST",
                                                        headers:header,
                                                        data:data
                                                    }).success(SuccessFunc).error(ErrorFunc);
                                                }
                                    };
                                });
