/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.stleia.actions;

import com.stleia.interfaz.Action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author acreditacion
 */
public class IndiceOEE implements Action{
    @Override
    public String procesar(HttpServletRequest request) throws IOException, ServletException {
        return "/WEB-INF/vista/oee/oee.jsp";
    }
    
}
