<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>ALARMAS TEMPERATURA ALTA Y BAJA</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example8"></div>
                </div>
            </div>
        </div>
    </div>



</div> <!-- .container-fluid -->


<script src="assets/plugins/charts-morrisjs/raphael.min.js"></script> <!-- Load Raphael as Dependency -->
<script src="assets/plugins/charts-morrisjs/morris.min.js"></script>  <!-- Load Morris.js -->

<!--   <script src="assets/demo/demo-morrisjs.js"></script>-->
<script>
    $(function() {
        var datosTF1vsTF2;
        var datosAF1vsAF2;
        var datosTF1;
        var datosTF2;
        var datosT1vsSP;
        var datosT1vsTA, datosT1vsTB, datosAAvsAB;

        $.ajax({
            type: "POST",
            url: 'Informes?accion=8',
            dataType: 'json',
            success: function(dat)
            {
                datosAAvsAB = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example8',
                    data: datosAAvsAB,
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Alerta Temperatura Alta 1 ', 'Alerta Temperatura Baja 1'],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax

    });



</script>  


