<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Stleia</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="description" content="Avalon Admin Theme">
        <meta name="author" content="The Red Team">

        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,700' rel='stylesheet' type='text/css'>

        <!--[if lt IE 10]>
            <script src="assets/js/media.match.min.js"></script>
            <script src="assets/js/placeholder.min.js"></script>
        <![endif]-->

        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">        <!-- Font Awesome -->
        <link href="assets/css/styles.css" type="text/css" rel="stylesheet">                                     <!-- Core CSS with all styles -->

        <link href="assets/plugins/jstree/dist/themes/avalon/style.min.css" type="text/css" rel="stylesheet">    <!-- jsTree -->
        <link href="assets/plugins/codeprettifier/prettify.css" type="text/css" rel="stylesheet">                <!-- Code Prettifier -->
        <link href="assets/plugins/iCheck/skins/minimal/blue.css" type="text/css" rel="stylesheet">              <!-- iCheck -->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries. Placeholdr.js enables the placeholder attribute -->
        <!--[if lt IE 9]>
            <link href="assets/css/ie8.css" type="text/css" rel="stylesheet">
            <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
            <script type="text/javascript" src="assets/plugins/charts-flot/excanvas.min.js"></script>
            <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- The following CSS are included as plugins and can be removed if unused-->

    </head>

    <body class="infobar-offcanvas">


        <header id="topnav" class="navbar navbar-default navbar-fixed-top clearfix" role="banner">


            <a id="leftmenu-trigger" class="" data-toggle="tooltip" data-placement="right" title="Toggle Sidebar"></a>


            <ul class="nav navbar-nav toolbar pull-right">
                <li class="dropdown">
                    <a href="#" id="navbar-links-toggle" data-toggle="collapse" data-target="header>.navbar-collapse">&nbsp;</a>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle username" data-toggle="dropdown">
                        <span class="hidden-xs">Saad Bitar</span>
                        <img class="img-circle" src="assets/demo/avatar/avatar_06.png" alt="Dangerfield" />

                    </a>
                    <ul class="dropdown-menu userinfo">
                        <li><a href="#"><span class="pull-left">Cambiar contrase&nacute;a</span> <i class="pull-right fa fa-pencil"></i></a></li>
                        <li class="divider"></li>
                        <li><a href="#"><span class="pull-left">Cerrar sesi&oacute;n</span> <i class="pull-right fa fa-sign-out"></i></a></li>
                    </ul>
                </li>

            </ul>

        </header>

        <div id="wrapper">
            <div id="layout-static">
                <div class="static-sidebar-wrapper sidebar-inverse">
                    <div class="static-sidebar">
                        <div class="sidebar">


                            <div class="widget stay-on-collapse">
                                <div class="widget-body welcome-box tabular">
                                    <div class="tabular-row">
                                        <div class="tabular-cell welcome-avatar">
                                            <a href="#"><img src="assets/demo/avatar/avatar_06.png" class="avatar"></a>
                                        </div>
                                        <div class="tabular-cell welcome-options">
                                            <span class="welcome-text">Bienvenido,</span>
                                            <a href="#" class="name">Saad Bitar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="widget stay-on-collapse" id="widget-sidebar">
                                <nav role="navigation" class="widget-body">
                                    <ul class="acc-menu">
                                        <li><a href="javascript:;"><i class="fa fa-bar-chart-o"></i><span>Analytica</span></a>
                                            <ul class="acc-menu">
                                                <li><a href="charts-morris.html">Informes</a></li>
                                                <li><a href="#">Otros informes</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>TEMPERATURA FREIDORA 1 VS TEMPEERATURA FREIDORA 2</h2>
                                            </div>
                                            <div class="panel-body">
                                                <div id="line-example"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>TEMPERATURA FREIDORA 1</h2>
                                            </div>
                                            <div class="panel-body">
                                                <div id="line-example2"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>TEMPERATURA FREIDORA 2</h2>
                                            </div>
                                            <div class="panel-body">
                                                <div id="line-example3"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h2>NIVEL DE ACEITE TANQUE 1 VS NIVEL DE ACEITE TANQUE 2</h2>
                                            </div>
                                            <div class="panel-body">
                                                <div id="line-example4"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div> <!-- .container-fluid -->
                        </div> <!-- #page-content -->
                    </div>
                    <footer role="contentinfo">
                        <div class="clearfix">
                            <ul class="list-unstyled list-inline pull-left">
                                <li><h6 style="margin: 0;"> &copy; 2014 Avalon</h6></li>
                            </ul>
                            <button class="pull-right btn btn-link btn-xs hidden-print" id="back-to-top"><i class="fa fa-arrow-up"></i></button>
                        </div>
                    </footer>
                </div>
            </div>
        </div>








        <!-- Load site level scripts -->

        <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script> -->

        <script src="assets/js/jquery-1.10.2.min.js"></script> 							<!-- Load jQuery -->
        <script src="assets/js/jqueryui-1.9.2.min.js"></script> 							<!-- Load jQueryUI -->
        <script src="assets/js/bootstrap.min.js"></script> 								<!-- Load Bootstrap -->

        <script src="assets/plugins/sparklines/jquery.sparklines.min.js"></script>  		<!-- Sparkline -->
        <script src="assets/plugins/jstree/dist/jstree.min.js"></script>  				<!-- jsTree -->

        <script src="assets/plugins/codeprettifier/prettify.js"></script> 				<!-- Code Prettifier  -->
        <script src="assets/plugins/bootstrap-switch/bootstrap-switch.js"></script> 		<!-- Swith/Toggle Button -->

        <script src="assets/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>  <!-- Bootstrap Tabdrop -->

        <script src="assets/plugins/iCheck/icheck.min.js"></script>     					<!-- iCheck -->

        <script src="assets/js/enquire.min.js"></script> 									<!-- Enquire for Responsiveness -->

        <script src="assets/plugins/bootbox/bootbox.js"></script>							<!-- Bootbox -->

        <script src="assets/plugins/simpleWeather/jquery.simpleWeather.min.js"></script> <!-- Weather plugin-->

        <script src="assets/js/application.js"></script>
        <script src="assets/demo/demo.js"></script>



        <!-- End loading site level scripts -->

        <!-- Load page level scripts-->

        <script src="assets/plugins/charts-morrisjs/raphael.min.js"></script> <!-- Load Raphael as Dependency -->
        <script src="assets/plugins/charts-morrisjs/morris.min.js"></script>  <!-- Load Morris.js -->

        <!--   <script src="assets/demo/demo-morrisjs.js"></script>-->
        <script>
            $(function() {
                var datosTF1vsTF2;
                var datosAF1vsAF2;
                var datosTF1;
                var datosTF2;
                $.ajax({
                    type: "POST",
                    url: 'Informes?accion=1',
                    dataType: 'json',
                    success: function(dat)
                    {
                        datosTF1vsTF2 = dat['0']["datos"];
                        Morris.Line({
                            element: 'line-example',
                            data: datosTF1vsTF2,
                            xkey: 'y',
                            ykeys: ['a', 'b'],
                            labels: ['Temperatura Freidora 1 ', 'Temperatura freidora 2'],
                            lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                        });
                    } //fin success
                }); //fin del $.ajax

                $.ajax({
                    type: "POST",
                    url: 'Informes?accion=2',
                    dataType: 'json',
                    success: function(dat)
                    {
                        datosTF1 = dat['0']["datos"];
                        Morris.Line({
                            element: 'line-example2',
                            data: datosTF1,
                            xkey: 'y',
                            ykeys: ['a'],
                            labels: ['Temperatura Freidora 1 '],
                            lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                        });
                    } //fin success
                }); //fin del $.ajax

                $.ajax({
                    type: "POST",
                    url: 'Informes?accion=3',
                    dataType: 'json',
                    success: function(dat)
                    {
                        datosTF2 = dat['0']["datos"];
                        Morris.Line({
                            element: 'line-example3',
                            data: datosTF2,
                            xkey: 'y',
                            ykeys: ['a'],
                            labels: ['Temperatura Freidora 2 '],
                            lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                        });
                    } //fin success
                }); //fin del $.ajax
                
                $.ajax({
                    type: "POST",
                    url: 'Informes?accion=4',
                    dataType: 'json',
                    success: function(dat)
                    {
                        datosAF1vsAF2 = dat['0']["datos"];
                        Morris.Line({
                            element: 'line-example4',
                            data: datosAF1vsAF2,
                            xkey: 'y',
                            ykeys: ['a','b'],
                            labels: ['Nivel Aceite Tanque 1 ', 'Nivel Aceite Tanque 2 '],
                            lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                        });
                    } //fin success
                }); //fin del $.ajax

                

            });



        </script> 

        <!-- End loading page level scripts-->

    </body>
</html>