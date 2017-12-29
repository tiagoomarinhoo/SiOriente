/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WControl;

import DbCom.NewProjectDAO;
import OBJ.Project;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class NewProject extends HttpServlet {

  
    private String PNome;
private String Email;
private String Tipo;
private String Area;
private String Nome;
private String Skype;
private String Descricao;
private String Vaga;

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
            
       
   
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        
        PNome = request.getParameter("pname");
        Tipo = request.getParameter("tipo");
        Area = request.getParameter("area");
        Email = request.getParameter("email");
        Nome = request.getParameter("username");
        Skype = request.getParameter("skype");
        Descricao = request.getParameter("descricao");
        Vaga = request.getParameter("vaga");
        
     
   Project Project = new Project(PNome,Email,Tipo,Area,Nome,Skype,Descricao,Vaga); 
   HttpSession sessao = httpServletRequest .getSession();
   NewProjectDAO NewProjectDAO = new NewProjectDAO();
        try {
            if(NewProjectDAO.InsertNewProject(Project,(String)sessao.getAttribute("usuAutenticado")) == true){
               request.setAttribute("result", true);
                 getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
            }else{
               request.setAttribute("result2", true);
                 getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
          
            }
        } catch (SQLException ex) {
            Logger.getLogger(NewProject.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(NewProject.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
