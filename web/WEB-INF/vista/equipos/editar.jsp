<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<ol class="breadcrumb">
    <li><a href="#">Equipos industriales</a></li>
    <li class="active"><a href="#">editar</a></li>
</ol>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-midnightblue">
                <div class="panel-heading">
                    <h2>Equipo industrial</h2>
                </div>
                <div class="panel-body">

                    <form class="form-horizontal" id="fcrear" action="#" data-parsley-validate>

                        <div class="form-group">
                            <label for="nombre" class="col-sm-2 control-label">Nombre equipo</label>
                            <div class="col-sm-8">
                                <input type="text" name="nombre" value="${equipo.nombredeequipo}" class="form-control" id="nombre" required placeholder="Escribe un nombre para el equipo industrial">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="fechar" class="col-sm-2 control-label">Fecha de registro</label>
                            <div class="col-sm-8">
                                <input type="text" id="fechar" name="fechar" value="${equipo.fechaderegsitro}" required class="form-control mask" data-inputmask="'alias': 'date'">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tipo de equipo</label>
                            <div class="col-sm-8">
                                <select name="tipoe" class="form-control" required id="tipoe">
                                    <option value="">Escoja un tipo de equipo</option>
                                    <c:choose>
                                        <c:when test="${equipo.tipoequipo == 'Freidora' }">
                                            <option value="Freidora" selected="selected">Freidora</option>
                                            <option value="Tanque">Tanque</option>
                                        </c:when>
                                        <c:when test="${equipo.tipoequipo == 'Tanque' }">
                                            <option value="Freidora" >Freidora</option>
                                            <option value="Tanque" selected="selected">Tanque</option>
                                        </c:when>
                                    </c:choose>

                                </select>
                            </div>
                        </div>
                        <div class="form-group tanque">
                            <label for="capacidad" class="col-sm-2 control-label">Capacidad</label>
                            <div class="col-sm-8">
                                <input type="text" name="capacidad" class="form-control" id="capacidad"  value="${equipo.nombredeequipo}" placeholder="Escribe la capacidad del tanque">
                            </div>
                        </div>
                        <div class="form-group tanque">
                            <label for="material" class="col-sm-2 control-label">Material de dise&nacute;o</label>
                            <div class="col-sm-8">
                                <input type="text" name="material" class="form-control" id="material" value="${equipo.nombredeequipo}"  placeholder="Escribe el material de diseño">
                            </div>
                        </div>
                        <div class="form-group freidora">
                            <label for="potencia" class="col-sm-2 control-label">Potencia</label>
                            <div class="col-sm-8">
                                <input type="text" name="potencia" class="form-control" id="potencia"  placeholder="Escribe la potencia de la freidora">
                            </div>
                        </div>
                        <div class="form-group freidora">
                            <label for="valvula" class="col-sm-2 control-label">Marca valvula de gas</label>
                            <div class="col-sm-8">
                                <input type="text" name="valvula" class="form-control" id="valvula"  placeholder="Escribe la marca valvula de gas">
                            </div>
                        </div>
                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <button class="btn-primary btn" id="btncrear">Editar equipo</button>
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
<script src="<%=request.getContextPath()%>/assets/plugins/form-inputmask/jquery.inputmask.bundle.min.js"></script>  	<!-- Input Masks Plugin -->
<script type="text/javascript">
    $(function() {
        $('.mask').inputmask();
    });</script>
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
        $(".tanque").hide();
        $(".freidora").hide();
        $("#tipoe").on('change', function() {
            if (this.value === 'Freidora') {
                $(".tanque").hide();
                $(".freidora").show();
            } else {
                if (this.value === 'Tanque') {
                    $(".freidora").hide();
                    $(".tanque").show();
                } else {
                    $(".freidora").hide();
                    $(".tanque").hide();
                }
            }
        });
        var accion = "editarEquipo2";
        var redireccion = "#listarEquipo";
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