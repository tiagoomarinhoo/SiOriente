/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WControl;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DbCom.FullLogin;
import DbCom.ProjectList;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;

        HttpSession sessao = httpServletRequest.getSession();
       
        if (sessao.getAttribute("usuAutenticado") != null) {
  ProjectList ProjectList = new ProjectList();
               try {
                  request.setAttribute("ProjectList",ProjectList.ProjectList());
                  
               } catch (SQLException ex) {
                   Logger.getLogger(ProjectHome.class.getName()).log(Level.SEVERE, null, ex);
               }
            

            // Chama pagina de resposta
            getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);

        }
        
                 getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        
           
           FullLogin Login = new FullLogin();
           
        try {
            if(Login.Login(request.getParameter("email"), request.getParameter("password")) == true){
             

        HttpSession sessao = request.getSession();
			sessao.setAttribute("usuAutenticado", request.getParameter("email"));
                        
			//sessao.setMaxInactiveInterval(3000);
			
				ProjectList ProjectList = new ProjectList();
               try {
                  request.setAttribute("ProjectList",ProjectList.ProjectList());
                  
               } catch (SQLException ex) {
                   Logger.getLogger(ProjectHome.class.getName()).log(Level.SEVERE, null, ex);
               }
            

            // Chama pagina de resposta
            getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
            }else{
                request.setAttribute("result", false);
                 getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
            }
            
        } catch (SQLException ex) {
          
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
