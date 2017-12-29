package DbCom;

import OBJ.Project;
import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProjectDAO {

    private Connection connection;

    final String SQLCom = "Select * from projeto where id_projeto = ?;";
    final String SQLCom2 = "Select * from cat_projeto where id_catpro = ?";

    private String nome;
    private String descricao;
    private int vagas;
    private String area;
    private String categoria;
    private Project Project = null;
    public Project Projeto(int PID, int CID) throws SQLException {
        connection = DBConnection.getConexaoMySQL();

         if (DBConnection.status == true) {
            System.out.println("Primeira Etapa");
            PreparedStatement Operations = connection.prepareStatement(SQLCom);
           
            Operations.setInt(1, PID);
            ResultSet rs = Operations.executeQuery();

            while (rs.next()) {
                nome = rs.getString("nome");
                descricao = rs.getString("descricao");
                vagas = rs.getInt("vagas");
                area = rs.getString("area");
               
            }
             System.out.println(nome+descricao+vagas+area+"");
            Operations.close();
            rs.close();
          PreparedStatement Operations2 = connection.prepareStatement(SQLCom2);
          
          Operations2.setInt(1, CID);
          
          ResultSet rs2 = Operations2.executeQuery();
           while (rs2.next()){
               categoria = rs2.getString("nome");
           }
           rs.close();
           Operations.close();
            Project = new Project(nome, "", categoria, area, nome, "", descricao,vagas,PID,CID);
          System.out.println("Primeira Etapa");
    }
         return Project;
    }
}
