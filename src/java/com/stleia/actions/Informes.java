/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import com.stleia.sessionbeans.RegistroFacade;
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
public class Informes implements Action {
    RegistroFacade registroFacade = lookupRegistroFacadeBean();

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.setAttribute("registros", registroFacade.findAll());
        return "/WEB-INF/vista/informes/informes.jsp";
    }

    private RegistroFacade lookupRegistroFacadeBean() {
        try {
            Context c = new InitialContext();
            return (RegistroFacade) c.lookup("java:global/stleia/RegistroFacade!com.stleia.sessionbeans.RegistroFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }
    
    
}
