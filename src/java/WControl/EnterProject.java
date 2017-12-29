package WControl;

import DbCom.EnterProj;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EnterProject extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        EnterProj EnterProject = new EnterProj();
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        HttpSession sessao = httpServletRequest.getSession();

       
        String ID1 = request.getParameter("participar");
        

        double PID1 = Double.parseDouble(ID1);
        int PID2 = (int) Math.round(PID1);
 
        try {
            
            EnterProject.EnterProject(PID2, (String) sessao.getAttribute("usuAutenticado"));
            RequestDispatcher rd = request.getRequestDispatcher("/ProjectListId");
rd.forward(request,response);

        } catch (SQLException ex) {
            request.setAttribute("result","Fail");
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
    }// </editor-fold>

}
