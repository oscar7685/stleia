<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
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

        <link href="<%=request.getContextPath()%>/assets/fonts/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">        <!-- Font Awesome -->
        <link href="<%=request.getContextPath()%>/assets/css/styles.css" type="text/css" rel="stylesheet">                                     <!-- Core CSS with all styles -->

        <!-- <link href="assets/plugins/jstree/dist/themes/avalon/style.min.css" type="text/css" rel="stylesheet">    <!-- jsTree -->
        <!-- <link href="assets/plugins/codeprettifier/prettify.css" type="text/css" rel="stylesheet">                <!-- Code Prettifier -->
        <!-- <link href="assets/plugins/iCheck/skins/minimal/blue.css" type="text/css" rel="stylesheet">              <!-- iCheck -->

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
                        <span class="hidden-xs">Saad Bittar</span>
                        <img class="img-circle" src="assets/demo/avatar/saad.png" alt="Dangerfield" />

                    </a>
                    <ul class="dropdown-menu userinfo">
                        <li><a href="#cerrarSesion"><span class="pull-left">Cerrar sesi&oacute;n</span> <i class="pull-right fa fa-sign-out"></i></a></li>
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
                                            <a href="#"><img src="assets/demo/avatar/saad.png" class="avatar"></a>
                                        </div>
                                        <div class="tabular-cell welcome-options">
                                            <span class="welcome-text">Bienvenido,</span>
                                            <a href="#" class="name">Saad Bittar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="widget stay-on-collapse" id="widget-sidebar">
                                <nav role="navigation" class="widget-body">
                                    <ul class="acc-menu">
                                        <li><a href="javascript:;"><i class="fa fa-cogs"></i><span>Equipos industriales</span></a>
                                            <ul class="acc-menu">
                                                <li><a href="#crearEquipo">Crear equipos</a></li>
                                                <li><a href="#listarEquipo">Listar equipos</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="acc-menu">
                                        <li><a href="javascript:;"><i class="fa fa-tags"></i><span>Producto a procesar</span></a>
                                            <ul class="acc-menu">
                                                <li><a href="#crearProducto">Crear producto</a></li>
                                                <li><a href="#listarProducto">Listar productos</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="acc-menu">
                                        <li><a href="javascript:;"><i class="fa fa-bar-chart-o"></i><span>Analytica</span></a>
                                            <ul class="acc-menu">
                                                <li><a href="#informes">Informes Temperatura</a></li>
                                                <li><a href="#informesAceite">Informes Aceite</a></li>
                                                <li><a href="#informesAlarmas">Informes Alarmas</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="acc-menu">
                                        <li><a href="javascript:;"><i class="fa fa-line-chart"></i><span>Índice OEE</span></a>
                                            <ul class="acc-menu">
                                                <li><a href="#indiceOEE">Calcular Indice OEE</a></li>
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

                        </div> <!-- #page-content -->
                    </div>
                    <footer role="contentinfo">
                        <div class="clearfix">
                            <ul class="list-unstyled list-inline pull-left">
                                <li><h6 style="margin: 0;"> &copy; 2015 Stleia</h6></li>
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

        <script src="<%=request.getContextPath()%>/assets/js/jquery-1.10.2.min.js"></script> 							<!-- Load jQuery -->
        <script src="<%=request.getContextPath()%>/assets/js/jqueryui-1.9.2.min.js"></script> 							<!-- Load jQueryUI -->
        <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script> 								<!-- Load Bootstrap -->

        <!--<script src="assets/plugins/sparklines/jquery.sparklines.min.js"></script>  		<!-- Sparkline -->
        <!--<script src="assets/plugins/jstree/dist/jstree.min.js"></script>  				<!-- jsTree -->

        <!--<script src="assets/plugins/codeprettifier/prettify.js"></script> 				<!-- Code Prettifier  -->
        <!--<script src="assets/plugins/bootstrap-switch/bootstrap-switch.js"></script> 		<!-- Swith/Toggle Button -->

        <!--<script src="assets/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>  <!-- Bootstrap Tabdrop -->

        <!--<script src="assets/plugins/iCheck/icheck.min.js"></script>     					<!-- iCheck -->

        <script src="<%=request.getContextPath()%>/assets/js/enquire.min.js"></script> 									<!-- Enquire for Responsiveness -->

        <!--<script src="assets/plugins/bootbox/bootbox.js"></script>							<!-- Bootbox -->

        <!--<script src="assets/plugins/simpleWeather/jquery.simpleWeather.min.js"></script> <!-- Weather plugin-->

        <script src="<%=request.getContextPath()%>/assets/js/application.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/jquery.hashchange.min.js"></script> <!-- hashchange-->
        <script src="<%=request.getContextPath()%>/assets/js/mijs.js"></script>
        <!-- <script src="assets/demo/demo.js"></script>-->



        <!-- End loading site level scripts -->

        <!-- Load page level scripts-->



        <!-- End loading page level scripts-->

    </body>
</html>