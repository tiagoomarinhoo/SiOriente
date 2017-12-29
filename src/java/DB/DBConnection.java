package DB;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class DBConnection {

    public static boolean status = false;

    public static java.sql.Connection getConexaoMySQL() {

        Connection connection = null;          //atributo do tipo Connection

        try {

// DBC Driver:
            String driverName = "com.mysql.jdbc.Driver";

            Class.forName(driverName);

// conexão com um banco de dados:
              String serverName = "node153649-projetonassau.jelasticlw.com.br";    //caminho do servidor do BD

            String mydatabase ="pgo";        //nome do seu banco de dados

            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

            String username = "root";        //nome de um usuário de seu BD      

            String password = "NHl1OCSsVF";      //sua senha de acesso

            connection = DriverManager.getConnection(url, username, password);

            //Teste:  
            if (connection != null) {

                status = true;

            } else {

                status = false;

            }

            return connection;

        } catch (ClassNotFoundException e) {  //Driver não encontrado

            System.out.println("O driver expecificado nao foi encontrado.");

            return null;

        } catch (SQLException e) {

//Não conseguindo se conectar ao banco
            System.out.println("Nao foi possivel conectar ao Banco de Dados.");

            return null;

        }

    }

    //Método que retorna o status da sua conexão//
    public static boolean statusConection() {

        return status;

    }

    //Método que fecha sua conexão//
    public static boolean FecharConexao() {

        try {

            getConexaoMySQL().close();

            return true;

        } catch (SQLException e) {

            return false;

        }

    }

    //Método que reinicia sua conexão//
    public static java.sql.Connection ReiniciarConexao() {

        FecharConexao();

        return getConexaoMySQL();

    }

}
