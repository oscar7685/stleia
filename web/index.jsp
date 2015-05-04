<%
    HttpSession session1 = request.getSession();
    String aux = (String) session1.getAttribute("Usuario");
    if (aux == null || aux.isEmpty()) {
        session1.invalidate();
    } else {
        if (aux.equals("Admin")) {
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/vista/index.jsp");
            rd.forward(request, response);
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Stleia</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="description" content="Avalon Frontend Theme">
        <meta name="author" content="The Red Team">

        <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400italic,700' rel='stylesheet' type='text/css'>

        <link href="inicio/assets/fonts/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet">
        <link href="inicio/assets/css/styles.css" type="text/css" rel="stylesheet">
        <link href="inicio/assets/css/micss.css" type="text/css" rel="stylesheet">

        <!-- <link href="inicio/assets/inicio/assets/plugins/smartmenus/css/sm-core-css.css" type="text/css" rel="stylesheet"> -->
        <link href="inicio/assets/plugins/smartmenus/addons/bootstrap/jquery.smartmenus.bootstrap.css" type="text/css" rel="stylesheet">
        <link href="inicio/assets/plugins/codeprettifier/prettify.css" type="text/css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries. Placeholdr.js enables the placeholder attribute -->
        <!--[if lt IE 9]>
                <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
                <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
                <script type="text/javascript" src="inicio/assets/plugins/charts-flot/excanvas.min.js"></script>
        <![endif]-->
        <!-- The following CSS are included as plugins and can be removed if unused-->

        <link href="inicio/assets/plugins/revolution-slider/css/settings.css" type="text/css" rel="stylesheet">
        <link href="inicio/assets/demo/revolution-slider/extralayers.css" type="text/css" rel="stylesheet">

    </head>


    <body style="background-image: url('inicio/assets/img/fondo.JPG'); 
          background-size: 100% 100%;">

        <div id="wrapper">

            <header id="headernav" class="navbar-default">
                <div class="container">
                    <div class="row">

                        <!-- Static navbar -->
                        <div role="navigation"> <!-- class="navbar navbar-default"  -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-header">
                                    <span class="sr-only">Toggle navigation</span>
                                    <i class="fa fa-bars"></i>
                                </button>
                                <a class="navbar-brand" href="index.html">Avalon</a>
                            </div>
                            <nav class="navbar-collapse navbar-collapse-header collapse">
                                <!-- Right nav -->
                                <div class="navbar-right yamm">
                                    <ul class="nav navbar-nav smart-menu dd-menu">
                                        <li>
                                            <a href="#" id="ingresar">
                                                <b>Ingresar</b>
                                                <span class="subline">Inicia sesi&oacute;n</span>
                                            </a>
                                         </li>

                                    </ul>
                                </div>
                            </nav><!--/.nav-collapse -->
                        </div>

                    </div>
                </div>

            </header>
            <div class="container" id="login-form">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading"><h2>Formulario de ingreso</h2></div>
                            <div class="panel-body">

                                <form action="Login" class="form-horizontal" id="validate-form" method="POST">
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="input-group">							
                                                <span class="input-group-addon">
                                                    <i class="fa fa-user"></i>
                                                </span>
                                                <input type="text" name='parametroA' class="form-control" placeholder="Email Username" data-parsley-minlength="6" placeholder="At least 6 characters" required>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="fa fa-key"></i>
                                                </span>
                                                <input type="password" name='parametroB' class="form-control" id="exampleInputPassword1" placeholder="Password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <div class="input-group">							
                                                <span class="input-group-addon">
                                                    <i class="fa fa-group"></i>
                                                </span>
                                                <select  class="form-control" name='parametroC'>
                                                    <option></option>
                                                    <option>Ingeniero de Planta</option>
                                                    <option>Gerente general</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-xs-12">
                                            <a href="extras-forgotpassword.html" class="pull-left">¿Olvistaste tu clave?</a>

                                        </div>
                                    </div>


                                    <div class="panel-footer">
                                        <div class="clearfix">
                                            <button class="btn btn-primary pull-right" type="submit">Ingresar</button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content block, child page inject content -->
        </div>




        <!-- Load site level scripts -->

        <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> -->
        <script src="inicio/assets/js/jquery-1.10.2.min.js"></script> 							<!-- Load jQuery -->

        <script src="inicio/assets/js/bootstrap.min.js"></script> 								<!-- Load Bootstrap -->

     <!--   <script src="inicio/assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script> 	<!-- Slimscroll for custom scrolls -->
       <!--    <script src="inicio/assets/plugins/sparklines/jquery.sparklines.min.js"></script>  		<!-- Sparkline -->

        <!--   <script src="inicio/assets/plugins/smartmenus/jquery.smartmenus.js"></script> 			<!-- Smartmenus -->
        <!--   <script src="inicio/assets/plugins/smartmenus/addons/bootstrap/jquery.smartmenus.bootstrap.js"></script>-->

       <!-- <script src="inicio/assets/demo/demo.js"></script> 
        <script src="inicio/assets/js/application.js"></script> 

        <!-- End loading site level scripts -->

      <!--     <script src="inicio/assets/plugins/codeprettifier/prettify.js"></script> 				<!-- Code Prettifier  -->
       <!--    <script src="inicio/assets/plugins/bootstrap-switch/bootstrap-switch.js"></script> 		<!-- Swith/Toggle Button -->
       <!--    <script src="inicio/assets/plugins/bootstrap-tabdrop/js/bootstrap-tabdrop.js"></script>  <!-- Bootstrap Tabdrop -->



         <!--  <script src="inicio/assets/plugins/bootbox/bootbox.js"></script> 										<!-- Bootbox -->

         <!--  <script src="inicio/assets/plugins/revolution-slider/js/jquery.themepunch.tools.min.js"></script>  		<!-- Slider Revolution -->
         <!--  <script src="inicio/assets/plugins/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>-->

       <!-- <script src="inicio/assets/demo/demo-index.js"></script> 												<!-- Initialize Demo JS for this page -->
        <script src="inicio/assets/js/mijs.js"></script> 												<!-- Initialize Demo JS for this page -->

    </body>
</html>