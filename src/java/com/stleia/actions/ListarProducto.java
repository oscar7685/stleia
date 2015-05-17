/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import com.stleia.sessionbeans.EquipoinsdustrialFacade;
import com.stleia.sessionbeans.ProductoaprocesarFacade;
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
public class ListarProducto implements Action {
    ProductoaprocesarFacade productoaprocesarFacade = lookupProductoaprocesarFacadeBean();
   

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
         HttpSession sesion = request.getSession();
        sesion.setAttribute("productos", productoaprocesarFacade.findAll());
        return "/WEB-INF/vista/producto/listar.jsp";
    }

    private ProductoaprocesarFacade lookupProductoaprocesarFacadeBean() {
        try {
            Context c = new InitialContext();
            return (ProductoaprocesarFacade) c.lookup("java:global/stleia/ProductoaprocesarFacade!com.stleia.sessionbeans.ProductoaprocesarFacade");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

   
}
