<div class="page-content">
    <div class="page-heading">            
        <h1>Perfil</h1>
    </div>
    <ol class="breadcrumb">

        <li><a href="#">Inicio</a></li>
        <li class="active"><a href="#">Perfil</a></li>

    </ol>
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-profile panel-midnightblue">
                    <div class="panel-body">

                        <div class="row">
                            <div class="col-md-6">
                                <img src="assets/demo/avatar/user.png" alt="" class="avatar pull-left" style="margin: 0 20px 20px 0">
                                <div class="table-responsive table-userinfo">
                                    <h3 class="mt0">${user.nombre} ${user.apellido}</h3><table class="table table-condensed">
                                        <tbody>
                                            <tr>
                                                <td>Web</td>
                                                <td><a href="#">www.${user.nombre}.com</a></td>
                                            </tr>
                                            <tr>
                                                <td>Correo</td>
                                                <td><a href="">${user.nombre}@gmail.com</a></td>
                                            </tr>
                                            <tr>
                                                <td>Telefono</td>
                                                <td>(+5)-660-6665</td>
                                            </tr>
                                            <tr>
                                                <td>Cargo</td>
                                                <td>Diseñador</td>
                                            </tr>
                                            <tr>
                                                <td>Social</td>
                                                <td>
                                                    <a href="#" class="btn btn-social btn-skype btn-xs"><i class="fa fa-skype"></i></a>
                                                    <a href="#" class="btn btn-social btn-facebook btn-xs"><i class="fa fa-facebook"></i></a>
                                                    <a href="#" class="btn btn-social btn-twitter btn-xs"><i class="fa fa-twitter"></i></a>
                                                    <a href="#" class="btn btn-social btn-googleplus btn-xs"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#" class="btn btn-social btn-flickr btn-xs"><i class="fa fa-flickr"></i></a>
                                                    <a href="#" class="btn btn-social btn-linkedin btn-xs"><i class="fa fa-linkedin"></i></a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h3 class="mt0">Acerca de</h3>
                                <p>
                                    Mi nombre es ${user.nombre} ${user.apellido}, vivo en la ciudad de Cartagena, Colombia.
                                </p>
                            </div>
                        </div>
                        <hr class="outsider">
                 

                    </div>
                </div>
            </div>
        </div>

    </div> <!-- .container-fluid -->
</div> <!-- #page-content -->