/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DbCom;

import DB.DBConnection;
import OBJ.Project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

public class NewProjectDAO {

    final String SQLCom = "INSERT INTO projeto (nome,descricao,vagas,area,id) values (?,?,?,?,?)";
    final String SQLCom1 = "INSERT INTO projeto_tem_cat_projeto (id_projeto,id_catpro) values (?,?)";
    private Connection connection;
    private boolean Result = false;
    private int ID;

    int PPK;

    public boolean InsertNewProject(Project Project, String Email) throws SQLException, ParseException {

        UserID UserID = new UserID();
        ID = UserID.getId(Email);
        connection = DBConnection.getConexaoMySQL();

        if (DBConnection.status == true) {
            //------

            try (PreparedStatement Operations = connection.prepareStatement(SQLCom, Statement.RETURN_GENERATED_KEYS)) {
                //------

                ResultSet PK = null;
                //------
                Operations.setString(1, Project.getPNome());
                Operations.setString(2, Project.getDescricao());
                Operations.setInt(3, Integer.parseInt(Project.getVaga()));
                Operations.setString(4, Project.getArea());
                Operations.setInt(5, ID);
                Operations.executeUpdate();
                PK = Operations.getGeneratedKeys();

                if (PK != null && PK.next()) {
                    PPK = PK.getInt(1);
                    System.out.println("Erro insert 1.2");
                }
                Operations.close();
                PK.close();

                try (PreparedStatement Operations2 = connection.prepareStatement(SQLCom1)) {
                    Operations2.setInt(1, PPK);
                    int Category = 0;
                    switch (Project.getTipo()) {
                        case "Projetos":
                            Category = 1;
                            break;
                        case "Startup": 
                            Category = 2;
                            break;
                        case "TCC":
                            Category = 3;
                            break;
                        case "Iniciação Cientifica":
                            Category = 4;
                            break;
                        default:
                            break;
                    }

                    Operations2.setInt(2, Category);

                    Operations2.executeUpdate();
                    Operations2.close();
                } catch (Exception e) {
                    System.out.println("Erro insert 2");
                }

                Result = true;
                DBConnection.FecharConexao();
            } catch (Exception e) {
                System.out.println("Erro insert 1");
            }

        } else {
            DBConnection.FecharConexao();
        }

        return Result;

    }
}
