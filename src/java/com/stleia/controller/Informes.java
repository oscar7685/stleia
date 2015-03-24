/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stleia.controller;

import com.stleia.beans.Registro;
import com.stleia.sessionbeans.RegistroFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Oscar
 */
public class Informes extends HttpServlet {

    @EJB
    private RegistroFacade registroFacade;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        String accion = (String) request.getParameter("accion");
        if (accion!=null &&  accion.equals("1")) {
            List<Registro> registros = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("1"));
            List<Registro> registros2 = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("2"));
            //String aux4 = "{ \"datos\":[";
            String aux4 = "{ \"datos\":[";

            try {
                for (int i = 0; i < registros.size(); i++) {
                    String aux5 = ""
                            + "{"
                            + "\"y\": \"2015-03-" + registros.get(i).getFechaderegistro().split("/")[0] + " " + registros.get(i).getHoraderegistro()
                            + "\" ," + " \"a\": \"" + registros.get(i).getTemperaturaactual()
                            + "\" ," + " \"b\": \"" + registros2.get(i).getTemperaturaactual()
                            + "\""
                            + "},"
                            + "";
                    aux4 += aux5;

                }
                aux4 = aux4.substring(0, aux4.length() - 1);
                aux4 += "]}";

                out.println("[" + aux4 + "]");



            } finally {
                out.close();
            }
        }else if (accion!=null &&  accion.equals("2")) {
            List<Registro> registros = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("1"));
            //List<Registro> registros2 = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("2"));
            //String aux4 = "{ \"datos\":[";
            String aux4 = "{ \"datos\":[";

            try {
                for (int i = 0; i < registros.size(); i++) {
                    String aux5 = ""
                            + "{"
                            + "\"y\": \"2015-03-" + registros.get(i).getFechaderegistro().split("/")[0] + " " + registros.get(i).getHoraderegistro()
                            + "\" ," + " \"a\": \"" + registros.get(i).getTemperaturaactual()
                            + "\" ," + " \"b\": \"" +"0"
                            + "\""
                            + "},"
                            + "";
                    aux4 += aux5;

                }
                aux4 = aux4.substring(0, aux4.length() - 1);
                aux4 += "]}";

                out.println("[" + aux4 + "]");



            } finally {
                out.close();
            }
        }else if (accion!=null &&  accion.equals("3")) {
            //List<Registro> registros = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("1"));
            List<Registro> registros2 = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("2"));
            //String aux4 = "{ \"datos\":[";
            String aux4 = "{ \"datos\":[";

            try {
                for (int i = 0; i < registros2.size(); i++) {
                    String aux5 = ""
                            + "{"
                            + "\"y\": \"2015-03-" + registros2.get(i).getFechaderegistro().split("/")[0] + " " + registros2.get(i).getHoraderegistro()
                            + "\" ," + " \"a\": \"" + registros2.get(i).getTemperaturaactual()
                            + "\" ," + " \"b\": \"" +"0"
                            + "\""
                            + "},"
                            + "";
                    aux4 += aux5;

                }
                aux4 = aux4.substring(0, aux4.length() - 1);
                aux4 += "]}";

                out.println("[" + aux4 + "]");



            } finally {
                out.close();
            }
        }else if (accion!=null &&  accion.equals("4")) {
            List<Registro> registros = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("1"));
            List<Registro> registros2 = registroFacade.findByList("freidoraIdfreidora", Integer.parseInt("2"));
            //String aux4 = "{ \"datos\":[";
            String aux4 = "{ \"datos\":[";

            try {
                for (int i = 0; i < registros.size(); i++) {
                    String aux5 = ""
                            + "{"
                            + "\"y\": \"2015-03-" + registros.get(i).getFechaderegistro().split("/")[0] + " " + registros.get(i).getHoraderegistro()
                            + "\" ," + " \"a\": \"" + registros.get(i).getLecturanivelaceite()
                            + "\" ," + " \"b\": \"" + registros2.get(i).getLecturanivelaceite()
                            + "\""
                            + "},"
                            + "";
                    aux4 += aux5;

                }
                aux4 = aux4.substring(0, aux4.length() - 1);
                aux4 += "]}";

                out.println("[" + aux4 + "]");



            } finally {
                out.close();
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
