
package DbCom;
import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class UserID {

    private int ID;
    private Connection connection;

    public int getId(String Email) throws SQLException {

        final String SQLCom = "Select id from usuario where email = ?;";

        connection = DBConnection.getConexaoMySQL();

        if (DBConnection.status == true) {
           
            PreparedStatement Operations = connection.prepareStatement(SQLCom);
            Operations.setString(1, Email);

            ResultSet rs = Operations.executeQuery();
            while (rs.next()) {
                ID = rs.getInt("id");
         
            }
        }
        return ID;
    }
}
