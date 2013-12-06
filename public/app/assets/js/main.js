$(window).load((function()
                {
                    $("#formRegister").on("submit", function(e)
                                                    {
                                                        e.preventDefault();
                                                        $.ajax({
                                                            type: 'post',
                                                            data:$(this).serialize(),
                                                            url: '/user/create/',
                                                            success:function(data)
                                                                    {
                                                                        if (data.id)
                                                                        {
                                                                            cls = "success";
                                                                            why = "Félécitation vous êtes inscrit sur Two Ponies One Cup";
                                                                        }
                                                                        else
                                                                        {
                                                                            cls = "danger";
                                                                            why = "some errors";
                                                                        }
                                                                        $("#info").html('<div class="alert alert-' +cls+ '"><button type="button" class="close" data-dismiss="alert">×</button>' +why+ '</div>');

                                                                    },
                                                            error:function()
                                                                    {
                                                                        $("#info").html('<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert">×</button>La requête n\'a pas pu aboutir</div>');
                                                                    }
                                                        });
                                                    });

                    $("#formLogin").on("submit", function(e)
                                                    {
                                                        e.preventDefault();
                                                        $.ajax({
                                                            type: 'post',
                                                            data:$(this).serialize(),
                                                            url: '/user/login/',
                                                            success:function(data)
                                                                    {
                                                                        if (data.id)
                                                                        {
                                                                            cls = "success";
                                                                            why = "Félécitation vous êtes connecté sur Two Ponies One Cup";
                                                                        }
                                                                        else
                                                                        {
                                                                            cls = "danger";
                                                                            why = "some errors";
                                                                        }
                                                                        $("#info").html('<div class="alert alert-' +cls+ '"><button type="button" class="close" data-dismiss="alert">×</button>' +why+ '</div>');

                                                                    },
                                                            error:function()
                                                                    {
                                                                        $("#info").html('<div class="alert alert-warning"><button type="button" class="close" data-dismiss="alert">×</button>La requête n\'a pas pu aboutir</div>');
                                                                    }
                                                        });
                                                    });


                })());
