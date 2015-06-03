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
    <li class="active"><a href="#">Kmeans aplicado al Indice OEE</a></li>
</ol>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-midnightblue">
                <div class="panel-heading">
                    <h2>Kmeans aplicado al Indice OEE</h2>
                </div>
                <div class="panel-body">
                    <p><b>OEE = Disponibilidad x Rendimiento x Calidad</b></p>
                    <p>Disponibilidad = Duracion Trabajo Total  / Duración disponible</p>
                    <p>Rendimiento = Produccion Total/Produccion Prevista</p>
                    <p>Calidad = Piezas Buenas Total / Producción Total</p>
                    <br/>
                    <form name="formularioKmeans" id="formularioKmeans" action="#">
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
                        <button type="button" class="btn btn-primary" id="calcularKmeans2">Kmeans K=2</button>
                        <button type="button" class="btn btn-primary" id="calcularKmeans3">Kmeans K=3</button>
                        <button type="button" class="btn btn-primary" id="calcularKmeans4">Kmeans K=4</button>
                    </form>

                    <div id="resultados3" style="height:400px; overflow: scroll;">
                        <h2> Freidora 1</h2>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var valores;
    $(function() {
        $("#calcularKmeans2").click(function() {

            $.ajax({
                type: "POST",
                url: "Controlador?action=calcularKmeans&cluster=2",
                data: $("#formularioKmeans").serialize(),
                success: function(data)
                {
                    $("#resultados3").html(data);

                } //fin success
            }); //fin del $.ajax
        });
        $("#calcularKmeans3").click(function() {

            $.ajax({
                type: "POST",
                url: "Controlador?action=calcularKmeans&cluster=3",
                data: $("#formularioKmeans").serialize(),
                success: function(data)
                {
                    $("#resultados3").html(data);
                } //fin success
            }); //fin del $.ajax
        });
        $("#calcularKmeans4").click(function() {

            $.ajax({
                type: "POST",
                url: "Controlador?action=calcularKmeans&cluster=4",
                data: $("#formularioKmeans").serialize(),
                success: function(data)
                {
                    $("#resultados3").html(data);
                } //fin success
            }); //fin del $.ajax
        });
    });
</script>