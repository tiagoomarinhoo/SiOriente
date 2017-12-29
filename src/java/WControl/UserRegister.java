
package WControl;

import OBJ.User;
import DbCom.FullNewMemberDAO;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserRegister extends HttpServlet {

private String Nome;
private String Email;
private String Gender;
private String Senha;
private String Resenha;
private String Phone;
private String Registration;
private String State;
private String City;
private String BornDate;
private String Country;
private String ZipCode;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        Nome = request.getParameter("name");
        Phone = request.getParameter("phone");
        Registration = request.getParameter("registernumber");
        State = request.getParameter("state");
        Gender = request.getParameter("gender");
        City = request.getParameter("city");
        Country = request.getParameter("country");
        ZipCode = request.getParameter("zipcode");
        Email = request.getParameter("email");
        Senha = request.getParameter("senha");
        Resenha = request.getParameter("resenha");

 
      
       
        
        
       
          
                 FullNewMemberDAO FullNewMemberDAO = new FullNewMemberDAO();
                 
            User User = new User(Nome,Email,Gender,Senha,Resenha,Phone,Registration,State,City,"1111-11-11",Country,ZipCode);
                try {
                    
                    if(FullNewMemberDAO.InsertNewMember(User) == true){
                         request.setAttribute("result2", "pass");
                 getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
                        
                    }else{
                         request.setAttribute("result", true);
                 getServletContext().getRequestDispatcher("/cadastro.jsp").forward(request, response);
                    }
              
                }catch(Exception e){
                    
                    
              
                    
              
             
          
    }
        
        
        
           
            
         
        

    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
