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
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Ususario
 */
public class CalcularKmeans implements Action {

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
            horasTrabajadas = diferenciaHoras - 10;
        } else if (diferenciaHoras < 36 && diferenciaHoras > 24) {
            horasTrabajadas = diferenciaHoras - 6;
        } else if (diferenciaHoras < 24 && diferenciaHoras > 7) {
            horasTrabajadas = diferenciaHoras - 2;
        } else {
            horasTrabajadas = diferenciaHoras;
        }


        Vector dataPoints = new Vector();
        while (diferenciaHoras >= 1) {
            Double valores[] = new Double[2];
            valores[0] = Double.parseDouble("" + horasTrabajadas);
            valores[1] = Double.parseDouble("" + diferenciaHoras);
            Double Disponibilidad, Rendimiento, Calidad;


            Disponibilidad = valores[1] / valores[0];
            Rendimiento = (valores[1] * 115) / (valores[0] * 120);
            Calidad = ((valores[1] * 115) - 1) * 0.95 / (valores[1] * 115);

            dataPoints.add(new DataPoint(Disponibilidad, Rendimiento, Calidad, ""));
            diferenciaHoras--;
            horasTrabajadas--;
            if (horasTrabajadas <= 0) {
                horasTrabajadas = diferenciaHoras;
            }
        }

        JCA jca = new JCA(numeroClusters, 1000, dataPoints);
        jca.startAnalysis();

        String datos = "";
        Vector[] v = jca.getClusterOutput();
        for (int i = 0; i < v.length; i++) {
            Vector tempV = v[i];

            datos += "-----------Cluster" + (i + 1) + "---------<br/>";
            Iterator iter = tempV.iterator();
            while (iter.hasNext()) {
                DataPoint dpTemp = (DataPoint) iter.next();
                double x = Math.round(dpTemp.getX() * 100.0) / 100.0;
                double y = Math.round(dpTemp.getY() * 100.0) / 100.0;
                double z = Math.round(dpTemp.getZ() * 100.0) / 100.0;
                datos += "[" + x + "," + y + "," + z + "]<br/>";

            }
        }

        return datos;
    }
}
