/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.beans.Equipoinsdustrial;
import com.stleia.interfaz.Action;
import com.stleia.sessionbeans.EquipoinsdustrialFacade;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Usuario
 */
public class CrearEquipo2 implements Action {
    EquipoinsdustrialFacade equipoinsdustrialFacade = lookupEquipoinsdustrialFacadeBean();

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        String nombre = request.getParameter("nombre");
        String fecha_registro = request.getParameter("fechar");
        String tipo_equipo = request.getParameter("tipoe");

        Equipoinsdustrial ei = new Equipoinsdustrial();
        ei.setNombredeequipo(nombre);
        SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy");
        Date fechaI = null;
        try {

            fechaI = formatoDelTexto.parse(fecha_registro);

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        ei.setFechaderegsitro(fechaI);
        ei.setTipoequipo(tipo_equipo);
        equipoinsdustrialFacade.create(ei);
        
        return "NA";
    }

    private EquipoinsdustrialFacade lookupEquipoinsdustrialFacadeBean() {
        try {
            Context c = new InitialContext();
            return (EquipoinsdustrialFacade) c.lookup("java:global/stleia/EquipoinsdustrialFacade!com.stleia.sessionbeans.EquipoinsdustrialFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
}
