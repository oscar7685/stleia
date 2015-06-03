/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.actions;

import com.stleia.interfaz.Action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Ususario
 */
public class KmeansOEE implements Action{
     @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        return "/WEB-INF/vista/oee/kmeans.jsp";
    }
    
}
