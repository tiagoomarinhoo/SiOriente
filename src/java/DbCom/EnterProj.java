package DbCom;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EnterProj {

    private Connection connection;
    private boolean Result = false;
  final String SQLCom = "insert into perfil_entra_projeto (id,id_projeto) values (?,?)";
    public boolean EnterProject(int PID, String Email) throws SQLException {
        System.out.println(PID+Email);

      
        UserID UserID = new UserID();
        int ID = UserID.getId(Email);
        System.out.println(ID);
        connection = DBConnection.getConexaoMySQL();
        System.out.println("Etapa 1");
        if (DBConnection.status == true) {
System.out.println("Etapa 2");
            PreparedStatement Operations = connection.prepareStatement(SQLCom);
            Operations.setInt(1, ID);
            Operations.setInt(2, PID);

            Operations.executeUpdate();
            
            Operations.close();
            
            Result = true;
            System.out.println("Feito");
        }
        return Result;
    }
}
