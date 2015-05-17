<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
    <li><a href="#">Producto a procesar</a></li>
    <li class="active"><a href="#">crear</a></li>
</ol>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-midnightblue">
                <div class="panel-heading">
                    <h2>Producto a procesar</h2>
                </div>
                <div class="panel-body">

                    <form class="form-horizontal" id="fcrear" action="#" data-parsley-validate>

                        <div class="form-group">
                            <label for="nombre" class="col-sm-2 control-label">Nombre producto</label>
                            <div class="col-sm-8">
                                <input type="text" name="nombre" class="form-control" id="nombre" required placeholder="Escribe un nombre para el producto">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tempsp" class="col-sm-2 control-label">Temperatura del SetPoint</label>
                            <div class="col-sm-8">
                                <input type="text" name="tempsp" class="form-control" id="tempsp" required placeholder="Escribe la temperatura del setpoint">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="tempalta" class="col-sm-2 control-label">Temperatura alta</label>
                            <div class="col-sm-8">
                                <input type="text" name="tempalta" class="form-control" id="tempalta" required placeholder="Escribe la temperatura alta">
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="tempbaja" class="col-sm-2 control-label">Temperatura baja</label>
                            <div class="col-sm-8">
                                <input type="text" name="tempbaja" class="form-control" id="tempbaja" required placeholder="Escribe la temperatura baja">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="nivelcarga" class="col-sm-2 control-label">Nivel de carga</label>
                            <div class="col-sm-8">
                                <input type="text" name="nivelcarga" class="form-control" id="nivelcarga" required placeholder="Escribe el Nivel de aceite necesario">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="cantidadxhora" class="col-sm-2 control-label">Cantidad por hora</label>
                            <div class="col-sm-8">
                                <input type="text" name="cantidadxhora" class="form-control" id="cantidadxhora" required placeholder="Escribe la cantidad de producto que se produce por cada hora">
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <button class="btn-primary btn" id="btncrear">Crear producto</button>
                                    <button class="btn-default btn">Cancelar</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>   
            </div>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/assets/plugins/form-parsley/parsley.js"></script><!-- Validate Plugin / Parsley -->
<script>
// See Docs
    window.ParsleyConfig = {
        successClass: 'has-success'
                , errorClass: 'has-error'
                , errorElem: '<span></span>'
                , errorsWrapper: '<span class="help-block"></span>'
                , errorTemplate: "<div></div>"
                , classHandler: function(el) {
            return el.$element.closest(".form-group");
        }
    };
    $(function() {
       
        var accion = "crearProducto2";
        var redireccion = "#listarProducto";
        $('#btncrear').on('click', function() {
            $('#fcrear').parsley().subscribe('parsley:form:validate', function(formInstance) {

                // if one of these blocks is not failing do not prevent submission
                // we use here group validation with option force (validate even non required fields)
                if (formInstance.isValid()) {
                    formInstance.submitEvent.preventDefault();
                    $.ajax({
                        type: "POST",
                        url: "Controlador?action=" + accion,
                        data: $("#fcrear").serialize(),
                        success: function()
                        {
                            location = redireccion;
                        } //fin success
                    }); //fin del $.ajax 
                } else {
                    console.log("NO pasa la validacion");
                }

                // else stop form submission
                formInstance.submitEvent.preventDefault();
                $('.invalid-form-error-message').html('');
            });
        });
    });
</script>