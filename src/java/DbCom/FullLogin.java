
package DbCom;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class FullLogin {

    final String SQLCom = "Select * from usuario where email = ? and senha = ?;";
    ;
    
     private Connection connection;
    private boolean Result = false;

    public boolean Login(String User, String Senha) throws SQLException {

        connection = DBConnection.getConexaoMySQL();
    

        if (DBConnection.status == true) {

            PreparedStatement Operations = connection.prepareStatement(SQLCom);
            Operations.setString(1, User);
            Operations.setString(2, Senha);

            ResultSet rs = Operations.executeQuery();

            if (rs.next()) {
                if (rs.getString("email").equals(User) && rs.getString("senha").equals(Senha)) {
                    Result = true;
                }

            }
            rs.close();
            Operations.close();

        } else {

        }

        return Result;
    }
}
