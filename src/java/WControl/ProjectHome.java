
package WControl;


import DbCom.ProjectDAO;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ProjectHome extends HttpServlet {

    
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        
                 HttpServletRequest httpServletRequest = (HttpServletRequest) request;

        HttpSession sessao = httpServletRequest.getSession();
       
        if (sessao.getAttribute("usuAutenticado") != null) {
 
             
                           String PID = request.getParameter("PID"); 
                           String CID = request.getParameter("CID");
                           int PID1 = Integer.parseInt(PID);
                           int CID1 = Integer.parseInt(CID);
                         
                           
                           ProjectDAO ProjectDAO = new ProjectDAO();
                     try {
                         request.setAttribute("Project",ProjectDAO.Projeto(PID1, CID1));
                     } catch (SQLException ex) {
                         Logger.getLogger(ProjectHome.class.getName()).log(Level.SEVERE, null, ex);
                     }
              
            

            // Chama pagina de resposta
            getServletContext().getRequestDispatcher("/projetos.jsp").forward(request, response);

        }
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
