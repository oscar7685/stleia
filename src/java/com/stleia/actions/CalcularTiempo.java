/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author acreditacion
 */
public class CalcularTiempo implements Action {

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        String desdeF = request.getParameter("desdeF");
        String desdeH = request.getParameter("desdeH");
        String hastaF = request.getParameter("hastaF");
        String hastaH = request.getParameter("hastaH");

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
        String datos = "" + diferenciaHoras + "," + horasTrabajadas;
        return datos;
    }
}