/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WControl;

import DbCom.GetFullMemberParDao;
import java.io.IOException;
import java.io.PrintWriter;
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
public class MemberInfo extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpServletRequest httpServletRequest = (HttpServletRequest) request;

        HttpSession sessao = httpServletRequest.getSession();
        GetFullMemberParDao GetFullMemberPar = new GetFullMemberParDao();
        if (sessao.getAttribute("usuAutenticado") != null) {

            String Email = (String)sessao.getAttribute("usuAutenticado");
            try {
                GetFullMemberPar.GetFullMemberPar(Email);
            } catch (SQLException ex) {

            }
           
    
   
   
    
  

   
    
    
    
            request.setAttribute("Name", GetFullMemberPar.getNome());
            request.setAttribute("Borndate", GetFullMemberPar.getBornDate());
            request.setAttribute("Email", GetFullMemberPar.getEmail());
            request.setAttribute("Gender", GetFullMemberPar.getGender());
            request.setAttribute("Phone", GetFullMemberPar.getPhone());
            request.setAttribute("Registration", GetFullMemberPar.getRegistration());
            request.setAttribute("State", GetFullMemberPar.getState());
            request.setAttribute("City", GetFullMemberPar.getCity());
            request.setAttribute("Country", GetFullMemberPar.getCountry());
            request.setAttribute("ZipCode", GetFullMemberPar.getZipCode());
            request.setAttribute("Number", GetFullMemberPar.getNumber());
            sessao.setAttribute("UID", GetFullMemberPar.getID());
            sessao.setAttribute("LID", GetFullMemberPar.getLID());
            

            // Chama pagina de resposta
            getServletContext().getRequestDispatcher("/user.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
       
    }

}
