/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TicketBean;
import DAO.TicketDAO;

/**
 *
 * @author iadin
 */
public class BuyController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet BuyController</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet BuyController at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
        String email = (String) request.getSession().getAttribute("email");
        String name = (String) request.getSession().getAttribute("name");
        String fullTicket = (String) request.getSession().getAttribute("full");
        String halfTicket = (String) request.getSession().getAttribute("half");
        String freeTicket = (String) request.getSession().getAttribute("free");
        String place = (String) request.getSession().getAttribute("mueseum");
        String date = (String) request.getSession().getAttribute("date");
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        TicketBean ticketBean = new TicketBean();
        TicketDAO ticketDAO = new TicketDAO();

        if (fullTicket != null) {
            try {
                ticketBean.setDate(formatter.parse(date));
            } catch (ParseException ex) {
                System.out.println("ERROR: " + ex.getMessage());
            }

            ticketBean.setOwner(name);
            ticketBean.setPlace(place);
            ticketBean.setType("full");
            try {
                ticketDAO.registerTicket(ticketBean);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BuyController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (fullTicket != null) {
            try {
                ticketBean.setDate(formatter.parse(date));
            } catch (ParseException ex) {
                System.out.println("ERROR: " + ex.getMessage());
            }

            ticketBean.setOwner(name);
            ticketBean.setPlace(place);
            ticketBean.setType("half");
            try {
                ticketDAO.registerTicket(ticketBean);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BuyController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        if (fullTicket != null) {
            try {
                ticketBean.setDate(formatter.parse(date));
            } catch (ParseException ex) {
                System.out.println("ERROR: " + ex.getMessage());
            }

            ticketBean.setOwner(name);
            ticketBean.setPlace(place);
            ticketBean.setType("free");
            try {
                ticketDAO.registerTicket(ticketBean);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BuyController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        request.getRequestDispatcher("paymentConfirmation.jsp").forward(request, response);

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
