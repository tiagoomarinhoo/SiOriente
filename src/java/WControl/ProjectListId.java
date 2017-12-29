/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WControl;

import DbCom.EnterProj;
import DbCom.ProjectListById;

import java.io.IOException;

import java.sql.SQLException;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author regivaldo.santos
 */
public class ProjectListId extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


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
           EnterProj EnterProject = new EnterProj();
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpSession sessao = httpServletRequest.getSession();
        ProjectListById ProjectListById = new ProjectListById ();
        try {
             request.setAttribute("ProjectListNames",ProjectListById.ProjectList((String)sessao.getAttribute("usuAutenticado")));
              getServletContext().getRequestDispatcher("/participando.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProjectListId.class.getName()).log(Level.SEVERE, null, ex);
        }
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
      
        EnterProj EnterProject = new EnterProj();
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpSession sessao = httpServletRequest.getSession();
        ProjectListById ProjectListById = new ProjectListById ();
        try {
             request.setAttribute("ProjectListNames",ProjectListById.ProjectList((String)sessao.getAttribute("usuAutenticado")));
              getServletContext().getRequestDispatcher("/participando.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProjectListId.class.getName()).log(Level.SEVERE, null, ex);
        }
               
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
