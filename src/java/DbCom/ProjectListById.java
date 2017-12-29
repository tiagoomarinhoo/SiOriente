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
import java.util.ArrayList;


public class ProjectListById {
   
    
   final String SQLCom = "Select * from projeto where id = ?;";
    final String SQLCom1 = "Select * from projeto_tem_cat_projeto where id_projeto = ?";
    final String SQLCom2 = "Select * from cat_projeto where id_catpro = ?";

    private int id_projeto;
    private String nome;
    private String descricao;
    private int vagas;
    private int id_catpro;
    private String area;
    private String nome_cat;

    private Connection connection;
    private boolean Result = false;
    ArrayList<Project> obj = new ArrayList<>();

    public ArrayList ProjectList(String Email) throws SQLException {
          connection = DBConnection.getConexaoMySQL();
 UserID UserID = new UserID();
        int id = UserID.getId(Email);
        if (DBConnection.status == true) {
           
            PreparedStatement Operations = connection.prepareStatement(SQLCom);
            Operations.setInt(1, id);
            //Operations.setString(1, User);
            //Operations.setString(2, Senha);

            ResultSet rs = Operations.executeQuery();

            while (rs.next()) {
                id_projeto = rs.getInt("id_projeto");
                nome = rs.getString("nome");
                descricao = rs.getString("descricao");
                vagas = rs.getInt("vagas");
                area = rs.getString("area");
                System.out.println("Etapa1");
                PreparedStatement Operations2 = connection.prepareStatement(SQLCom1);
                Operations2.setInt(1, id_projeto);

                ResultSet rs1 = Operations2.executeQuery();

                while (rs1.next()) {
                    id_catpro = rs1.getInt("id_catpro");

                    PreparedStatement Operations3 = connection.prepareStatement(SQLCom2);
                    Operations3.setInt(1, id_catpro);
                    System.out.println("Etapa2");
                    ResultSet rs2 = Operations3.executeQuery();
                    while (rs2.next()) {
                        nome_cat = rs2.getString("nome");
                    }
                    System.out.println("Etapa3");
                    rs2.close();
                }
                System.out.println("Concluido");
                rs1.close();
                Project Project = new Project(nome, "", nome_cat, area, nome, "", descricao,vagas,id_projeto,id_catpro);
                System.out.println(nome+1);
                obj.add(Project);
            }

            rs.close();
            Operations.close();
            DBConnection.FecharConexao();

        } else {

        }

        return obj;
    }
}
