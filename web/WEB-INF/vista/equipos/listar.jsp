<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="page-heading">            
    <h1>Equipos industriales</h1>
    <div class="options">
        <div class="btn-toolbar">
            <a href="#" class="btn btn-default"><i class="fa fa-fw fa-cog"></i></a>
        </div>
    </div>
</div>
<ol class="breadcrumb">

    <li><a href="#">Equipos industriales</a></li>
    <li class="active"><a href="#">listar</a></li>

</ol>

<div class="container-fluid">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>Equipos industriales</h2>
                    <div class="panel-ctrls">
                    </div>
                </div>
                <c:choose>
                    <c:when test="${fn:length(equipos)!= 0}">
                        <div class="panel-body panel-no-padding">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Fecha registro</th>
                                        <th>Tipo</th>
                                        <th>acci&oacute;n</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${equipos}" var="aux" varStatus="iter">
                                        <tr class="odd gradeX">
                                            <td>${aux.nombredeequipo}</td>
                                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${aux.fechaderegsitro}" /></td>
                                            <td>${aux.tipoequipo}</td>
                                            <td> <a href="#editarEquipo&id=${aux.idequipoinsdustrial}" title="Editar" class="btn btn-xs btn-default todo-options"><i class="fa fa-pencil"></i></a></td>
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
                        No hay equipos registrados en el sistema
                    </c:otherwise>
                </c:choose>   
            </div>
        </div>
    </div>

</div> <!-- .container-fluid -->

