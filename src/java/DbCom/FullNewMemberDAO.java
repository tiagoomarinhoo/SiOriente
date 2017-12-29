package DbCom;

import DB.DBConnection;
import OBJ.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

public class FullNewMemberDAO {

    final String SQLCom = "INSERT INTO usuario (cpf,email,senha,nome,genero,nasc,telefone,empresa) values (?,?,?,?,?,?,?,?)";
    final String SQLCom1 = "INSERT INTO localizacao (cep,cidade,numero,bairro,estado) values (?,?,?,?,?)";
    final String SQLCom2 = "INSERT INTO usuario_possui_localizacao (id, id_local) values (?,?)";
    private Connection connection;
    private boolean Result = false;
    
    int UPK;
    int LPK;

    public boolean InsertNewMember(User FullMember) throws SQLException, ParseException {

        connection = DBConnection.getConexaoMySQL();
        if (DBConnection.status == true) {
            //------
            try (PreparedStatement Operations = connection.prepareStatement(SQLCom, Statement.RETURN_GENERATED_KEYS)) {
                //------
                String dateInString = "1111-11-11";
                ResultSet PK = null;
                //------
                Operations.setString(1, FullMember.getRegistration());
                Operations.setString(2, FullMember.getEmail());
                Operations.setString(3, FullMember.getSenha());
                Operations.setString(4, FullMember.getNome());
                Operations.setString(5, FullMember.getGender() + "");
                Operations.setString(6, dateInString);
                Operations.setString(7, FullMember.getPhone());
                Operations.setString(8, "Indefinido");
                Operations.executeUpdate();
                PK = Operations.getGeneratedKeys();
                if (PK != null && PK.next()) {
                    UPK = PK.getInt(1);
                   
                }
                PK.close();
            }catch(Exception e){
                System.out.println("Erro insert 1");
            }
          

            try (PreparedStatement Operations1 = connection.prepareStatement(SQLCom1, Statement.RETURN_GENERATED_KEYS)) {
                  ResultSet PK = null;
                Operations1.setInt(1,Integer.parseInt(FullMember.getZipCode()));
                Operations1.setString(2, FullMember.getCity());
                Operations1.setInt(3, 666);
                Operations1.setString(4, FullMember.getCountry());
                Operations1.setString(5, FullMember.getState());
                Operations1.executeUpdate();
                System.out.println(FullMember.getCity()+"         "+FullMember.getCountry()+"         "+FullMember.getState()+"         "+FullMember.getZipCode());
                PK = Operations1.getGeneratedKeys();
                if (PK != null && PK.next()) {
                    LPK = PK.getInt(1);
                    
                }
                  PK.close();
            }catch(Exception e){
                System.out.println("Erro insert 2");
            }
          
            try (PreparedStatement Operations2 = connection.prepareStatement(SQLCom2)) {
                Operations2.setInt(1, UPK);
                Operations2.setInt(2, LPK);
               
                Operations2.executeUpdate();
               
            }catch(Exception e){
                System.out.println("Erro insert 3");
            }
           
            Result = true;
            DBConnection.FecharConexao();
        } else {
            DBConnection.FecharConexao();
        }

        return true;

    }
}
