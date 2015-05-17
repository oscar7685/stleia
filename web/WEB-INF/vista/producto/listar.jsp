<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="page-heading">            
    <h1>Producto a procesar</h1>
    <div class="options">
        <div class="btn-toolbar">
            <a href="#" class="btn btn-default"><i class="fa fa-fw fa-cog"></i></a>
        </div>
    </div>
</div>
<ol class="breadcrumb">

    <li><a href="#">Producto a procesar</a></li>
    <li class="active"><a href="#">listar</a></li>

</ol>

<div class="container-fluid">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Productos a procesar</h2>
                        <div class="panel-ctrls">
                        </div>
                </div>
                <c:choose>
                    <c:when test="${fn:length(productos)!= 0}">
                        <div class="panel-body panel-no-padding">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Temperatura SetPoint</th>
                                        <th>Temperatura Alta</th>
                                        <th>Temperatura Baja</th>
                                        <th>Nivel de Aceite</th>
                                        <th>Cantidad por Hora</th>
                                        <th>acci&oacute;n</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${productos}" var="aux" varStatus="iter">
                                        <tr class="odd gradeX">
                                            <td>${aux.nombreproducto}</td>
                                            <td>${aux.tempsetpointfreidora}</td>
                                            <td>${aux.tempaltafreidora}</td>
                                            <td>${aux.tempbajafreidora}</td>
                                            <td>${aux.nivelcargar}</td>
                                            <td>${aux.cantidadporhora}</td>
                                            <td> <a href="#editarProducto&id=${aux.idproductoaprocesar}" title="Editar" class="btn btn-xs btn-default todo-options"><i class="fa fa-pencil"></i></a></td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                            <div class="panel-footer"></div>
                        </div>

                        <!-- Load page level scripts-->
                        <script src="<%=request.getContextPath()%>/assets/plugins/datatables/jquery.dataTables.js"></script>
                        <script src="<%=request.getContextPath()%>/assets/plugins/datatables/dataTables.bootstrap.js"></script>
                        <script src="<%=request.getContextPath()%>/assets/demo/demo-datatables.js"></script>
                        <!-- End loading page level scripts-->
                    </c:when>
                    <c:otherwise>
                        No hay productos registrados en el sistema
                    </c:otherwise>
                </c:choose>   
            </div>
        </div>
    </div>

</div> <!-- .container-fluid -->

