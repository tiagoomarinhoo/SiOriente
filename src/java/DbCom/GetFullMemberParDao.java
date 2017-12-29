/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DbCom;

import DB.DBConnection;
import OBJ.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author regivaldo.santos
 */
public class GetFullMemberParDao {

    final String SQLCom = "select * from usuario where email = ?";
    final String SQLCom1 = "select id_local from usuario_possui_localizacao where id = ?";
    final String SQLCom2 = "select * from localizacao where id_local = ?";

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
    private int ZipCode;
    private int Number;
    private int ID;
    private int LID;
    private Connection connection;
    User User = null;
    

    public void GetFullMemberPar(String Email) throws SQLException {
System.out.println(Email);
        connection = DBConnection.getConexaoMySQL();

        if (DBConnection.status == true) {

            PreparedStatement Operations = connection.prepareStatement(SQLCom);
            Operations.setString(1, Email);

            ResultSet rs = Operations.executeQuery();

            if (rs.next()) {

                Nome = rs.getString("nome");
                this.Email = rs.getString("email");
                Gender = rs.getString("genero");
                Senha = rs.getString("senha");
                Phone = rs.getString("telefone");
                Registration = rs.getString("cpf");
                BornDate = rs.getString("nasc");
                ID = rs.getInt("id");
                connection = DBConnection.getConexaoMySQL();
                System.out.println("Concluido 1");
                 rs.close();
                 Operations.close();
                if (DBConnection.status == true) {

                    PreparedStatement Operations1 = connection.prepareStatement(SQLCom1);
                    Operations1.setInt(1, ID);

                    ResultSet rs1 = Operations1.executeQuery();

                    if (rs1.next()) {

                        LID = rs1.getInt("id_local");
                        rs1.close();
                        Operations1.close();
                  System.out.println("Concluido 2");
                        if (DBConnection.status == true) {

                            PreparedStatement Operations2 = connection.prepareStatement(SQLCom2);
                            Operations2.setInt(1, LID);

                            ResultSet rs2 = Operations2.executeQuery();

                            if (rs2.next()) {

                                State = rs2.getString("estado");
                                City = rs2.getString("cidade");
                                Country = rs2.getString("bairro");
                                ZipCode = rs2.getInt("cep");
                                Number = rs2.getInt("numero");
                                Operations2.close();
                                rs2.close();
                                 System.out.println("Concluido 3");
                            }
                            
                            User = new User(Nome,this.Email,Gender,Senha,Resenha,Phone,Registration,State,City,BornDate,Country,ZipCode+"");
                            System.out.println("Inserido no Objeto Usuario");
                        }else{
                            System.out.println("Não conectado");
                        }

                    }

                }

               
                
               

            } else {

            }

            
        }
        DBConnection.FecharConexao();
    }

    public String getSQLCom() {
        return SQLCom;
    }

    public String getSQLCom1() {
        return SQLCom1;
    }

    public String getSQLCom2() {
        return SQLCom2;
    }

    public String getNome() {
        return Nome;
    }

    public String getEmail() {
        return Email;
    }

    public String getGender() {
        return Gender;
    }

    public String getSenha() {
        return Senha;
    }

    public String getResenha() {
        return Resenha;
    }

    public String getPhone() {
        return Phone;
    }

    public String getRegistration() {
        return Registration;
    }

    public String getState() {
        return State;
    }

    public String getCity() {
        return City;
    }

    public String getBornDate() {
        return BornDate;
    }

    public String getCountry() {
        return Country;
    }

    public int getZipCode() {
        return ZipCode;
    }

    public int getNumber() {
        return Number;
    }

    public int getID() {
        return ID;
    }

    public int getLID() {
        return LID;
    }

    public Connection getConnection() {
        return connection;
    }

    public User getUser() {
        return User;
    }
    
    
}
