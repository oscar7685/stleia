<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 1 VS TEMPEERATURA FREIDORA 2</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 1</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example2"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 2</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example3"></div>
                </div>
            </div>
        </div>
    </div>

    
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 2 VS SETPOINT</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example5"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 2 VS TEMPERATURA ALTA PROGRAMADA</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example6"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2>TEMPERATURA FREIDORA 2 VS TEMPERATURA BAJA PROGRAMADA</h2>
                </div>
                <div class="panel-body">
                    <div id="line-example7"></div>
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

        /*$.ajax({
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
         */
        $.ajax({
            type: "POST",
            url: 'Informes?accion=1',
            dataType: 'json',
            success: function(dat)
            {
                datosTF1vsTF2 = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example',
                    data: datosTF1vsTF2,
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Temperatura Freidora 1 ', 'Temperatura freidora 2'],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax

        $.ajax({
            type: "POST",
            url: 'Informes?accion=2',
            dataType: 'json',
            success: function(dat)
            {
                datosTF1 = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example2',
                    data: datosTF1,
                    xkey: 'y',
                    ykeys: ['a'],
                    labels: ['Temperatura Freidora 1 '],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax

        $.ajax({
            type: "POST",
            url: 'Informes?accion=3',
            dataType: 'json',
            success: function(dat)
            {
                datosTF2 = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example3',
                    data: datosTF2,
                    xkey: 'y',
                    ykeys: ['a'],
                    labels: ['Temperatura Freidora 2 '],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax

    


        $.ajax({
            type: "POST",
            url: 'Informes?accion=5',
            dataType: 'json',
            success: function(dat)
            {
                datosT1vsSP = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example5',
                    data: datosT1vsSP,
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Temperatura freidora 1 ', 'SetPoint'],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax

        $.ajax({
            type: "POST",
            url: 'Informes?accion=6',
            dataType: 'json',
            success: function(dat)
            {
                datosT1vsTA = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example6',
                    data: datosT1vsTA,
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Temperatura freidora 1 ', 'Temperatura alta programada'],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax
        $.ajax({
            type: "POST",
            url: 'Informes?accion=7',
            dataType: 'json',
            success: function(dat)
            {
                datosT1vsTB = dat['0']["datos"];
                Morris.Line({
                    element: 'line-example7',
                    data: datosT1vsTB,
                    xkey: 'y',
                    ykeys: ['a', 'b'],
                    labels: ['Temperatura freidora 1 ', 'Temperatura baja programada'],
                    lineColors: [Utility.getBrandColor('inverse'), Utility.getBrandColor('midnightblue')]
                });
            } //fin success
        }); //fin del $.ajax


    });



</script> 