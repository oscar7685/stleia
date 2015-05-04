/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import com.stleia.sessionbeans.EquipoinsdustrialFacade;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario
 */
public class ListarEquipo implements Action {
    EquipoinsdustrialFacade equipoinsdustrialFacade = lookupEquipoinsdustrialFacadeBean();

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
         HttpSession sesion = request.getSession();
        sesion.setAttribute("equipos", equipoinsdustrialFacade.findAll());
        return "/WEB-INF/vista/equipos/listar.jsp";
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
