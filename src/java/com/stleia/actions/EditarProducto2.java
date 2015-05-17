/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.beans.Equipoinsdustrial;
import com.stleia.beans.Productoaprocesar;
import com.stleia.interfaz.Action;
import com.stleia.sessionbeans.EquipoinsdustrialFacade;
import com.stleia.sessionbeans.ProductoaprocesarFacade;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario
 */
public class EditarProducto2 implements Action {

    ProductoaprocesarFacade productoaprocesarFacade = lookupProductoaprocesarFacadeBean();

    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        HttpSession sesion = request.getSession();
        Productoaprocesar pr = (Productoaprocesar) sesion.getAttribute("producto");
        String nombre = request.getParameter("nombre");
        String tempsp = request.getParameter("tempsp");
        Double tempspD = Double.parseDouble(tempsp);
        String tempalta = request.getParameter("tempalta");
        Double tempaltaD = Double.parseDouble(tempalta);
        String tempbaja = request.getParameter("tempbaja");
        Double tempbajaD = Double.parseDouble(tempbaja);
        String nivelcarga = request.getParameter("nivelcarga");
        int nivelcargaI = Integer.parseInt(nivelcarga);
        String cantidadxhora = request.getParameter("cantidadxhora");
        int cantidadxhoraI = Integer.parseInt(cantidadxhora);

      
        pr.setNombreproducto(nombre);
        pr.setTempsetpointfreidora(tempspD);
        pr.setTempaltafreidora(tempaltaD);
        pr.setTempbajafreidora(tempbajaD);
        pr.setNivelcargar(nivelcargaI);
        pr.setCantidadporhora(cantidadxhoraI);

        productoaprocesarFacade.edit(pr);

        return "NA";
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
