package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	private static final String URL =
            "jdbc:mysql://localhost/n2jsp";
    public Connection retornaConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL,"root","");
        }catch(ClassNotFoundException 
            | SQLException e){
            System.out.println("Erro de Conex�o: "+e.getMessage());
            return null;
        }
    }
}
