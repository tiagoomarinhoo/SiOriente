package DbCom;

import DB.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;

public class UpdateExistingMemberDAO {

    final String SQLCom2 = "UPDATE usuario\n"
            + "    SET cidade = ?,\n"
            + "        bairro = ?,\n"
            + "        cep = ?\n"
            + "    WHERE id_local = ? ";

    final String SQLCom1 = "UPDATE localizacao\n"
            + "    SET email = ?,\n"
            + "        nome = ?,\n"
            + "        telefone = ?,\n"
            + "        empresa = ?,\n"
            + "        qualificacoes = ?\n"
            + "    WHERE id = ?";

    boolean Result = false;

    private Connection connection;

    public boolean InsertNewMember(String Nome, String Email, String Phone, String City, String Country, String ZipCode, String Empresa, String Biografia, int UPK, int LPK) throws SQLException, ParseException {

        connection = DBConnection.getConexaoMySQL();
        if (DBConnection.status == true) {
            //------
            try (PreparedStatement Operations = connection.prepareStatement(SQLCom1)) {
                //------

                //------
                Operations.setString(1, Email);
                Operations.setString(2, Nome);
                Operations.setString(3, Phone);
                Operations.setString(4, Empresa);
                Operations.setString(5, Biografia);
                Operations.setInt(6, UPK);
                Operations.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro insert 1");
            }

            try (PreparedStatement Operations1 = connection.prepareStatement(SQLCom2)) {

                Operations1.setString(1, City);
                Operations1.setString(2, Country);
                Operations1.setString(3, ZipCode);
                Operations1.setInt(4, LPK);
                Operations1.executeUpdate();
            } catch (Exception e) {
                System.out.println("Erro insert 2");
            }

            Result = true;
            DBConnection.FecharConexao();
        } else {
            DBConnection.FecharConexao();
        }

        return true;

    }

}
