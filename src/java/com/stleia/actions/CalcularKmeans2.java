/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import com.stleia.kmeans.DataPoint;
import com.stleia.kmeans.JCA;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Random;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Ususario
 */
public class CalcularKmeans2 implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        String desdeF = request.getParameter("desdeF");
        String desdeH = request.getParameter("desdeH");
        String hastaF = request.getParameter("hastaF");
        String hastaH = request.getParameter("hastaH");
        String clusters = request.getParameter("cluster");
        int numeroClusters = Integer.parseInt(clusters);

        String FechaInicial = desdeF + " " + desdeH;
        String FechaFinal = hastaF + " " + hastaH;

        SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");

        Date hora1 = null;
        try {
            hora1 = formatoDelTexto.parse(FechaInicial);
        } catch (ParseException ex) {
            Logger.getLogger(CalcularTiempo.class.getName()).log(Level.SEVERE, null, ex);
        }
        Date hora2 = null;
        try {
            hora2 = formatoDelTexto.parse(FechaFinal);
        } catch (ParseException ex) {
            Logger.getLogger(CalcularTiempo.class.getName()).log(Level.SEVERE, null, ex);
        }
        long lantes = hora1.getTime();
        long lahora = hora2.getTime();

        int horasTrabajadas;
        int diferenciaHoras = (int) (lahora - lantes) / 3600000;

        if (diferenciaHoras > 36) {
            horasTrabajadas = diferenciaHoras - 6;
        } else if (diferenciaHoras < 36 && diferenciaHoras > 24) {
            horasTrabajadas = diferenciaHoras - 3;
        } else if (diferenciaHoras < 24 && diferenciaHoras > 7) {
            horasTrabajadas = diferenciaHoras - 1;
        } else {
            horasTrabajadas = diferenciaHoras;
        }

        int diferenciaHoras2 = diferenciaHoras;
        Vector dataPoints = new Vector();
        while (diferenciaHoras >= 1) {
            Double valores[] = new Double[2];
            Random r3 = new Random();
            int Low3 = 50;
            int High3 = 100;
            int R3 = r3.nextInt(High3 - Low3) + Low3;
            Double rdouble3 = (double) R3 / 100;
            valores[0] = rdouble3 * horasTrabajadas;
            valores[1] = Double.parseDouble("" + diferenciaHoras2);
            Double Disponibilidad, Rendimiento, Calidad;


            Disponibilidad = valores[0] / valores[1];

            Random r2 = new Random();
            int Low1 = 90;
            int High1 = 125;
            int R2 = r2.nextInt(High1 - Low1) + Low1;

            Rendimiento = (valores[0] * R2) / (valores[0] * 120);
            Random r = new Random();
            int Low = 50;
            int High = 100;
            int R = r.nextInt(High - Low) + Low;
            Double rdouble = (double) R / 100;

            Calidad = ((valores[0] * R2) * rdouble) / (valores[0] * R2);

            dataPoints.add(new DataPoint(Disponibilidad, Rendimiento, Calidad, ""));
            diferenciaHoras--;

        }
        JCA jca = new JCA(numeroClusters, 1000, dataPoints);
        jca.startAnalysis();

        String datos = "";
        Vector[] v = jca.getClusterOutput();
        for (int i = 0; i < v.length; i++) {
            Vector tempV = v[i];


            datos +="<h2>Freidora 1</h2>";
            datos += "<table class='table'>"
                    + "<thead>"
                    + "<tr><th style='text-align: center;' colspan='3'>Cluster, " + (i + 1) + "</th></tr>"
                    + "<tr>"
                    + "<th>Disponibilidad</th> "
                    + "<th>Rendimiento</th>"
                    + "<th>Calidad</th>"
                    + "</tr>"
                    + "</thead>"
                    + "<tbody>";


            Iterator iter = tempV.iterator();
            while (iter.hasNext()) {
                DataPoint dpTemp = (DataPoint) iter.next();
                double x = Math.round(dpTemp.getX() * 100.0) / 100.0;
                double y = Math.round(dpTemp.getY() * 100.0) / 100.0;
                double z = Math.round(dpTemp.getZ() * 100.0) / 100.0;
                datos += "<tr><td>" + x + "</td><td>" + y + "</td><td>" + z + "</td></tr>";
            }
            datos += "</tbody></table>";
        }

        return datos;
    }
}
