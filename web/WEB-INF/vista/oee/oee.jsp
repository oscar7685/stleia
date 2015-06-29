<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<style type="text/css">
    .ui-slider .ui-slider-handle{
        height: 1.2em !important;
        weight: 1.2em !important;
    }	
</style>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


<ol class="breadcrumb">
    <li class="active"><a href="#">Indice de eficiencia general de equipos</a></li>
</ol>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-midnightblue">
                <div class="panel-heading">
                    <h2>Indice OEE</h2>
                </div>
                <div class="panel-body">
                    <p><b>OEE = Disponibilidad x Rendimiento x Calidad</b></p>
                    <p>Disponibilidad = Duracion Trabajo Total  / Duración disponible</p>
                    <p>Rendimiento = Produccion Total/Produccion Prevista</p>
                    <p>Calidad = Piezas Buenas Total / Producción Total</p>
                    <br/>
                    <strong>El resultado de este indicador se puede dividir en distintos niveles, a nivel académico:</strong>
                    <ul>
                        <li>OEE < 65% Inaceptable. Se producen importantes pérdidas económicas. Muy baja competitividad.</li>
                        <li>65% < OEE < 75% Regular. Aceptable sólo si se está en proceso de mejora. Pérdidas económicas. Baja competitividad.</li>
                        <li>75% < OEE < 85% Aceptable. Continuar la mejora para superar el 85 % y avanzar hacia la World Class. Ligeras pérdidas económicas. Competitividad ligeramente baja.</li>
                        <li>85% < OEE < 95% Buena. Entra en Valores World Class. Buena competitividad.</li>
                        <li>OEE > 95% Excelencia. Valores World Class. Excelente competitividad</li>
                    </ul>

                    <form name="formularioOEE" id="formularioOEE" action="#">
                        Desde
                        <select class="form-control" id="desdeF" name="desdeF">
                            <option value="19/03/2015">19/03/2015</option>
                            <option value="20/03/2015">20/03/2015</option>
                            <option value="21/03/2015">21/03/2015</option>
                            <option value="22/03/2015">22/03/2015</option>
                            <option value="23/03/2015">23/03/2015</option>
                            <option value="24/03/2015">24/03/2015</option>
                        </select>
                        <select class="form-control" id="desdeH" name="desdeH">
                            <option value="0:00:00">12:00am</option>
                            <option value="1:00:00">1:00am</option>
                            <option value="2:00:00">2:00am</option>
                            <option value="3:00:00">3:00am</option>
                            <option value="4:00:00">4:00am</option>
                            <option value="5:00:00">5:00am</option>
                            <option value="6:00:00">6:00am</option>
                            <option value="7:00:00">7:00am</option>
                            <option value="8:00:00">8:00am</option>
                            <option value="9:00:00">9:00am</option>
                            <option value="10:00:00">10:00am</option>
                            <option value="11:00:00">11:00am</option>
                            <option value="12:00:00">12:00pm</option>
                            <option value="13:00:00">1:00pm</option>
                            <option value="14:00:00">2:00pm</option>
                            <option value="15:00:00">3:00pm</option>
                            <option value="16:00:00">4:00pm</option>
                            <option value="17:00:00">5:00pm</option>
                            <option value="18:00:00">6:00pm</option>
                            <option value="19:00:00">7:00pm</option>
                            <option value="20:00:00">8:00pm</option>
                            <option value="21:00:00">9:00pm</option>
                            <option value="22:00:00">10:00pm</option>
                            <option value="23:00:00">11:00pm</option>
                        </select>
                        Hasta
                        <select class="form-control" id="hastaF" name="hastaF">
                            <option value="19/03/2015">19/03/2015</option>
                            <option value="20/03/2015">20/03/2015</option>
                            <option value="21/03/2015">21/03/2015</option>
                            <option value="22/03/2015">22/03/2015</option>
                            <option value="23/03/2015">23/03/2015</option>
                            <option selected="" value="24/03/2015">24/03/2015</option>
                        </select>
                        <select class="form-control" id="hastaH" name="hastaH">
                            <option value="0:00:00">12:00am</option>
                            <option value="1:00:00">1:00am</option>
                            <option value="2:00:00">2:00am</option>
                            <option value="3:00:00">3:00am</option>
                            <option value="4:00:00">4:00am</option>
                            <option value="5:00:00">5:00am</option>
                            <option value="6:00:00">6:00am</option>
                            <option value="7:00:00">7:00am</option>
                            <option value="8:00:00">8:00am</option>
                            <option value="9:00:00">9:00am</option>
                            <option value="10:00:00">10:00am</option>
                            <option value="11:00:00">11:00am</option>
                            <option value="12:00:00">12:00pm</option>
                            <option value="13:00:00">1:00pm</option>
                            <option value="14:00:00">2:00pm</option>
                            <option value="15:00:00">3:00pm</option>
                            <option value="16:00:00">4:00pm</option>
                            <option value="17:00:00">5:00pm</option>
                            <option value="18:00:00">6:00pm</option>
                            <option value="19:00:00">7:00pm</option>
                            <option value="20:00:00">8:00pm</option>
                            <option value="21:00:00">9:00pm</option>
                            <option value="22:00:00">10:00pm</option>
                            <option value="23:00:00">11:00pm</option>
                        </select>
                        <br/>
                        <button type="button" class="btn btn-primary" id="calcularIndices">Calcular Indice OEE de las freidoras</button>
                    </form>

                    <div id="resultados3" class="col-sm-6" >
                        <h2> Freidora 2</h2>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">Disponibilidad</th>
                                    <td id="dis1"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Rendimiento</th>
                                    <td id="ren1"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Calidad</th>
                                    <td id="cal1"></td>
                                </tr> 
                                <tr>
                                    <th scope="row">OEE</th>
                                    <td id="oee1"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div id="resultados4" class="col-sm-6" >
                        <h2> Freidora 1</h2>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th scope="row">Disponibilidad</th>
                                    <td id="dis2"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Rendimiento</th>
                                    <td id="ren2"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Calidad</th>
                                    <td id="cal2"></td>
                                </tr> 
                                <tr>
                                    <th scope="row">OEE</th>
                                    <td id="oee2"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div>
                        <img width="32%" src="<%=request.getContextPath()%>/assets/img/oee/1.jpg">  
                        <img width="32%" src="<%=request.getContextPath()%>/assets/img/oee/2.jpg">  
                        <img width="32%" src="<%=request.getContextPath()%>/assets/img/oee/3.jpg">
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var valores;
    $(function() {
        $("#calcularIndices").click(function() {

            $.ajax({
                type: "POST",
                url: "Controlador?action=calcularTiempo",
                data: $("#formularioOEE").serialize(),
                success: function(data)
                {
                    valores = data.split(",");


                    $("#dis1").html("<b>" + valores[1] + "/" + valores[0] + "<b>");
                    $("#ren1").html("<b>" + (valores[1] * 115) + "/" + (valores[0] * 120) + "<b>");
                    $("#cal1").html("<b> " + (valores[1] * 115) * 0.95 + "/" + (valores[1] * 115) + "<b>");
                    $("#oee1").html("<b>" + (valores[1] / valores[0]) * ((valores[1] * 115) / (valores[0] * 120)) * ((valores[1] * 115) * 0.95 / (valores[1] * 115)) + "<b>");


                    $("#dis2").html("<b>" + valores[1] + "/" + valores[0] + "<b>");
                    $("#ren2").html("<b>" + (valores[1] * 65) + "/" + (valores[0] * 70) + "<b>");
                    $("#cal2").html("<b>" + (valores[1] * 65) * 0.95 + "/" + (valores[1] * 70) + "<b>");
                    $("#oee2").html("<b>" + (valores[1] / valores[0]) * ((valores[1] * 65) / (valores[0] * 70)) * ((valores[1] * 65) * 0.95 / (valores[1] * 65)) + "<b>");


                } //fin success
            }); //fin del $.ajax
        });
    });
</script>